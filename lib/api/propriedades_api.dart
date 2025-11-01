import 'package:dio/dio.dart';
import '../domain/propriedades.dart';

class PropriedadesApi{
  final dio = Dio();
  final String baseUrl = 'https://my-json-server.typicode.com/Laraivine/fake-API';

  Future<List<Propriedade>> findAll() async{
    List<Propriedade> listaPropriedades = [];

    final response = await dio.get('$baseUrl/properties');

    if(response.statusCode == 200){
      var listResult = response.data;
      print(listResult);
      for(var json in listResult){
        Propriedade propriedade = Propriedade.fromJson(json);
        listaPropriedades.add(propriedade);
  }
  }
    await Future.delayed(Duration(seconds: 3));
    return listaPropriedades;
  }
}
