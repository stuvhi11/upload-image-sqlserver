USE [data]
GO
/****** Object:  Table [dbo].[dataguru]    Script Date: 15-Jun-23 8:18:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dataguru](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nip] [varchar](50) NULL,
	[nama_guru] [varchar](50) NULL,
	[ttl] [date] NULL,
	[jenis_kelamin] [char](1) NULL,
	[mapel] [varchar](50) NULL,
	[gaji] [int] NULL,
	[is_Deleted] [bit] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[is_deleted_at] [datetime] NULL,
 CONSTRAINT [PK_dataguru_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datasiswa]    Script Date: 15-Jun-23 8:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datasiswa](
	[nis] [varchar](50) NOT NULL,
	[nama_siswa] [varchar](50) NOT NULL,
	[jenis_kelamin] [char](1) NOT NULL,
	[ttl] [date] NOT NULL,
	[jurusan] [varchar](50) NOT NULL,
	[umur] [int] NULL,
	[is_deleted] [bit] NULL,
	[updated_at] [datetime] NULL,
	[created_at] [datetime] NULL,
 CONSTRAINT [PK_datasiswa] PRIMARY KEY CLUSTERED 
(
	[nis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[totall]    Script Date: 15-Jun-23 8:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[totall](
	[total] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[upimage]    Script Date: 15-Jun-23 8:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[upimage](
	[gambar] [varbinary](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[upimagemvc]    Script Date: 15-Jun-23 8:18:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[upimagemvc](
	[imgid] [int] IDENTITY(1,1) NOT NULL,
	[imgdesc] [nvarchar](50) NULL,
	[img] [varbinary](max) NULL,
 CONSTRAINT [PK_upimagemvc] PRIMARY KEY CLUSTERED 
(
	[imgid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
