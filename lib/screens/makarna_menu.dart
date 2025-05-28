import 'package:flutter/material.dart';
import 'package:qr_menu/widgets/menu_card.dart';

class MakarnaMenu extends StatelessWidget {
  const MakarnaMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      {
        'image': 'assets/makarna.png',
        'title': 'Fettucini Alfredo',
        'desc':
            '100 gr baharatlı tavuk ve sotelenmiş mantar. Damakta yoğun bir lezzet bırakıyor.',
        'price': '175',
      },
      {
        'image': 'assets/makarna.png',
        'title': 'Fettucini Pesto',
        'desc': 'Taze fesleğen, çam fıstığı ve parmesan peyniriyle eşsiz tat.',
        'price': '170',
      },
      {
        'image': 'assets/makarna.png',
        'title': 'Fettucini Napolitan',
        'desc': '100 gr baharatlı tavuk ve sotelenmiş mantar.',
        'price': '175',
      },
      {
        'image': 'assets/makarna.png',
        'title': 'Fettucini Pastırmalı',
        'desc': 'Taze fesleğen, parmesan ve bolonez soslu unutulmaz tat.',
        'price': '185',
      },
      {
        'image': 'assets/makarna.png',
        'title': 'Fettucini Alfredo',
        'desc':
            '100 gr baharatlı tavuk ve sotelenmiş mantar. Damakta yoğun bir lezzet bırakıyor.',
        'price': '175',
      },
      {
        'image': 'assets/makarna.png',
        'title': 'Fettucini Alfredo',
        'desc':
            '100 gr baharatlı tavuk ve sotelenmiş mantar. Damakta yoğun bir lezzet bırakıyor.',
        'price': '175',
      },
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return GridView.builder(
              itemCount: items.length,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent:
                    constraints.maxWidth / 2, // maksimum genişlik
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 0.6, // boy/en oranı
              ),
              itemBuilder: (context, index) {
                final item = items[index];
                return MenuCard(
                  imagePath: item['image']!,
                  title: item['title']!,
                  description: item['desc']!,
                  price: item['price']!,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
