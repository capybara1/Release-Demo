@echo off
docker run --rm -v "%LOCAL_GIT_REPO%:/repos/local" -v "%REMOTE_GIT_REPO%:/repos/remote.git" -w=/repos/local local/semantic-release %*
