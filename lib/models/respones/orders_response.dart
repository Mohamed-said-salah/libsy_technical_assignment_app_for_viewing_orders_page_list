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
