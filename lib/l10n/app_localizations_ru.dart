// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Flauth';

  @override
  String get languageSettings => 'Настройки языка';

  @override
  String get languageMode => 'Режим языка';

  @override
  String get languageModeSystem => 'Системный по умолчанию';

  @override
  String get languageModeCustom => 'Пользовательский';

  @override
  String get selectLanguage => 'Выбрать язык';

  @override
  String get securitySettings => 'Настройки безопасности';

  @override
  String get setupPinBiometrics => 'Настроить PIN и биометрию';

  @override
  String get about => 'О приложении';

  @override
  String version(String version, String buildNumber) {
    return 'Версия $version ($buildNumber)';
  }

  @override
  String get github => 'GitHub';

  @override
  String get feedbackSupport => 'Обратная связь и поддержка';

  @override
  String get privacyFirst =>
      'Приватный, полностью открытый TOTP-аутентификатор для Android, macOS, Windows и Linux.';

  @override
  String copyright(int year) {
    return '© $year our0boros';
  }

  @override
  String get noAccountsYet => 'Пока нет аккаунтов';

  @override
  String get tapToScan => 'Нажмите кнопку ниже, чтобы сканировать QR-код';

  @override
  String get importExport => 'Импорт / Экспорт';

  @override
  String get scan => 'Сканировать';

  @override
  String get protectYourAccounts => 'Защитите свои аккаунты';

  @override
  String get setupPinRecommended =>
      'Настоятельно рекомендуется установить PIN для защиты ваших 2FA-токенов. Хотите сделать это сейчас?';

  @override
  String get later => 'Позже';

  @override
  String get setupNow => 'Настроить сейчас';

  @override
  String get copyCode => 'Копировать код';

  @override
  String get codeCopied => 'Код скопирован в буфер обмена';

  @override
  String get editAccount => 'Редактировать аккаунт';

  @override
  String get deleteAccount => 'Удалить аккаунт';

  @override
  String get deleteConfirmTitle => 'Удалить аккаунт?';

  @override
  String deleteConfirmMessage(String accountName) {
    return 'Вы уверены, что хотите удалить $accountName? Это действие нельзя отменить.';
  }

  @override
  String get cancel => 'Отмена';

  @override
  String get delete => 'Удалить';

  @override
  String get accountName => 'Имя аккаунта';

  @override
  String get issuer => 'Издатель';

  @override
  String get save => 'Сохранить';
}
