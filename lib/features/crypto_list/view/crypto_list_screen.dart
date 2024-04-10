// import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_stas_cource/features/crypto_list/widgets/widgets.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});
  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  // void _incrementCounter() {
  //   setState(() {
  //     // _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // переменная говорит, что темы будут браться из контекста
    // final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Crypto Currencies List',
          ),
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, i) {
          const coinName = 'Bitcoin';
          return const CryptoCoinTile(coinName: coinName);
        },
        itemCount: 15,
      ),
    );
  }
}
