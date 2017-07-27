using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using InDiet.Data.DataContext;
using InDiet.Models;

namespace InDiet.App_Start
{
    public class AutoMapperConfig
    {
        public static void RegisterMappings()
        {
            Mapper.Initialize(config =>
            {
                config.CreateMap<tbl_UserMaster, UserMasterModel>();
            });
        }
    }
}