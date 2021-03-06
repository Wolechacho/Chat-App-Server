USE [ChatDB]
GO
/****** Object:  StoredProcedure [dbo].[CreateOrUpdateConnectionDetails]    Script Date: 5/25/2019 7:58:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateOrUpdateConnectionDetails]
	-- Add the parameters for the stored procedure here
	@username nvarchar(50),
	@groupid nvarchar(50),
	@connectionId nvarchar(max),
	@onlineStatus bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	 IF NOT EXISTS (SELECT * FROM [dbo].[ConnectionDetails]
                   WHERE  Username = @username)
    BEGIN
			INSERT into [dbo].[ConnectionDetails](Username,GroupId,ConnectionId,OnlineStatus) 
	values(@username,@groupId,@connectionId,@onlineStatus)
	END
	update [dbo].[ConnectionDetails] set ConnectionId = @connectionId,GroupId = @groupid where Username = @username
    -- Insert statements for procedure here
END

GO
/****** Object:  StoredProcedure [dbo].[CreateUser]    Script Date: 5/25/2019 7:58:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CreateUser]
	-- Add the parameters for the stored procedure here
	@username nvarchar(50),
	@password nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	
	INSERT into [dbo].[UserLogin](Username,[dbo].[Password]) 
	values(@username,@password)
END

GO
/****** Object:  StoredProcedure [dbo].[GetAllGroups]    Script Date: 5/25/2019 7:58:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAllGroups]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	
	select * from dbo.[Group]
END

GO
/****** Object:  StoredProcedure [dbo].[GetConnectionIds]    Script Date: 5/25/2019 7:58:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetConnectionIds]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

    -- Insert statements for procedure here
	SELECT * from [dbo].[ConnectionDetails] where ConnectionId = 1
END

GO
/****** Object:  StoredProcedure [dbo].[GetUser]    Script Date: 5/25/2019 7:58:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetUser]
	-- Add the parameters for the stored procedure here
	@username nvarchar(50),
	@password nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	
	SELECT * from [dbo].[UserLogin] WHERE  UserName = @username and Password = @password
END

GO
/****** Object:  StoredProcedure [dbo].[GetUserName]    Script Date: 5/25/2019 7:58:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetUserName]
	-- Add the parameters for the stored procedure here
	@username nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	
	SELECT * from [dbo].[UserLogin] WHERE  UserName = @username
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateOnlineStatus]    Script Date: 5/25/2019 7:58:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateOnlineStatus]
	-- Add the parameters for the stored procedure here
	@username nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from

	update [dbo].[ConnectionDetails] set OnlineStatus = 0 where Username = @username
    -- Insert statements for procedure here
END

GO
