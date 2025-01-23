import 'package:basic_flutter/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: (Text("Detail screen")),
        ),
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(10.0), bottom: Radius.circular(10.0)),
              child: Image.asset(
                'assets/images/kfc.png', // Replace with your image URL
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Wing Zabb",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 16,
          ),
          RatingBarIndicator(
            rating: 5,
            itemBuilder: (context, index) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            itemCount: 5,
            itemSize: 27.0,
            unratedColor: Colors.amber.withAlpha(50),
            direction: Axis.horizontal,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "description",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            " มากันที่อีกหนึ่งเมนูกับสูตรอาหาร ไก่ทอด ไก่วิงแซ่บ ชื่อดัง รสชาติเข้มข้น ทำง่าย อร่อยได้ทั้งครอบครัว! เมนูไก่ทอดชื่อดังที่ได้รสชาติไทยๆ พร้อมข้าวคั่วแสนอร่อย เป็นรสชาติไก่ทอดที่คนไทยคุ้นเคยกันเป็นอย่างดี แต่รู้ไหมว่าจริงๆ แล้วไก่วิงแซ่บนั้นมีวิธีทำง่ายแสนง่าย เอามาเป็นไอเดียเมนูปาร์ตี้ปีใหม่ ที่บอกเลยว่ากินเพลินกันทั้งครอบครัวแน่นอน อยากรู้แล้วใช่ไหมละว่าไก่วิงแซ่บมีวิธีทำยังไง ตามมาดูกันเลย!",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Nutrition facts",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              nutrion_box(),
              nutrion_box(),
              nutrion_box(),
              nutrion_box(),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(
                  context, MaterialPageRoute(builder: (context) => Details()));
            },
            child: Text('press me'),
          )
        ])));
  }

  Container nutrion_box() {
    return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6), color: Colors.pink),
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 4),
              Text(
                "title",
                style: const TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "320",
                style: const TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w800),
              ),
            ],
          ),
        );
  }
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
