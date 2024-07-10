import 'package:flutter_test/flutter_test.dart';
import 'package:mobile/core/model/gallery/gallery.dart';
import 'package:mobile/core/model/model_id.dart';
import 'package:mobile/lang/maybe.dart';
import '../../_fixtures/mock_env.dart';
import 'package:http/http.dart' as http;

void main() {
  final galleryRepo = MockRepo.galleryRepo;

  test("test create then delete a new gallery model", () async {
    final testImage = await http.MultipartFile.fromPath('image', 'test_assets/melbourne.jpg');
    
    final galleryId = await galleryRepo.create(Gallery(ClientId.create(), "Example title here", "", 5, 8, "dkfj347", null), testImage);
    final response = await galleryRepo.delete(galleryId.getOrNull() as ServerId);
    expect(response is Success, true);
  });
}