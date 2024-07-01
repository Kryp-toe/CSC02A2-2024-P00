@ECHO OFF
Rem Change to Java 21
set JAVA_HOME=C:\jdk-21
set PATH=%JAVA_HOME%\bin;%PATH%

Rem check jdk version
javac -version

Rem go to parent directory
cd..

Rem folder variables
set PRAC_BIN=.\bin
set PRAC_SRC=.\src
set PRAC_DOC=.\docs

Rem compile code
ECHO Compiling
javac -d %PRAC_BIN% %PRAC_SRC%\Twang.java

ECHO Running
set /p choice= "Please enter a number: " 
ECHO '%choice%'
java -cp %PRAC_BIN% Twang %choice%

ECHO Decompiling
javap -c %PRAC_BIN%\Twang.class > %PRAC_DOC%\ByteCode.txt

PAUSE
