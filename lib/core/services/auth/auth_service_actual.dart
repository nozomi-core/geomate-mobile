
import 'package:mobile/core/services/auth/auth_response.dart';
import 'package:mobile/core/services/auth/auth_service.dart';

class AuthServiceActual implements AuthService {
  @override
  Future<AuthResponse> loginWithPassword(String emailOrUsername, String password) async {
    return AuthResponse();
  }
}