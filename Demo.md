# standard-version Demo

```
docker build -t local/standard-version .
```

Perform first release

```
./standard-version.sh --packageFiles package.json --first-release
```

Perform subsequent release

```
./standard-version.sh --packageFiles package.json
```
