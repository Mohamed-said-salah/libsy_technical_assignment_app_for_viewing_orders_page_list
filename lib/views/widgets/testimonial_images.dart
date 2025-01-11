import 'package:fast_cached_network_image/fast_cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:libsy_technical_assignment/models/item.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TestimonialImages extends StatelessWidget {
  const TestimonialImages({
    super.key,
    required PageController pageController,
    required this.imagesLength,
    required this.images,
  }) : _pageController = pageController;

  final PageController _pageController;
  final int imagesLength;
  final List<ItemImage> images;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Top Scrolling Images Section
        PageView.builder(
          controller: _pageController,
          itemCount: imagesLength,
          itemBuilder: (context, index) {
            return SizedBox(
              width: double.infinity,
              height: 350.h,
              child: FastCachedImage(
                url: images[index].image ?? "",
                fit: BoxFit.cover,
                loadingBuilder: (p0, p1) => Skeletonizer(
                  enabled: true,
                  child: Container(
                    width: double.infinity,
                    height: 350.h,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Image.asset(
                      "assets/images/hoodie.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        // AppBar with Back Button Overlay
        Positioned(
          top: 20.h,
          left: 0,
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade700, // Shadow color
                    spreadRadius: 3, // How far the shadow spreads
                    blurRadius: 15, // Softness of the shadow
                  ),
                ],
              ),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.grey.shade300,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ),
        // PageView Dots Indicator
        Positioned(
          bottom: 15.h, // Adjust position based on your layout
          left: 0,
          right: 0,
          child: Center(
            child: SmoothPageIndicator(
              controller: _pageController, // Connect to PageView controller
              count: imagesLength,
              effect: WormEffect(
                dotHeight: 10.r,
                dotWidth: 10.r,
                activeDotColor: Colors.grey,
                dotColor: Colors.grey.shade300,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
