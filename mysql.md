## MySQL

- MySQLサーバのインストール(rootのパスワードを設定)
    - $ sudo apt install mysql-server
- rootユーザでMySQLに接続<br>
$ mysql -u root -p
- サーバ側の文字コードの変更<br>
$ sudo subl /etc/mysql/mysql.conf.d/mysqld.cnf<br>
「mysqld」セクションに「character-set-server=utf8」を追加
```
[mysqld]
character-set-server=utf8
```
- データベース作成<br>
mysql> create database testdb;
- 「testdb」に接続できるユーザを作成(ユーザ名:test, パスワード:test)<br>
mysql> grant all on testdb.* to test@localhost identified by 'test';
- 一旦切断<br>
mysql> \q
- 作成したユーザでtestdbに接続<br>
$ mysql -u test -p testdb<br>
Enter password: test
- テーブルの作成
``` sql
create table users(
    id int primay key auto_increment,
    name varchar(255),
);
```
- データの追加
``` sql
insert into users(name) values('yamauchi');
insert into users(name) values('yamada');
insert into users(name) values('yamakawa');
```
