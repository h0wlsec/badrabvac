@ECHO OFF
set filez=C:\Windows\cscc.dat C:\Windows\infpub.dat

for %%A in (%filez%) do (
    if exist C:\Windows\cscc.dat goto cscc (
        else echo “” > C:\Windows\cscc.dat
    )
)

for %%A in (%filez%) do (
    if exist C:\Windows\infpub.dat goto infpub (
        else echo “” > C:\Windows\infpub.dat
    )
)

icacls C:\Windows\cscc.dat /inheritance:d
icacls c:\Windows\infpub.dat /inheritance:d
exit /b

:cscc
    icacls c:\Windows\cscc.dat /inheritance:d
    goto loop

:infpub
    icacls c:\Windows\infpub.dat /inheritance:d
    exit /b

:loop
for %%A in (%filez%) do (
    if exist C:\Windows\infpub.dat goto infpub (
        else echo “” > C:\Windows\infpub.dat goto infpub
    )
)