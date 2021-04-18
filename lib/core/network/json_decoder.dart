import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_turkiye_hackathon/core/network/needy_person_class.dart';

class JsonDecoder {
final String  localJsonPath = 'assets/dummy_data.json';
  Future<List<Needy>> getData() async {
     var dummyData = await rootBundle.loadString(localJsonPath);
    List responseBody = jsonDecode(dummyData);
    return responseBody.map((e) => Needy.fromJson(e)).toList();
  }
}