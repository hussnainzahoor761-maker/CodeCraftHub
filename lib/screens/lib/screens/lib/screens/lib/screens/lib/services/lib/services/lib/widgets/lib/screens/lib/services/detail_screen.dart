import 'package:first_project_nastp/storage_service.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final String courseTitle;
  final String courseDescription;

  const DetailScreen({
    Key? key,
    this.courseTitle = 'Mobile App Development',
    this.courseDescription = 'Comprehensive guide on REST API integration and Flutter state management.',
  }) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final StorageService _storageService = StorageService();
  String _savedStatus = '';

  void _saveCourse() async {
    await _storageService.saveCourse('course_101');
    List<String> courses = await _storageService.getSavedCourses();

    setState(() {
      _savedStatus = 'Saved Courses in Storage: $courses';
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Course Saved to Local Storage!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.courseTitle),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.courseTitle,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            Text(
              widget.courseDescription,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 25),
            ElevatedButton.icon(
              onPressed: _saveCourse,
              icon: const Icon(Icons.bookmark),
              label: const Text('Save to Favorites'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              ),
            ),
            const SizedBox(height: 20),
            if (_savedStatus.isNotEmpty)
              Container(
                padding: const EdgeInsets.all(12),
                color: Colors.green.shade50,
                child: Text(
                  _savedStatus,
                  style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                ),
              ),
          ],
        ),
      ),
    );
  }
}