import 'package:flutter/material.dart';
import 'login_page.dart';
import 'login_student.dart';
import 'login_teacher.dart';

void main() {
  runApp(
      MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => const LoginPage(),
          '/LoginStudent': (context) => const LoginStudent(),
          '/LoginTeacher': (context) => const LoginTeacher(),
          //'/settings': (context) => SettingsPane(),
          //'/changeFont': (context) => FontChange(),
          //'/modeSwitch': (context) => ModeSwitch(),
          //'/changeFontSize': (context) => FontSizeModify(),
          //'/notesPage': (context) => Notes(),
        },
      ),
  );
}