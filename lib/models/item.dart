import 'package:equatable/equatable.dart';
import 'package:libsy_technical_assignment/models/profile.dart';

class Item extends Equatable {
  final int id;
  Profile? owner;
  String? description;
  num? price;
  ItemSize? size;
  ItemColor? color;
  Brand? brand;
  ItemMaterial? material;
  List<int>? likes;
  Condition? condition;
  Category? category;
  DateTime? createdAt;
  DateTime? updatedAt;
  bool? isSold;
  bool? isLiked;
  List<ItemImage>? images;
  List<String>? tags;
  bool? isLibsyPick;
  bool? isTrend;

  Item({
    required this.id,
    this.owner,
    this.description,
    this.price,
    this.size,
    this.color,
    this.brand,
    this.material,
    this.likes,
    this.condition,
    this.category,
    this.createdAt,
    this.updatedAt,
    this.isSold,
    this.isLiked,
    this.images,
    this.tags,
    this.isLibsyPick,
    this.isTrend,
  });

  Item.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        owner = json['owner'] != null ? Profile.fromJson(json['owner']) : null,
        description = json['description'],
        price = json['price'],
        size = json['size'] != null ? ItemSize.fromJson(json['size']) : null,
        color =
            json['color'] != null ? ItemColor.fromJson(json['color']) : null,
        brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null,
        material = json['material'] != null
            ? ItemMaterial.fromJson(json['material'])
            : null,
        likes = json['likes'].cast<int>(),
        condition = json['condition'] != null
            ? Condition.fromJson(json['condition'])
            : null,
        category = json['category'] != null
            ? Category.fromJson(json['category'])
            : null,
        createdAt = DateTime.tryParse(json['created_at'] ?? ""),
        updatedAt = DateTime.tryParse(json['updated_at'] ?? ""),
        isSold = json['is_sold'],
        isLiked = json['is_liked'],
        images = json['images'] != null
            ? List.from(json['images'])
                .map((image) => ItemImage.fromJson(image))
                .toList()
            : [],
        tags = json['tags'] != null
            ? List<String>.from(json['tags']).map((tag) => tag).toList()
            : [],
        isLibsyPick = json['is_libsy_pick'],
        isTrend = json['is_trend'];

  /// Converts the `Item` object into a `Map<String, dynamic>` representation.
  ///
  /// The resulting map includes the following fields:
  /// - `id`: The unique identifier of the item.
  /// - `owner`: The owner of the item, serialized as a map if not null.
  /// - `description`: The description of the item.
  /// - `price`: The price of the item.
  /// - `size`: The size of the item, serialized as a map if not null.
  /// - `color`: The color of the item, serialized as a map if not null.
  /// - `brand`: The brand of the item.
  /// - `material`: The material of the item.
  /// - `likes`: A list of likes (integers) associated with the item.
  /// - `condition`: The condition of the item, serialized as a map if not null.
  /// - `category`: The category of the item, serialized as a map if not null.
  /// - `created_at`: The creation date of the item, in ISO-8601 string format if available.
  /// - `updated_at`: The last update date of the item, in ISO-8601 string format if available.
  /// - `is_sold`: A boolean indicating if the item is sold.
  /// - `is_liked`: A boolean indicating if the item is liked.
  /// - `images`: A list of images, serialized as maps if not null.
  /// - `tags`: A list of tags associated with the item.
  /// - `is_libsy_pick`: A boolean indicating if the item is a Libsy pick.
  /// - `is_trend`: A boolean indicating if the item is trending.

  /// Converts the `Item` object into a `Map<String, dynamic>` representation.
  ///
  /// The resulting map includes the following fields:
  /// - `id`: The unique identifier of the item.
  /// - `owner`: The owner of the item, serialized as a map if not null.
  /// - `description`: The description of the item.
  /// - `price`: The price of the item.
  /// - `size`: The size of the item, serialized as a map if not null.
  /// - `color`: The color of the item, serialized as a map if not null.
  /// - `brand`: The brand of the item.
  /// - `material`: The material of the item.
  /// - `likes`: A list of likes (integers) associated with the item.
  /// - `condition`: The condition of the item, serialized as a map if not null.
  /// - `category`: The category of the item, serialized as a map if not null.
  /// - `created_at`: The creation date of the item, in ISO-8601 string format if available.
  /// - `updated_at`: The last update date of the item, in ISO-8601 string format if available.
  /// - `is_sold`: A boolean indicating if the item is sold.
  /// - `is_liked`: A boolean indicating if the item is liked.
  /// - `images`: A list of images, serialized as maps if not null.
  /// - `tags`: A list of tags associated with the item.
  /// - `is_libsy_pick`: A boolean indicating if the item is a Libsy pick.
  /// - `is_trend`: A boolean indicating if the item is trending.
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};

    // Add the unique identifier
    data['id'] = id;

    // Serialize the owner if not null
    if (owner != null) {
      data['owner'] = owner!.toJson();
    }

    // Add description and price
    data['description'] = description;
    data['price'] = price;

    // Serialize size if not null
    if (size != null) {
      data['size'] = size!.toJson();
    }

    // Serialize color if not null
    if (color != null) {
      data['color'] = color!.toJson();
    }

    // Add brand and material
    data['brand'] = brand;
    data['material'] = material;

    // Add likes
    data['likes'] = likes;

    // Serialize condition if not null
    if (condition != null) {
      data['condition'] = condition!.toJson();
    }

    // Serialize category if not null
    if (category != null) {
      data['category'] = category!.toJson();
    }

    // Add created and updated timestamps
    data['created_at'] = createdAt?.toUtc().toIso8601String();
    data['updated_at'] = updatedAt?.toUtc().toIso8601String();

    // Add sale and like status
    data['is_sold'] = isSold;
    data['is_liked'] = isLiked;

    // Serialize images if not null
    if (images != null) {
      data['images'] = images!.map((v) => v.toJson()).toList();
    }

    // Add tags
    data['tags'] = tags;

    // Add special item indicators
    data['is_libsy_pick'] = isLibsyPick;
    data['is_trend'] = isTrend;

    return data;
  }

  @override
  List get props => [
        id,
        owner,
        description,
        price,
        size,
        color,
        brand,
        material,
        likes,
        condition,
        category,
        createdAt,
        updatedAt,
        isSold,
        isLiked,
        images,
        tags,
        isLibsyPick,
        isTrend,
      ];
}

class ItemSize extends Equatable {
  final int id;
  String? name;
  bool? isFollowed;
  int? count;

  ItemSize({required this.id, this.name, this.isFollowed, this.count});

  ItemSize.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        isFollowed = json['is_followed'],
        count = json['count'];

  /// Converts this object into a jsonifiable map.
  ///
  /// Returns a map with keys: id, name, is_followed, count.
  /// The values are the corresponding properties of this object.
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['is_followed'] = isFollowed;
    data['count'] = count;
    return data;
  }

  @override
  List get props => [
        id,
        name,
        isFollowed,
        count,
      ];
}

class ItemColor extends Equatable {
  final int id;
  String? name;
  String? code;
  int? count;

  ItemColor({required this.id, this.name, this.code, this.count});

  ItemColor.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        code = json['code'],
        count = json['count'];

  /// Converts this [ItemColor] into a jsonifiable map.
  ///
  /// This method is the inverse of [ItemColor.fromJson].
  ///
  /// Returns a map with keys 'id', 'name', 'code', and 'count'.
  /// The values are the corresponding properties of this object.
  ///
  /// The resulting map can be used to serialize this object into a JSON
  /// string.
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['code'] = code;
    data['count'] = count;
    return data;
  }

  @override
  List get props => [
        id,
        name,
        code,
        count,
      ];
}

class Condition extends Equatable {
  final int id;
  String? name;
  String? displayName;
  int? order;
  int? count;

  Condition(
      {required this.id, this.name, this.displayName, this.order, this.count});

  Condition.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        displayName = json['display_name'],
        order = json['order'],
        count = json['count'];

  /// Converts this [Condition] instance into a [Map] for JSON serialization.
  ///
  /// The resulting map includes:
  /// - 'id': The unique identifier of the condition.
  /// - 'name': The name of the condition.
  /// - 'display_name': The display name of the condition.
  /// - 'order': The order of the condition.
  /// - 'count': The count associated with the condition.
  ///
  /// Returns a [Map] with keys corresponding to the fields of this instance.
  ///
  /// This method is the inverse of [Condition.fromJson].
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};

    /// The unique identifier of the condition.
    data['id'] = id;

    /// The name of the condition.
    data['name'] = name;

    /// The display name of the condition.
    data['display_name'] = displayName;

    /// The order of the condition.
    data['order'] = order;

    /// The count associated with the condition.
    data['count'] = count;

    return data;
  }

  @override
  List get props => [
        id,
        name,
        displayName,
        order,
        count,
      ];
}

class Category extends Equatable {
  final int id;
  String? name;
  int? parent;

  Category({required this.id, this.name, this.parent});

  Category.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        parent = json['parent'];

  /// Converts this [Category] object into a [Map] for JSON serialization.
  ///
  /// The resulting map will have three keys: 'id', 'name', and 'parent'. These
  /// keys will contain the corresponding properties of this object.
  ///
  /// This is the inverse of [Category.fromJson].
  ///
  /// Returns a [Map] with keys 'id', 'name', and 'parent' containing
  /// the corresponding properties of this object. The resulting [Map] can
  /// be used to serialize this object into a JSON string.
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['parent'] = parent;
    return data;
  }

  @override
  List get props => [
        id,
        name,
        parent,
      ];
}

class ItemImage extends Equatable {
  String? image;
  DateTime? uploadedAt;

  ItemImage({this.image, this.uploadedAt});

  ItemImage.fromJson(Map<String, dynamic> json)
      : image = json['image'],
        uploadedAt = DateTime.tryParse(json['uploaded_at'] ?? "");

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['image'] = image;
    data['uploaded_at'] = uploadedAt;
    return data;
  }

  @override
  List get props => [image, uploadedAt];
}

class ItemMaterial extends Equatable {
  final int id;
  String? name;
  int? count;

  ItemMaterial({required this.id, this.name, this.count});

  ItemMaterial.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        count = json['count'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['count'] = count;
    return data;
  }

  @override
  List get props => [id, name, count];
}

class Brand extends Equatable {
  final int id;
  String? slug;
  String? name;
  int? count;
  int? followersCount;
  bool? isFollowed;

  Brand({
    required this.id,
    this.slug,
    this.name,
    this.count,
    this.followersCount,
    this.isFollowed,
  });

  Brand.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        slug = json['slug'],
        name = json['name'],
        count = json['count'],
        followersCount = json['followers_count'],
        isFollowed = json['is_followed'];

  /// Converts this [Brand] instance into a jsonifiable map.
  ///
  /// The resulting map includes the following keys:
  /// - 'id': The unique identifier of the brand.
  /// - 'slug': A unique slug for the brand.
  /// - 'name': The name of the brand.
  /// - 'count': The count associated with the brand.
  /// - 'followers_count': The number of followers the brand has.
  /// - 'is_followed': A boolean indicating if the brand is followed.
  ///
  /// This map can be used to serialize this object into a JSON string.
  ///
  /// [toJson] is the inverse of [Brand.fromJson].
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['slug'] = slug;
    data['name'] = name;
    data['count'] = count;
    data['followers_count'] = followersCount;
    data['is_followed'] = isFollowed;
    return data;
  }

  @override
  List get props => [id, slug, name, count, followersCount, isFollowed];
}
