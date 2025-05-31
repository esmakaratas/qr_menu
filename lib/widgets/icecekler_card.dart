import 'package:flutter/material.dart';

class IcecekCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;

  const IcecekCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final cardWidth = (MediaQuery.of(context).size.width - 48) / 3;
        const cardHeight = 200.0;

        return SizedBox(
          width: cardWidth,
          height: cardHeight,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 3,
            child: Container(
              padding: const EdgeInsets.all(8),
              color: const Color.fromARGB(255, 230, 230, 230),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      imagePath,
                      height: 100,
                      width: cardWidth,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 43, 114, 46),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '$price TL',
                    style: const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
