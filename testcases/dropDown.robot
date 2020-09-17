*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Handling DropDown and ListBox
    open browser    ${url}  ${browser}
    maximize browser window

    #we have keywords select list by label/value/index, similarly unselect
    #label is how its appearing in page
    #two paraeters need to be passed that is id and value(label/index/value)
    select from list by label    continents  Asia
    sleep   2
    #index starts from 0
    select from list by index   continents  3
    sleep   1

    #same method is used for ListBox
    select from list by label   selenium_commands   Wait Commands
    select from list by index   selenium_commands   4
    sleep   2
    unselect from list by label       selenium_commands   WebElement Commands
    close browser


*** Keywords ***