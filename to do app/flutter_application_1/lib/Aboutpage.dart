import 'package:flutter/material.dart';
class Aboutpage extends StatelessWidget {
  const Aboutpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff8e24aa),
        title: Text('حول التطبيق',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
      ),
      backgroundColor: Color(0xffd7bde2),
      body:SingleChildScrollView(
        child: Column(

          children: [
            ExpansionTile(title: Text('معلومات عامة',style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold )),
            children: [
              ListTile(title: Text('اسم التطبيق  '),
              subtitle: Text('إدارة المهام'),),
              ListTile(title: Text('الإصدار '),
                subtitle: Text('1.0.0'),),
              ListTile(title: Text('وصف التطبيق  '),
              subtitle: Text('تطبيق لإدارة المهام اليومية بشكل بسيط وسهل الإستخدام يمكنك إضافة المهام وتحديد المهام المنتهية وعرض المهام المكتملة'),),

            ],),
            ExpansionTile(title:Text('أهداف التطبيق',style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold )),
              children: [
                ListTile(title: Text('مساعدة المستخدم على تنظيم المهام اليومية'),
                ),
                ListTile(title: Text('تقليل النسيان ونسيان المواعيد المهمة'),
                  ),
                ListTile(title: Text('تحسين الإنتاجية والتركيز على المهام الأساسية'),),
                ListTile(title: Text('تقديم واجهة سهلة وسلسة لأي مستخدم مبتدئ'),),]),
                ExpansionTile(title: Text('مميزات التطبيق',style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold ),),
                children: [
                  ListTile(title: Text('إضافة وحذف المهام بسرعة '),),
                  ListTile(title: Text('عرض قائمة المهام المكتملة '),),
                  ListTile(title: Text('واجهة بسيطة مع Drawer and BottomNavigationBar '),),

                ],),
            ExpansionTile(title: Text('نصائح الإستخدام',style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold ),),
              children: [
                ListTile(title: Text('أضف المهام يومياً لتظل قائمتك محدثة'),),
                ListTile(title: Text('استخدام المهام المكتملة لمراجعة ما تم انجازه'),),
                ListTile(title: Text('قم بتعديل الإعدادات لتناسب أسلوبك الشخصي'),),
              ],
            )
              ],
            )







        ) ,


    );
  }
}