import 'package:flutter/material.dart';

class SettingsSection extends StatelessWidget {
  const SettingsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Text(
          'Settings',
          style: TextStyle(
            color: Color.fromRGBO(150, 126, 226, 1),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        ..._settingsElement().toList(),
        ..._settingsElement().toList(),
        ..._settingsElement().toList(),
        ..._settingsElement().toList(),
        ..._settingsElement().toList(),
        ..._settingsElement().toList(),
        ..._settingsElement().toList(),
        ..._settingsElement().toList(),
      ],
    );
  }
}

Iterable<Widget> _settingsElement() sync* {
  yield const _SettingsTile();
  yield const _Divider();
}

class _Divider extends StatelessWidget {
  const _Divider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 45),
      child: Divider(),
    );
  }
}

class _SettingsTile extends StatelessWidget {
  const _SettingsTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.notifications_none,
          color: Colors.grey,
          size: 30,
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          'Notifications and Sounds',
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}
