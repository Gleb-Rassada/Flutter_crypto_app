import 'package:flutter_stas_cource/features/crypto_coin/crypto_coin.dart';
import 'package:flutter_stas_cource/features/crypto_list/crypto_list.dart';

final routes = {
  // дефолтный роут - открывается при запуске приложения

  '/': (context) => const CryptoListScreen(),
  // второй экран который открывается при вызове
  '/coin': (context) => const CryptoCoinScreen(),
};
