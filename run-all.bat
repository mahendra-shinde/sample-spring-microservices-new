@echo off

echo "Please run 'mvn package' command before running this script to build all!"

echo "Launching all services ...."

start "Config Server" java -jar config-service\target\config-service-1.0-SNAPSHOT.jar
timeout /T 10 /NOBREAK


start "Discovery Server" java -jar discovery-service\target\discovery-service-1.0-SNAPSHOT.jar
timeout /T 5 /NOBREAK

start "Department Service" java -jar department-service\target\department-service-1.1.jar
timeout /T 5 /NOBREAK

start "Employee Service" java -jar employee-service\target\employee-service-1.1.jar
timeout /T 5 /NOBREAK

start "Organization Service" java -jar organization-service\target\organization-service-1.1.jar
timeout /T 5 /NOBREAK

start "Gateway Service" java -jar gateway-service\target\gateway-service-1.0-SNAPSHOT.jar
timeout /T 5 /NOBREAK

start http://localhost:8061


