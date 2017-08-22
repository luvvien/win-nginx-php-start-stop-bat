@echo off 
echo Starting Nginx... 
cd C:/nginx-1.12.1 
start nginx
echo Starting PHP FastCGI... 
cd C:/Users/bxw74/Desktop
RunHiddenConsole.exe php-cgi.exe -b 127.0.0.1:9000 -c C:/php/php.ini

