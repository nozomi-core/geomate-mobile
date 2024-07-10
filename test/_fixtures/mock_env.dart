import 'package:mobile/core/model/gallery/gallery_repository_actual.dart';
import 'package:mobile/core/services/auth/auth_service_actual.dart';
import 'package:pocketbase/pocketbase.dart';

final pocket = PocketBase("http://127.0.0.1:8090");

class MockVar {
  static const username = "phoenixshell";
  static const password = "MyLoginToken#371";
}

class MockService {
  static final authService = AuthServiceActual(pocket);
}

class MockRepo {
  static final galleryRepo = GalleryRepositoryActual(pocket);
}