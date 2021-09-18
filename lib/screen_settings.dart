import 'package:flutter/material.dart';
import 'provider_app.dart';
import 'package:provider/provider.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          SwitchListTile(
            secondary: const Icon(Icons.lightbulb_outline),
            title: const Text('DarkMode'),
            value: Provider.of<AppProvider>(context).isDarkMode,
            onChanged: (value) => {
              if (value)
                Provider.of<AppProvider>(context, listen: false)
                    .setTheme('dark')
              else
                Provider.of<AppProvider>(context, listen: false)
                    .setTheme('light')
            },
          )
        ],
      ),
    );
  }
}
