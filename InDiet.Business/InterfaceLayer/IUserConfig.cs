using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using InDiet.Data.DataContext;

namespace InDiet.Business.InterfaceLayer
{
    public interface IUserConfig
    {
        /// <summary>
        /// User Particular entity type gets added into the database table via repository method
        /// Change tracking occurs which keeps track and commits once the Savechanges is called 
        /// </summary>
        /// <param name="entity"></param>
        void AddNewUser(tbl_UserMaster entity);

        /// <summary>
        /// User Particular entity type gets updated into the database table via repository method
        /// Change tracking occurs which keeps track and commits once the Savechanges is called 
        /// </summary>
        /// <param name="entity"></param>
        void UpdateUser(tbl_UserMaster entity);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="userName"></param>
        /// <returns></returns>
        tbl_UserMaster GetUserByName(string userName);

        /// <summary>
        /// Gets the list of users registered from the database
        /// </summary>
        /// <returns></returns>
        List<tbl_UserMaster> GetUserList();

        /// <summary>
        /// Get User by Id value from Database
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        tbl_UserMaster GetUserByID(long id);

        /// <summary>
        /// Check if the username already exists
        /// </summary>
        /// <param name="userName"></param>
        /// <returns></returns>
        bool CheckUserNameExists(string userName);
    }
}
