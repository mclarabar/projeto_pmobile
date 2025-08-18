import '../db/db_helper.dart';
import '../domain/propriedades.dart';
import 'package:sqflite/sqlite_api.dart';

class PropriedadesDao {
  Future<List<Propriedade>> listarPropriedades() async {
    List<Propriedade> listaPropriedades = [];
    Database db = await DBHelper().initDB();

    String sql = 'SELECT * FROM PROPRIEDADE;';
    var listResult = await db.rawQuery(sql);

    for (var json in listResult) {
      Propriedade propriedade = Propriedade.fromJson(json);
      listaPropriedades.add(propriedade);
    }

    return listaPropriedades;
  }
}