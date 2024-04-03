import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const CryptoCurrenciesListApp());
}

class CryptoCurrenciesListApp extends StatelessWidget {
  const CryptoCurrenciesListApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 85, 85, 85),
        primarySwatch: Colors.yellow,
        // primaryColor: Colors.yellow,
        dividerColor: Colors.white24,
        appBarTheme: const AppBarTheme(
          elevation: 3,
          shadowColor: Colors.black,
          backgroundColor: Color.fromARGB(255, 85, 85, 85),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        listTileTheme:
            const ListTileThemeData(iconColor: Colors.white), // цвета иконок

        textTheme: TextTheme(
          titleMedium: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.w900,
            fontSize: 22,
          ),
          bodyMedium: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
          labelSmall: TextStyle(
            color: Colors.white.withOpacity(0.6),
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // void _incrementCounter() {
  //   setState(() {
  //     // _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // переменная говорит, что темы будут браться из контекста
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Crypto Currencies List',
          ),
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, i) => ListTile(
          onTap: () => {},

          minLeadingWidth: 1,
          selectedTileColor: Color.fromARGB(139, 167, 50, 50),
          trailing: Icon(
            Icons.arrow_forward_ios, //иконка
          ),
          leading: SvgPicture.asset(
            "assets/svg/bitcoin2.svg",
            height: 35,
            width: 35,
          ),
          // trailing: ,
          title: Text(
            'Bitcoin',
            style: theme.textTheme.bodyMedium,
          ),
          subtitle: Text(
            '200000 dollars',
            style: theme.textTheme.labelSmall,
          ),
        ),
        itemCount: 100,
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
