import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  final String txt;
  final VoidCallback onPressed;

  const CardPage({
    super.key,
    required this.txt,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          /* onPressed: onPressed,
          txt: txt,*/
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'If life were predictable it would cease to be life, and be without flavor.',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 12),
                Text(
                  'Eleanor Roosevelt',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
