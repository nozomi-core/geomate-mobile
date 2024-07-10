import 'package:get_it/get_it.dart';
import 'package:mobile/app/config.dart';
import 'package:pocketbase/pocketbase.dart';

void setupCommonModule(GetIt getIt) {
  getIt.registerSingleton(AppConfig());
  getIt.registerSingleton(PocketBase(getIt.get<AppConfig>().databaseUrl));
}