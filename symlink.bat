rem 当ファイル自身のパス
set here=%~dp0
mklink /J "%HOME%\memolist" "%here%"

git config user.name "assout"
git config user.email "assout@users.noreply.github.com"

