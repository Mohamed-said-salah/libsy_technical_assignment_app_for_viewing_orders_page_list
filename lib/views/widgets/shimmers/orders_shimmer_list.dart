import 'package:flutter/material.dart';
import 'package:libsy_technical_assignment/core/theme/text_styles.dart';
import 'package:skeletonizer/skeletonizer.dart';

import "package:flutter_screenutil/flutter_screenutil.dart";

class ShimmerListOfOrders extends StatelessWidget {
  const ShimmerListOfOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        children: List.generate(7, (index) {
          return Column(
            children: [
              const SkeletonOderTileShimmer(),
              SizedBox(height: 25.h),
            ],
          );
        }),
      ),
    );
  }
}

class SkeletonOderTileShimmer extends StatelessWidget {
  const SkeletonOderTileShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Skeletonizer(
            enabled: true,
            child: Container(
              width: 110.h,
              height: 110.h,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Image.asset("assets/images/hoodie.png"),
            ),
          ),
          SizedBox(width: 20.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5.h),
              const Text(
                "EGP 150.00",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                "Very Good",
                style: TextStyles.bodyMedium,
              ),
              SizedBox(height: 5.h),
              Text(
                "150 ❤️",
                style: TextStyles.bodyMedium,
              ),
              SizedBox(height: 5.h),
              Text(
                "Buyer ###### #####",
                style: TextStyles.bodyMedium,
              ),
            ],
          ),
          SizedBox(width: 20.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5.h),
              Text(
                "Brand  Prada",
                style: TextStyles.bodyMedium,
              ),
              SizedBox(height: 5.h),
              Text(
                "Sandals",
                style: TextStyles.bodyMedium,
              ),
              SizedBox(height: 5.h),
              Text(
                "Delivered",
                style: TextStyles.bodyMedium,
              ),
              SizedBox(height: 5.h),
              Text(
                "5.0  ⭐",
                style: TextStyles.bodyMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
