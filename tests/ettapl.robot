*** Settings ***
    
Library     SeleniumLibrary

*** Variables ***

${URL}      https://www.te-palvelut.fi/
${BROWSER}    chrome
${Link}       Avoimet työpaikat  
${INPUT_TEXT}    Etteplan Test Automation 
${JOB_LINK}         https://candidate.hr-manager.net/ApplicationInit.aspx?cid=1522&ProjectId=148987&DepartmentId=18973&MediaId=5
  
*** Test Cases ***

Test Automation Job Application

    Open Browser       ${URL}       ${BROWSER}
    Click Link         ${Link}
    Sleep              2s
    Input Text         //*[@id="sanahaku"]     ${INPUT_TEXT} 
    Sleep              3s
    Click Button       //*[@id="searchButton"]  
    Wait Until Page Contains     Software Test Automation Engineers
    Sleep              5s
    Click Element        //*[@id="l11216778"]
    Sleep              5s
    Click Link        Tiedot
    Wait Until Page Contains          Sopimuksen mukaan
    Sleep              2s
    Click Link         ${JOB_LINK}
    Switch Window    NEW
    #Wait Until page Contains        Hae Työpaikkaa
    Sleep             10s
    Switch Window   MAIN
    Sleep             3s
    Close Browser
