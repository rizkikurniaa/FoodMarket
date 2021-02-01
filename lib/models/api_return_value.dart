part of 'models.dart';

class ApiReturnValue<T> {
  final T value;
  final String message;

  ApiReturnValue({this.message, this.value});
}
