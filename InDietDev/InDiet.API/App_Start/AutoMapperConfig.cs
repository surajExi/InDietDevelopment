using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using InDiet.Data.DataContext;
using InDiet.API.Models;

namespace InDiet.API.App_Start
{
    public class AutoMapperConfig
    {
        public static void RegisterMappings()
        {
            Mapper.Initialize(config =>
            {
                config.CreateMap<tbl_UserMaster, UserMasterModel>();
                config.CreateMap<tbl_UserMaster, LoginViewModel>();
            });
        }
    }
}