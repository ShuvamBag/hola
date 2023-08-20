import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'package:flutter/material.dart';

import 'login.dart';
class CallPage extends StatelessWidget {
  const CallPage({Key? key, required this.callID}) : super(key: key);
  final String callID;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: 718923087, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: "fb6e6beb2ad3633de2b119bba4b07584a5c4059857436c433cf98b927f51a3dc", // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
        userID: MyLogin.userId,
        userName: MyLogin.name,
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
        ..onOnlySelfInRoom = (context) => Navigator.of(context).pop() as void Function(BuildContext context)?,
    );
  }
}