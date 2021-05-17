import 'package:shared_preferences/shared_preferences.dart';

/// 缓存管理类
class HiCache {
  SharedPreferences prefs; // 缓存管理

  HiCache._() {
    init(); // 单例，完成初始化
  }

  static HiCache _instance; // 静态实例

  HiCache._pre(SharedPreferences prefs) {
    this.prefs = prefs;
  }

  // 预初始化，防止在使用 get 时，prefs 还未完成初始化
  static Future<HiCache> preInit() async {
    if (_instance == null) {
      var prefs = await SharedPreferences.getInstance();
      _instance = HiCache._pre(prefs);
    }
    return _instance;
  }

  static HiCache getInstance() {
    if (_instance == null) {
      _instance = HiCache._();
    }
    return _instance; // 获取实例
  }

  void init() async {
    if (prefs == null) {
      prefs = await SharedPreferences.getInstance();
    }
  }

  setString(String key, String value) {
    prefs.setString(key, value);
  }

  setDouble(String key, double value) {
    prefs.setDouble(key, value);
  }

  setInt(String key, int value) {
    prefs.setInt(key, value);
  }

  setBool(String key, bool value) {
    prefs.setBool(key, value);
  }

  setStringList(String key, List<String> value) {
    prefs.setStringList(key, value);
  }

  T get<T>(String key) {
    return prefs?.get(key) ?? null;
  }
}