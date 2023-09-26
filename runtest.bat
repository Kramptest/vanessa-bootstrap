vrunner vanessa --settings vrunner.json --vanessasettings VAParams.json --path .\features --pathvanessa .\tools\vanessa-automation.1.2.040.20\vanessa-automation\vanessa-automation.epf
allure generate .\allure\allure_report -o .\allure\allure_report
allure open .\allure\allure_report