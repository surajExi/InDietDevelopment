using InDiet.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using System.Net.Http;
using Newtonsoft.Json;

namespace InDiet.Controllers
{
    public class AccountController : BaseController
    {
        public static string WEBAPI_URI_USERCONFIG = string.Format("{0}/{1}", System.Configuration.ConfigurationManager.AppSettings["WebAPIURI"], "UserConfig");

        public AccountController()
        {

        }

        //
        // GET: /Account/Login
        [AllowAnonymous]
        public ActionResult Login(string returnUrl)
        {
            ViewBag.ReturnUrl = returnUrl;
            return View();
        }
        /// <summary>
        /// Login post method in order to compare the user credentials and allow in to the application
        /// Session for the Authorization and Authentication is required
        /// </summary>
        /// <param name="viewModel"></param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Login(LoginViewModel viewModel)
        {
            if (ModelState.IsValid)
            {
                var uriCheckUser = string.Format("{0}/{1}", WEBAPI_URI_USERCONFIG, "GetUserByUserName");
                HttpClient client = GetHttpClient(uriCheckUser);
                HttpResponseMessage responseMessage = await client.PostAsJsonAsync(uriCheckUser, viewModel);
                if (responseMessage.IsSuccessStatusCode)
                {
                    var responseData = responseMessage.Content.ReadAsStringAsync().Result;
                    //var user = JsonConvert.DeserializeObject<UserParticularViewModel>(responseData);
                    //if (user != null)
                    //{
                    //    bool chkPassword = HashingCrypto.IsPasswordMatch(viewModel.Password, user.PasswordSalt, user.PasswordHash);
                    //    if (chkPassword)
                    //    {
                    //        SessionManager.UserID = user.ID;
                    //        SessionManager.Email = user.Email;

                    //        #region Remember Me Section Implementation
                    //        var authTicket = new FormsAuthenticationTicket(1, user.UserName, DateTime.Now, DateTime.Now.AddMinutes(20), viewModel.RememberMe, "", "/");
                    //        //encrypt the ticket and add it to a cookie
                    //        HttpCookie cookie = new HttpCookie("CASUserCookie", FormsAuthentication.Encrypt(authTicket));
                    //        cookie.Expires.AddDays(1);
                    //        Response.Cookies.Add(cookie);
                    //        #endregion

                    //        await AuthorizeUser(user.ID);

                    //        return RedirectToAction("UserGridView", "UserManagement", new { area = "SecurityManagement" });
                    //    }
                    //    else
                    //    {
                    //        //TODO: Add the access failed count
                    //        ModelState.AddModelError("Password", "Invalid Login Attempt");
                    //    }
                    //}
                    //else
                    //{
                    //    ModelState.AddModelError("Password", "Invalid Login Attempt");
                    //}
                }
                else
                {
                    ModelState.AddModelError("Password", "Invalid Login Attempt");
                }
            }
            return View("Login", viewModel);
        }
    }
}