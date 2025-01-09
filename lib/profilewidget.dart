import 'package:flutter/cupertino.dart';

class profile extends StatelessWidget {
  const profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 8,
          height: 3,
        ),
        Image.asset('assets/images/user_profile.png'),
        SizedBox(width: 8),
        const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hey junsi', style: TextStyle(fontSize: 14)),
            Text('Ready to order?',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700))
          ],
        )
      ],
    );
  }
}