@echo off
docker run --rm -v "%cd%:/repo" -w=/repo -e GIT_AUTHOR_NAME local/standard-version %*
