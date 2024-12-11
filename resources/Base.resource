*** Settings ***
Documentation    base resource da automação do saucedemo    

Resource    ../resources/Login.resource
Resource    ../resources/Home.resource

*** Keywords ***
Iniciar testes 
    New Browser    chromium    headless=False 
    New Page        https://www.saucedemo.com

Encerar testes
    Take Screenshot
    Close Browser