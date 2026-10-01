import 'package:flutter/material.dart';

import '../../models/data.dart';

class DetailPage extends StatelessWidget {
  final Menu menu;
  const DetailPage({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar otomatis punya tombol kembali ke Home
      appBar: AppBar(title: Text(menu.name)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                menu.image,
                width: double.infinity,
                height: 220,
                fit: BoxFit.cover,
                errorBuilder: (c, e, s) => const SizedBox(
                  height: 220,
                  child: Center(child: Icon(Icons.broken_image, size: 80)),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              menu.name,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(menu.category, style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 12),
            Text(
              menu.price,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Deskripsi',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(menu.description),
          ],
        ),
      ),
    );
  }
}
