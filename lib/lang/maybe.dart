import 'package:mobile/lang/failure_reason.dart';

sealed class Maybe<T> {
  Maybe<T> onSuccess(Function(T value) callback) {
    if(this is Success) {
      final value = (this as Success).value;
      callback(value);
    }
    return this;
  }

  Maybe<T> onFailure(Function() callback) {
    if(this is Failure) {
      callback();
    }
    return this;
  }

  static Maybe of <V>(V value) {
    if(value != null) {
      return Success(value);
    } else {
      return Failure(FailureReason.isNull, null);
    }
  }
}

class Success<T> extends Maybe<T> {
  final T value;

  Success(this.value);
}

class Failure extends Maybe {
  final Exception? exception;
  final FailureReason reason;

  Failure(this.reason, this.exception);
}