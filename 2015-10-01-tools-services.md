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

Commands      | tmux (Bash)       | Cmder           | Vim                  | Vrapper (Eclipse) | cVim (Crhome)  | RLogin
---           | ---               | ---             | ---                  | ---               | ---            | ---
Cut           | n/a               | n/a             | `x`                  | `<C-x>`           | n/a            | TODO
Copy          | `<C-b>[`          | n/a(mouse only) | `y`                  | `<C-c>`           | n/a            | TODO
Paste         | `<C-b>]`          | `<A-v>`         | `p`                  | `<C-v>`           | n/a            | TODO
Tab move      | `<C-b>{p,n}`      | `<C-Tab>`       | `g{t,T}`             | `g{t,T}`          | `g{t,T}`,`K,R` | TODO
Tab open      | `<C-b>c`          | `<C-t>`         | `:tabedit`           | TODO              | `<C-t>`        | TODO
Pain move     | `<C-b><AllowKey>` | TODO            | `<C-w>{h,j,k,l>`     | -                 | n/a            | TODO
Pain split    | `<C-b>"`          | TODO            | `<C-w>s`,`:s[plit]`  | -                 | n/a            | TODO
Pain vsplit   | `<C-b>%`          | TODO            | `<C-w>v`,`:v[split]` | -                 | n/a            | TODO
Pain close    | -                 | `<C-w>`         | `<C-w>c`,`:clo[se]`  | `<C-F4>`          | `x`            | TODO
Pain maximize | `<C-b>z`          | TODO            | -                    | `<C-m>`           | `F11`          | TODO
Shutdown      | -                 | TODO            | `:qa[ll]`            | `<Alt-F4>`        | `<Alt-F4>`     | TODO

#### After

Commands      | tmux (Bash)      | Cmder             | Vim          | Vrapper (Eclipse) | cVim (Chrome) | RLogin
---           | ---              | ---               | ---          | ---               | ---           | ---
Cut           | -                | n/a               | `x`          | `x`               | -             | n/a
Copy          | `<C-s>[`         | n/a(mouse only)   | `y`          | `y`               | `y`           | `<A-c>`
Paste         | `<C-s>]`         | `<A-v>`           | `p`          | `p`               | `p`           | `<A-v>`
Tab move      | -                | TODO              | `<C-{h,l}>`  | `<C-{h,l}>`       | `<C-{h,l}>`   | TODO
Tab open      | TODO             | TODO              | TODO         | TODO              | TODO          | TODO
Pain move     | `<C-s>{h,l,j,k}` | `<C-S-{h,l,j,k}>` | `s{h,j,k,l>` | `s{h,j,k,l>`      | n/a           | TODO
Pain split    | `<C-s>p`         | `<C-S-p>`         | `sp`         | `sp`              | -             | `<C-S-p>`
Pain vsplit   | `<C-s>v`         | `<C-S-v>`         | `sv`         | `sv`              | -             | `<C-S-v>`
Pain close    | `<C-s>c`         | `<C-S-c>`         | `<C-c>`      | `<C-c>`           | `x`           | `<C-S-c>`
Pain maximize | `<C-s>t`         | `<C-S-t>`         | `<C-t>`      | `<C-t>`           | TODO          | TODO
Shutdown      | `<C-s>q`         | `<C-S-q>`         | `:qa[ll]`    | `:qa[ll]`         | `:qa[ll]`     | TODO

Hint

* `<C-S-hoge>`のような3キー同時押しは、cVim, Cmder, RLoginのみで可能
* `<C-S>hoge`のようなprefix -> キーという定義は、Vim, Vrapper, tmuxのみで可能
* RLoginはやめて、Cmderをsshクライアントとしたい
* CmderのPasteが微妙(他と合ってない)

### Tools color unity

Tools   | dark/light | color
---     | ---        | ---
Vim     | dark       | Tomorrow-Night
GVim    | dark       | Tomorrow-Night
tmux    | dark       | default
Cmder   | dark       | Tomorrow-Night
Eclipse | light      | default(light)

Hint

* TODO Linux GVimで無駄にboldになるキーワードがある
* TODO 同じTomorrow-NightなのにGVimとCmder -> vimでsyntax highlightが異なる

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
