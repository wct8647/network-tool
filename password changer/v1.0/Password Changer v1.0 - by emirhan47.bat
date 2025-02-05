@echo off
title Password Changer v1.0 - by emirhan47
color a
cls
echo yonetici olarak calistirdin mi???(sadece yes veya no:)
set /p input=
if /i %input%==yes goto 1
if /i %input%==no goto 2

:1
cls
set /p pass="sifreni gir(dogru girdiginden emin ol): "
echo hazirmisin??
timeout 5
net user %username% %pass%
pause
exit


:2
cls
echo tamam smdi sifreni degistirmek istiyosan uygulamayi yönetici olarak calistir yoksa uygulama calismayacak(herhangi bir tusa basarak pencereyi kapatabilirsin :)
pause
exit
