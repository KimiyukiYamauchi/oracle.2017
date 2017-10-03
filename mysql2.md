- 仮想環境を作成
```
$ vagrant init hashicorp/precise64
```
- [仮想環境のプロキシ設定](http://tk2-207-13211.vs.sakura.ne.jp/2015/12/500/)
- 仮想環境に接続 & mysqlインストール
```
$ vagrant ssh
$ sudo apt-get install mysql-server
```
- データベースの文字コードの設定
```
$ sudo vi /etc/mysql/my.cnf
```
``` .cnf
[client]
default-character-set=utf8

[mysql]
default-character-set=utf8

[mysqldump]
default-character-set=utf8

[mysqld]
character-set-server=utf8
```
- ｍｙｓｑl再起動
```
$ sudo service mysql restart
```
- rootで接続
```
$ mysql -u root -p
```
- データベース作成(データベース名:testdb)
```
mysql> create database testdb;
```
- ユーザ作成(ユーザ名:test、パスワード:test)
```
mysql> grant all on testdb.* to test@localhost identified by 'test';
```
- 切断
```
mysql> exit
```
- 作成したユーザでデータベースに接続できることを確認
```
$ mysql -u test -p testdb
```
- いったん切断
```
mysql> exit
```
- 動作確認用データベース作成

```
$ mysql -u test -p testdb < create_tbl_mysql.sql
```
