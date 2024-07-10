import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  final String databaseUrl = dotenv.env["API_URL"]!;
}