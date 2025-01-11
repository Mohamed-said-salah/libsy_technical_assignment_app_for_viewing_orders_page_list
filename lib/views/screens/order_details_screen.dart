import 'package:flutter/material.dart';
import 'package:libsy_technical_assignment/models/order.dart';
import 'package:libsy_technical_assignment/views/widgets/tiles/profile_tile.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/components/detail_line.dart';
import '../widgets/testimonial_images.dart';

class OrderDetailsScreen extends StatefulWidget {
  final Order order;
  final bool showSeller;
  const OrderDetailsScreen(
      {super.key, required this.order, this.showSeller = false});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  final PageController _pageController =
      PageController(); // Controller for PageView

  @override
  Widget build(BuildContext context) {
    final imagesLength = widget.order.item?.images?.length ?? 0;

    final item = widget.order.item;

    final profile = widget.showSeller
        ? widget.order.item?.owner
        : widget.order.buyerProfile;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // -- Testimonial Images
            SizedBox(
              height: imagesLength < 1 ? 0 : 350.h,
              child: imagesLength < 1
                  ? const SizedBox()
                  : TestimonialImages(
                      pageController: _pageController,
                      imagesLength: imagesLength,
                      images: widget.order.item?.images ?? [],
                    ),
            ),

            // -- Details Screen
            SizedBox(height: 8.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// <--- Item Details Section --- !>

                  Text(
                    "${item?.likes?.length ?? "0"} Likes",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // -- Profile List Tile
                  SizedBox(height: 12.h),
                  ProfileTile(profile: profile),

                  // -- vertical spacing
                  SizedBox(height: 24.h),

                  // -- price
                  Text(
                    "EGP ${item?.price ?? 0}",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  // -- description
                  SizedBox(height: 6.h),
                  Text(
                    "EGP ${item?.description ?? ""}",
                    style: TextStyle(color: Colors.grey.shade700),
                  ),

                  // -- tags, brand, condition
                  SizedBox(height: 14.h),
                  Text(
                    "${item?.condition?.displayName ?? ""}.${item?.brand?.name}.${item?.tags?.join(".") ?? ""}",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  // -- category
                  SizedBox(height: 12.h),
                  Text(
                    item?.category?.name ?? "",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  // -- vertical divider line
                  SizedBox(height: 16.h),
                  Container(
                    width: double.infinity,
                    height: 1.5.h,
                    color: Colors.grey.shade400,
                  ),

                  /// <--- Order Details Section --- !>

                  //
                  SizedBox(height: 24.h),
                  if (widget.order.originalPrice != null)
                    DetailLine(
                      title: "Original Price",
                      value: widget.order.originalPrice ?? "",
                    ),

                  //
                  if (widget.order.price != null)
                    DetailLine(
                      title: "Price",
                      value: widget.order.price ?? "",
                    ),

                  //
                  if (widget.order.feePercentage != null)
                    DetailLine(
                      title: "Fee Percentage",
                      value: widget.order.fixedFee ?? "",
                    ),

                  //
                  if (widget.order.feePercentage != null)
                    DetailLine(
                      title: "Fixed Fee",
                      value: widget.order.fixedFee ?? "",
                    ),

                  //
                  if (widget.order.feeAmount != null)
                    DetailLine(
                      title: "Fee Amount",
                      value: widget.order.feeAmount ?? "",
                    ),

                  //
                  if (widget.order.shippingCost != null)
                    DetailLine(
                      title: "Shipping Cost",
                      value: widget.order.shippingCost ?? "",
                    ),

                  //
                  if (widget.order.finalPrice != null)
                    DetailLine(
                      title: "Final Price",
                      value: widget.order.finalPrice ?? "",
                      color: const Color.fromARGB(255, 86, 235, 27),
                    ),

                  //
                  if (widget.order.status != null)
                    DetailLine(
                      title: "Status",
                      value: widget.order.status ?? "",
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
