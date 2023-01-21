import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:shooping/Features/modals/productsModals.dart';

class RemoteServices {
  static var client = http.Client();

  static Future<List<Product>?> fetchProduct() async {
    var response =
        await client.get(Uri.parse('http://gigsoft.net/api/v3/category-all'));
    if (response.statusCode == 200) {
      var jsoneString = response.body;
      return jsonDecode(jsoneString);
      
    } else {
      // show erorr meassege
      Text('No data');
    }
  }
}
