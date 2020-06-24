# semantic-release Demo

## Prepare

Export new value environment variable `LOCAL_GIT_REPO` with the dedicated path
for the local repository.

Export value environment variable `REMOTE_GIT_REPO` with the dedicated path
for the remote repository.

Clone repo representing a shared repository in the demo

```sh
git clone --bare -b semantic-release https://github.com/capybara1/ReleaseDemo.git "$REMOTE_GIT_REPO"
```

Clone again to represent a local repository in the demo
and change the origin URL to the volume mount point in the docker container

```sh
git clone "$REMOTE_GIT_REPO" "$LOCAL_GIT_REPO"
git remote set-url origin "file:///repos/remote.git"
```

Build docker image

```sh
docker build -t local/semantic-release "$LOCAL_GIT_REPO"
```

Change to local repository

```sh
cd "$LOCAL_GIT_REPO"
```

## Perform Demo

Perform release

```
./semantic-release.sh --no-ci
```

Have a look at hostory in remote repository
