import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

final logger = Logger(
  printer: PrettyPrinter(
    methodCount: 0,
    errorMethodCount: 5,
    lineLength: 90,
    colors: true,
    printEmojis: true,
    printTime: false,
  ),
);

class LoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final buffer = StringBuffer();

    buffer
        .writeln("🌐 REQUEST ➜ ${options.method.toUpperCase()} ${options.uri}");

    buffer.writeln("📦 Headers:");
    options.headers.forEach((k, v) => buffer.writeln('   $k: $v'));

    if (options.queryParameters.isNotEmpty) {
      buffer.writeln("🔎 Query Params:");
      options.queryParameters.forEach((k, v) => buffer.writeln('   $k: $v'));
    }

    if (kDebugMode && options.data != null) {
      try {
        const encoder = JsonEncoder.withIndent('  ');
        final prettyBody = encoder.convert(options.data);
        buffer.writeln("📤 Body:\n$prettyBody");
      } catch (e) {
        buffer.writeln("📤 Raw Body:\n${options.data.toString()}");
      }
    }

    logger.i(buffer.toString());
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final buffer = StringBuffer();

    buffer.writeln(
        "✅ RESPONSE ➜ ${response.statusCode} ${response.requestOptions.uri}");

    try {
      const encoder = JsonEncoder.withIndent('  ');
      final prettyJson = encoder.convert(response.data);
      buffer.writeln("📨 Body:\n$prettyJson");
    } catch (e) {
      buffer.writeln("📨 Raw Body:\n${response.data.toString()}");
    }

    logger.i(buffer.toString());
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final buffer = StringBuffer();

    buffer.writeln(
        "❌ ERROR ➜ ${err.response?.statusCode ?? 'Unknown'} ${err.requestOptions.uri}");

    if (err.response != null) {
      try {
        const encoder = JsonEncoder.withIndent('  ');
        final prettyError = encoder.convert(err.response!.data);
        buffer.writeln("❗ Error Body:\n$prettyError");
      } catch (e) {
        buffer.writeln("❗ Raw Error:\n${err.response!.data.toString()}");
      }
    } else {
      buffer.writeln("⚠️ No response received: ${err.message}");
    }

    logger.e(buffer.toString());
    super.onError(err, handler);
  }
}
