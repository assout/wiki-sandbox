# Title: Tools/Services

Date: 2015-10-01 11:05
Tags: []
Categories: []

---

## Prelude

* Linux限定のものは、ref. <2014-09-09-linux.md>
* Windows限定のものは、ref. <2014-12-04-windows.md>
* 重要なものは別ファイル化
	* Git : <2015-02-02-git.md>
	* Docker : <2015-08-10-docker.md>
	* And other

## Tools

### Lint tool list

* ansible
	* ansible-lint
* json
	* jsonlint
* shell
	* shellcheck
	* bashate
	* checkbashisms
* sql
	* sqlint : Error出て入れれてない
* markdown
	* mdl
* yaml
	* js-yaml
	* yaml-lint
* text
	* Redpen

### Ctags

* langmap確認
		ctags --list-maps

### Pacman

* リスト表示
		pacman -Sl
* 検索
		pacman -Ss grep
* インストール
		pacman -S grep
* アンインストール
		pacman -R grep

### Pandoc

* markdownからtextileに変換
		pandoc -s hogehohe.md -o hogehohe.textile

### Redpen

* Spelling機能は半角スペースで区切られた単語にたいしてのみ動作する点に注意してください

### Shell Syntax check tools

* ShellCheck
* bashate
* checkbashisms

#### ShellCheck

* SC2034
	* -> for文とかではdummyとして`_`を使う
			for _ in ${1..10} ; do foo; done

#### bashate

	bashate -i E002,E003

* E002: ensure that indents are only spaces, and not hard tabs
* E003: Not an indent with multiple of 4

### Tools key unity

#### Before (Default)

Commands      | tmux (Bash, Mintty) | Vim                  | Vrapper (Eclipse) | cVim (Crhome)  | RLogin
---           | ---                 | ---                  | ---               | ---            | ---
Cut           | n/a                 | `x`                  | `<C-x>`           | n/a            | TODO
Copy          | `<C-b>[`,`<C-S-c>`  | `y`                  | `<C-c>`           | n/a            | TODO
Paste         | `<C-b>]`,`<C-S-v>`  | `p`                  | `<C-v>`           | n/a            | TODO
Tab open      | `<C-b>c`            | `:tabe[dit]`         | `:tabe[dit]`      | `<C-t>`        | TODO
Tab move      | `<C-b>{p,n}`        | `g{t,T}`             | `g{t,T}`          | `g{t,T}`,`K,R` | TODO
Pain split    | `<C-b>"`            | `<C-w>s`,`:s[plit]`  | -                 | n/a            | TODO
Pain vsplit   | `<C-b>%`            | `<C-w>v`,`:v[split]` | -                 | n/a            | TODO
Pain move     | `<C-b><AllowKey>`   | `<C-w>{h,j,k,l>`     | -                 | n/a            | TODO
Pain close    | -                   | `<C-w>c`,`:clo[se]`  | `<C-F4>`          | `x`            | TODO
Pain maximize | `<C-b>z`            | -                    | `<C-m>`           | `F11`          | TODO
Shutdown      | -                   | `:qa[ll]`            | `<Alt-F4>`        | `<Alt-F4>`     | TODO

#### After

Commands      | tmux (Gnome Terminal, Mintty) | Vim                  | Vrapper (Eclipse) | cVim (Chrome)           | RLogin
---           | ---                           | ---                  | ---               | ---                     | ---
Cut           | -                             | `x`                  | `x`               | -                       | n/a
Copy          | `<C-s>[`,`<C-S-c>`            | `y`                  | `y`               | `y`                     | `<M-c>`
Paste         | `<C-s>]`,`<C-S-v>`            | `p`                  | `p`               | `p`                     | `<M-v>`
Tab open      | `<M-t>`                       | `<M-t>`,`:tabe[dit]` | `-`               | `<C-t>`                 | TODO
Tab move      | `<M-{h,l}>`                   | `<M-{h,l}>`          | `<M-{h,l}>`       | `<M-{h,l}>`,`<C-{h,l}>` | TODO
Tab close     | `<M-c>`                       | `<M-c>`              | `-`               | `c`,`x`                 | TODO
Pain split    | `<C-s>p`                      | `sp`                 | `sp`              | -                       | `<C-S-p>`
Pain vsplit   | `<C-s>v`                      | `sv`                 | `sv`              | -                       | `<C-S-v>`
Pain move     | `<C-s>{h,l,j,k}`              | `s{h,j,k,l}`         | `s{h,j,k,l>`      | n/a                     | TODO
Pain close    | `<C-s>c`                      | `sc`                 | `sc`              | `x`                     | `<C-S-c>`
Pain maximize | `<C-s>m`                      | `sm`                 | `sm`              | TODO                    | TODO
Pain size     | TODO                          | TODO                 | TODO              | TODO                    | TODO
Buffer delete | `<C-s>x`                      | TODO                 | TODO              | `x`                     | TODO
Shutdown      | `<C-s>q`                      | `:qa[ll]`            | `:qa[ll]`         | `:qa[ll]`               | TODO

Hint/TODOs

* `<C-S-hoge>`のような3キー同時押しは、cVim, RLoginのみで可能
* `<C-S>hoge`のようなprefix -> キーという定義は、Vim, Vrapper, tmuxのみで可能
* TODO RLoginはやめて、をsshクライアントとしたい
* TODO Pain sizeを統一したい(<C-w>hogeのvim基準で合わせたい)

### Tools color unity

Tools   | dark/light | color
---     | ---        | ---
Vim     | dark       | hybrid
GVim    | dark       | hybrid
Mintty  | dark       | hybrid
Eclipse | light      | default(light)
tmux    | TODO       | TODO

Hint

* TODO Linux GVimでTomorrow-Nightだと無駄にboldになるキーワードがある(無駄ではない?)

## Services (Web)

* Google Trends
* VISUALGO
* Cacoo
* gitignore.io
* Slack
* ttygif
* moqups
* PromiSEES - Promise visualization playground for the adventurous
* Restler

### Unused

* coggle : Mind map

