import 'package:flutter_test/flutter_test.dart';
import '../../_fixtures/mock_env.dart';

void main() {
  final auth = MockService.authService;

  test("test auth login", () async {
    const testUserId = "59twt9qt2mcmw54";

    final response = await auth.loginWithPassword(MockVar.username, MockVar.password);
    expect(response.getOrNull()?.userId, testUserId);
  });
}