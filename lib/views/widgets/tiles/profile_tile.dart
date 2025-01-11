import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:libsy_technical_assignment/models/profile.dart';
import 'package:libsy_technical_assignment/views/widgets/avatars/profile_tile_avatar.dart';
import 'package:libsy_technical_assignment/views/widgets/components/star_rating.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    super.key,
    required this.profile,
  });

  final Profile? profile;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: ProfileTileAvatar(profile: profile),
      title: Text(
        "@${profile?.username}",
        style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
      ),

      // -- star rating
      subtitle: StarRating(rating: profile?.averageRating?.toDouble() ?? 0),
    );
  }
}
