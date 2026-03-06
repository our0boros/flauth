import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../l10n/app_localizations.dart';
import '../providers/locale_provider.dart';
import 'security_screen.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _launchEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'our0boros@163.com',
      query: 'subject=Flauth Feedback',
    );
    if (!await launchUrl(emailLaunchUri)) {
      throw Exception('Could not launch email');
    }
  }

  void _showLanguageSettings(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => const _LanguageSettingsSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    return Scaffold(
      appBar: AppBar(title: Text(l10n.about)),
      body: FutureBuilder<PackageInfo>(
        future: PackageInfo.fromPlatform(),
        builder: (context, snapshot) {
          final version = snapshot.hasData
              ? l10n.version(
                  snapshot.data!.version,
                  snapshot.data!.buildNumber,
                )
              : 'Loading...';

          return ListView(
            padding: const EdgeInsets.all(24.0),
            children: [
              const SizedBox(height: 40),
              const Center(
                child: Icon(Icons.lock_outline, size: 80, color: Colors.blue),
              ),
              const SizedBox(height: 16),
              Center(
                child: Text(
                  'Flauth',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Center(
                child: Text(
                  version,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(color: Colors.grey),
                ),
              ),
              const SizedBox(height: 32),
              Text(
                l10n.privacyFirst,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              ListTile(
                leading: const Icon(Icons.security),
                title: Text(l10n.securitySettings),
                subtitle: Text(l10n.setupPinBiometrics),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SecurityScreen(),
                    ),
                  );
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.language),
                title: Text(l10n.languageSettings),
                subtitle: Text(l10n.languageMode),
                onTap: () => _showLanguageSettings(context),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.code),
                title: Text(l10n.github),
                subtitle: const Text('github.com/our0boros/flauth'),
                onTap: () => _launchUrl('https://github.com/our0boros/flauth'),
                trailing: const Icon(Icons.open_in_new, size: 16),
              ),
              ListTile(
                leading: const Icon(Icons.email),
                title: Text(l10n.feedbackSupport),
                subtitle: const Text('our0boros@163.com'),
                onTap: _launchEmail,
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              ),
              const SizedBox(height: 40),
              Center(
                child: Text(
                  l10n.copyright(DateTime.now().year),
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall?.copyWith(color: Colors.grey),
                ),
              ),
              const SizedBox(height: 20),
            ],
          );
        },
      ),
    );
  }
}

class _LanguageSettingsSheet extends StatelessWidget {
  const _LanguageSettingsSheet();

  String _getLanguageName(String code) {
    switch (code) {
      case 'en':
        return 'English';
      case 'zh':
        return '中文';
      case 'ja':
        return '日本語';
      case 'es':
        return 'Español';
      case 'fr':
        return 'Français';
      case 'de':
        return 'Deutsch';
      case 'ru':
        return 'Русский';
      case 'pt':
        return 'Português';
      default:
        return code;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    return Consumer<LocaleProvider>(
      builder: (context, localeProvider, _) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  l10n.languageSettings,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              const Divider(),
              RadioListTile<LocaleMode>(
                title: Text(l10n.languageModeSystem),
                value: LocaleMode.system,
                groupValue: localeProvider.localeMode,
                onChanged: (value) {
                  localeProvider.setLocaleMode(value!);
                },
              ),
              RadioListTile<LocaleMode>(
                title: Text(l10n.languageModeCustom),
                value: LocaleMode.custom,
                groupValue: localeProvider.localeMode,
                onChanged: (value) {
                  localeProvider.setLocaleMode(value!);
                },
              ),
              if (localeProvider.localeMode == LocaleMode.custom) ...[
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    l10n.selectLanguage,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: LocaleProvider.supportedLocales.length,
                    itemBuilder: (context, index) {
                      final locale = LocaleProvider.supportedLocales[index];
                      final isSelected = localeProvider.customLocale == locale;
                      return ListTile(
                        title: Text(_getLanguageName(locale.languageCode)),
                        trailing: isSelected
                            ? const Icon(Icons.check, color: Colors.green)
                            : null,
                        onTap: () {
                          localeProvider.setCustomLocale(locale);
                        },
                      );
                    },
                  ),
                ),
              ],
              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }
}
