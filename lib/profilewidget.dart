import 'package:flutter/cupertino.dart';


  Container pfp2() {
    return Container(
        child: Column(
          children: [
            SizedBox(
              width: 8,
              height: 3,
            ),
            Image.asset('assets/images/user_profile.png'),
            SizedBox(width: 8),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Search for songs / artists ', style: TextStyle(fontSize: 30)),
                Text('Ready to order?',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700))
              ],
            )
          ],
        )
    );
  }


Container pfp() {
  return Container(
    child: Column(
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
    )
  );
}
