import 'dart:convert';
import 'dart:developer';
import '../../core/utils/consts.dart';
import 'storage_service.dart';

class StorageProvider {
  static late final StorageService _storageService;
  static String? _cachedToken;

  static void init(StorageService storageService) {
    _storageService = storageService;
  }

  static Future<void> loadToken() async {
    final userJson = await _storageService.read(kUseKey);
    if (userJson == null) {
      _cachedToken = null;
      return;
    }
    final Map<String, dynamic> jsonMap = jsonDecode(userJson);
    _cachedToken = jsonMap['token'] as String?;
  }

  static String? getAccessToken() => _cachedToken;

  static Future<void> setToken(String? newToken) async {
    _cachedToken = newToken;

    if (newToken == null) {
      await _storageService.delete(kUseKey);
    } else {
      final jsonMap = {'token': newToken};

      final userJson = jsonEncode(jsonMap);
      await _storageService.write(kUseKey, userJson);
    }
  }

  static Future<void> removeToken() async {
    _cachedToken = null;
    await _storageService.delete(kUseKey);
  }

  static const String _langKey = 'appLanguageCode';
  // Set the current language code
  static Future<void> setCurrentLanguage(String languageCode) async {
    await _storageService.write(_langKey, languageCode);
  }

  static Future<String?> getCurrentLanguageCode() async {
    final savedCode = await _storageService.read(_langKey);
    log("language tag : Saved language code = $savedCode");
    return savedCode;
  }

  static Map<String, dynamic>? _getPayloadMap() {
    final token = _cachedToken;
    if (token == null) return null;

    try {
      final parts = token.split('.');
      if (parts.length != 3) return null;

      final payload = utf8.decode(
        base64Url.decode(base64Url.normalize(parts[1])),
      );
      final Map<String, dynamic> payloadMap = jsonDecode(payload);
      log("token payload: $payloadMap");
      return payloadMap;
    } catch (e) {
      return null;
    }
  }

  static String? getUserId() {
    final payload = _getPayloadMap();
    return payload?['_id']?.toString();
  }

  static String? getEmail() {
    final payload = _getPayloadMap();
    return payload?['email']?.toString();
  }

  static String? getPhone() {
    final payload = _getPayloadMap();
    return payload?['phone']?.toString();
  }

  static String? getProfilePhoto() {
    final payload = _getPayloadMap();
    return payload?['picture']?.toString();
  }

  static String? getName() {
    final payload = _getPayloadMap();
    return payload?['name']?.toString();
  }

  static String? getRegion() {
    final payload = _getPayloadMap();
    return payload?['region']?.toString();
  }

  static String? lastUpdated() {
    final payload = _getPayloadMap();
    return payload?['updatedAt']?.toString();
  }

  static bool isActive() {
    final payload = _getPayloadMap();
    return payload?['is_active'] ?? false;
  }

  static int currentAOQ() {
    final payload = _getPayloadMap();
    return payload?['aoq_current'] ?? false;
  }

  static String? getStripeCustomerId() {
    final payload = _getPayloadMap();
    return payload?['stripeCustomerId'] ?? "";
  }

  static String? getLangugae() {
    final payload = _getPayloadMap();
    return payload?['language'] ?? "en";
  }

  static String? getPhoneNo() {
    final payload = _getPayloadMap();
    return payload?['phone']?.toString();
  }
}
