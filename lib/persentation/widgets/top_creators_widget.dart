import 'package:flutter/material.dart';

class TopCreatorsWidget extends StatelessWidget {
  final List<Map<String, String>> creators;

  const TopCreatorsWidget({super.key, required this.creators});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Top Creators',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),
            Column(
              children: creators.map((creator) {
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 25,
                    child: Text(
                      creator['name']!.substring(0, 1).toUpperCase(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  title: Text(
                    creator['name']!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  subtitle: Text('Artworks: ${creator['artworks']}'),
                  trailing: Text('Rating: ${creator['rating']}'),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
