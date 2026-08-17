import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String courseTitle;
  final String courseDescription;

  const DetailScreen({
    Key? key,
    this.courseTitle = 'Mobile App Development',
    this.courseDescription = 'Comprehensive guide on REST API integration and Flutter state management.',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(courseTitle),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              courseTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 12),
            Text(
              courseDescription,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.bookmark),
              label: const Text('Save to Favorites'),
            ),
          ],
        ),
      ),
    );
  }
}
