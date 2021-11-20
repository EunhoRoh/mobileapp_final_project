import 'package:flutter/material.dart';

void main() => runApp(const SignUp());

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
        body: MyCustomForm(),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passCheckController = TextEditingController();
  final _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool valueCheck(var value){
    int alphabet_num = 0;
    int number_num = 0;

    for(int i=0;i<value.length;i++){
      if(value[i].contains(RegExp(r'[a-z]')) || value[i].contains(RegExp(r'[A-Z]'))){
        alphabet_num ++;
      }
      else if(value[i].contains(RegExp(r'[0-9]'))){
        number_num ++;
      }
    }
    if(alphabet_num >= 3 && number_num >= 3) return true;
    else return false;
  }

  bool compareValue(){
    if(_passwordController.text == _passCheckController.text) return true;
    else return false;
  }

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: ListView(
        children: [
          const SizedBox(height: 30.0),
          TextFormField(
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter Username';
              }
              else if (valueCheck(value) == false){
                return 'Username is invalid';
              }
              return null;
            },
            controller: _usernameController,
            decoration: const InputDecoration(
              filled: true,
              labelText: 'Username',
            ),
          ),
          const SizedBox(height: 12.0),
          TextFormField(
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter Password';
              }
              return null;
            },
            controller: _passwordController,
            decoration: const InputDecoration(
              filled: true,
              labelText: 'Password',
            ),
            obscureText: true,
          ),
          const SizedBox(height: 12.0),
          TextFormField(
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter Confirm Password';
              }
              else if (compareValue() == false){
                return 'Confirm Password doesn\'t match Password';
              }
              return null;
            },
            controller: _passCheckController,
            decoration: const InputDecoration(
              filled: true,
              labelText: 'Confirm Password',
            ),
            obscureText: true,
          ),
          const SizedBox(height: 12.0),
          TextFormField(
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter Email Address';
              }
              return null;
            },
            controller: _emailController,
            decoration: const InputDecoration(
              filled: true,
              labelText: 'Email Address',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                    Navigator.pop(context);
                }
              },
              child: const Text('SIGN UP'),
            ),
          ),
        ],
      ),
    );
  }
}