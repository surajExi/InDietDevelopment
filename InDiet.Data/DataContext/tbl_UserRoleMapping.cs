//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace InDiet.Data.DataContext
{
    using System;
    using System.Collections.Generic;
    
    public partial class tbl_UserRoleMapping
    {
        public long ID { get; set; }
        public long UserMasterID { get; set; }
        public long RoleMasterID { get; set; }
        public bool IsActive { get; set; }
        public long CreatedBy { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public Nullable<long> ModifiedBy { get; set; }
        public Nullable<System.DateTime> ModifiedDate { get; set; }
    
        public virtual tbl_UserMaster tbl_UserMaster { get; set; }
        public virtual tbl_UserMaster tbl_UserMaster1 { get; set; }
    }
}
