*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      http://demowebshop.tricentis.com/register

*** Test Cases ***
SpeedTest
    #want to know deafult selenium speed
    ${speed}=   get selenium speed

    #printing the value in console
    log to console  ${speed}
    open browser    ${url}  ${browser}
    maximize browser window

    #by default selenium speed/delay is 0 seconds
    #sleep work only before that particular action
    #selenium speed works for every statement/keywords
    set selenium speed      1seconds

    select radio button     Gender  F
    input text  name:FirstName  Rashmi
    input text  name:LastName   Raj
    input text  name:Email  rashmi.raj@ericsson.com
    input text  name:Password   12345678
    input text  name:ConfirmPassword    12345678

    ${speed}=   get selenium speed
    log to console  ${speed}

    close browser

    close browser


*** Keywords ***