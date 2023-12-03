import 'package:flutter/material.dart';

class MobileCard extends StatelessWidget {
  const MobileCard({super.key, required this.currentList});

  final currentList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 111,
      width: 130,
      child: Card(
        elevation: 0,
        color: Color.fromARGB(255, 239, 246, 252),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(
                currentList.image,
                height: 80,
              ),
              const SizedBox(height: 16),
              Text(
                currentList.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Text(
                currentList.price,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
