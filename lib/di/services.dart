import 'package:get_it/get_it.dart';
import 'package:mobile/core/services/auth/auth_service.dart';
import 'package:mobile/core/services/auth/auth_service_actual.dart';

void setupServiceModule(GetIt getIt) {
  getIt.registerSingleton<AuthService>(AuthServiceActual(getIt.get()));
}