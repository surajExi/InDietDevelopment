USE [InDiet]
GO
/****** Object:  Table [dbo].[tbl_Ailments]    Script Date: 7/13/2017 6:22:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Ailments](
	[ID] [bigint] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tbl_Ailments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_CityMaster]    Script Date: 7/13/2017 6:22:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CityMaster](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tbl_CityMaster] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_RoleMaster]    Script Date: 7/13/2017 6:22:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_RoleMaster](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tbl_RoleMaster] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_TokenDetails]    Script Date: 7/13/2017 6:22:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_TokenDetails](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MobileNumber] [nvarchar](50) NOT NULL,
	[Token] [nvarchar](100) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_tbl_TokenDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_UserAddress]    Script Date: 7/13/2017 6:22:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_UserAddress](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserMasterID] [bigint] NOT NULL,
	[Address1] [nvarchar](500) NOT NULL,
	[Address2] [nvarchar](500) NULL,
	[CityID] [int] NOT NULL,
	[State] [nvarchar](70) NULL,
	[Country] [nvarchar](70) NULL,
	[PostalCode] [nvarchar](70) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tbl_UserAddress] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_UserAilments]    Script Date: 7/13/2017 6:22:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_UserAilments](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserMasterID] [bigint] NOT NULL,
	[AilmentID] [bigint] NOT NULL,
	[Remarks] [nvarchar](500) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tbl_UserAilments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_UserMaster]    Script Date: 7/13/2017 6:22:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_UserMaster](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](200) NOT NULL,
	[MobileNumber] [nvarchar](100) NOT NULL,
	[EmailAddress] [varchar](100) NULL,
	[Sex] [varchar](20) NOT NULL,
	[DOB] [datetime] NULL,
	[Age] [int] NOT NULL,
	[Height] [int] NOT NULL,
	[Weight] [int] NOT NULL,
	[CityID] [int] NULL,
	[IsVerified] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tbl_UserMaster] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_UserMasterGraphics]    Script Date: 7/13/2017 6:22:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_UserMasterGraphics](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserMaserID] [bigint] NOT NULL,
	[GraphicFile] [varbinary](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tbl_UserMasterGraphics] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_UserRoleMapping]    Script Date: 7/13/2017 6:22:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_UserRoleMapping](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserMasterID] [bigint] NOT NULL,
	[RoleMasterID] [bigint] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tbl_UserRoleMapping] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_CityMaster] ON 

INSERT [dbo].[tbl_CityMaster] ([ID], [Name], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'Bhubaneswar', 1, 1, CAST(N'2017-06-22T13:29:44.073' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_CityMaster] OFF
SET IDENTITY_INSERT [dbo].[tbl_RoleMaster] ON 

INSERT [dbo].[tbl_RoleMaster] ([ID], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'Admin', N'Admin', 1, 1, CAST(N'2017-06-22T13:29:44.073' AS DateTime), NULL, NULL)
INSERT [dbo].[tbl_RoleMaster] ([ID], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'User', N'User', 1, 1, CAST(N'2017-06-22T13:29:44.073' AS DateTime), NULL, NULL)
INSERT [dbo].[tbl_RoleMaster] ([ID], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'Nutritionist ', N'Nutritionist ', 1, 1, CAST(N'2017-06-22T13:29:44.073' AS DateTime), NULL, NULL)
INSERT [dbo].[tbl_RoleMaster] ([ID], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'Chef', N'Chef', 1, 1, CAST(N'2017-06-22T13:29:44.073' AS DateTime), NULL, NULL)
INSERT [dbo].[tbl_RoleMaster] ([ID], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, N'Distributor', N'Distributor', 1, 1, CAST(N'2017-06-22T13:29:44.073' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_RoleMaster] OFF
SET IDENTITY_INSERT [dbo].[tbl_UserMaster] ON 

INSERT [dbo].[tbl_UserMaster] ([ID], [UserName], [MobileNumber], [EmailAddress], [Sex], [DOB], [Age], [Height], [Weight], [CityID], [IsVerified], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'Admin', N'7684822025', NULL, N'M', NULL, 33, 165, 100, NULL, 1, 1, 1, CAST(N'2017-06-22T13:29:44.073' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_UserMaster] OFF
SET IDENTITY_INSERT [dbo].[tbl_UserRoleMapping] ON 

INSERT [dbo].[tbl_UserRoleMapping] ([ID], [UserMasterID], [RoleMasterID], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, 1, 1, 1, 1, CAST(N'2017-06-22T13:29:44.073' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_UserRoleMapping] OFF
ALTER TABLE [dbo].[tbl_Ailments] ADD  CONSTRAINT [DF_tbl_Ailments_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tbl_CityMaster] ADD  CONSTRAINT [DF_tbl_CityMaster_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tbl_RoleMaster] ADD  CONSTRAINT [DF_tbl_RoleMaster_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tbl_UserAddress] ADD  CONSTRAINT [DF_tbl_UserAddress_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tbl_UserAilments] ADD  CONSTRAINT [DF_tbl_UserAilments_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tbl_UserMaster] ADD  CONSTRAINT [DF_tbl_UserMaster_IsVerified]  DEFAULT ((1)) FOR [IsVerified]
GO
ALTER TABLE [dbo].[tbl_UserMaster] ADD  CONSTRAINT [DF_tbl_UserMaster_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tbl_UserMasterGraphics] ADD  CONSTRAINT [DF_tbl_UserMasterGraphics_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tbl_UserRoleMapping] ADD  CONSTRAINT [DF_tbl_UserRoleMapping_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tbl_Ailments]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Ailments_tbl_UserMaster_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tbl_UserMaster] ([ID])
GO
ALTER TABLE [dbo].[tbl_Ailments] CHECK CONSTRAINT [FK_tbl_Ailments_tbl_UserMaster_CreatedBy]
GO
ALTER TABLE [dbo].[tbl_Ailments]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Ailments_tbl_UserMaster_ModifiedBy] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tbl_UserMaster] ([ID])
GO
ALTER TABLE [dbo].[tbl_Ailments] CHECK CONSTRAINT [FK_tbl_Ailments_tbl_UserMaster_ModifiedBy]
GO
ALTER TABLE [dbo].[tbl_CityMaster]  WITH CHECK ADD  CONSTRAINT [FK_tbl_CityMaster_tbl_UserMaster_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tbl_UserMaster] ([ID])
GO
ALTER TABLE [dbo].[tbl_CityMaster] CHECK CONSTRAINT [FK_tbl_CityMaster_tbl_UserMaster_CreatedBy]
GO
ALTER TABLE [dbo].[tbl_CityMaster]  WITH CHECK ADD  CONSTRAINT [FK_tbl_CityMaster_tbl_UserMaster_ModifiedBy] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tbl_UserMaster] ([ID])
GO
ALTER TABLE [dbo].[tbl_CityMaster] CHECK CONSTRAINT [FK_tbl_CityMaster_tbl_UserMaster_ModifiedBy]
GO
ALTER TABLE [dbo].[tbl_RoleMaster]  WITH CHECK ADD  CONSTRAINT [FK_tbl_RoleMaster_tbl_UserMaster_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tbl_UserMaster] ([ID])
GO
ALTER TABLE [dbo].[tbl_RoleMaster] CHECK CONSTRAINT [FK_tbl_RoleMaster_tbl_UserMaster_CreatedBy]
GO
ALTER TABLE [dbo].[tbl_RoleMaster]  WITH CHECK ADD  CONSTRAINT [FK_tbl_RoleMaster_tbl_UserMaster_ModifiedBy] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tbl_UserMaster] ([ID])
GO
ALTER TABLE [dbo].[tbl_RoleMaster] CHECK CONSTRAINT [FK_tbl_RoleMaster_tbl_UserMaster_ModifiedBy]
GO
ALTER TABLE [dbo].[tbl_UserAddress]  WITH CHECK ADD  CONSTRAINT [FK_tbl_UserAddress_tbl_CityMaster] FOREIGN KEY([CityID])
REFERENCES [dbo].[tbl_CityMaster] ([ID])
GO
ALTER TABLE [dbo].[tbl_UserAddress] CHECK CONSTRAINT [FK_tbl_UserAddress_tbl_CityMaster]
GO
ALTER TABLE [dbo].[tbl_UserAddress]  WITH CHECK ADD  CONSTRAINT [FK_tbl_UserAddress_tbl_Customer] FOREIGN KEY([UserMasterID])
REFERENCES [dbo].[tbl_UserMaster] ([ID])
GO
ALTER TABLE [dbo].[tbl_UserAddress] CHECK CONSTRAINT [FK_tbl_UserAddress_tbl_Customer]
GO
ALTER TABLE [dbo].[tbl_UserAddress]  WITH CHECK ADD  CONSTRAINT [FK_tbl_UserAddress_tbl_UserMaster_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tbl_UserMaster] ([ID])
GO
ALTER TABLE [dbo].[tbl_UserAddress] CHECK CONSTRAINT [FK_tbl_UserAddress_tbl_UserMaster_CreatedBy]
GO
ALTER TABLE [dbo].[tbl_UserAddress]  WITH CHECK ADD  CONSTRAINT [FK_tbl_UserAddress_tbl_UserMaster_ModifiedBy] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tbl_UserMaster] ([ID])
GO
ALTER TABLE [dbo].[tbl_UserAddress] CHECK CONSTRAINT [FK_tbl_UserAddress_tbl_UserMaster_ModifiedBy]
GO
ALTER TABLE [dbo].[tbl_UserAilments]  WITH CHECK ADD  CONSTRAINT [FK_tbl_UserAilments_tbl_Ailments] FOREIGN KEY([AilmentID])
REFERENCES [dbo].[tbl_Ailments] ([ID])
GO
ALTER TABLE [dbo].[tbl_UserAilments] CHECK CONSTRAINT [FK_tbl_UserAilments_tbl_Ailments]
GO
ALTER TABLE [dbo].[tbl_UserAilments]  WITH CHECK ADD  CONSTRAINT [FK_tbl_UserAilments_tbl_UserMaster] FOREIGN KEY([UserMasterID])
REFERENCES [dbo].[tbl_UserMaster] ([ID])
GO
ALTER TABLE [dbo].[tbl_UserAilments] CHECK CONSTRAINT [FK_tbl_UserAilments_tbl_UserMaster]
GO
ALTER TABLE [dbo].[tbl_UserAilments]  WITH CHECK ADD  CONSTRAINT [FK_tbl_UserAilments_tbl_UserMaster_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tbl_UserMaster] ([ID])
GO
ALTER TABLE [dbo].[tbl_UserAilments] CHECK CONSTRAINT [FK_tbl_UserAilments_tbl_UserMaster_CreatedBy]
GO
ALTER TABLE [dbo].[tbl_UserAilments]  WITH CHECK ADD  CONSTRAINT [FK_tbl_UserAilments_tbl_UserMaster_ModifiedBy] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tbl_UserMaster] ([ID])
GO
ALTER TABLE [dbo].[tbl_UserAilments] CHECK CONSTRAINT [FK_tbl_UserAilments_tbl_UserMaster_ModifiedBy]
GO
ALTER TABLE [dbo].[tbl_UserMaster]  WITH CHECK ADD  CONSTRAINT [FK_tbl_UserMaster_tbl_CityMaster] FOREIGN KEY([CityID])
REFERENCES [dbo].[tbl_CityMaster] ([ID])
GO
ALTER TABLE [dbo].[tbl_UserMaster] CHECK CONSTRAINT [FK_tbl_UserMaster_tbl_CityMaster]
GO
ALTER TABLE [dbo].[tbl_UserMaster]  WITH CHECK ADD  CONSTRAINT [FK_tbl_UserMaster_tbl_UserMaster_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tbl_UserMaster] ([ID])
GO
ALTER TABLE [dbo].[tbl_UserMaster] CHECK CONSTRAINT [FK_tbl_UserMaster_tbl_UserMaster_CreatedBy]
GO
ALTER TABLE [dbo].[tbl_UserMaster]  WITH CHECK ADD  CONSTRAINT [FK_tbl_UserMaster_tbl_UserMaster_ModifiedBy] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tbl_UserMaster] ([ID])
GO
ALTER TABLE [dbo].[tbl_UserMaster] CHECK CONSTRAINT [FK_tbl_UserMaster_tbl_UserMaster_ModifiedBy]
GO
ALTER TABLE [dbo].[tbl_UserMasterGraphics]  WITH CHECK ADD  CONSTRAINT [FK_tbl_UserMasterGraphics_tbl_UserMaster] FOREIGN KEY([UserMaserID])
REFERENCES [dbo].[tbl_UserMaster] ([ID])
GO
ALTER TABLE [dbo].[tbl_UserMasterGraphics] CHECK CONSTRAINT [FK_tbl_UserMasterGraphics_tbl_UserMaster]
GO
ALTER TABLE [dbo].[tbl_UserMasterGraphics]  WITH CHECK ADD  CONSTRAINT [FK_tbl_UserMasterGraphics_tbl_UserMaster_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tbl_UserMaster] ([ID])
GO
ALTER TABLE [dbo].[tbl_UserMasterGraphics] CHECK CONSTRAINT [FK_tbl_UserMasterGraphics_tbl_UserMaster_CreatedBy]
GO
ALTER TABLE [dbo].[tbl_UserMasterGraphics]  WITH CHECK ADD  CONSTRAINT [FK_tbl_UserMasterGraphics_tbl_UserMaster_ModifiedBy] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tbl_UserMaster] ([ID])
GO
ALTER TABLE [dbo].[tbl_UserMasterGraphics] CHECK CONSTRAINT [FK_tbl_UserMasterGraphics_tbl_UserMaster_ModifiedBy]
GO
ALTER TABLE [dbo].[tbl_UserRoleMapping]  WITH CHECK ADD  CONSTRAINT [FK_tbl_UserRoleMapping_tbl_UserMaster_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[tbl_UserMaster] ([ID])
GO
ALTER TABLE [dbo].[tbl_UserRoleMapping] CHECK CONSTRAINT [FK_tbl_UserRoleMapping_tbl_UserMaster_CreatedBy]
GO
ALTER TABLE [dbo].[tbl_UserRoleMapping]  WITH CHECK ADD  CONSTRAINT [FK_tbl_UserRoleMapping_tbl_UserMaster_ModifiedBy] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[tbl_UserMaster] ([ID])
GO
ALTER TABLE [dbo].[tbl_UserRoleMapping] CHECK CONSTRAINT [FK_tbl_UserRoleMapping_tbl_UserMaster_ModifiedBy]
GO
