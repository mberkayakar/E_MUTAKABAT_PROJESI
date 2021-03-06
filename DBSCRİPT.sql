USE [AKAR_E_MUTABAKAT]
GO
/****** Object:  Table [dbo].[AccountReconciliations]    Script Date: 6/13/2022 11:33:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountReconciliations](
	[ıd] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [int] NOT NULL,
	[CurrencyAcountId] [int] NOT NULL,
	[StartingDate] [datetime] NOT NULL,
	[EndingDate] [datetime] NOT NULL,
	[CurrencyId] [int] NOT NULL,
	[CurrencyDebit] [money] NOT NULL,
	[CurrencyCredit] [money] NOT NULL,
	[IsSendEmail] [bit] NOT NULL,
	[SendEmailDate] [datetime] NULL,
	[IsEmailRead] [bit] NULL,
	[EmailReadDate] [datetime] NULL,
	[IsResultSuccess] [bit] NULL,
	[ResultDate] [datetime] NULL,
	[ResultNote] [varchar](500) NULL,
 CONSTRAINT [PK_AccountReconciliations] PRIMARY KEY CLUSTERED 
(
	[ıd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountReconciliationsDetail]    Script Date: 6/13/2022 11:33:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountReconciliationsDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountReconcilidationId] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Description] [varchar](500) NOT NULL,
	[CurrencyId] [int] NOT NULL,
	[CurrencyDebit] [money] NOT NULL,
	[CurrencyCredit] [money] NOT NULL,
 CONSTRAINT [PK_AccountReconciliationsDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BabsReconciliations]    Script Date: 6/13/2022 11:33:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BabsReconciliations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [int] NOT NULL,
	[CurrencyAccountId] [int] NOT NULL,
	[Type] [char](2) NOT NULL,
	[Mounth] [int] NOT NULL,
	[Yead] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Total] [money] NOT NULL,
	[IsSendEmail] [bit] NOT NULL,
	[SendEmailDate] [datetime] NULL,
	[IsEmailRead] [nchar](10) NULL,
	[EmailReadDate] [datetime] NULL,
	[IsResultSucceed] [bit] NULL,
	[ResultData] [datetime] NULL,
	[ResultNote] [varchar](500) NULL,
 CONSTRAINT [PK_BabsReconciliations] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BabsReconciliationsDetail]    Script Date: 6/13/2022 11:33:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BabsReconciliationsDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[BabsReconcilidationsId] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Description] [varchar](500) NOT NULL,
	[Amount] [money] NOT NULL,
 CONSTRAINT [PK_BabsReconciliationsDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Companies]    Script Date: 6/13/2022 11:33:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NOT NULL,
	[Adress] [varchar](500) NOT NULL,
	[TaxDepartment] [varchar](100) NOT NULL,
	[TaxIdNumber] [char](10) NULL,
	[IdentityNumber] [char](11) NULL,
	[AddedAt] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Currencies]    Script Date: 6/13/2022 11:33:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currencies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Currencies] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CurrencyAccount]    Script Date: 6/13/2022 11:33:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurrencyAccount](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [int] NOT NULL,
	[Code] [varchar](150) NOT NULL,
	[Name] [varchar](150) NOT NULL,
	[Adress] [varchar](250) NOT NULL,
	[TaxDepartment] [nchar](150) NULL,
	[TaxIdNumber] [char](10) NULL,
	[IdentityNumber] [char](11) NULL,
	[Email] [varchar](250) NULL,
	[Authorized] [varchar](150) NULL,
	[AddedAt] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_CurrencyAccount] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MailParameters]    Script Date: 6/13/2022 11:33:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MailParameters](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [int] NULL,
	[Emil] [varchar](150) NULL,
	[Password] [varchar](50) NULL,
	[SMTP] [varchar](150) NULL,
	[Port] [int] NULL,
	[SSL] [bit] NULL,
 CONSTRAINT [PK_MailParameters] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OperationClaim]    Script Date: 6/13/2022 11:33:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationClaim](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[AddedAt] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_OperationClaim] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserCompanies]    Script Date: 6/13/2022 11:33:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCompanies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[AddedAtt] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_UserCompanies] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserOperationClaim]    Script Date: 6/13/2022 11:33:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserOperationClaim](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Userid] [int] NOT NULL,
	[OperationClaimid] [int] NOT NULL,
	[AddedAt] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_UserOperationClaim] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/13/2022 11:33:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varbinary](100) NOT NULL,
	[Email] [varbinary](100) NOT NULL,
	[PasswordSalt] [varbinary](max) NOT NULL,
	[PasswordHash] [varbinary](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[MailConfirm] [bit] NOT NULL,
	[MailConfirmValue] [uniqueidentifier] NOT NULL,
	[MailConfirmDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_Users]    Script Date: 6/13/2022 11:33:41 PM ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [UK_Users] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AccountReconciliations]  WITH CHECK ADD  CONSTRAINT [FK_AccountReconciliations_Companies] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companies] ([id])
GO
ALTER TABLE [dbo].[AccountReconciliations] CHECK CONSTRAINT [FK_AccountReconciliations_Companies]
GO
ALTER TABLE [dbo].[AccountReconciliations]  WITH CHECK ADD  CONSTRAINT [FK_AccountReconciliations_Currencies] FOREIGN KEY([CurrencyId])
REFERENCES [dbo].[Currencies] ([id])
GO
ALTER TABLE [dbo].[AccountReconciliations] CHECK CONSTRAINT [FK_AccountReconciliations_Currencies]
GO
ALTER TABLE [dbo].[AccountReconciliations]  WITH CHECK ADD  CONSTRAINT [FK_AccountReconciliations_CurrencyAccount] FOREIGN KEY([CurrencyAcountId])
REFERENCES [dbo].[CurrencyAccount] ([id])
GO
ALTER TABLE [dbo].[AccountReconciliations] CHECK CONSTRAINT [FK_AccountReconciliations_CurrencyAccount]
GO
ALTER TABLE [dbo].[AccountReconciliationsDetail]  WITH CHECK ADD  CONSTRAINT [FK_AccountReconciliationsDetail_AccountReconciliations] FOREIGN KEY([AccountReconcilidationId])
REFERENCES [dbo].[AccountReconciliations] ([ıd])
GO
ALTER TABLE [dbo].[AccountReconciliationsDetail] CHECK CONSTRAINT [FK_AccountReconciliationsDetail_AccountReconciliations]
GO
ALTER TABLE [dbo].[AccountReconciliationsDetail]  WITH CHECK ADD  CONSTRAINT [FK_AccountReconciliationsDetail_AccountReconciliations1] FOREIGN KEY([AccountReconcilidationId])
REFERENCES [dbo].[AccountReconciliations] ([ıd])
GO
ALTER TABLE [dbo].[AccountReconciliationsDetail] CHECK CONSTRAINT [FK_AccountReconciliationsDetail_AccountReconciliations1]
GO
ALTER TABLE [dbo].[AccountReconciliationsDetail]  WITH CHECK ADD  CONSTRAINT [FK_AccountReconciliationsDetail_Currencies] FOREIGN KEY([CurrencyId])
REFERENCES [dbo].[Currencies] ([id])
GO
ALTER TABLE [dbo].[AccountReconciliationsDetail] CHECK CONSTRAINT [FK_AccountReconciliationsDetail_Currencies]
GO
ALTER TABLE [dbo].[BabsReconciliations]  WITH CHECK ADD  CONSTRAINT [FK_BabsReconciliations_Companies] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companies] ([id])
GO
ALTER TABLE [dbo].[BabsReconciliations] CHECK CONSTRAINT [FK_BabsReconciliations_Companies]
GO
ALTER TABLE [dbo].[BabsReconciliations]  WITH CHECK ADD  CONSTRAINT [FK_BabsReconciliations_CurrencyAccount] FOREIGN KEY([CurrencyAccountId])
REFERENCES [dbo].[CurrencyAccount] ([id])
GO
ALTER TABLE [dbo].[BabsReconciliations] CHECK CONSTRAINT [FK_BabsReconciliations_CurrencyAccount]
GO
ALTER TABLE [dbo].[BabsReconciliationsDetail]  WITH CHECK ADD  CONSTRAINT [FK_BabsReconciliationsDetail_BabsReconciliations] FOREIGN KEY([BabsReconcilidationsId])
REFERENCES [dbo].[BabsReconciliations] ([id])
GO
ALTER TABLE [dbo].[BabsReconciliationsDetail] CHECK CONSTRAINT [FK_BabsReconciliationsDetail_BabsReconciliations]
GO
ALTER TABLE [dbo].[CurrencyAccount]  WITH CHECK ADD  CONSTRAINT [FK_CurrencyAccount_Companies] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companies] ([id])
GO
ALTER TABLE [dbo].[CurrencyAccount] CHECK CONSTRAINT [FK_CurrencyAccount_Companies]
GO
ALTER TABLE [dbo].[UserCompanies]  WITH CHECK ADD  CONSTRAINT [FK_UserCompanies_Companies] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companies] ([id])
GO
ALTER TABLE [dbo].[UserCompanies] CHECK CONSTRAINT [FK_UserCompanies_Companies]
GO
ALTER TABLE [dbo].[UserCompanies]  WITH CHECK ADD  CONSTRAINT [FK_UserCompanies_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[UserCompanies] CHECK CONSTRAINT [FK_UserCompanies_Users]
GO
ALTER TABLE [dbo].[UserOperationClaim]  WITH CHECK ADD  CONSTRAINT [FK_UserOperationClaim_OperationClaim] FOREIGN KEY([OperationClaimid])
REFERENCES [dbo].[OperationClaim] ([id])
GO
ALTER TABLE [dbo].[UserOperationClaim] CHECK CONSTRAINT [FK_UserOperationClaim_OperationClaim]
GO
ALTER TABLE [dbo].[UserOperationClaim]  WITH CHECK ADD  CONSTRAINT [FK_UserOperationClaim_Users] FOREIGN KEY([Userid])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[UserOperationClaim] CHECK CONSTRAINT [FK_UserOperationClaim_Users]
GO
