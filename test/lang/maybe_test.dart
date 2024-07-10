import 'package:flutter_test/flutter_test.dart';
import 'package:mobile/lang/maybe.dart';

void main() {
  test("test create a maybe with non null", () {
    final text = Maybe.of("Example text");
    text.onSuccess((value){
      expect(value, "Example text");
    });
  });

  test("test create a maybe with a null value", () {
    final nullMaybe = Maybe.of(null);
    final isSuccess = nullMaybe is Success;
    final isFailure = nullMaybe is Failure;

    expect(isSuccess, false);
    expect(isFailure, true);
  });
}