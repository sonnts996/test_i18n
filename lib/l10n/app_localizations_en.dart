import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get buttonCount => 'Counter';

  @override
  String itemCount(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String countString = countNumberFormat.format(count);

    final String pluralString = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      zero: '0 item',
      one: '1 item',
      other: '$countString items',
    );

    return 'Total ${pluralString}';
  }

  @override
  String get title => 'I18n Demo';

  @override
  String get loginButton => 'Login';

  @override
  String toggleLanguage(String nextLang) {
    return 'Change Language to $nextLang';
  }
}
