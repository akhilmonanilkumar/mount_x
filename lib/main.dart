import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
          designSize: const Size(360, 690),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const LoginScreen(),
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[200],
          body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 100),
                const Text("Welcome Back, Libin",style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),),
                const SizedBox(height: 10),
                const Text("Login to Continue",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                const SizedBox(height: 20),
                const TextField( decoration: InputDecoration(
                  hintText: "Email or Phone",
                  filled: true,
                  fillColor: Colors.white60
                ),),
                const SizedBox(height: 10),
                const TextField(obscureText: true,decoration: InputDecoration(
                    hintText: "Password",
                    filled: true,
                    fillColor: Colors.white60
                ),),
                const SizedBox(height: 20),
                MaterialButton(
                  elevation: 2,
                  onPressed: loginButtonPressed(),
                color: Colors.deepPurple,)

              ],
            ),
          ),

    ));
  }

  loginButtonPressed() {}

}
