import 'package:flutter/material.dart';
import 'package:qr_menu/widgets/icecekler_card.dart';

class IceceklerMenu extends StatefulWidget {
  const IceceklerMenu({super.key});

  @override
  State<IceceklerMenu> createState() => _IceceklerMenuState();
}

class _IceceklerMenuState extends State<IceceklerMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: SingleChildScrollView(
        child: Wrap(
          spacing: 12,
          runSpacing: 12,
          children: const [
            IcecekCard(
              imagePath: 'assets/coca_cola.png',
              title: 'Coca Cola',
              price: '30',
            ),
            IcecekCard(
              imagePath: 'assets/coca_cola_sise.png',
              title: 'Coca Cola Şişe',
              price: '30',
            ),
            IcecekCard(
              imagePath: 'assets/coca_cola_zero.png',
              title: 'Coca Cola Zero',
              price: '30',
            ),
            IcecekCard(
              imagePath: 'assets/fusetea_limon.jpg',
              title: 'Fusetea Limon',
              price: '25',
            ),
            IcecekCard(
              imagePath: 'assets/fusetea_seftali.jpg',
              title: 'Fusetea Şeftali',
              price: '25',
            ),
            IcecekCard(
              imagePath: 'assets/fusetea_karpuz.png',
              title: 'Fusetea Karpuz',
              price: '25',
            ),
            IcecekCard(
              imagePath: 'assets/fusetea_mango.jpg',
              title: 'Fusetea Mango',
              price: '25',
            ),
            IcecekCard(
              imagePath: 'assets/sprite.jpg',
              title: 'Sprite',
              price: '30',
            ),
          ],
        ),
      ),
    );
  }
}
