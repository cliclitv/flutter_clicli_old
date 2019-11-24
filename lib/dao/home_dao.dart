import 'package:flutter_clicli/model/home_model.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

const URL = 'https://API.clicli.us/rank';

class HomeDao {
  static Future<HomeModel> fetch() async {
    final res = await http.get(URL);
    if (res.statusCode == 200) {
      Utf8Decoder utf8decoder = Utf8Decoder();
      var ret = json.decode(utf8decoder.convert(res.bodyBytes));
      return HomeModel.fromJson(ret);
    } else {
      throw Exception('failed');
    }
  }
}
