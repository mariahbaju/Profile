import 'package:flutter/material.dart';

class Settingpage extends StatefulWidget {
  const Settingpage({super.key});

  @override
  State<Settingpage> createState() => _SettingpageState();
}

class _SettingpageState extends State<Settingpage> {
  bool isDarkMode = false;
  bool notification =false;
  String selectedLanguage='العربية';
  final List<String> languages=['العربية','الإنجليزية','الفرنسية'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('الإعدادات',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
        backgroundColor: Color(0xff8e24aa),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: Color(0xffd7bde2),
      body: ListView(
        children: [
          SwitchListTile(
             title: Text('الوضع الداكن'),
              subtitle: Text('تفعيل / إلغاء الوضع الداكن'),
              value:isDarkMode, onChanged:(val){
               setState(() {
                 isDarkMode=val;
               });
               ScaffoldMessenger.of(context).showSnackBar(
                 SnackBar(content: Text(isDarkMode?"تم تفعيل الوضع الداكن":"تم إلغاء الوضع الداكن"),
                   duration: Duration(milliseconds: 600),
                 ),

               );

          }),
          SwitchListTile(
              title: Text('الإشعارات'),
              subtitle: Text('تفعيل / إلغاء الإشعارات'),
              value:notification, onChanged:(val){
            setState(() {
              notification=val;
            });
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(notification?"تم تفعيل الإشعارات":"تم إلغاء الإشعارات"),
                duration: Duration(milliseconds: 600),
              ),

            );

          }),
          ListTile(
            title: Text('اللغة'),
            subtitle: Text(selectedLanguage),
            trailing: DropdownButton <String>(
            value:selectedLanguage ,
                items:languages.map((lang)=>DropdownMenuItem(value: lang,
                    child: Text(lang))).toList() ,
                onChanged: (val){
              if (val!=null){
                setState(() {
                  selectedLanguage=val;
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(" تم تغير اللغةالى $selectedLanguage"),
                    duration: Duration(milliseconds: 600),
                  ),

                );
              }
                }
            ),
          )

        ],
      ),
    );
  }
}