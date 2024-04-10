import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({
    super.key,
    required this.coinName,
  });

  final String coinName;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      onTap: () {
        // Navigator - Классическая флаттер структура, позволяющая делать навигацию
        Navigator.of(context).pushNamed(
          '/coin',
          // передача аргумента в открываемое окно
          arguments: coinName,
        );
      },
      minLeadingWidth: 1,
      selectedTileColor: const Color.fromARGB(139, 167, 50, 50),
      trailing: const Icon(
        Icons.arrow_forward_ios, //иконка
      ),
      leading: SvgPicture.asset(
        "assets/svg/bitcoin2.svg",
        height: 35,
        width: 35,
      ),
      // trailing: ,
      title: Text(
        coinName,
        style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text(
        '200000 dollars',
        style: theme.textTheme.labelSmall,
      ),
    );
  }
}
