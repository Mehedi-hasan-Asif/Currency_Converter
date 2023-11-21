import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ShareApp extends StatefulWidget {
  const ShareApp({super.key});

  @override
  State<ShareApp> createState() => _ShareState();
}

class _ShareState extends State<ShareApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Share.share('com.example.Currency_Converter');
            },
            child: const Text(
              " Click On Share",
              style: TextStyle(
                  color: Color.fromARGB(255, 247, 211, 211), fontSize: 20),
            )),
      ),
    );
  }
}
