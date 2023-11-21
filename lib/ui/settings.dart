import 'package:currency_converter/ui/navbar/constants/model/service/ratings.dart';
import 'package:currency_converter/ui/navbar/feedback.dart';
import 'package:currency_converter/ui/navbar/share.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
          color: Colors.black,
          child: ListView(
            children: [
              ListTile(
                  leading: const Icon(
                    Icons.feedback,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Feedback",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FeedBack(
                            title: 'Contact',
                          ),
                        ));
                  }),
              ListTile(
                  leading: const Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Share",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ShareApp(),
                        ));
                  }),
              ListTile(
                  leading: const Icon(
                    Icons.rate_review,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Rating",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyApp(),
                        ));
                  }),
            ],
          )),
    );
  }
}
