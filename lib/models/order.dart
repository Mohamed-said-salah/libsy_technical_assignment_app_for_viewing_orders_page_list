import 'package:equatable/equatable.dart';
import 'package:libsy_technical_assignment/models/profile.dart';

import 'item.dart';

class Order extends Equatable {
  final int id;
  Item? item;
  int? buyer;
  Profile? buyerProfile;
  String? originalPrice;
  String? price;
  String? shippingCost;
  String? fixedFee;
  String? feePercentage;
  String? finalPrice;
  String? feeAmount;
  String? shipbluPickupId;
  String? shipbluDeliveryId;
  String? status;

  Order({
    required this.id,
    this.item,
    this.buyer,
    this.buyerProfile,
    this.originalPrice,
    this.price,
    this.shippingCost,
    this.fixedFee,
    this.feePercentage,
    this.finalPrice,
    this.feeAmount,
    this.shipbluPickupId,
    this.shipbluDeliveryId,
    this.status,
  });

  Order.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        item = json['item'] != null ? Item.fromJson(json['item']) : null,
        buyer = json['buyer'],
        buyerProfile = json['buyer_profile'] != null
            ? Profile.fromJson(json['buyer_profile'])
            : null,
        originalPrice = json['original_price'],
        price = json['price'],
        shippingCost = json['shipping_cost'],
        fixedFee = json['fixed_fee'],
        feePercentage = json['fee_percentage'],
        finalPrice = json['final_price'],
        feeAmount = json['fee_amount'],
        shipbluPickupId = json['shipblu_pickup_id'],
        shipbluDeliveryId = json['shipblu_delivery_id'],
        status = json['status'];

  /// Converts the `Order` object into a `Map<String, dynamic>` representation.
  ///
  /// The resulting map includes the following fields:
  /// - `id`: The unique identifier of the order.
  /// - `item`: The item associated with the order, serialized as a map if not null.
  /// - `buyer`: The identifier of the buyer.
  /// - `buyer_profile`: The profile of the buyer, serialized as a map if not null.
  /// - `original_price`: The original price of the item.
  /// - `price`: The final selling price of the item.
  /// - `shipping_cost`: The cost of shipping.
  /// - `fixed_fee`: The fixed fee associated with the order.
  /// - `fee_percentage`: The percentage fee applied to the order.
  /// - `final_price`: The final price after fees and shipping are applied.
  /// - `fee_amount`: The total fee amount.
  /// - `shipblu_pickup_id`: The Shipblu pickup identifier.
  /// - `shipblu_delivery_id`: The Shipblu delivery identifier.
  /// - `status`: The current status of the order.
  ///
  /// This method is the inverse of [Order.fromJson].
  ///
  /// Returns a [Map] with the above fields as keys, and the corresponding
  /// values of this object.
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    if (item != null) {
      data['item'] = item!.toJson();
    }
    data['buyer'] = buyer;
    if (buyerProfile != null) {
      data['buyer_profile'] = buyerProfile!.toJson();
    }
    data['original_price'] = originalPrice;
    data['price'] = price;
    data['shipping_cost'] = shippingCost;
    data['fixed_fee'] = fixedFee;
    data['fee_percentage'] = feePercentage;
    data['final_price'] = finalPrice;
    data['fee_amount'] = feeAmount;
    data['shipblu_pickup_id'] = shipbluPickupId;
    data['shipblu_delivery_id'] = shipbluDeliveryId;
    data['status'] = status;
    return data;
  }

  @override
  List get props => [
        id,
        item,
        buyer,
        buyerProfile,
        originalPrice,
        price,
        shippingCost,
        fixedFee,
        feePercentage,
        finalPrice,
        feeAmount,
        shipbluPickupId,
        shipbluDeliveryId,
        status,
      ];
}
