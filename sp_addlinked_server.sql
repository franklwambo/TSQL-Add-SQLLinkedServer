USE master;  
GO 
-- there is no need to specify the database-instance if referencing a default SQL Server instance
EXEC sp_addlinkedserver   
   N'server_name\database-instance',  
   N'SQL Server';  
GO

EXEC master.dbo.sp_addlinkedsrvlogin 
@rmtsrvname=N'server_name\database-instance', @useself=N'False', @locallogin=NULL, @rmtuser=N'sa', @rmtpassword=N'your_database_password'