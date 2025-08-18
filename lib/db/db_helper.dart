import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    String dbName = 'habitospreventivos.db';

    String dbPath = join(path, dbName);
    print(dbPath);
    var db = await openDatabase(dbPath, version: 1, onCreate: onCreate);
    return db;
  }

  Future<void> onCreate(Database db, int version) async {
    String sql = '''CREATE TABLE Propriedade (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    text_titulo TEXT,
    text TEXT
    );''';

    await db.execute(sql);

    sql =
    "INSERT INTO Propriedade (text_titulo, text) VALUES ('NÃO FUME', 'O cigarro prejudica os pulmões, o coração e aumenta o risco de várias doenças.')";
    await db.execute(sql);

    sql =
    "INSERT INTO Propriedade (text_titulo, text) VALUES ('EVITE EXPOSIÇÃO A POLUENTES', 'A qualidade do ar influencia diretamente sua saúde respiratória.')";
    await db.execute(sql);

    sql =
    "INSERT INTO Propriedade (text_titulo, text) VALUES ('ADOTE UMA DIETA SAUDÁVEL', 'Prefira alimentos naturais, com menos gordura, sal e açúcar.')";
    await db.execute(sql);

    sql =
    "INSERT INTO Propriedade (text_titulo,text) VALUES ('PRATIQUE ATIVIDADE FÍSICA', 'Exercitar-se regularmente melhora o humor, a disposição e previne doenças.')";
    await db.execute(sql);

    sql =
    "INSERT INTO Propriedade (text_titulo, text) VALUES ('FAÇA CONSULTAS MÉDICAS', 'O acompanhamento profissional ajuda na prevenção e no diagnóstico precoce.')";
    await db.execute(sql);
  }
}