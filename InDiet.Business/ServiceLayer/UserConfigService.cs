using InDiet.Business.InterfaceLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using InDiet.Data.DataContext;
using System.Data.Entity;

namespace InDiet.Business.ServiceLayer
{
    public class UserConfigService : IUserConfig
    {
        private InDietDBEntities context = new InDietDBEntities();

        public void AddNewUser(tbl_UserMaster entity)
        {
            context.tbl_UserMaster.Add(entity);
            context.SaveChanges();
        }

        public bool CheckUserNameExists(string userName)
        {
            bool checkUsername = context.tbl_UserMaster.Any(x => x.UserName.Trim() == userName);
            return checkUsername;
        }

        public tbl_UserMaster GetUserByID(long id)
        {
            var user = context.tbl_UserMaster.FirstOrDefault(x => x.ID == id);
            return user;
        }

        public tbl_UserMaster GetUserByName(string userName)
        {
            var user = context.tbl_UserMaster.FirstOrDefault(x => x.UserName == userName);
            return user;
        }

        public List<tbl_UserMaster> GetUserList()
        {
            return context.tbl_UserMaster.ToList();
        }

        public void UpdateUser(tbl_UserMaster entity)
        {
            context.tbl_UserMaster.Attach(entity);
            context.Entry(entity).State = EntityState.Modified;
            context.SaveChanges();
        }
    }
}
