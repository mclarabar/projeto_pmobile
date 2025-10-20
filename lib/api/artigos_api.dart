import 'package:projeto_tela03/domain/Artigo.dart';
import 'package:dio/dio.dart';

class AddressApi{
  final dio = Dio();
  String baseUrl = 'https://pubmed.ncbi.nlm.nih.gov/api/citmatch/?method=auto&journal=Front+Immunol&volume=13&page=826091&authors=Ihunwo+A';

  Future<Artigo> findByArtigos (String artigos) async {
    var result = await dio.get('$baseUrl/artigos/v2/$artigos');

    var json = result.data;
    Artigo address = artigos.fromJson(json);
    return Artigo;
  }

}