import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double sliderValue = 4;
  double vki =0  ;
  var hesapla = "Hesapla";
  int age = 0 ;
  int boy = 0;
  int a = 0 ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
home: Scaffold(
  body: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(height: 30),

      Image.asset("assets/bmi-kilo.jpg"),
      SizedBox(height: 30),
      Text(
        "Kilonuz = " + age.toString()+" kg",
        style: const TextStyle(
          fontSize: 28.0,
        ),
      ),
      Slider(
        value: age.toDouble(),
        onChanged: (value) {
          setState(() {
            age = value.toInt();
          });
        },
        min: 0,
        max: 200,
      ),
      SizedBox(height: 40),
      Text(
        "Boyunuz = " + boy.toString()+" cm",
        style: const TextStyle(
          fontSize: 28.0,
        ),
      ),
      Slider(
        value: boy.toDouble(),
        onChanged: (value) {
          setState(() {
            boy = value.toInt();
          });
        },
        min: 0,
        max: 250,
      ),
      SizedBox(height: 20,),
GestureDetector(
  onTap: () {
    setState(() {
      vki = (age/(boy*boy));
     vki = vki*10000;

    });

},
  child:   Card(

    child: Text("Hesapla",style: TextStyle(fontSize: 28),),

  ),
),
      SizedBox(height: 25,),

      Row(
        children: [SizedBox(width: 50,),
          Text("Vücut Kitle İndeksiniz = ",style: TextStyle(fontSize: 28),),
        ],
      ),
      SizedBox(height: 15,),
      Text("$vki",style: TextStyle(fontSize: 28,color: Colors.blue),)

    ],

  ),
),
    );
  }
}
