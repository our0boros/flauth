// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'Flauth';

  @override
  String get languageSettings => '语言设置';

  @override
  String get languageMode => '语言模式';

  @override
  String get languageModeSystem => '跟随系统';

  @override
  String get languageModeCustom => '自定义';

  @override
  String get selectLanguage => '选择语言';

  @override
  String get securitySettings => '安全设置';

  @override
  String get setupPinBiometrics => '设置 PIN 码和生物识别';

  @override
  String get about => '关于';

  @override
  String version(String version, String buildNumber) {
    return '版本 $version ($buildNumber)';
  }

  @override
  String get github => 'GitHub';

  @override
  String get feedbackSupport => '反馈与支持';

  @override
  String get privacyFirst =>
      '一个注重隐私、完全开源的 TOTP 身份验证器，支持 Android、macOS、Windows 和 Linux。';

  @override
  String copyright(int year) {
    return '© $year our0boros';
  }

  @override
  String get noAccountsYet => '暂无账号';

  @override
  String get tapToScan => '点击下方按钮扫描二维码';

  @override
  String get importExport => '导入/导出';

  @override
  String get scan => '扫描';

  @override
  String get protectYourAccounts => '保护您的账号';

  @override
  String get setupPinRecommended => '强烈建议设置 PIN 码来保护您的 2FA 令牌。是否立即设置？';

  @override
  String get later => '稍后';

  @override
  String get setupNow => '立即设置';

  @override
  String get copyCode => '复制验证码';

  @override
  String get codeCopied => '验证码已复制到剪贴板';

  @override
  String get editAccount => '编辑账号';

  @override
  String get deleteAccount => '删除账号';

  @override
  String get deleteConfirmTitle => '删除账号？';

  @override
  String deleteConfirmMessage(String accountName) {
    return '确定要删除 $accountName 吗？此操作无法撤销。';
  }

  @override
  String get cancel => '取消';

  @override
  String get delete => '删除';

  @override
  String get accountName => '账号名称';

  @override
  String get issuer => '发行者';

  @override
  String get save => '保存';
}
