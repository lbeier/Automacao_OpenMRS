@ECHO off
REM -->> ClONA O CORE
ECHO --- CLONANDO O OPENMRS-CORE ---
git clone -b 1.9.x https://github.com/openmrs/openmrs-core.git
cd openmrs-core
call mvn clean install
echo Exit Code = %ERRORLEVEL%
if not "%ERRORLEVEL%" == "0" exit /b
ECHO --- OPENMRS-CORE CLONADO ---
cd ..
echo.

REM -->> CLONA O REFERENCE APP
ECHO --- CLONANDO O OPENMRS-DISTRO-REFERENCEAPPLICATION ---
git clone https://github.com/openmrs/openmrs-distro-referenceapplication.git
cd openmrs-distro-referenceapplication
call mvn clean install
echo Exit Code = %ERRORLEVEL%
if not "%ERRORLEVEL%" == "0" exit /b
ECHO --- OPENMRS-DISTRO-REFERENCEAPPLICATION CLONADO ---
cd ..
echo.

REM -->> CLONA O REGISTRATION APP
ECHO --- CLONANDO O OPENMRS-MODULE-REGISTRATIONAPP ---
git clone https://github.com/CI-OpenMRS/openmrs-module-registrationapp.git
cd openmrs-module-registrationapp
call mvn clean install
echo Exit Code = %ERRORLEVEL%
if not "%ERRORLEVEL%" == "0" exit /b
ECHO --- OPENMRS-MODULE-REGISTRATIONAPP CLONADO ---
cd ..
echo.

REM -->> ATUALIZA O REGISTRATION CORE
ECHO --- CLONANDO O OPENMRS-REGISTRATION-CORE ---
git clone https://github.com/CI-OpenMRS/openmrs-module-registrationcore.git
cd openmrs-module-registrationcore
call mvn clean install
echo Exit Code = %ERRORLEVEL%
if not "%ERRORLEVEL%" == "0" exit /b
ECHO --- OPENMRS-REGISTRATION-CORE CLONADO ---
cd ..
echo.

ECHO --- OPEN-MRS ATUALIZADO COM SUCESSO ---
ECHO Obrigado por utilizar o sistema de automacao XGH.
ECHO Para atendimento ao consumidor, ligar para 0118 999 881 999 119 7253.
PAUSE