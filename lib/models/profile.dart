class Profile {
  final int id;
  String? profilePicture;
  String? bio;
  String? username;
  String? fullName;
  bool? isVerified;
  int? totalFollowers;
  int? totalFollowing;
  num? averageRating;
  int? numRatings;
  bool? isFollowing;
  bool? isExistingSeller;

  Profile({
    required this.id,
    this.profilePicture,
    this.bio,
    this.username,
    this.fullName,
    this.isVerified,
    this.totalFollowers,
    this.totalFollowing,
    this.averageRating,
    this.numRatings,
    this.isFollowing,
    this.isExistingSeller,
  });

  Profile.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        profilePicture = json['profile_picture'],
        bio = json['bio'],
        username = json['username'],
        fullName = json['full_name'],
        isVerified = json['is_verified'],
        totalFollowers = json['total_followers'],
        totalFollowing = json['total_following'],
        averageRating = json['average_rating'],
        numRatings = json['num_ratings'],
        isFollowing = json['is_following'],
        isExistingSeller = json['is_existing_seller'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['profile_picture'] = profilePicture;
    data['bio'] = bio;
    data['username'] = username;
    data['full_name'] = fullName;
    data['is_verified'] = isVerified;
    data['total_followers'] = totalFollowers;
    data['total_following'] = totalFollowing;
    data['average_rating'] = averageRating;
    data['num_ratings'] = numRatings;
    data['is_following'] = isFollowing;
    data['is_existing_seller'] = isExistingSeller;
    return data;
  }
}
