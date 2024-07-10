import 'package:mobile/core/services/auth/auth_response.dart';

abstract class AuthService {
  Future<AuthResponse> loginWithPassword(String emailOrUsername, String password);
}