import 'dart:async';

class ApiService {
  // Mock API call to fetch course data
  Future<List<Map<String, String>>> fetchCourses() async {
    await Future.delayed(const Duration(seconds: 1)); // Network delay simulation
    return [
      {
        'id': '101',
        'title': 'Mobile App Development',
        'description': 'Comprehensive guide on REST API integration and Flutter state management.',
      },
      {
        'id': '102',
        'title': 'Flutter UI Masterclass',
        'description': 'Build responsive, beautiful user interfaces with custom widgets.',
      },
      {
        'id': '103',
        'title': 'Backend & Database Architecture',
        'description': 'Learn database modeling, REST APIs, and local data caching.',
      },
    ];
  }
}