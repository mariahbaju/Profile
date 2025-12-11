import 'package:flutter/material.dart';
import 'package:project_to_do_app/Aboutpage.dart';
import 'package:project_to_do_app/AddTask.dart';
import 'package:project_to_do_app/Completedpage.dart';
import 'package:project_to_do_app/Settingpage.dart';
import 'package:project_to_do_app/tasks_data.dart';

class Homepage extends StatefulWidget {
   Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff8e24aa),
        title: Text('الصفحة الرئيسية',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
        //centerTitle: true,
      ),
      drawer: Drawer(

        width: 220,
        backgroundColor: Color(0xffd7bde2),
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Color(0xff8e24aa)),

               child: Row(

                children: [
                  CircleAvatar(radius:30,
                    backgroundImage: Image.asset("images/img.jpg").image, ),
                 SizedBox(width: 10,),
                 Text(' إدارة مهام',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              )),

            ListTile(
              leading: Icon(Icons.home),
              title: Text('الصفحة الرئيسية'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.check_circle),
              title: Text('المهام المكتملة '),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Completedpage(newTask: '',),));
              },),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('الإعدادات'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Settingpage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text('حول التطبيق'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Aboutpage()));
              },
            ),

          ],
        ),
      ),
        backgroundColor: Color(0xffd7bde2),
      body:tasks.isEmpty?
    Center(
      child: Text('لا توجد مهام'),
    )
          :ListView.builder(
              itemCount:tasks.length ,
              itemBuilder: (context,index){
                return Container(
                margin: EdgeInsets.all(10),
                 padding:EdgeInsets.all(15) ,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),

    ),
    child: Row(
    children: [
      InkWell(
    onTap: (){
      final finishedTask=tasks[index];
      setState(() {
        tasks.removeAt(index);
      });
      completedTasks.add(finishedTask);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('انتهت المهمة'),
        duration: Duration(milliseconds: 500),
        ),

      );



    },
        child:Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          child: Icon(Icons.check,size: 20,),
        ) ,
      ),
      SizedBox(width: 10,),
      Expanded(child: Text(tasks[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),



    ],
    ),
                );
    }
              ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff8e24aa),
          child:Icon(Icons.add,color: Colors.white,) ,
          shape: CircleBorder(),
          onPressed: () async {
           final newTask= await  Navigator.push(context,MaterialPageRoute(builder: (_)=>Addtask()));
           if(newTask != null){
             setState(() {
               tasks.add(newTask);
             });
           }
          }),
    );
  }}