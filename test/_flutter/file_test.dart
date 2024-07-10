
import 'dart:io';
import 'package:crypto/crypto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Test read file", () {
    final testFile = File("test_assets/example.txt");
    final fileData = testFile.readAsStringSync();
    expect("hello test file", fileData);
  });

  test("Test sha256 on file", () {
    final testFile = File("test_assets/example.txt");
    final fileBytes = testFile.readAsBytesSync();
    final fileSha = sha256.convert(fileBytes).toString();

    //from online
    expect("972556e1aebcf0d9f3e6e3214b86d2bb2637107326b2c07d3c54a1c9c980d8ec", fileSha);
  });
}