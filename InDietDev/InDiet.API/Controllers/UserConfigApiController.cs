using InDiet.API.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace InDiet.API.Controllers
{
    [RoutePrefix("api/UserConfig")]
    public class UserConfigApiController : ApiController
    {
        /// <summary>
        /// Gets the USer By User name during login check
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        [HttpPost]
        [Route("GetUserByUserName")]
        public HttpResponseMessage GetUserByUserName(LoginViewModel model)
        {
            //var userEntity = _userConfig.GetUserByUserName(model.UserName);
            //var userModel = Mapper.Map<UserParticular, UserParticularModel>(userEntity);
            var userModel = new LoginViewModel();
            return Request.CreateResponse(HttpStatusCode.OK, userModel);
        }
    }
}
