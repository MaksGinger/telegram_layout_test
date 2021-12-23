import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 35,
          foregroundImage: NetworkImage(
            'https://docs.flutter.dev/assets/images/dash/Dash.png',
          ),
          backgroundColor: Colors.black,
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Dash Flutter',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              'online',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ],
        ),
      ],
    );
  }
}
