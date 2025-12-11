import 'package:flutter/material.dart';


class Addtask extends StatefulWidget {
  const Addtask({super.key});

  @override
  State<Addtask> createState() => _AddtaskState();
}

class _AddtaskState extends State<Addtask> {
  final TextEditingController controller =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff8e24aa),
        title: Text('إضافة مهمة',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
      ),
      backgroundColor: Color(0xffd7bde2),
      body:
      Padding(padding: EdgeInsets.only(top: 60,left: 15,right: 15),
      child:Column(
        children: [
          TextField(
            controller:controller ,
            decoration: InputDecoration(
              labelText: 'ما الذي يجب عمله؟',
              hintText: 'ادخل هنا المهمة',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              )

            ),

          ),
          SizedBox(height: 50,),
              ElevatedButton(
                  onPressed: (){
                if(controller.text.isNotEmpty){
                  Navigator.pop(context,controller.text);
                }

              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff8e24aa)
                  ),
                  child:Text('إضافة',style: TextStyle(color: Colors.white),) )
        ],
      ) ,),


    );
  }
}