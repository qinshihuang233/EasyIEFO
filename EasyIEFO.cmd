@echo off
echo EasyIEFO
echo   -version 1.0.0 By  Bilibili @sheep_003 ^& ���� @sheep_003 ^(UID: 41145878797^)
:start
echo.
echo ������ģʽ:
echo     R        ��ע���༭��
echo     1        ���ӳ��ٳ���
echo     2        �޸ı�ӳ��ٳֵ�Ŀ��
echo     3        �޸�Ҫ�ٳ�Ϊ��Ŀ��   
echo     4        ɾ��ӳ��ٳ���
echo     Github   ������Github��ҳ
echo     EasyIEFO ��EasyIEFO��Githubҳ
echo     Bilibili ������Bվ��ҳ �� ������ѧ�ܲ����� 
echo     Douyin   �����߶�����ҳ   ����޹�ע������������

set /p mode=�����룺
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
pause>���������������......
goto start

rem ------------------------------------------------------------------------------------

:modeR
start %SystemRoot%\"regedit.exe"
goto finish

:mode1
set /p Target=������Ҫ���ٳֵ�Ŀ��:
set /p Source=�����롾%Target%��Ҫ���ٳ�Ϊ��Ŀ��:
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%Target%" /v Debugger /t REG_SZ /d "%Source%"
goto finish

:mode2
set /p Target1=������ԭ���ٳֵ�Ŀ��:
set /p Target2=�������ֱ��ٳֵ�Ŀ��:
reg copy "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%Target1%" "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%Target2%"
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%Target1%" /f
goto finish

:mode3
set /p Target=�����뽫Ҫ�ı�ٳ�Ŀ��ı��ٳֵ�Ŀ��:
set /p Source=�����롾%Target%��Ҫ�����½ٳֵ�Ŀ��:
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%Target%" /v Debugger /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%Target%" /v Debugger /t REG_SZ /d "%Source%"
goto finish

:mode4
set /p Target=�����뽫Ҫɾ����ӳ��ٳ�Ŀ��:
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