*** Settings ***
Library     SeleniumLibrary
Library     Collections
Library    ExcelLibrary  
Library    String 
  

*** Variables ***
&{CITYLIST}    Mumbai, Maharashtra, IN=10    Rome, Lazio, IT=20
${wait}     30
${count}    
${CityNameOnly}
${textboxid}    id=searchInput



*** Test Cases ***
Visit Wikipedia Site and get the values
    
     ${Keys}=    Get Dictionary Keys    ${CITYLIST} 
     Log To Console     ${Keys}    
     
     SeleniumLibrary.Open Browser   https://www.wikipedia.org/    chrome
     SeleniumLibrary.Set Selenium Implicit Wait  ${wait}
     SeleniumLibrary.Set Browser Implicit Wait   ${wait}
     SeleniumLibrary.Maximize Browser Window  
     
    #String.Split String    string    
          #Launch Browser
     
   
