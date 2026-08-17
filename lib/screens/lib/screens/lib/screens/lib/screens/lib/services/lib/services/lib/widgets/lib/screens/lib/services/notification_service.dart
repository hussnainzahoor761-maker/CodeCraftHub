class NotificationService {
  static final NotificationService _instance = NotificationService._internal();
  factory NotificationService() => _instance;
  NotificationService._internal();

  bool _notificationsEnabled = true;

  bool get isEnabled => _notificationsEnabled;

  void setNotificationsEnabled(bool value) {
    _notificationsEnabled = value;
  }

  // Method to trigger local notifications
  Future<void> showNotification(String title, String body) async {
    if (_notificationsEnabled) {
      print('[Notification Triggered] Title: $title | Body: $body');
    }
  }
}