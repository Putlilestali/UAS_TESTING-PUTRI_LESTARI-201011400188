*** Settings ***

Library   SeleniumLibrary

*** Variables ***
${browser}    chrome
${url_webtest}    https://www.gramedia.com
${username}    putri@gmail.com
${pass}    YukPutriBisa



*** Test Cases ***
Pengetesan Login
    Open Browser    ${url_webtest}    ${browser}
    Maximize Browser Window
    Get Action Chain Delay
    Click Button    xpath://*[@id="login-button"]/button  
    Input Text    id=mat-input-0    ${username}
    Input Password    id=mat-input-1    ${pass}
    Click Button    xpath://*[@id="login-area"]/form/button
    Sleep    5s


Pengetesan search bar    
    Open Browser    ${url_webtest}    ${browser}
    Maximize Browser Window
    Input Text    name=search    Laut Bercerita
    Press Keys     name=search   \RETURN
    Sleep    5s

    




