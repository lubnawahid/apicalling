import 'dart:convert';

import 'package:http/http.dart' as http;

Future<Map<String,dynamic>>fetchAlbum() async{
  var responce = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
  return jsonDecode(responce.body);
}