import 'package:sqflite/sqflite.dart';
import 'package:zzc/db_helper.dart';
import 'package:zzc/respostas.dart';


class RespostasDao{
  Future<void> salvarResposta(Resposta resposta) async{
    final db = await DBHelper().database;
    await db.insert(
      'Resposta',
      resposta.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }


  Future<List<Resposta>> obterRespostas(int usuarioId) async{
    final db = await DBHelper().database;
    final List<Map<String, dynamic>> maps = await db.query(
      'Resposta',
      where: 'usuario_id = ?',
      whereArgs: [usuarioId],
    );
    return List.generate(maps.length, (i) => Resposta.fromJson(maps[i]));
  }
}
