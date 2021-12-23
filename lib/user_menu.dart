import 'package:flutter/material.dart';
import 'package:telegram_layout_test/widgets/account_info.dart';
import 'package:telegram_layout_test/widgets/profile_info.dart';
import 'package:telegram_layout_test/widgets/settings.dart';

class UserMenu extends StatelessWidget {
  const UserMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: ProfileInfo(),
          ),
          const Divider(
            thickness: 1,
          ),
          const AccountInfo(),
          Container(
            width: double.infinity,
            height: 12,
            decoration: BoxDecoration(color: Colors.grey[200]),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: SettingsSection(),
            ),
          ),
        ],
      ),
    );
  }
}
