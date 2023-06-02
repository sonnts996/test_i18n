import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get title => 'Login';

  @override
  String get fieldUserName => 'Username';

  @override
  String get fieldPassword => 'Password';

  @override
  String get buttonLogin => 'Sign In';
}
