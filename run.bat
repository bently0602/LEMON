@echo off
REM https://stackoverflow.com/questions/8287628/proxies-with-python-requests-module

REM set http_proxy=socks5://127.0.0.1:1337 
REM set https_proxy=socks5://127.0.0.1:1337

taskkill /f /im python.exe
python LEMON.py
