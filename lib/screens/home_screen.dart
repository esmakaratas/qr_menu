import 'package:flutter/material.dart';
import 'package:qr_menu/screens/makarna_menu.dart';
import 'package:qr_menu/screens/icecekler_menu.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // true: makarna, false: içecek
  bool _isMakarnaSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "HOŞ GELDİNİZ !",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green[900],
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Center(
              child: Text("Ne alırsınız ?", style: TextStyle(fontSize: 12)),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          // Menü Seçimi
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isMakarnaSelected = true;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    "Makarnalar",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      decoration: _isMakarnaSelected
                          ? TextDecoration.underline
                          : TextDecoration.none,
                      color: _isMakarnaSelected ? Colors.black : Colors.grey,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isMakarnaSelected = false;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    "İçecekler",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      decoration: !_isMakarnaSelected
                          ? TextDecoration.underline
                          : TextDecoration.none,
                      color: !_isMakarnaSelected ? Colors.black : Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Divider(thickness: 1),

          // Menü içeriği
          Expanded(child: _isMakarnaSelected ? MakarnaMenu() : IceceklerMenu()),
        ],
      ),
    );
  }
}
