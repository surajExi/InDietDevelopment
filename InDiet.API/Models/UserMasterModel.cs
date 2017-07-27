using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InDiet.Models
{
    public class UserMasterModel
    {
        public long ID { get; set; }
        public string UserName { get; set; }
        public string MobileNumber { get; set; }
        public string EmailAddress { get; set; }
        public string Sex { get; set; }
        public Nullable<DateTime> DOB { get; set; }
        public int Age { get; set; }
        public int Height { get; set; }
        public int Weight { get; set; }
        public Nullable<int> CityID { get; set; }
        public bool IsVerified { get; set; }
        public bool IsActive { get; set; }
        public long CreatedBy { get; set; }
        public long LoggedInUser { get; set; }
    }
}