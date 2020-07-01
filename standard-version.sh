docker run --rm -v "$PWD:/repo" -w=/repo -e GIT_AUTHOR_NAME local/standard-version "$@"
