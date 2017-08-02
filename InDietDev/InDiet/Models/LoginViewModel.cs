using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace InDiet.Models
{
    public class LoginViewModel
    {
        /// <summary>
        /// USer name property for the Login view model in order to allow user to enter the username for login
        /// </summary>
        [Required]
        public string UserName { get; set; }

        /// <summary>
        /// Email property for the Login view model in order to allow user to enter the email for login
        /// </summary>
        //[Required]
        public string Email { get; set; }

        /// <summary>
        /// Password property for the Login view model in order to allow user to enter the password for login
        /// </summary>
        [Required]
        public string Password { get; set; }
    }
}