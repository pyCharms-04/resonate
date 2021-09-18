import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Dashboard'),
          backgroundColor: const Color(0xff006F73),
        ),
        drawer: Drawer(
          child: Container(
            color: const Color(0xff006F73),
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                const SizedBox(
                  height: 114.0,
                  child: DrawerHeader(
                    decoration: BoxDecoration(),
                    child: Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ListTile(
                    leading: const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Icon(Icons.logout, size: 36.0),
                    ),
                    title: const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text('Logout', style: TextStyle(fontSize: 24.0)),
                    ),
                    onTap: () => {
                          Navigator.pushNamed(context, '/'),
                        }),
              ],
            ),
          ),
        ),
        extendBody: true,
        bottomNavigationBar: FloatingNavbar(
          backgroundColor: const Color(0xff3FBBBD),
          onTap: (int val) {
            switch (val) {
              case 0:
                {
                  setState(() =>{Navigator.pushNamed(context, '/dashboard')});
                }
                break;

              case 1:
                {
                setState(() =>{Navigator.pushNamed(context, '/Join')});
                }
                break;
              case 2:
                {
                  setState(() =>{Navigator.pushNamed(context, '/RegisterTeacher')});
                }
                break;
              default:
                {
                  print("HIIIIIIIIIIIIIIIIIIII");
                }
                break;
            }
          },
          currentIndex: 0,
          items: [
            FloatingNavbarItem(icon: Icons.home, title: 'Home'),
            FloatingNavbarItem(icon: LineIcons.meetup, title: 'Meets',),
            FloatingNavbarItem(icon: LineIcons.excelFile, title: 'Attendance record'),
          ],
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 80.0),
              child: Container(
                width: 384.0,
                height: 200.0,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 25.0,
                    ),
                    Container(
                      child: const Text(
                        'Header',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      child: const Text(
                        'Description',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: 150,
                      height: 30,
                      child: MaterialButton(
                        color: Colors.white,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: const StadiumBorder(),
                        child: const Text(
                          'Register',
                          style: TextStyle( fontSize: 20),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xff769E9E),
                  ),
                  //color: HexColor('#DFDC3B'),
                  borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                  color: const Color(0xffA4F1F1),
                  boxShadow: [
                    BoxShadow(
                        color: Theme.of(context).colorScheme.onPrimary,
                        spreadRadius: 1),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 50.0),
              child: Container(
                width: 384.0,
                height: 200.0,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 25.0,
                    ),
                    Container(
                      child: const Text(
                        'Header',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      child: const Text(
                        'Description',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: 150,
                      height: 30,
                      child: MaterialButton(
                        color: Colors.white,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: const StadiumBorder(),
                        child: const Text(
                          'Register',
                          style: TextStyle( fontSize: 20),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xff769E9E),
                  ),
                  //color: HexColor('#DFDC3B'),
                  borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                  color: const Color(0xffA4F1F1),
                  boxShadow: [
                    BoxShadow(
                        color: Theme.of(context).colorScheme.onPrimary,
                        spreadRadius: 1),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
