@echo off
set rootDir=%CD%
set binDir=%rootDir%\bin
set binName=%binDir%\hello.exe

if not exist %binDir% (mkdir %binDir%)

call "C:\Program Files (x86)\Microsoft Visual Studio\2017\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" x86
set compilerflags=/Od /Zi /EHsc
set linkerflags=/OUT:%binName%
cl.exe %compilerflags% %rootDir%\helloCPP.cpp /link %linkerflags%