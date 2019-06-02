USE [ChatDB]
GO
/****** Object:  User [cassim]    Script Date: 6/2/2019 1:26:37 PM ******/
CREATE USER [cassim] FOR LOGIN [cassim] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [cassim]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [cassim]
GO
ALTER ROLE [db_datareader] ADD MEMBER [cassim]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [cassim]
GO
