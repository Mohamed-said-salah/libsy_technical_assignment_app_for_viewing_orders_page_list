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

  /// Converts the `Profile` object into a `Map<String, dynamic>` representation.
  ///
  /// The resulting map includes the following fields:
  /// - `id`: The unique identifier of the profile.
  /// - `profile_picture`: The URL of the profile picture.
  /// - `bio`: The biography of the user.
  /// - `username`: The username of the profile.
  /// - `full_name`: The full name of the user.
  /// - `is_verified`: A boolean indicating if the profile is verified.
  /// - `total_followers`: The total number of followers.
  /// - `total_following`: The total number of users the profile is following.
  /// - `average_rating`: The average rating of the profile.
  /// - `num_ratings`: The number of ratings received.
  /// - `is_following`: A boolean indicating if the profile is being followed by the current user.
  /// - `is_existing_seller`: A boolean indicating if the profile belongs to an existing seller.
  ///
  /// This map can be used to serialize this object into a JSON string.
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
