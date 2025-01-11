import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final double rating; // Rating value between 0 and 5
  final double starSize; // Size of each star
  final Color filledStarColor; // Color of filled stars
  final Color unfilledStarColor; // Color of unfilled stars

  const StarRating({
    super.key,
    required this.rating,
    this.starSize = 24.0,
    this.filledStarColor = Colors.amber,
    this.unfilledStarColor = Colors.grey,
  }) : assert(rating >= 0 && rating <= 5, 'Rating must be between 0 and 5');

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        if (index < rating.floor()) {
          // Fully filled stars
          return Icon(
            Icons.star,
            size: starSize,
            color: filledStarColor,
          );
        } else if (index < rating) {
          // Partially filled stars
          return ShaderMask(
            blendMode: BlendMode.srcATop,
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                colors: [filledStarColor, unfilledStarColor],
                stops: [(rating - rating.floor()), (rating - rating.floor())],
              ).createShader(bounds);
            },
            child: Icon(
              Icons.star,
              size: starSize,
              color: unfilledStarColor,
            ),
          );
        } else {
          // Empty stars
          return Icon(
            Icons.star_border,
            size: starSize,
            color: unfilledStarColor,
          );
        }
      }),
    );
  }
}
