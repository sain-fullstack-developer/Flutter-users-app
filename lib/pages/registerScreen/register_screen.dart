import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_database/firebase_database.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  void showToast() {
    if (nameTextEditingController.text.length < 3) {
      Fluttertoast.showToast(
          msg: 'Name should be three characters length!',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.SNACKBAR,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.white,
          textColor: Colors.black);
    }
  }

  // Create a database reference
  late DatabaseReference dbRef;

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('users');
  }

  // Create a new user

  final _formKey = GlobalKey<FormState>();

  String _name = '';
  String _email = '';
  String _password = '';
  String _phone = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Register'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                onChanged: (value) {
                  _name = value;
                },
                style: TextStyle(color: Colors.white),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Mobile Number'),
                onChanged: (value) {
                  _phone = value;
                },
                style: TextStyle(color: Colors.white),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                style: TextStyle(color: Colors.white),
                onChanged: (value) {
                  _email = value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                style: TextStyle(color: Colors.white),
                obscureText: true,
                onChanged: (value) {
                  _password = value;
                },
              ),
              SizedBox(height: 20),
              MaterialButton(
                onPressed: () {
                  Map<String, String> users = {
                    'name': _name,
                    'email': _email,
                    'password': _password,
                    'phone': _phone
                  };
                  dbRef.push().set(users);
                },
                child: const Text('Insert Data'),
                color: Colors.blue,
                textColor: Colors.white,
                minWidth: 300,
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
