@echo off
docker run -v "%CD%:/repo" -w=/repo local/conventional-recommended-bump %*
