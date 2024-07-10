import 'package:get_it/get_it.dart';
import 'package:mobile/di/services.dart';

//Entry point that sets up all the different service modules.
void setupDependancyInjection() {
  final getIt = GetIt.instance;

  setupServiceModule(getIt);
}