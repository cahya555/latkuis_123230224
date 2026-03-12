import 'package:flutter/material.dart';
import 'package:latkuis_229/screen/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isLogin = false;

  void _login() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    if (username == "alfin" && password == "alfin123") {
      setState(() {
        isLogin = true;
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("Login berhasil")));
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage(username: username)),
        );
      });
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Login gagal")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                "Login untuk mengakses lebih banyak fitur",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              // Text(
              //   "Login untuk mengakses lebih banyak fitur",
              //   style: TextStyle(fontSize: 16, color: Colors.grey),
              // ),
              const SizedBox(height: 8),
              _usernameField(_usernameController),
              _passwordField(_passwordController),
              const SizedBox(height: 14),
              ElevatedButton(
                onPressed: _login,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _usernameField(TextEditingController controller) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: TextField(
      controller: controller,
      enabled: true,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person),
        hintText: "Username",
        contentPadding: EdgeInsets.all(8.0),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
      ),
    ),
  );
}

Widget _passwordField(TextEditingController controller) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: TextField(
      controller: controller,
      enabled: true,
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.key),
        hintText: "Password",
        contentPadding: EdgeInsets.all(8.0),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
      ),
    ),
  );
}
