// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Flauth';

  @override
  String get languageSettings => 'Spracheinstellungen';

  @override
  String get languageMode => 'Sprachmodus';

  @override
  String get languageModeSystem => 'Systemstandard';

  @override
  String get languageModeCustom => 'Benutzerdefiniert';

  @override
  String get selectLanguage => 'Sprache auswählen';

  @override
  String get securitySettings => 'Sicherheitseinstellungen';

  @override
  String get setupPinBiometrics => 'PIN & Biometrie einrichten';

  @override
  String get about => 'Über';

  @override
  String version(String version, String buildNumber) {
    return 'Version $version ($buildNumber)';
  }

  @override
  String get github => 'GitHub';

  @override
  String get feedbackSupport => 'Feedback & Support';

  @override
  String get privacyFirst =>
      'Ein datenschutzorientierter, vollständig quelloffener TOTP-Authentifikator für Android, macOS, Windows und Linux.';

  @override
  String copyright(int year) {
    return '© $year our0boros';
  }

  @override
  String get noAccountsYet => 'Noch keine Konten';

  @override
  String get tapToScan =>
      'Tippen Sie auf die Schaltfläche unten, um einen QR-Code zu scannen';

  @override
  String get importExport => 'Importieren / Exportieren';

  @override
  String get scan => 'Scannen';

  @override
  String get protectYourAccounts => 'Schützen Sie Ihre Konten';

  @override
  String get setupPinRecommended =>
      'Es wird dringend empfohlen, eine PIN einzurichten, um Ihre 2FA-Token zu sichern. Möchten Sie das jetzt tun?';

  @override
  String get later => 'Später';

  @override
  String get setupNow => 'Jetzt einrichten';

  @override
  String get copyCode => 'Code kopieren';

  @override
  String get codeCopied => 'Code in die Zwischenablage kopiert';

  @override
  String get editAccount => 'Konto bearbeiten';

  @override
  String get deleteAccount => 'Konto löschen';

  @override
  String get deleteConfirmTitle => 'Konto löschen?';

  @override
  String deleteConfirmMessage(String accountName) {
    return 'Sind Sie sicher, dass Sie $accountName löschen möchten? Diese Aktion kann nicht rückgängig gemacht werden.';
  }

  @override
  String get cancel => 'Abbrechen';

  @override
  String get delete => 'Löschen';

  @override
  String get accountName => 'Kontoname';

  @override
  String get issuer => 'Aussteller';

  @override
  String get save => 'Speichern';
}
