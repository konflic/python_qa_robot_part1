*** Settings ***
Library    SeleniumLibrary

Resource    ../Resources/Common.robot

Documentation    Это пример теста написанного с помощью Robot Framework

Test Setup    Open Browser    NONE    ${BROWSER}
Test Teardown    Close Browser


*** Variables ***
# C переменными уже можно работать через опцию -v
${BROWSER}    chrome
${REQUEST}    Привет


*** Test Cases ***
Check Search Engines Requests
    FOR    ${ENGINE}    ${SEARCH_FIELD}    IN    &{SEARCH_ENGINES}
        Go To    https://${ENGINE}
        Input And Submit Search    ${SEARCH_FIELD}    ${REQUEST}
        Verify Page Title Contains    ${REQUEST}
    END

#Check search item in title yandex
#    Go To    https://yandex.ru
#    Input And Submit Search    css=#text    ${REQUEST}
#    Verify Page Title Contains    Робот Фреймворк
#
#
#Check search item in title google
#    Go To    https://google.ru
#    Input And Submit Search    name=q    ${REQUEST}
#    Verify Page Title Contains    Робот Фрэймворк
#
#
#Check search item in title duckduckgo
#    Go To    https://duckduckgo.com
#    Input And Submit Search    name=q    ${REQUEST}
#    Verify Page Title Contains    Робот Фрэймворк
#
#
#Check search item in title bing
#    Go To    https://www.bing.com
#    Input And Submit Search    name=q    ${REQUEST}
#    Verify Page Title Contains    Робот Фрэймворк
#
#
#Check search item in title go.mail
#    Go To    https://go.mail.ru
#    Input And Submit Search    name=q    ${REQUEST}
#    Verify Page Title Contains    Робот Фреймворк
