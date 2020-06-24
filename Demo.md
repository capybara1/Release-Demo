Have a look at the initial state

```
./semver-git.sh
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
git tag -a 1.0.0 -m "Initial Release"
./semver-git.sh
```

Apply fix

```
echo "fix" >> TEST
git commit -a -m "changed TEST"
./semver-git.sh
```

Add feature

```
echo "feature" >> TEST
git commit -a -m "changed TEST\n\n+semver: feature"
./semver-git.sh
```

Clean Up

```sh
git tag -d 1.0.0
git checkout semver-git
git branch -D demo
rm -rf TEST .gradle
```
