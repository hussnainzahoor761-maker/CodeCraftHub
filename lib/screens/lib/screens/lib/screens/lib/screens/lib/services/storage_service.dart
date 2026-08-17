import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  static const String _courseKey = 'saved_courses';

  Future<void> saveCourse(String courseId) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> saved = prefs.getStringList(_courseKey) ?? [];
    if (!saved.contains(courseId)) {
      saved.add(courseId);
      await prefs.setStringList(_courseKey, saved);
    }
  }

  Future<List<String>> getSavedCourses() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_courseKey) ?? [];
  }
}
