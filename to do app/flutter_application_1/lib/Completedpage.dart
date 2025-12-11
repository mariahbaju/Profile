import 'package:flutter/material.dart';
import 'package:to do app/tasks_data.dart';

class Completedpage extends StatefulWidget {
     final String? newTask;
   Completedpage({super.key, this.newTask,});

  @override
  State<Completedpage> createState() => _CompletedpageState();
}

class _CompletedpageState extends State<Completedpage> {

  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff8e24aa),
        title: Text('المهام المكتملة',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
      ),
        backgroundColor: Color(0xffd7bde2),
      body:completedTasks.isEmpty?
          Center(child: Text('لا توجد مهام مكتملة'),)
          :ListView.builder(itemCount:completedTasks.length ,
          itemBuilder: (context,index){
            return ListTile(
              leading: Icon(Icons.done,color: Colors.black,),
              title: Text(completedTasks[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              trailing: IconButton(onPressed:(){
                setState(() {
                  completedTasks.removeAt(index);
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('تم حذف المهمة'),
                    duration: Duration(milliseconds: 500),
                  ),
                );
              },
                  icon:Icon(Icons.delete,color: Colors.purple,))
            );
          }
      )
    );
  }
}