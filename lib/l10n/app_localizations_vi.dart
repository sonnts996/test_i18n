import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get buttonCount => 'Bộ đếm';

  @override
  String itemCount(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String countString = countNumberFormat.format(count);

    final String pluralString = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      zero: '0 cái',
      one: '1 cái',
      other: '$countString cái',
    );

    return 'Tổng ${pluralString}';
  }

  @override
  String get title => 'I18n Demo';

  @override
  String get loginButton => 'Login';

  @override
  String toggleLanguage(String nextLang) {
    return 'Thay đổi ngôn ngữ thành $nextLang';
  }
}
