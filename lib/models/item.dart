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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    if (owner != null) {
      data['owner'] = owner!.toJson();
    }
    data['description'] = description;
    data['price'] = price;
    if (size != null) {
      data['size'] = size!.toJson();
    }
    if (color != null) {
      data['color'] = color!.toJson();
    }
    data['brand'] = brand;
    data['material'] = material;
    data['likes'] = likes;
    if (condition != null) {
      data['condition'] = condition!.toJson();
    }
    if (category != null) {
      data['category'] = category!.toJson();
    }
    data['created_at'] = createdAt?.toUtc().toIso8601String();
    data['updated_at'] = updatedAt?.toUtc().toIso8601String();
    data['is_sold'] = isSold;
    data['is_liked'] = isLiked;
    if (images != null) {
      data['images'] = images!.map((v) => v.toJson()).toList();
    }
    data['tags'] = tags;
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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['display_name'] = displayName;
    data['order'] = order;
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
