import 'package:flutter/material.dart';

class LoginTeacher extends StatelessWidget {
  const LoginTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:false,
        home: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/login_teacher.png'),
                  fit: BoxFit.contain
              ),
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 220.0, left:218.0),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints.tightFor(width: 125, height: 30),
                      child: OutlinedButton(
                        child: const Text(
                            'Register',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign:TextAlign.center),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          side: const BorderSide(color: Colors.white),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                          ),
                        ),
                      ),
                  Padding(
                    padding: const EdgeInsets.only(top: 200.0, left:77.0),
                    child: Container(
                      width: 150,
                      height: 60,
                      decoration: const ShapeDecoration(
                        shape: StadiumBorder(),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xff415D5F), Color(0xff4E7575), Color(0xff2E5B5B)],
                        ),
                      ),
                      child: MaterialButton(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: const StadiumBorder(),
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        )
    );
  }
}
/*
Container(
child: Scaffold(
key: _scaffoldKey,
//backgroundColor: Colors.transparent,
body: SingleChildScrollView(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: <Widget>[
SizedBox(height: 250),
Padding(
padding: const EdgeInsets.only(left: 15.0, top: 15),
child: Text(
'Login',
style: TextStyle(
fontSize: 35,
fontWeight: FontWeight.bold,
color: Theme.of(context).textTheme.bodyText2.color,
),
),
),
SizedBox(
height: 25,
),
Padding(
padding: const EdgeInsets.only(left: 8, right: 8),
child: TextField(
style: TextStyle(
color:
Theme.of(context).textTheme.bodyText2.color,
),
onChanged: (value) {
_email = value;
},
keyboardType: TextInputType.emailAddress,
textAlign: TextAlign.start,
decoration:
kInputDecoration.copyWith(hintText: "Email")),
),
SizedBox(
height: 15,
),
Padding(
padding: const EdgeInsets.only(left: 8, right: 8),
child: TextField(
keyboardType: TextInputType.text,
//controller: _userPasswordController,
onChanged: (value) {
_password = value;
},
style: TextStyle(
color:
Theme.of(context).textTheme.bodyText2.color,
),
obscureText: !_passwordVisible,
decoration: kInputDecoration.copyWith(
hintText:
"Password", //This will obscure text dynamically
// Here is key idea
suffixIcon: IconButton(
icon: Icon(
// Based on passwordVisible state choose the icon
_passwordVisible
? Icons.visibility
    : Icons.visibility_off,
color: Theme.of(context)
.textTheme
    .bodyText2
    .color,
),
onPressed: () {
setState(() {
_passwordVisible = !_passwordVisible;
});
}
// Update the state i.e. toogle the state of passwordVisible variable

),
),
)
*/
/*Row(
                          children: <Widget>[
                            TextField(
                                style:TextStyle(
                                  color: Theme.of(context).textTheme.bodyText2.color,
                                ),
                                onChanged: (value) {
                                  _password = value;
                                },
                                keyboardType: TextInputType.visiblePassword,
                                textAlign: TextAlign.start,
                                obscureText: true,
                                decoration: kInputDecoration.copyWith(
                                    hintText: "Password")),
    IconButton(
    icon: Icon(
    // Based on passwordVisible state choose the icon
    passwordVisible
    ? Icons.visibility
        : Icons.visibility_off,
    color: Theme.of(context).primaryColorDark,
    ),
    onPressed: () {
    // Update the state i.e. toogle the state of passwordVisible variable
    setState(() {
    _passwordVisible = !_passwordVisible;
    });})
                          ],
                        ),*//*

),
Row(
mainAxisAlignment: MainAxisAlignment.end,
children: <Widget>[
MaterialButton(
onPressed: () {
forgotPassword(context);
},
focusColor: Colors.transparent,
child: Text("Forgot Password?",
style: TextStyle(
fontSize: 15,
fontWeight: FontWeight.bold,
color:
Theme.of(context).accentIconTheme.color,
),
textAlign: TextAlign.end),
),
],
),
SizedBox(
height: 8,
),
Center(
child: MaterialButton(
color: Theme.of(context).accentIconTheme.color,
// ignore: missing_return
onPressed: () async {
//TODO: 2. Creating SignIn method
try {
final result =
await InternetAddress.lookup('google.com');
if (result.isNotEmpty &&
result[0].rawAddress.isNotEmpty) {
try {
final user =
await _auth.signInWithEmailAndPassword(
email: _email, password: _password);
if (user != null) {
var userRecord = FirebaseAuth.instance
    .currentUser()
    .then((user) => Variables.currentEmail =
user.email);
SharedPreferences prefs =
await SharedPreferences.getInstance();
prefs.setString('email', _email);

Navigator.pushReplacement(
context,
MaterialPageRoute(
builder: (BuildContext ctx) =>
ProjectsPage()));
print("Logged IN");
print(Variables.currentEmail);

*/
/* Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ProjectsPage(),
                                      ));*//*

}
} catch (e) {
print(e);
setState(() {
final snackBar = SnackBar(
content: Text('Wrong Email or Password'),
);
_scaffoldKey.currentState
    .showSnackBar(snackBar);
});
}
}
} on SocketException catch (_) {
print("no connection");
return noConnection(context);

}
},
child: Text(
'Sign In',
style: Theme.of(context).textTheme.headline6,
textAlign: TextAlign.center,
),
),
),
*/
/*MaterialButton(
                        color: Theme.of(context).accentIconTheme.color,
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProjectsPage(),
                            )),
                      ),*//*

],
),
),
),
),
image(),
Container(
color: Colors.transparent,
height: 250,
child: Padding(
padding: const EdgeInsets.only(left: 30, top: 60),
child: Column(
mainAxisAlignment: MainAxisAlignment.start,
children: <Widget>[
Text(
'Scrum     ',
style: TextStyle(
fontSize: 50,
color: Theme.of(context).iconTheme.color,
decoration: TextDecoration.none,
),
),
Text(
'    Board',
style: TextStyle(
fontSize: 50,
color: Theme.of(context).iconTheme.color,
decoration: TextDecoration.none,
),
)
],
),
),
),*/
