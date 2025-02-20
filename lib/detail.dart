import 'package:basic_flutter/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF373948),
        appBar: AppBar(
          backgroundColor: Color(0xFF373948),
        ),
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFF373948), Color(0xFF0094FF)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(10.0),
                      bottom: Radius.circular(10.0)),
                  child: Image.asset(
                    'assets/images/artist.png', // Replace with your image URL
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Center(
                child: Text(
                  "artist name",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),
                ),
              ),
              Center(
                child: Text(
                  "100,000,051  monthly listeners",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600 , color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/playbutton.png'),
                          SizedBox(
                            width: 16,
                          ),
                          Image.asset("assets/images/shuffle.png"),
                          SizedBox(
                            width: 16,
                          ),
                        ],
                      ),
                      play()
                    ],
                  ),
                ],
              ),
              Text(
                "popular",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600, color: Colors.white),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  songs(),
                  songs2(),
                  songs3(),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Discography",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600, color: Colors.white),
              ),
              SizedBox(
                height: 16,
              ),
              disc1(),
              disc2(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "description",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white60),
                  ),
                  Text(
                    "description",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white60),
                  ),
                  Text(
                    "description",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600,  color: Colors.white60),
                  ),
                ],
              ),
            ])));
  }

  Container disc1() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset('assets/images/disco1.png'),
          Image.asset("assets/images/disco2.png"),
          Image.asset("assets/images/disco3.png")
        ],
      ),
    );
  }
}

Container disc2() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("album #1 ",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white)),
        Text("album #2 ",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white)),
        Text("album #2  ",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white)),
      ],
    ),
  );
}

Container play() {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100), color: Colors.white),
    width: 150,
    height: 60,
    padding: const EdgeInsets.all(8),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 4),
        Text("following",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
      ],
    ),
  );
}


Container songs() {
  return Container(
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Text(
        '1',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600, color: Colors.white),
      ),
      SizedBox(
        width: 20,
        height: 20,
      ),
      Image.asset("assets/images/album1.png"),
      SizedBox(
        width: 20,
        height: 20,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("song name #1 ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white)),
          Text("artist name#1 ",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white))
        ],
      ),
      SizedBox(
        width: 20,
        height: 20,
      ),
      Text("87:86",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white)),
    ]),
  );
}

Container songs2() {
  return Container(
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Text(
        '2',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600, color: Colors.white),
      ),
      SizedBox(
        width: 20,
        height: 20,
      ),
      Image.asset("assets/images/album2.png"),
      SizedBox(
        width: 20,
        height: 20,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("song name #2",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white)),
          Text("artist name#2 ",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white))
        ],
      ),
      SizedBox(
        width: 20,
        height: 20,
      ),
      Text("87:70",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white)),
    ]),
  );
}

Container songs3() {
  return Container(
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Text(
        '3',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600, color: Colors.white),
      ),
      SizedBox(
        width: 20,
        height: 20,
      ),
      Image.asset("assets/images/album3.png"),
      SizedBox(
        width: 20,
        height: 20,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("song name #3",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white)),
          Text("artist name#3 ",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white))
        ],
      ),
      SizedBox(
        width: 20,
        height: 20,
      ),
      Text("51:49",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white)),
    ]),
  );
}

//       body: Column(children: [Text("back to homepaage"),
//       ElevatedButton(
//         onPressed: () {
//           Navigator.pop(
//               context, MaterialPageRoute(builder: (context) => MyHomePage(title: '',)));
//         },
//         child: Text('press me'), ),]),
//     );
//   }
// }
