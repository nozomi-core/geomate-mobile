import 'package:mobile/core/services/auth/auth_response.dart';
import 'package:mobile/lang/maybe.dart';

abstract class AuthService {
  Future<Maybe<AuthResponse>> loginWithPassword(String emailOrUsername, String password);
}