@echo off
docker run --rm --env-file .env -v %ARTIFACT_REPO%:/repos/deploy  -v %LOCAL_GIT_REPO%:/repos/local -v %REMOTE_GIT_REPO%:/repos/remote.git -w=/repos/local maven:3.6-adoptopenjdk-8 mvn %*
