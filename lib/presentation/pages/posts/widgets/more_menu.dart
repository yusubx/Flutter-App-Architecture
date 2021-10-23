import 'package:flutter/material.dart';

import '../../../../utils/constants/routes.dart';

class MoreMenu extends StatelessWidget {
  const MoreMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      color: Theme.of(context).cardColor,
      onSelected: (String value) {
        print('onSelected: $value');
        if (value == 'Settings') {
          Navigator.of(context).pushNamed(Routes.settings);
        } else if (value == 'About') {}
      },
      itemBuilder: (_) {
        return <PopupMenuEntry<String>>[
          PopupMenuItem(
            value: 'Settings',
            child: Text('Settings'),
          ),
          PopupMenuDivider(),
          PopupMenuItem(
            value: 'About',
            child: Text('About'),
          ),
        ];
      },
    );
  }
}