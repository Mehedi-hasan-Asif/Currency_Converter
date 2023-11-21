// ignore_for_file: deprecated_member_use, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({super.key, required this.title});
  final String title;
  @override
  State<FeedBack> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<FeedBack> {
  void openWhatsAppChat(String phoneNumber) async {
    String message = 'Hello!';
    bool whatsappInstalled =
        await canLaunch('whatsapp://send?phone=$phoneNumber');
    if (whatsappInstalled) {
      String url =
          'whatsapp://send?phone=$phoneNumber&text=${Uri.encodeComponent(message)}';

      await launch(url);
    } else {
      String webUrl =
          'https://wa.me/$phoneNumber/?text=${Uri.encodeComponent(message)}';

      await launch(webUrl);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Click the button to open WhatsApp chat!',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          openWhatsAppChat('+8801703651630');
        },
        child: const Icon(Icons.chat),
      ),
    );
  }
}
