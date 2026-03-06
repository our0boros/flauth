// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'Flauth';

  @override
  String get languageSettings => '言語設定';

  @override
  String get languageMode => '言語モード';

  @override
  String get languageModeSystem => 'システムデフォルト';

  @override
  String get languageModeCustom => 'カスタム';

  @override
  String get selectLanguage => '言語を選択';

  @override
  String get securitySettings => 'セキュリティ設定';

  @override
  String get setupPinBiometrics => 'PINと生体認証を設定';

  @override
  String get about => 'アプリについて';

  @override
  String version(String version, String buildNumber) {
    return 'バージョン $version ($buildNumber)';
  }

  @override
  String get github => 'GitHub';

  @override
  String get feedbackSupport => 'フィードバックとサポート';

  @override
  String get privacyFirst =>
      'プライバシー優先の完全にオープンソースなTOTP認証アプリ。Android、macOS、Windows、Linuxに対応。';

  @override
  String copyright(int year) {
    return '© $year our0boros';
  }

  @override
  String get noAccountsYet => 'アカウントがありません';

  @override
  String get tapToScan => '下のボタンをタップしてQRコードをスキャン';

  @override
  String get importExport => 'インポート/エクスポート';

  @override
  String get scan => 'スキャン';

  @override
  String get protectYourAccounts => 'アカウントを保護';

  @override
  String get setupPinRecommended =>
      '2FAトークンを保護するためにPINを設定することを強く推奨します。今すぐ設定しますか？';

  @override
  String get later => '後で';

  @override
  String get setupNow => '今すぐ設定';

  @override
  String get copyCode => 'コードをコピー';

  @override
  String get codeCopied => 'コードがクリップボードにコピーされました';

  @override
  String get editAccount => 'アカウントを編集';

  @override
  String get deleteAccount => 'アカウントを削除';

  @override
  String get deleteConfirmTitle => 'アカウントを削除しますか？';

  @override
  String deleteConfirmMessage(String accountName) {
    return '$accountNameを削除してもよろしいですか？この操作は元に戻せません。';
  }

  @override
  String get cancel => 'キャンセル';

  @override
  String get delete => '削除';

  @override
  String get accountName => 'アカウント名';

  @override
  String get issuer => '発行者';

  @override
  String get save => '保存';
}
