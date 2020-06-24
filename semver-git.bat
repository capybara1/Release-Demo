@echo off
docker run -v "%CD%:/repo" -w=/repo gradle:6.5.0-jdk8 gradle -q --no-daemon getVersion
