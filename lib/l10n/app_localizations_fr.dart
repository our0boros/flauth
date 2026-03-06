// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Flauth';

  @override
  String get languageSettings => 'Paramètres de langue';

  @override
  String get languageMode => 'Mode de langue';

  @override
  String get languageModeSystem => 'Par défaut du système';

  @override
  String get languageModeCustom => 'Personnalisé';

  @override
  String get selectLanguage => 'Sélectionner la langue';

  @override
  String get securitySettings => 'Paramètres de sécurité';

  @override
  String get setupPinBiometrics => 'Configurer le PIN et la biométrie';

  @override
  String get about => 'À propos';

  @override
  String version(String version, String buildNumber) {
    return 'Version $version ($buildNumber)';
  }

  @override
  String get github => 'GitHub';

  @override
  String get feedbackSupport => 'Commentaires et support';

  @override
  String get privacyFirst =>
      'Un authentificateur TOTP open source axé sur la confidentialité pour Android, macOS, Windows et Linux.';

  @override
  String copyright(int year) {
    return '© $year our0boros';
  }

  @override
  String get noAccountsYet => 'Pas encore de comptes';

  @override
  String get tapToScan =>
      'Appuyez sur le bouton ci-dessous pour scanner un code QR';

  @override
  String get importExport => 'Importer / Exporter';

  @override
  String get scan => 'Scanner';

  @override
  String get protectYourAccounts => 'Protégez vos comptes';

  @override
  String get setupPinRecommended =>
      'Il est fortement recommandé de configurer un PIN pour sécuriser vos jetons 2FA. Voulez-vous le faire maintenant ?';

  @override
  String get later => 'Plus tard';

  @override
  String get setupNow => 'Configurer maintenant';

  @override
  String get copyCode => 'Copier le code';

  @override
  String get codeCopied => 'Code copié dans le presse-papiers';

  @override
  String get editAccount => 'Modifier le compte';

  @override
  String get deleteAccount => 'Supprimer le compte';

  @override
  String get deleteConfirmTitle => 'Supprimer le compte ?';

  @override
  String deleteConfirmMessage(String accountName) {
    return 'Êtes-vous sûr de vouloir supprimer $accountName ? Cette action est irréversible.';
  }

  @override
  String get cancel => 'Annuler';

  @override
  String get delete => 'Supprimer';

  @override
  String get accountName => 'Nom du compte';

  @override
  String get issuer => 'Émetteur';

  @override
  String get save => 'Enregistrer';
}
