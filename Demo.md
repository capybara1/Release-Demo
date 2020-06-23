Have a look at the initial state

```
./gitversion.sh
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
./gitversion.sh | jq .FullSemVer
```

Apply fix

```
echo "fix" >> TEST
git commit -a -m "changed TEST"
./gitversion.sh | jq .FullSemVer
```

Apply another fix

```
echo "fix" >> TEST
git commit -a -m "changed TEST again"
./gitversion.sh | jq .FullSemVer
```

Add feature

```
echo "feature" >> TEST
git commit -a -m "changed TEST\n\n+semver: feature"
./gitversion.sh | jq .FullSemVer
```

Modify assembly

```
./gitversion.sh /updateassemblyinfo
```

Create Tag

```sh
git tag -a "$(./gitversion.sh | jq .MajorMinorPatch --raw-output)" -m "Next Release"
./gitversion.sh | jq .FullSemVer
```

Clean Up

```sh
git tag -d "$(./gitversion.sh | jq .MajorMinorPatch --raw-output)"
git tag -d 1.0.0
git checkout GitVersion
git branch -D demo
rm -f TEST
```
