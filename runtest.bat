vrunner vanessa --settings vrunner.json --vanessasettings VAParams.json --path .\features --pathvanessa .\tools\vanessa-automation\vanessa-automation.epf
allure generate .\build\allure_data -o .\build\allure_report
allure open .\build\allure_report