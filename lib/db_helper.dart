import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';


class DBHelper {
  static final DBHelper _instance = DBHelper._internal();
  factory DBHelper() => _instance;
  DBHelper._internal();


  static Database? _database;


  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB();
    return _database!;
  }


  Future<Database> _initDB() async {
    final path = await getDatabasesPath();
    final dbPath = join(path, 'quiz.db');


    return await openDatabase(
      dbPath,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
         CREATE TABLE Resposta (
           id INTEGER PRIMARY KEY AUTOINCREMENT,
           usuario_id INTEGER,
           questao_id INTEGER,
           opcao_escolhida INTEGER
         )
       ''');
      },
    );
  }
}