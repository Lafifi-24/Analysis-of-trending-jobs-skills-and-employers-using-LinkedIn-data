
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.select import Select
import time
driver=webdriver.Edge(r'C:\Users\hamza\Downloads\edgedriver_win64\msedgedriver.exe')
driver.get('https://graph.linkedin.com/insights/labor-market')
time.sleep(10)


country=driver.find_element(By.ID,"lmiCountrySelect")
countryd=Select(country)
countryd_option=countryd.options




for dcountry in range(0,len(countryd_option)):
    countryd.select_by_index(dcountry)
    time.sleep(5)
    region=driver.find_element(By.ID,"lmiRegionSelect")
    regiond=Select(region)
    regiond_option=regiond.options
    
    for dregion in range(0,len(regiond_option)):
        try :
            regiond.select_by_index(dregion)
            time.sleep(5)
            date=driver.find_element(By.ID,"lmiTimeframeSelect")
            datedd=Select(date)
            datedd_option=datedd.options
            for ddate in range(0,len(datedd_option)):
                try:
                    datedd.select_by_index(ddate)
                    time.sleep(5)
                    industry=driver.find_element(By.ID,"lmiIndustrySelect")
                    industryd=Select(industry)
                    industryd_option=industryd.options
                    for dindustry in range(0,len(industryd_option)):
                        try:
                            industryd.select_by_index(dindustry)
                            
                            time.sleep(5)
                            driver.find_element(By.XPATH,"//*[(@id = 'ember24')]").click()
                            time.sleep(2)
                        except:
                            print("exception in industry index ",dindustry," date ",datedd_option[ddate] ,"region",regiond_option[dregion]," country ",countryd_option[dcountry])
                            break
                        
                except:
                    print("exception in date index ",ddate," region",regiond_option[dregion]," country ",countryd_option[dcountry])
                    break
                
        except:
            print("exception in region index ",dregion," country ",countryd_option[dcountry])
            break
        
        


            





    

