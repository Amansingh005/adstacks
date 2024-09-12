import 'package:flutter/material.dart';

class ProjectCardWidget extends StatelessWidget {
  final String title;
  final String projectId;

  const ProjectCardWidget(
      {super.key, required this.title, required this.projectId});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5.0,
      child: ListTile(
        contentPadding: const EdgeInsets.all(16.0),
        leading: Container(
          height: 50.0,
          width: 50.0,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.purpleAccent,
          ),
          child: Center(
            child: Text(
              projectId,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          "See project details",
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.grey[600],
          ),
        ),
        trailing: const Icon(Icons.edit, color: Colors.purple),
        onTap: () {
          // Handle tap to see project details
        },
      ),
    );
  }
}
