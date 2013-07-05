@ECHO off
REM -->> ATUALIZA O CORE
ECHO --- ATUALIZANDO O OPENMRS-CORE ---
cd openmrs-core
git pull
start /wait mvn clean install
cd ..
ECHO --- OPENMRS-CORE ATUALIZADO ---
echo.

REM -->> ATULIZA O REFERENCE APP
ECHO --- ATUALIZANDO O OPENMRS-DISTRO-REFERENCEAPPLICATION ---
cd openmrs-distro-referenceapplication
git pull
start /wait mvn clean install
cd ..
ECHO --- OPENMRS-DISTRO-REFERENCEAPPLICATION ATUALIZADO ---
echo.

REM -->> ATUALIZA O REGISTRATION APP
ECHO --- ATUALIZANDO O OPENMRS-MODULE-REGISTRATIONAPP ---
cd openmrs-module-registrationapp
git pull
start /wait mvn clean install
cd..
ECHO --- REGISTRATIONAPP ATUALIZADO ---
echo.

REM -->> ATUALIZA O REGISTRATION CORE
ECHO --- ATUALIZANDO O OPENMRS-MODULE-REGISTRATIONCORE ---
cd openmrs-module-registrationcore
git pull
start /wait mvn clean install
ECHO --- ATUALIZANDO O OPENMRS-MODULE-REGISTRATIONCORE ---
echo.

ECHO --- OPEN-MRS ATUALIZADO COM SUCESSO ---
ECHO Obrigado por utilizar o sistema de automacao XGH.
ECHO Para atendimento ao consumidor, ligar para 0118 999 881 999 119 7253.
PAUSE