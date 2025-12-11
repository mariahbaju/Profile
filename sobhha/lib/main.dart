import 'package:flutter/material.dart';

 

void main() {

  runApp(const MyApp());

}

 

class MyApp extends StatelessWidget {

  const MyApp({super.key});

 

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'سبحة الكترونية',

      debugShowCheckedModeBanner: false,

      home: MyHomePage(),

    );

  }

}

 

class MyHomePage extends StatefulWidget {

  const MyHomePage({super.key});

 

 

  @override

  State<MyHomePage> createState() => _MyHomePageState();

 

}

 

class _MyHomePageState extends State<MyHomePage> {

  int count1 =0;

 int count2 =0;

 int count3 =0;

String message1 =' بدا';

 

  int counter4 =0;

 

 

 

  void counter1() {

    setState(() {

      message1='سبحان لله';

      count1++;

      counter4 =count1;

    });

  }

 

  void counter2() {

    setState(() {

      message1=' الحمد لله';

      count2++;

      counter4 =count2;

    });

  }

void counter3() {

    setState(() {

      message1=' الله اكبر';

      count3++;

      counter4 =count3;

    });

  }

  void clean(){

setState(() {

    message1 = 'ابدا ';

    count1= 0;

    count2= 0;

    count3 = 0;

    counter4 = 0;

  });

 

  }

  @override

  Widget build(BuildContext context) {

   

    return Scaffold(

      appBar: AppBar(title: Text('سبحة الكترونية'),

     

      backgroundColor: const Color.fromARGB(200, 5, 5, 5),

         

 

      ),

      body: Center(

       

        child: Column(

         

          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[

           

         

            Text(message1,style: TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 51, 65, 255))),

            Text("$counter4" ,style: TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 0, 0, 0))),

           

            SizedBox(height: 50),

         

            Row(

  mainAxisAlignment: MainAxisAlignment.center,

  children: [

            ElevatedButton(onPressed: counter1,

            child: Text("سبحان لله",style: TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 10, 4, 4)))),

             SizedBox(width: 20),

           ElevatedButton(onPressed: counter2,

           child: Text("الحمد لله",style: TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 19, 11, 11)),)),

            SizedBox(width: 20),

           ElevatedButton(onPressed: counter3,

           child: Text("الله اكبر",style: TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 14, 14, 14)),)),]),

            SizedBox(height: 40),

           ElevatedButton( onPressed: clean ,child: Text("امحي",style: TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 8, 6, 102)) ),

),

         

          ]

           ),

        ),

      backgroundColor: const Color.fromARGB(210, 5, 246, 125),    

      );

     

  }

}