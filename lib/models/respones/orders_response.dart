import 'package:equatable/equatable.dart';

import '../order.dart';

class OrdersResponse extends Equatable {
  List<Order> purchases;
  List<Order> sales;

  OrdersResponse({required this.purchases, required this.sales});

  OrdersResponse.fromJson(Map<String, dynamic> json)
      : purchases = json['purchases'] != null
            ? List.from(json['purchases'])
                .map((v) => Order.fromJson(v))
                .toList()
            : [],
        sales = json['sales'] != null
            ? List.from(json['sales']).map((v) => Order.fromJson(v)).toList()
            : [];

  /// Converts this [OrdersResponse] to a Map for JSON serialization.
  ///
  /// The resulting map will have two keys: 'purchases' and 'sales'. These keys
  /// will contain lists of maps, which are the json representations of the
  /// [Order]s in the respective lists.
  ///
  /// This is the inverse of [OrdersResponse.fromJson].
  ///
  /// Returns a [Map] with keys 'purchases' and 'sales' containing
  /// [List]s of the json representations of the [Order]s in the respective lists.
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['purchases'] = purchases.map((v) => v.toJson()).toList();
    data['sales'] = sales.map((v) => v.toJson()).toList();
    return data;
  }

  @override
  List get props => [
        purchases,
        sales,
      ];
}
