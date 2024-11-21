import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
      children: [
        Row(
          children: [
            SizedBox(width: 8, height: 3, ),
            Image.asset('assets/images/user_profile.png'),
            SizedBox(width: 8 ),
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
        ),
      ],
    )));
  }
}

//Container(
//                 width: 200,
//                 height: 100,
//                 decoration: BoxDecoration(
//                   color: Colors.yellow,
//                   shape: BoxShape.rectangle,
//                   image: const DecorationImage(
//                     image: NetworkImage(
//                         'https://gratisography.com/wp-content/uploads/2024/10/gratisography-happy-cone-800x525.jpg'),
//                     fit: BoxFit.cover,
//                   ),
//                   border: Border.all(
//                     width: 8,
//                   ),
//                 ),
//                 margin: EdgeInsets.only(left: 30),
//                 padding: EdgeInsets.only(left: 30),
//                 child: Text("junsi",
//                     style: TextStyle(
//                         fontSize: 50, color: Colors.deepPurpleAccent)))));
