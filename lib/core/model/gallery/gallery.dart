import 'package:mobile/core/model/model_id.dart';

class Gallery {
  final ModelId id;
  final String title;
  final String description;
  final double lat;
  final double lng;
  final String geohash;
  final String? image;

  Gallery(this.id,
      this.title,
      this.description,
      this.lat,
      this.lng,
      this.geohash,
      this.image);
}