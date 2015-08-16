Title: OpenShift
==========
date: 2015-08-16 18:24
tags: []
categories: []
- - -
# 構築
		rhc setup
		rhc app create management diy-0.1
		cd management
		git remote add github git@github.com:assout/collection-management.git

# command
* sshログイン
		rhc ssh $app
* ログtail
		rhc tail -a myapp
