import 'package:flutter/material.dart';

import 'l10n/app_localizations.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key, this.text});

  final AppLocalizations? text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(text?.title ?? ''),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          TextFormField(
            decoration: InputDecoration(
                labelText: text?.fieldUserName ?? 'fieldUserName'),
            keyboardType: TextInputType.text,
          ),
          const SizedBox(height: 8),
          TextFormField(
            decoration: InputDecoration(
                labelText: text?.fieldPassword ?? 'fieldPassword'),
            obscureText: true,
            keyboardType: TextInputType.text,
          ),
          const SizedBox(height: 8),
          ElevatedButton(
              onPressed: () {
                // todo
              },
              child: Text(text?.buttonLogin ?? 'buttonLogin')),
        ]),
      ),
    );
  }
}
