import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:libsy_technical_assignment/models/order.dart';

import 'package:fast_cached_network_image/fast_cached_network_image.dart';

import '../../../core/theme/text_styles.dart';
import '../../screens/order_details_screen.dart';

class OrderTile extends StatelessWidget {
  final Order order;
  final bool showSeller;
  const OrderTile({super.key, required this.order, this.showSeller = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      focusColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) =>
                OrderDetailsScreen(order: order, showSeller: showSeller),
          ),
        );
      },
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 110.h,
                height: 110.h,
                child: FastCachedImage(
                  url: order.item?.images?.firstOrNull?.image ?? "",
                  loadingBuilder: (p0, p1) => Container(
                    width: 110.h,
                    height: 110.h,
                    // color: Colors.grey[300], // Placeholder color
                  ),
                ),
              ),
              SizedBox(width: 15.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5.h),
                    Text(
                      "EGP ${order.price ?? "0.00"}",
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      order.item?.condition?.displayName ?? "",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.bodyMedium,
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      "${order.item?.likes?.length ?? ""} Likes",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.bodyMedium,
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      showSeller
                          ? "Seller ${order.item?.owner?.fullName ?? ""}"
                          : "Buyer ${order.buyerProfile?.fullName ?? ""}",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.bodyMedium,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 25.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5.h),
                    Text(
                      order.item?.description ?? "",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyles.bodyMedium,
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      order.item?.category?.name ?? "",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyles.bodyMedium,
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      order.status ?? "",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyles.bodyMedium,
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      "${order.buyerProfile?.averageRating ?? ""}  ⭐",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyles.bodyMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
