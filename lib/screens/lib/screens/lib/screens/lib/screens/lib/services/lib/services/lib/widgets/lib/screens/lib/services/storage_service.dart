class StorageService {
  static final List<String> _mockStorage = [];

  // Course ko memory mein save karne ka method
  Future<void> saveCourse(String courseId) async {
    await Future.delayed(const Duration(milliseconds: 200));
    if (!_mockStorage.contains(courseId)) {
      _mockStorage.add(courseId);
    }
  }

  // Saved courses retrieve karne ka method
  Future<List<String>> getSavedCourses() async {
    await Future.delayed(const Duration(milliseconds: 100));
    return List.from(_mockStorage);
  }
}