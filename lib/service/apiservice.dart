import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/model.dart';

Future<User>fetchAlbum() async{
  var responce = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
  var user = jsonDecode(responce.body);
  return User.fromJson(user);
}