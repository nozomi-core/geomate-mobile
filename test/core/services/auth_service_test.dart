import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile/core/services/auth/auth_service.dart';
import 'package:mobile/di/di_module.dart';
import '../../_fixtures/mock_env.dart';

void main() {
  setupDependancyInjection();

  final auth = GetIt.I.get<AuthService>();

  test("test auth login", () async {
    final response = await auth.loginWithPassword(MockEnv.USERNAME, MockEnv.PASSWORD);
    expect(response.userId, "123");
  });
}