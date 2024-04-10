import 'package:flutter/material.dart';
import 'package:flutter_stas_cource/router/router.dart';
import 'package:flutter_stas_cource/theme/theme.dart';

class CryptoCurrenciesListApp extends StatelessWidget {
  const CryptoCurrenciesListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: darkTheme,
      routes: routes,
    );
  }
}

// стрелочная функция?
// метод в котором есть ретёрн
