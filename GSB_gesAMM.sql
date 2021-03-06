USE [GSB_gesAMM]
GO
/****** Object:  Table [dbo].[decision]    Script Date: 13/11/2020 16:57:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[decision](
	[dcs_id] [int] NOT NULL,
	[dcs_libelle] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[dcs_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[etape]    Script Date: 13/11/2020 16:57:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[etape](
	[etp_num] [int] NOT NULL,
	[etp_libelle] [nvarchar](50) NOT NULL,
	[etp_norme] [nvarchar](100) NULL,
	[etp_date_norme] [date] NULL,
 CONSTRAINT [PK__etape__3C861051EB69C57E] PRIMARY KEY CLUSTERED 
(
	[etp_num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[famille]    Script Date: 13/11/2020 16:57:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[famille](
	[fam_code] [nvarchar](3) NOT NULL,
	[fam_libelle] [nvarchar](80) NULL,
	[fam_nb_medi_amm] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[fam_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[historique]    Script Date: 13/11/2020 16:57:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[historique](
	[hst_ept_date_maj] [date] NULL,
	[hst_uti_id] [int] NULL,
	[hst_etp_num] [int] NULL,
	[hst_etp_norme_avant] [nvarchar](50) NULL,
	[hst_etp_norme_apres] [nvarchar](50) NULL,
	[hst_dateDecision_avant] [date] NULL,
	[hst_dateDecision_apres] [date] NULL,
	[hst_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK__historiq__5A0DDBE585021E88] PRIMARY KEY CLUSTERED 
(
	[hst_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[medicament]    Script Date: 13/11/2020 16:57:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[medicament](
	[med_depotLegal] [nvarchar](10) NOT NULL,
	[med_nomCommercial] [nvarchar](25) NULL,
	[med_composition] [nvarchar](255) NULL,
	[med_effets] [nvarchar](255) NULL,
	[med_contreIndic] [nvarchar](255) NULL,
	[med_amm] [nvarchar](10) NULL,
	[med_codeFamille] [nvarchar](3) NULL,
	[med_derniereEtape] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[med_depotLegal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[utilisateur]    Script Date: 13/11/2020 16:57:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[utilisateur](
	[uti_id] [int] NOT NULL,
	[uti_login] [nvarchar](500) NULL,
	[uti_mdp] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[uti_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[workflow]    Script Date: 13/11/2020 16:57:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[workflow](
	[wkf_dateDecision] [date] NULL,
	[wkf_etp_num] [int] NOT NULL,
	[wkf_dcs_id] [int] NULL,
	[wkf_med_dl] [nvarchar](10) NOT NULL,
 CONSTRAINT [pk3] PRIMARY KEY CLUSTERED 
(
	[wkf_med_dl] ASC,
	[wkf_etp_num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[historique]  WITH CHECK ADD  CONSTRAINT [fk10] FOREIGN KEY([hst_etp_num])
REFERENCES [dbo].[etape] ([etp_num])
GO
ALTER TABLE [dbo].[historique] CHECK CONSTRAINT [fk10]
GO
ALTER TABLE [dbo].[historique]  WITH CHECK ADD  CONSTRAINT [fk9] FOREIGN KEY([hst_uti_id])
REFERENCES [dbo].[utilisateur] ([uti_id])
GO
ALTER TABLE [dbo].[historique] CHECK CONSTRAINT [fk9]
GO
ALTER TABLE [dbo].[medicament]  WITH CHECK ADD  CONSTRAINT [fk1] FOREIGN KEY([med_codeFamille])
REFERENCES [dbo].[famille] ([fam_code])
GO
ALTER TABLE [dbo].[medicament] CHECK CONSTRAINT [fk1]
GO
ALTER TABLE [dbo].[medicament]  WITH CHECK ADD  CONSTRAINT [fk4] FOREIGN KEY([med_derniereEtape])
REFERENCES [dbo].[etape] ([etp_num])
GO
ALTER TABLE [dbo].[medicament] CHECK CONSTRAINT [fk4]
GO
ALTER TABLE [dbo].[workflow]  WITH CHECK ADD  CONSTRAINT [fk3] FOREIGN KEY([wkf_dcs_id])
REFERENCES [dbo].[decision] ([dcs_id])
GO
ALTER TABLE [dbo].[workflow] CHECK CONSTRAINT [fk3]
GO
ALTER TABLE [dbo].[workflow]  WITH CHECK ADD  CONSTRAINT [fk5] FOREIGN KEY([wkf_etp_num])
REFERENCES [dbo].[etape] ([etp_num])
GO
ALTER TABLE [dbo].[workflow] CHECK CONSTRAINT [fk5]
GO
ALTER TABLE [dbo].[workflow]  WITH CHECK ADD  CONSTRAINT [fk6] FOREIGN KEY([wkf_med_dl])
REFERENCES [dbo].[medicament] ([med_depotLegal])
GO
ALTER TABLE [dbo].[workflow] CHECK CONSTRAINT [fk6]
GO
