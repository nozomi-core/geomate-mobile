import 'package:mobile/core/model/gallery/gallery.dart';
import 'package:mobile/core/model/model_id.dart';
import 'package:mobile/lang/maybe.dart';
import 'package:mobile/lang/unit.dart';
import 'package:http/http.dart' as http;

abstract class GalleryRepository {
  Future<Maybe<ModelId>> create(Gallery model, http.MultipartFile file);
  Future<Maybe<Unit>> delete(ServerId id);
}