@echo off
docker run --rm -v "%CD%:/repo" gittools/gitversion:5.3.5-linux-alpine.3.10-x64-netcoreapp3.1 /repo %*
