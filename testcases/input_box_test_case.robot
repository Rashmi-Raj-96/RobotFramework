*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://demo.nopcommerce.com/

*** Test Cases ***
TestingInputBox
    open browser    ${url}  ${browser}
    maximize browser window
    title should be     nopCommerce demo store
    click link  xpath://a[@class='ico-login']
    ${"email_text"}     set variable    id:Email
    #setting variable here so that does not use id:Email everywhere

    element should be visible   ${"email_text"}
    #did not find nay particular use of visible

    element should be enabled   ${"email_text"}
    #enable does not show the value in chrome

    input text  ${"email_text"}    Rashmi@gmail.com

    #to delay the speed
    sleep   5
    clear element text  ${"email_text"}
    sleep   3
    close browser



*** Keywords ***


