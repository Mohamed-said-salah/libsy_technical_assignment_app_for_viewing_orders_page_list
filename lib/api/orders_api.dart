import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../models/respones/orders_response.dart';

import 'package:http/http.dart' as http;

abstract class OrdersApi {
  static Future<OrdersResponse?> getOrders() async {
    final url = Uri.parse(
      "https://libsy-development.azurewebsites.net/transactions/orders/",
    );

    try {
      final result = await http.get(
        url,
        headers: {
          "Authorization": dotenv.env['TOKEN'] ?? "",
        },
      );

      if (result.statusCode == 200) {
        print("🌐🌐 Api Result");
        print(result.body);

        final model = OrdersResponse.fromJson(jsonDecode(result.body));

        print(model);

        return model;
      } else {
        print(result);
        return null;
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}
