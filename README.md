# BadRabVac
A little batch file to vaccinate Windows computers against a BadRabbit ransomware infection

## Background
BadRabbit is a Petya/NotPetya  variant that came out in October 2017. Infections mostly occured in Russia and Ukraine. According to most reports, the initial infection vector was via a drive-by attack where victims would download a fake version of an Adobe Flash installer that would actually be the virus. A number of Russian media outlets were found to be hacked and served this virus to visitors of their site.

This vaccine :syringe: batch file creates files that an infection relied upon (`C:\windows\infpub.dat` and `C:\Windows\cscc.dat`) and disabled the ability for the virus to write to these files. It therefore stops the infection from continuing and prevents it from working on machines that had this vaccine.  
