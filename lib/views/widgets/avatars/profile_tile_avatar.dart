import 'package:fast_cached_network_image/fast_cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:libsy_technical_assignment/models/profile.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProfileTileAvatar extends StatelessWidget {
  const ProfileTileAvatar({
    super.key,
    required this.profile,
  });

  final Profile? profile;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.w,
      height: 60.w,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: FastCachedImage(
        url: profile?.profilePicture ?? "",
        fit: BoxFit.contain,
        loadingBuilder: (p0, p1) => Skeletonizer(
          enabled: true,
          child: Container(
            width: 60.w,
            height: 60.w,
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: Image.asset(
              "assets/images/logo.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        errorBuilder: (context, error, stackTrace) => Container(
          width: 60.w,
          height: 60.w,
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: Image.asset(
            "assets/images/logo.png",
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
