import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../models/respones/orders_response.dart';

import 'package:http/http.dart' as http;

abstract class OrdersApi {
  /// Gets the user orders from the API, and returns a parsed [OrdersResponse].
  ///
  /// If the request is successful (200 status code), the response body is
  /// parsed into an [OrdersResponse] object and returned. Otherwise, `null`
  /// is returned.
  ///
  /// The request is sent with the Authorization header set to the value of
  /// the `TOKEN` environment variable. If the variable is not set, an empty
  /// string is sent.
  ///
  /// If the request fails with an error, the error is printed to the console
  /// and `null` is returned.
  static Future<OrdersResponse?> getOrders() async {
    // Define the API endpoint URL
    final url = Uri.parse(
      "https://libsy-development.azurewebsites.net/transactions/orders/",
    );

    try {
      // Send a GET request to the API
      final result = await http.get(
        url,
        headers: {
          // Set the Authorization header using the TOKEN environment variable
          "Authorization": dotenv.env['TOKEN'] ?? "",
        },
      );

      // Check if the request was successful
      if (result.statusCode == 200) {
        print("🌐🌐 Api Result");
        print(result.body);

        // Parse the response body into an OrdersResponse object
        final model = OrdersResponse.fromJson(jsonDecode(result.body));

        print(model);

        return model;
      } else {
        print(result);
        return null;
      }
    } catch (e) {
      // Print any errors that occur during the request
      print(e);
      return null;
    }
  }
}
