﻿Invoke-sqlcmd -ServerInstance 'devAnsibleEnv\SQLEXPRESS' -Database ChatDB -InputFile 'C:\GitRepo.CompiledCode\Chat-App-Server\PW_Script\createtables_script.ps1'