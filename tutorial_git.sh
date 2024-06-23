[GŁÓWNY]
1. Wprowadzenie
git commit
git commit
/
git branch bugFix
git checkout bugFix
/
git checkout -b bugFix
git commit
git checkout main
git commit
git merge bugFix
/
git checkout -b bugFix
git commit
git checkout main
git commit
git checkout bugFix

2. Rozkręcanie
git checkout c4
/
git checkout bugFix^
/
git checkout HEAD^
git branch -f bugFix HEAD^
git branch -f main C6
/
git reset HEAD~1
git checkout pushed
git revert HEAD

3. Przenoszenie pracy
git cherry-pick C3 C4 C7
/
git rebase -i HEAD~4

4. Po trochu wszystkiego
git rebase -i C1
git branch -f main bugFix
/
git rebase -i HEAD~2
git commit --amend
git rebase -i HEAD~2
git rebase caption main
/
git checkout main
git cherry-pick c2
git commit --amend
git cherry-pick c3
/
git tag v0 c1
git checkout c2
git tag v1
/
git describe main
git describe bugFix
git describe c6
git commit

5. Tematy zaawansowane
git rebase main bugFix
git rebase bugFix side
git rebase side another
git rebase another main
/
git branch bugWork main^^2^
/
git checkout one
git cherry-pick C4 C3 C2
git checkout two
git cherry-pick C5 C4 C3 C2
git branch -f three C2


[ZDLANY]
1. Push & Pull
git clone
/
git commit
git checkout o/main
git commit
/
git fetch
/
git pull
/
git fakeTeamwork 2
git commit
git pull
/
git commit
git commit
git push
/
git clone
git fakeTeamwork
git commit
git pull --rebase
git push
/
git reset --hard o/main
git checkout -b feature C2
git push origin feature

2. Zaawansowane zdlane repozytoria
git fetch
git rebase o/main side1
git rebase side1 side2
git rebase side2 side3
git rebase side3 main
git push
/
git checkout main
git pull
git merge side1
git merge side2
git merge side3
git push
/
git checkout -b side o/main
git commit
git pull --rebase
git push
/
git push origin main
git push origin foo
/
git push origin foo:main
git push origin main^:foo
/
git fetch origin c3:foo
git fetch origin c6:main
git checkout foo
git merge main
/
git push origin :foo
git fetch origin :bar
/
git pull origin c3:foo
git pull origin c2:side