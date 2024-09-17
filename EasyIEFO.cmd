::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbAs=
::ZQ05rAF9IAHYFVzEqQIVKQhNZSGkEws=
::eg0/rx1wNQPfEVWB+kM9LVsJDCGDL3KTI5Mzpuv264o=
::fBEirQZwNQPfEVWB+kM9LVsJDCGDL3KTI5MziA==
::cRolqwZ3JBvQF1fEqQK08PvSgNoH06Q+3XCbJgh+Ah8CXp2aiBS3pn5dInQLww+WAI5imXeqLJ7fSCSJ297dm8Uoju1U
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDpQQQ2MNXiuFLQI5/rHy++UqVkSRN4aeZzC85GoD9w261b9XLML+ToJyoYOBQ8WewquDg==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
echo EasyIEFO
echo   -version 1.0.0 By  Bilibili @sheep_003 ^& 抖音 @sheep_003 ^(UID: 41145878797^)
:start
echo.
echo 请输入模式:
echo     R        打开注册表编辑器
echo     1        添加映像劫持项
echo     2        修改被映像劫持的目标
echo     3        修改要劫持为的目标   
echo     4        删除映像劫持项
echo     Github   打开作者Github主页
echo     EasyIEFO 打开EasyIEFO的Github页
echo     Bilibili 打开作者B站主页 （ 作者上学很不容易 
echo     Douyin   打开作者抖音主页   求点赞关注三连！！！）

set /p mode=请输入：
if /i %mode% == R (
    goto modeR
) else if %mode% == 1 (
    goto mode1
) else if %mode% == 2 (
    goto mode2
) else if %mode% == 3 (
    goto mode3
) else if %mode% == 4 (
    goto mode4
) else if /i %mode% == Github (
    goto modeGithub
) else if /i %mode% == EasyIEFO (
    goto modeEI
) else if /i %mode% == Bilibili (
    goto modeBilibili
) else if /i %mode% == Douyin (
    goto modedy
)


:finish
pause>按任意键继续操作......
goto start

rem ------------------------------------------------------------------------------------

:modeR
start %SystemRoot%\"regedit.exe"
goto finish

:mode1
set /p Target=请输入要被劫持的目标:
set /p Source=请输入【%Target%】要被劫持为的目标:
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%Target%" /v Debugger /t REG_SZ /d "%Source%"
goto finish

:mode2
set /p Target1=请输入原被劫持的目标:
set /p Target2=请输入现被劫持的目标:
reg copy "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%Target1%" "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%Target2%"
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%Target1%" /f
goto finish

:mode3
set /p Target=请输入将要改变劫持目标的被劫持的目标:
set /p Source=请输入【%Target%】要被重新劫持的目标:
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%Target%" /v Debugger /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%Target%" /v Debugger /t REG_SZ /d "%Source%"
goto finish

:mode4
set /p Target=请输入将要删除的映像劫持目标:
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%Target%" /f
goto finish

:modeGithub
start https://github.com/qinshihuang233

:modeEI
start https://github.com/qinshihuang233/EasyIEFO

:modeBilibili
start https://space.bilibili.com/2063843462

:modedy
start https://www.douyin.com/user/MS4wLjABAAAAhkwaMIm35TO-WU8pGKM_gRkSBeV7T8RhhgiW1sySGPY?from_tab_name=main