*** Settings ***
Documentation    métodos e ações da página de login    

Library    Browser

*** Keywords ***
Validar titulo Swag Labs
    [arguments]     ${validar_titulo}   
    Wait For Elements State    css=div[class=login_logo]    visible    5   
    Get Text                   css=div[class=login_logo]    equal      ${validar_titulo}

Realizar login
    [arguments]    ${username}    ${password}
    Wait For Elements State    css=input[placeholder=Username]    visible    5   
    Fill Text                  css=input[placeholder=Username]    ${username} 
    Wait For Elements State    css=input[placeholder=Password]    visible    5   
    Fill Text                  css=input[placeholder=Password]    ${password}
    Click                      css=input[name=login-button]

Validar login com sucesso
    [arguments]    ${texto_logado}
    Wait For Elements State    css=span[data-test=title]    visible    5
    Get Text                   css=span[data-test=title]    equal      ${texto_logado}

Validar usuario bloqueado
    [arguments]    ${username blocked}    ${password}
    Wait For Elements State    css=input[placeholder=username]    visible    5
    Fill Text                  css=input[placeholder=username]    ${username blocked}     
    Wait For Elements State    css=input[placeholder=Password]    visible    5
    Fill Text                  css=input[placeholder=Password]    ${password} 

Login dados em branco
   
    Wait For Elements State    css=input[placeholder=username]    visible    5 
    Wait For Elements State    css=input[placeholder=Password]    visible    5   
    Click                      css=input[name=login-button]   

Realizar login com usuario em branco
     [arguments]    ${EMPTY}    ${password}
    Wait For Elements State    css=input[placeholder=username]    visible    5
    Fill Text                  css=input[placeholder=username]    ${EMPTY}     
    Wait For Elements State    css=input[placeholder=Password]    visible    5
    Fill Text                  css=input[placeholder=Password]    ${password}
    Click                      css=input[name=login-button]   

Realizar login com senha em branco
    [arguments]    ${username}    ${EMPTY}
    Wait For Elements State    css=input[placeholder=username]    visible    5
    Fill Text                  css=input[placeholder=username]    ${username}    
    Wait For Elements State    css=input[placeholder=Password]    visible    5
    Fill Text                  css=input[placeholder=Password]    ${EMPTY}
    Click                      css=input[name=login-button]  

Realizar login com usuario  
    [arguments]    ${userinvalid}    ${password}
    Wait For Elements State    css=input[placeholder=username]    visible    5
    Fill Text                  css=input[placeholder=username]    ${userinvalid}    
    Wait For Elements State    css=input[placeholder=Password]    visible    5
    Fill Text                  css=input[placeholder=Password]    ${password}
    Click                      css=input[name=login-button]  

Validar mensagem de erro
    [arguments]    ${msgerro}
    Wait For Elements State    xpath=//h3[@data-test='error']      visible    5
    Get Text                   xpath=//h3[@data-test='error']      equal      ${msgerro}

Clicar em logout
    Wait For Elements State    id=react-burger-menu-btn          visible    5
    Click                      id=react-burger-menu-btn
    Wait For Elements State    id=logout_sidebar_link            visible    5
    Click                      id=logout_sidebar_link                

    