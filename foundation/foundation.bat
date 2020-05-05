@echo off

@echo === Maven OSGi ===
cd maven-osgi
call mvn clean p2:site

@echo === Third Party ===
cd ..\third-party\bundles\flexmark
call download-dependencies.bat

cd ..\third-party\bundles\google-text-to-speech
call download-dependencies.bat

cd ..\janino
call download-dependencies.bat

cd ..\..
call mvn clean package

@echo === Composite ===
cd ..\composite
call mvn clean generate-resources



