// import 'package:flutter_inappwebview/flutter_inappwebview.dart';
// import 'package:logger/logger.dart';

// class InAppBrowserService {
//   static Future<void> openPayment(
//     String? link, {
//     required void Function(Map<String, String> params) onExitCallback,
//   }) async {
//     if (link == null || link.isEmpty) {
//       Logger().e("Error: Payment link is null or empty");
//       return;
//     }

//     final _browser = _PaymentBrowser(onExitCallback: onExitCallback);

//     try {
//       await _browser.openUrlRequest(
//         urlRequest: URLRequest(url: WebUri(link)),
//         settings: InAppBrowserClassSettings(
//           browserSettings: InAppBrowserSettings(
//             allowGoBackWithBackButton: false,
//             shouldCloseOnBackButtonPressed: true,
//           ),
//           webViewSettings: InAppWebViewSettings(
//             javaScriptEnabled: true,
//             domStorageEnabled: true,
//             supportMultipleWindows: true,
//           ),
//         ),
//       );
//     } catch (e) {
//       Logger().e("Error opening payment link: $e");
//     }
//   }
// }

// class _PaymentBrowser extends InAppBrowser {
//   final void Function(Map<String, String>) onExitCallback;

//   _PaymentBrowser({required this.onExitCallback});

//   @override
//   void onBrowserCreated() {
//     super.onBrowserCreated();
//     Logger().i("Browser created!");
//   }

//   @override
//   Future<void> onLoadStop(WebUri? url) async {
//     super.onLoadStop(url);
//     Logger().i("Page loaded: ${url?.toString()}");

//     if (url != null && _isTrackedUrl(url.toString())) {
//       Logger().i("Matched URL: ${url.toString()}");

//       // Extract params
//       Map<String, String> params = _getQueryParams(url);

//       // Close after short delay
//       await Future.delayed(const Duration(seconds: 2));
//       close();

//       // Trigger callback
//       onExitCallback(params);
//     }
//   }

//   @override
//   void onExit() {
//     onExitCallback({});
//     super.onExit();
//     // Logger().i("Browser exited");
//   }
// }

// Map<String, String> _getQueryParams(WebUri url) {
//   return Uri.parse(url.toString()).queryParameters;
// }

// bool _isTrackedUrl(String url) {
//   final List<String> trackUrls = [
//     'https://demo.myfatoorah.com/En/KWT/PayInvoice/Result',
//   ];
//   return trackUrls.any((trackedUrl) => url.contains(trackedUrl));
// }
