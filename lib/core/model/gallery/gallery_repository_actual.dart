import 'package:mobile/core/model/gallery/gallery.dart';
import 'package:mobile/core/model/gallery/gallery_json_keys.dart';
import 'package:mobile/core/model/gallery/gallery_repository.dart';
import 'package:mobile/core/model/model_id.dart';
import 'package:mobile/lang/failure_reason.dart';
import 'package:mobile/lang/maybe.dart';
import 'package:mobile/lang/unit.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:http/http.dart' as http;

class GalleryRepositoryActual implements GalleryRepository {
  final PocketBase pocket;
  final galleryCollection = "gallery";

  GalleryRepositoryActual(this.pocket);

  @override
  Future<Maybe<ModelId>> create(Gallery model, http.MultipartFile file) async {
    try {
      final response = await pocket.collection(galleryCollection).create(
          body: {
            GalleryJsonKeys.title: model.title,
            GalleryJsonKeys.description: model.description,
            GalleryJsonKeys.lat: model.lat,
            GalleryJsonKeys.lng: model.lng,
            GalleryJsonKeys.geohash: model.geohash
          },
        files: [
          file
        ]
      );
      return Success(ServerId(response.id));
    } catch(e) {
      return Failure(FailureReason.api_failed, null);
    }
  }

  @override
  Future<Maybe<Unit>> delete(ServerId id) async {
    try {
      await pocket.collection(galleryCollection).delete(id.id);
      return Success(Unit());
    } catch(e) {
      return Failure(FailureReason.api_failed, null);
    }
  }
}