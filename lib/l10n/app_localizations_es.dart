// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Flauth';

  @override
  String get languageSettings => 'Configuración de idioma';

  @override
  String get languageMode => 'Modo de idioma';

  @override
  String get languageModeSystem => 'Predeterminado del sistema';

  @override
  String get languageModeCustom => 'Personalizado';

  @override
  String get selectLanguage => 'Seleccionar idioma';

  @override
  String get securitySettings => 'Configuración de seguridad';

  @override
  String get setupPinBiometrics => 'Configurar PIN y biometría';

  @override
  String get about => 'Acerca de';

  @override
  String version(String version, String buildNumber) {
    return 'Versión $version ($buildNumber)';
  }

  @override
  String get github => 'GitHub';

  @override
  String get feedbackSupport => 'Comentarios y soporte';

  @override
  String get privacyFirst =>
      'Un autenticador TOTP de código abierto y centrado en la privacidad para Android, macOS, Windows y Linux.';

  @override
  String copyright(int year) {
    return '© $year our0boros';
  }

  @override
  String get noAccountsYet => 'Sin cuentas aún';

  @override
  String get tapToScan => 'Toca el botón de abajo para escanear un código QR';

  @override
  String get importExport => 'Importar / Exportar';

  @override
  String get scan => 'Escanear';

  @override
  String get protectYourAccounts => 'Protege tus cuentas';

  @override
  String get setupPinRecommended =>
      'Se recomienda altamente configurar un PIN para asegurar tus tokens 2FA. ¿Te gustaría hacerlo ahora?';

  @override
  String get later => 'Después';

  @override
  String get setupNow => 'Configurar ahora';

  @override
  String get copyCode => 'Copiar código';

  @override
  String get codeCopied => 'Código copiado al portapapeles';

  @override
  String get editAccount => 'Editar cuenta';

  @override
  String get deleteAccount => 'Eliminar cuenta';

  @override
  String get deleteConfirmTitle => '¿Eliminar cuenta?';

  @override
  String deleteConfirmMessage(String accountName) {
    return '¿Estás seguro de que quieres eliminar $accountName? Esta acción no se puede deshacer.';
  }

  @override
  String get cancel => 'Cancelar';

  @override
  String get delete => 'Eliminar';

  @override
  String get accountName => 'Nombre de cuenta';

  @override
  String get issuer => 'Emisor';

  @override
  String get save => 'Guardar';
}
