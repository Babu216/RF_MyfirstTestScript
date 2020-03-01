
*** Settings ***

Library  SeleniumLibrary

Test Teardown  Close "All" Browsers

#robot -d results Tests/MyFirstTestScript.robot
#robot -d results Tests/MyFirstTestScript-chrome.robot
# Parallel execution -pabot --processes 2 Tests\*.robot
*** Variables ***

${URL} =  https://testautomationsol.com/
#${BROWSER_IE} =  ie
${TITLE} =  xpath=//h1[@class='site-title']//a[contains(text(),'Test Automation Solutions')]
${BROWSER_CHROME} =  chrome

*** Keywords ***

##launch wordpress ie
    ##open browser  ${URL}  ${BROWSER_IE}
    #sleep  2s

launch wordpress chrome
    open browser  ${URL}  ${BROWSER_CHROME}
    sleep  2s

Verify "Title" on Home Page
    page should contain element  ${TITLE}
    sleep  2s

Close "All" Browsers
    close all browsers

*** Test Cases ***

#Navigate to Login Page using IE
 #   launch wordpress ie
  #  Verify "Title" on Home Page


Navigate to Login Page using Chrome
    launch wordpress chrome
    Verify "Title" on Home Page
    #CloseAllBrowsers
