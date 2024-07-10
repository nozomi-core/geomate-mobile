import 'package:get_it/get_it.dart';
import 'package:mobile/di/common.dart';
import 'package:mobile/di/services.dart';

//Entry point that sets up all the different service modules.
void setupDependencyInjection() {
  final getIt = GetIt.instance;

  setupCommonModule(getIt);
  setupServiceModule(getIt);
}