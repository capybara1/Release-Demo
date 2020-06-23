Prepare

```
docker build -f Dockerfile-conventional-recommended-bump -t local/conventional-recommended-bump .
docker build -f Dockerfile-conventional-changelog -t local/conventional-changelog .
```

Have a look at the initial recommendation

```
conventional-recommended-bump.bat --preset angular
```

Create branch

```
git checkout -b demo
```

Create Tag

```
touch TEST
git add TEST
git commit -m "added TEST"
git tag -a 1.0.0 -m "feat: Initial Release"
conventional-recommended-bump.bat --preset angular
```

Create changelog

```
conventional-changelog.bat --preset angular --infile CHANGELOG.md --same-file --release-count 0
```

Apply fix

```
echo "fix" >> TEST
git commit -a -m "fix: changed TEST"
conventional-recommended-bump.bat --preset angular
```

Add feature

```
echo "feature" >> TEST
git commit -a -m "feat: changed TEST"
conventional-recommended-bump.bat --preset angular
```

Create Tag

```sh
git tag -a 1.1.0 -m "Next Release"
conventional-recommended-bump.bat --preset angular
```

Update changelog

```
conventional-changelog.bat --preset angular --infile CHANGELOG.md --same-file
```

Clean Up

```sh
git tag -d 1.1.0
git tag -d 1.0.0
git checkout conventional-changelog
git branch -D demo
rm -f TEST CHANGELOG.md
```
