import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocaleProvider with ChangeNotifier {
  static const _keyLocaleMode = 'locale_mode';
  static const _keyCustomLocale = 'custom_locale';

  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  LocaleMode _localeMode = LocaleMode.system;
  Locale? _customLocale;

  LocaleMode get localeMode => _localeMode;
  Locale? get customLocale => _customLocale;

  static const _supportedLocales = [
    Locale('en'),
    Locale('zh'),
    Locale('ja'),
    Locale('es'),
    Locale('fr'),
    Locale('de'),
    Locale('ru'),
    Locale('pt'),
  ];

  static List<Locale> get supportedLocales => _supportedLocales;

  LocaleProvider() {
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final modeString = await _storage.read(key: _keyLocaleMode);
    if (modeString != null) {
      _localeMode = LocaleMode.values.firstWhere(
        (e) => e.name == modeString,
        orElse: () => LocaleMode.system,
      );
    }

    final localeString = await _storage.read(key: _keyCustomLocale);
    if (localeString != null) {
      final locale = Locale(localeString);
      if (_isLocaleSupported(locale)) {
        _customLocale = locale;
      } else {
        await _storage.delete(key: _keyCustomLocale);
        debugPrint('Unsupported locale: $localeString, reset to null');
      }
    }

    notifyListeners();
  }

  bool _isLocaleSupported(Locale locale) {
    return _supportedLocales.any(
      (l) => l.languageCode == locale.languageCode,
    );
  }

  Future<void> setLocaleMode(LocaleMode mode) async {
    _localeMode = mode;
    await _storage.write(key: _keyLocaleMode, value: mode.name);
    notifyListeners();
  }

  Future<bool> setCustomLocale(Locale? locale) async {
    if (locale != null && !_isLocaleSupported(locale)) {
      debugPrint('Cannot set unsupported locale: ${locale.languageCode}');
      return false;
    }

    _customLocale = locale;
    if (locale != null) {
      await _storage.write(key: _keyCustomLocale, value: locale.languageCode);
    } else {
      await _storage.delete(key: _keyCustomLocale);
    }
    notifyListeners();
    return true;
  }

  Locale? getLocale() {
    switch (_localeMode) {
      case LocaleMode.system:
        return null;
      case LocaleMode.custom:
        if (_customLocale != null && _isLocaleSupported(_customLocale!)) {
          return _customLocale;
        }
        return const Locale('en');
    }
  }
}

enum LocaleMode {
  system,
  custom,
}
