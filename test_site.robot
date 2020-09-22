*** Settings ***
Resource        base.robot
Test Setup         Nova sessão
Test Teardown      Encerrar sessão


*** Variables *** 
${title_princ}     UNES Página principal 
${link_qs}         css:a:nth-child(2)
${title_qs}        UNES - Quem somos
${link_cont}       css: a:nth-child(3)
${title_cont}      UNES - Contato  
${input_email}     css:input[type=text]:nth-child(2)
${input_assunto}   css:input[type=text]:nth-child(5) 
${text_area}       css:textarea  


*** Test Cases ***
Titulo da página 
   
    Title Should Be      ${title_princ}
    Click Link           ${link_qs}
    Title Should Be      ${title_qs}
    Click Link           ${link_cont}
    Title Should Be      ${title_cont}
    Input Text           ${input_email}          danielsbarbosa27@gmail.com    
    Input Text           ${input_assunto}        teste com Robotframework
    Input Text           ${text_area}            Site criado e testado 
    Click Button         css:input[type=submit]
