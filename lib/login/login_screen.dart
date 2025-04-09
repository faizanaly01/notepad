import 'package:app_dev/login/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = false;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image(image: AssetImage("assets/logos/CARSLOGO.png")),

                      Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown,
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        style: TextStyle(color: Colors.black),
                        cursorColor: Colors.black,
                        controller: _emailController,
                        obscureText: false,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email, color: Colors.black),
                          labelText: 'Email',
                          labelStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
                      TextField(
                        style: TextStyle(color: Colors.black),
                        cursorColor: Colors.black,
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock, color: Colors.black),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),

                      Row(
                        children: [
                          Checkbox(
                            value: isChecked,
                            activeColor: Colors.black,
                            // Background color when checked
                            checkColor: Colors.blue,
                            // Tick color
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value ?? false;
                              });
                            },
                          ),
                          Text(
                            "Remember Me",
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(width: 47),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forget Password?",
                              style: TextStyle(color: Colors.brown),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 300.0,
                        height: 50.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              Colors.brown,
                            ),
                          ),

                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(child: Divider()),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text("Or Sign in With"),
                          ),
                          Expanded(child: Divider()),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 95),

                          IconButton(
                            onPressed: () {},
                            icon: Image(
                              image: AssetImage("assets/logos/facebook.png"),
                              width: 50,
                              height: 50,
                            ),
                          ),
                          SizedBox(height: 70),
                          IconButton(
                            onPressed: () {},
                            icon: Image(
                              image: AssetImage("assets/logos/google.png"),
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
