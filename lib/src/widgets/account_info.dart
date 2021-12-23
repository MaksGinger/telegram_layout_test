import 'package:flutter/material.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Account',
            style: TextStyle(
              color: Color.fromRGBO(150, 126, 226, 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          _AccountTile(
            firstText: '+1 (234) 567-89-10',
            secondText: 'Tap to change phone number',
          ),
          Divider(),
          _AccountTile(
            firstText: '@dash',
            secondText: 'Username',
          ),
          Divider(),
          _AccountTile(
            firstText: 'Bio',
            secondText: 'Add a few words about yourself',
          ),
        ],
      ),
    );
  }
}

class _AccountTile extends StatelessWidget {
  const _AccountTile({
    Key? key,
    required this.firstText,
    required this.secondText,
  }) : super(key: key);

  final String firstText;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          firstText,
          style: const TextStyle(fontSize: 18),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          secondText,
          style: TextStyle(color: Colors.grey[600], fontSize: 14),
        ),
      ],
    );
  }
}
