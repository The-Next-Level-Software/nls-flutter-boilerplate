abstract class Failure {
  final String message;
  final int? statusCode;

  const Failure({
    required this.message,
    this.statusCode,
  });

  factory Failure.serverFailure({String? message, int? statusCode}) {
    return ServerFailure(
      message: message ?? 'Something went wrong',
      statusCode: statusCode,
    );
  }

  factory Failure.otherFailure({String? message, int? statusCode}) {
    return OtherFailure(
      message: message ?? "Something wents wrong",
      statusCode: statusCode,
    );
  }

  @override
  String toString() => 'Failure(message: $message, statusCode: $statusCode)';
}

class ServerFailure extends Failure {
  const ServerFailure({
    super.message = 'Something went wrong',
    super.statusCode,
  });
}

class OtherFailure extends Failure {
  const OtherFailure({
    super.message = 'Something went wrong',
    super.statusCode,
  });
}
