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
      backgroundColor: Colors.green[900],
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        toolbarHeight: 70, // AppBar yüksekliğini artır
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "HOŞ GELDİNİZ !",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "Ne alırsınız ?",
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
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
            Expanded(
              child: _isMakarnaSelected ? MakarnaMenu() : IceceklerMenu(),
            ),
          ],
        ),
      ),
    );
  }
}
