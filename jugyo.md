# オラクル授業内容

## 10/5

### 各自のGitHubに演習提出用のリポジトリ作成
    - my.shを入れておく
    - メール「yamauchi @std.it-college.ac.jp」でURL通知

### 第1章 リレーショナルデータベースとSQL
- 表(テーブル), 行(row), 列(COLUMN)
- リレーショナル => 関連(表同士)
- NULL値 => フィールドに値が格納されていないこと。空白(スペース)、や数値の0とは区別される
- 主キー => 表内の行を一意に識別するための列
- 外部キー => 同じ表または他の表の主キー（または一意キー）を参照する列（または列の組みあせ)
- SQL
    - DML
        - SELECT, INSERT, UPDATE, DELETE, MERGE
    - DDL
        - CREATE, ALTER, DROP, RENAME, TRUNCATE, COMMENT
    - DCL
        - GRANT, REVOKE
    - トランザクション制御
        -COMMIT, ROLLBACK, SAVEPOINT

### 第2章 SELECT文を使用したデータの取得
- 射影 => 特定の列の取り出し
- 選択 => 特定の行の取り出し
- 結合 => 複数の表を関連付けてデータの取り出し
- SELECT => 取り出す列を指定、全列(*)
- FROM => 表を指定します
 - desc => 表の構造
 - SELECT句
    - 算術式
        - NULL値の扱い
    - 列別名
    - 結合演算子(||)
        - 代替引用符(q)演算子
    - 重複行の排除(distinct/unique)