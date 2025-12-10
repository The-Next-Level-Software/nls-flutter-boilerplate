// import '/app/environment/environment.dart';
// import '/utils/token_utils.dart';
// import 'dart:async';
// import 'package:logger/logger.dart';
// import 'package:onesignal_flutter/onesignal_flutter.dart';

// class OneSignalService {
//   static Future<dynamic> initOneSignal() async {
//     try {
//       OneSignal.initialize(ONE_SIGNAL_APP_ID);
//       OneSignal.consentRequired(true);
//       OneSignal.consentGiven(true);
//       OneSignal.Notifications.requestPermission(true);

//       OneSignal.Notifications.addClickListener((event) {
//         // Logger().i(
//         //   '- ${event.notification.title}\n'
//         //   '- ${event.notification.body}\n'
//         //   '- ${event.notification.additionalData}',
//         // );
//       });

//       // OneSignal.Notifications.addForegroundWillDisplayListener((event) {});

//       String userID = TokenUtil.getUserDataFromToken()?.id ?? '';
//       Map<String, dynamic> tags = {
//         'userId': userID,
//       };
//       await OneSignal.User.addTags(tags);
//       Logger().d(OneSignal.User.pushSubscription.id);
//       Logger().w('========$ONE_SIGNAL_APP_ID======');
//       Logger().w('========$tags======');
//       Logger().w('========one signal init======');
//     } catch (e) {
//       Logger().e(e);
//     }
//   }

//   static deleteUserTag(String tagName) {
//     OneSignal.User.removeTag(tagName).then((value) {
//       Logger().i("Successfully deleted tags with response:");
//     }).catchError((error) {
//       Logger().e("Encountered an error deleting tag: $error");
//     });
//   }
// }
