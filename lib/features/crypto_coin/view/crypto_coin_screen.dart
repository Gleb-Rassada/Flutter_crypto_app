import 'package:flutter/material.dart';

class CryptoCoinScreen extends StatefulWidget {
  const CryptoCoinScreen({super.key});

  @override
  State<CryptoCoinScreen> createState() => _CryptoCoinScreenState();
}

class _CryptoCoinScreenState extends State<CryptoCoinScreen> {
  String? coinName;

  @override
  void didChangeDependencies() {
    // достали аргумент из контекста
    final args = ModalRoute.of(context)?.settings.arguments;
    //
    assert(args != null && args is String, "You must provide string args");
    coinName = args as String;
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // если разработчик не передал coinName то выведет троеточие
        title: Text(coinName ?? '...'),
      ),
    );
  }
}
