USE [master]
GO
CREATE DATABASE [SOA_TechAndSolve]
GO

USE [SOA_TechAndSolve]
GO

DROP TABLE IF EXISTS [dbo].[ExecStamp_Details]
GO

DROP TABLE IF EXISTS [dbo].[ExecStamp]
GO

CREATE TABLE [dbo].[ExecStamp](
	[IdExecStamp] [int] IDENTITY(1,1) NOT NULL,
	[Identification] [nvarchar](15) NOT NULL,
	[DateStamp] [date] not null,
	[TimeStamp] [time](7) not null,
	[Type] [int] not null,
	[ElementList] [nvarchar](MAX) NOT NULL,
	CONSTRAINT [PK_ExecStamp] PRIMARY KEY ([IdExecStamp])
)
GO

CREATE TABLE [dbo].[ExecStamp_Details](
	[IdExecStamp_Details] [int] IDENTITY(1,1) NOT NULL,
	[ExecStamp] [int] NOT NULL,
	[Case] [int] NOT NULL, 
	[TripsQuantity] [int] NOT NULL, 
	CONSTRAINT [PK_ExecStamp_Details] PRIMARY KEY ([IdExecStamp_Details])
)
GO

ALTER TABLE [dbo].[ExecStamp_Details] ADD CONSTRAINT [FK_ExecStamp_Details_ExecStamp] FOREIGN KEY ([ExecStamp])
REFERENCES [dbo].[ExecStamp] ([IdExecStamp])
GO