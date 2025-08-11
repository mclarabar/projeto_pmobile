import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    String dbName = 'aboutUs.db';

    String dbPath = join(path, dbName);
    print(dbPath);
    var db = await openDatabase(dbPath, version: 1, onCreate: onCreate);
    return db;
  }

  Future<void> onCreate(Database db, int version) async {
    String sql = '''CREATE TABLE Propriedade (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    image TEXT,
    nome TEXT,
    datas TEXT,
    tipoDeHost TEXT
);''';

    await db.execute(sql);

    sql =
        "INSERT INTO Propriedade (image, nome, datas, tipoDeHost) VALUES ('assets/images/Ezequiel.png', 'José Ezequiel', 'Professional Host', 'https://news.airbnb.com/');";
    await db.execute(sql);

    sql =
        "INSERT INTO Propriedade (image, nome, datas, tipoDeHost) VALUES ('assets/images/Lara.png', 'Lara Ivine', 'Superhost', 'https://cf.bstatic.com/');";
    await db.execute(sql);

    sql =
        "INSERT INTO Propriedade (image, nome, datas, tipoDeHost) VALUES ('assets/images/Clara.png', 'Maria Clara', 'Professional Host', 'https://cf.bstatic.com/');";
    await db.execute(sql);

    sql =
        "INSERT INTO Propriedade (image, nome, datas, tipoDeHost) VALUES ('assets/images/Karla.png', 'Maria Karla', 'Superhost', 'https://cf.bstatic.com/');";
    await db.execute(sql);
  }
}
