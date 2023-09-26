@echo on
call vrunner vanessa --settings vrunner.json --vanessasettings VAParams.json --path .\features --pathvanessa .\tools\vanessa-automation.1.2.040.20\vanessa-automation\vanessa-automation.epf
cd /d C:\Tester\Test_KRAMP\project directory\build
call allure generate --clean .\allure
call allure open .\allure-report