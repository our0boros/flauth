// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Flauth';

  @override
  String get languageSettings => 'Configurações de idioma';

  @override
  String get languageMode => 'Modo de idioma';

  @override
  String get languageModeSystem => 'Padrão do sistema';

  @override
  String get languageModeCustom => 'Personalizado';

  @override
  String get selectLanguage => 'Selecionar idioma';

  @override
  String get securitySettings => 'Configurações de segurança';

  @override
  String get setupPinBiometrics => 'Configurar PIN e biometria';

  @override
  String get about => 'Sobre';

  @override
  String version(String version, String buildNumber) {
    return 'Versão $version ($buildNumber)';
  }

  @override
  String get github => 'GitHub';

  @override
  String get feedbackSupport => 'Feedback e suporte';

  @override
  String get privacyFirst =>
      'Um autenticador TOTP open source focado em privacidade para Android, macOS, Windows e Linux.';

  @override
  String copyright(int year) {
    return '© $year our0boros';
  }

  @override
  String get noAccountsYet => 'Nenhuma conta ainda';

  @override
  String get tapToScan => 'Toque no botão abaixo para escanear um código QR';

  @override
  String get importExport => 'Importar / Exportar';

  @override
  String get scan => 'Escanear';

  @override
  String get protectYourAccounts => 'Proteja suas contas';

  @override
  String get setupPinRecommended =>
      'É altamente recomendado configurar um PIN para proteger seus tokens 2FA. Gostaria de fazer isso agora?';

  @override
  String get later => 'Depois';

  @override
  String get setupNow => 'Configurar agora';

  @override
  String get copyCode => 'Copiar código';

  @override
  String get codeCopied => 'Código copiado para a área de transferência';

  @override
  String get editAccount => 'Editar conta';

  @override
  String get deleteAccount => 'Excluir conta';

  @override
  String get deleteConfirmTitle => 'Excluir conta?';

  @override
  String deleteConfirmMessage(String accountName) {
    return 'Tem certeza de que deseja excluir $accountName? Esta ação não pode ser desfeita.';
  }

  @override
  String get cancel => 'Cancelar';

  @override
  String get delete => 'Excluir';

  @override
  String get accountName => 'Nome da conta';

  @override
  String get issuer => 'Emissor';

  @override
  String get save => 'Salvar';
}
