import 'package:currency_converter/ui/exchange.dart';
import 'package:currency_converter/ui/home.dart';
import 'package:currency_converter/ui/settings.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  Widget getView() {
    if (_selectedIndex == 0) {
      return const HomePage();
    }

    return const Exchange();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: const Settings(),
      appBar: AppBar(
        title: const Text(" Currency Convert"),
        centerTitle: true,
      ),
      body: getView(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.currency_exchange), label: "Exchange"),
        ],
      ),
    );
  }
}
