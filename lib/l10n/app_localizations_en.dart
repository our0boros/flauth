// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Flauth';

  @override
  String get languageSettings => 'Language Settings';

  @override
  String get languageMode => 'Language Mode';

  @override
  String get languageModeSystem => 'System Default';

  @override
  String get languageModeCustom => 'Custom';

  @override
  String get selectLanguage => 'Select Language';

  @override
  String get securitySettings => 'Security Settings';

  @override
  String get setupPinBiometrics => 'Setup PIN & Biometrics';

  @override
  String get about => 'About';

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
      'A privacy-first, fully open-source TOTP authenticator for Android, macOS, Windows, and Linux.';

  @override
  String copyright(int year) {
    return '© $year our0boros';
  }

  @override
  String get noAccountsYet => 'No accounts yet';

  @override
  String get tapToScan => 'Tap the button below to scan a QR code';

  @override
  String get importExport => 'Import / Export';

  @override
  String get scan => 'Scan';

  @override
  String get protectYourAccounts => 'Protect your accounts';

  @override
  String get setupPinRecommended =>
      'It is highly recommended to set up a PIN to secure your 2FA tokens. Would you like to do it now?';

  @override
  String get later => 'Later';

  @override
  String get setupNow => 'Setup Now';

  @override
  String get copyCode => 'Copy code';

  @override
  String get codeCopied => 'Code copied to clipboard';

  @override
  String get editAccount => 'Edit account';

  @override
  String get deleteAccount => 'Delete account';

  @override
  String get deleteConfirmTitle => 'Delete account?';

  @override
  String deleteConfirmMessage(String accountName) {
    return 'Are you sure you want to delete $accountName? This action cannot be undone.';
  }

  @override
  String get cancel => 'Cancel';

  @override
  String get delete => 'Delete';

  @override
  String get accountName => 'Account name';

  @override
  String get issuer => 'Issuer';

  @override
  String get save => 'Save';
}
