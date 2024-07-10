import 'package:mobile/core/services/auth/auth_response.dart';
import 'package:mobile/core/services/auth/auth_service.dart';
import 'package:mobile/lang/failure_reason.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:mobile/lang/maybe.dart';

class AuthServiceActual implements AuthService {
  final PocketBase pocket;
  final userCollection = "users";

  AuthServiceActual(this.pocket);

  @override
  Future<Maybe<AuthResponse>> loginWithPassword(String emailOrUsername, String password) async {
    try {
      final response = await pocket.collection(userCollection).authWithPassword(emailOrUsername, password);
      return Success(AuthResponse(response.record!.id));
    } catch(e) {
      return Failure(FailureReason.illegal_argument, null);
    }
  }

  @override
  Future signOut() async {
    pocket.authStore.clear();
  }

  @override
  String? getUserId() {
    final authModel = pocket.authStore.model;

    if(authModel is RecordModel) {
      return authModel.id;
    } else {
      return null;
    }
  }
}