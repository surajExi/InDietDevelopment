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
    
    public partial class tbl_UserMaster
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tbl_UserMaster()
        {
            this.tbl_Ailments = new HashSet<tbl_Ailments>();
            this.tbl_Ailments1 = new HashSet<tbl_Ailments>();
            this.tbl_CityMaster = new HashSet<tbl_CityMaster>();
            this.tbl_CityMaster1 = new HashSet<tbl_CityMaster>();
            this.tbl_RoleMaster = new HashSet<tbl_RoleMaster>();
            this.tbl_RoleMaster1 = new HashSet<tbl_RoleMaster>();
            this.tbl_UserAddress = new HashSet<tbl_UserAddress>();
            this.tbl_UserAddress1 = new HashSet<tbl_UserAddress>();
            this.tbl_UserAddress2 = new HashSet<tbl_UserAddress>();
            this.tbl_UserAilments = new HashSet<tbl_UserAilments>();
            this.tbl_UserAilments1 = new HashSet<tbl_UserAilments>();
            this.tbl_UserAilments2 = new HashSet<tbl_UserAilments>();
            this.tbl_UserMaster1 = new HashSet<tbl_UserMaster>();
            this.tbl_UserMaster11 = new HashSet<tbl_UserMaster>();
            this.tbl_UserMasterGraphics = new HashSet<tbl_UserMasterGraphics>();
            this.tbl_UserMasterGraphics1 = new HashSet<tbl_UserMasterGraphics>();
            this.tbl_UserMasterGraphics2 = new HashSet<tbl_UserMasterGraphics>();
            this.tbl_UserRoleMapping = new HashSet<tbl_UserRoleMapping>();
            this.tbl_UserRoleMapping1 = new HashSet<tbl_UserRoleMapping>();
        }
    
        public long ID { get; set; }
        public string UserName { get; set; }
        public string MobileNumber { get; set; }
        public string EmailAddress { get; set; }
        public string Sex { get; set; }
        public Nullable<System.DateTime> DOB { get; set; }
        public int Age { get; set; }
        public int Height { get; set; }
        public int Weight { get; set; }
        public Nullable<int> CityID { get; set; }
        public bool IsVerified { get; set; }
        public bool IsActive { get; set; }
        public long CreatedBy { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public Nullable<long> ModifiedBy { get; set; }
        public Nullable<System.DateTime> ModifiedDate { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_Ailments> tbl_Ailments { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_Ailments> tbl_Ailments1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_CityMaster> tbl_CityMaster { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_CityMaster> tbl_CityMaster1 { get; set; }
        public virtual tbl_CityMaster tbl_CityMaster2 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_RoleMaster> tbl_RoleMaster { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_RoleMaster> tbl_RoleMaster1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_UserAddress> tbl_UserAddress { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_UserAddress> tbl_UserAddress1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_UserAddress> tbl_UserAddress2 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_UserAilments> tbl_UserAilments { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_UserAilments> tbl_UserAilments1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_UserAilments> tbl_UserAilments2 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_UserMaster> tbl_UserMaster1 { get; set; }
        public virtual tbl_UserMaster tbl_UserMaster2 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_UserMaster> tbl_UserMaster11 { get; set; }
        public virtual tbl_UserMaster tbl_UserMaster3 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_UserMasterGraphics> tbl_UserMasterGraphics { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_UserMasterGraphics> tbl_UserMasterGraphics1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_UserMasterGraphics> tbl_UserMasterGraphics2 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_UserRoleMapping> tbl_UserRoleMapping { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_UserRoleMapping> tbl_UserRoleMapping1 { get; set; }
    }
}
