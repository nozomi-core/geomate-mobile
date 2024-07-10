import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mobile/di/di_module.dart';

void setupGeoMateApp(Function completed) async {
  //Loads selected .env mode file from the CLI config
  const environmentMode = String.fromEnvironment('MODE', defaultValue: 'development');
  await dotenv.load(fileName: ".env.$environmentMode");
  setupDependencyInjection();

  //App is ready to be called back to start widget render
  completed();
}