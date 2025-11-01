import 'package:projeto_tela03/domain/Artigo.dart';
import 'package:dio/dio.dart';

class ArtigoApi{
  final dio = Dio();
  String baseUrl = 'https://pubmed.ncbi.nlm.nih.gov/api/citmatch/';

  Future<artigo> findByArtigos (String artigos) async {
    var result = await dio.get('$baseUrl/artigos/v2/$artigos');

    var json = result.data;
    Artigo artigo = artigos.fromJson(json);
    return artigo;
  }

}
