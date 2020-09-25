*** Settings ***
Library            SeleniumLibrary


*** Variables ***
${url}             file:///home/dandybarbosa/projeto_github/site_html/index.html 

*** Keywords ***
Nova sessão
    Open Browser     ${url}        chrome 

Encerrar sessão
    Capture Page Screenshot
    Close Browser