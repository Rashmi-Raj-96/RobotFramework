*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      http://www.practiceselenium.com/practice-form.html


*** Test Cases ***
Testing Radio Button and Check Boxes
    open browser    ${url}   ${browser}
    #got error : WebDriverException: Message: 'geckodriver' executable needs to be in PATH.
    #reason : space was not enough

    maximize browser window

    #provide name of radio button and value after keyword
    select radio button  sex    Female
    select radio button  exp    5

    #to delay the speed we can also use
    set selenium speed      1seconds

    #just need to mention name/id of checkbox
    #we can select multiple checkboxes
    #we can again uncheck the selected option using unselect
    select checkbox     oolongtea
    select checkbox     RedTea
    unselect checkbox   oolongtea

    close browser
*** Keywords ***