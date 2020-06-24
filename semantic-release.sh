docker run --rm -v "${LOCAL_GIT_REPO:-/tmp/local}:/repos/local" -v "${REMOTE_GIT_REPO:-/tmp/remote.git}:/repos/remote.git" -w=/repos/local local/semantic-release %*
