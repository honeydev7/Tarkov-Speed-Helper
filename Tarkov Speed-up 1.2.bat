@echo off
color 2
echo                                                -----------------------------
echo                                                     Tarkov Speed Helper
echo                                                            1.2 
echo                                                          By Honey
echo                                                -----------------------------
timeout /t 4

:start
netsh int tcp set global autotuninglevel=disabled
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global autotuninglevel=normal

netsh int tcp set global dca=enabled
netsh int tcp set global netdma=enabled
netsh int tcp set global ecncapability=enabled

set choice=
set /p choice="Do you want to restart? Press 'y' and enter for Yes Press 'n' and enter for No: "
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='y' goto start