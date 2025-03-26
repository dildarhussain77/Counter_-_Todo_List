import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsService {
  static Future<void> saveCounter(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('counter', value);
  }

  static Future<int> getCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt('counter') ?? 0;
  }

  static Future<void> saveTasks(List<String> tasks) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList('tasks', tasks);
  }

  static Future<List<String>> getTasks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getStringList('tasks') ?? [];
  }
}
