*** Settings ***
Documentation    Это пример теста написанного с помощью Robot Framework
Library    SeleniumLibrary


*** Test Cases ***
Check search item in title yandex
    Open Browser    https://yandex.ru    opera
    Input Text    css=#text     Робот Фрэймворк
    Press Keys    css=#text    ENTER
    ${TITLE}    Get Title
    Should Contain      ${TITLE}    Робот Фреймворк
    Close Browser


Check search item in title google
    Open Browser    https://google.ru    opera
    Input Text    name=q     Робот Фрэймворк
    Press Keys    name=q   ENTER
    ${TITLE}    Get Title
    Should Contain      ${TITLE}    Робот Фрэймворк
    Close Browser
