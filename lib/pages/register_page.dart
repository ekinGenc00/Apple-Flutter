import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/my_textfield.dart';
import 'package:http/http.dart' as http;

import '../components/my_button.dart';
import '../components/square_tile.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({Key? key, required this.onTap}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool accountExists =
      false; // Hesap var mı yok mu durumunu tutmak için bir değişken
  bool passwordMismatchError =
      false; // Şifrelerin uyuşmadığı durumu tutmak için bir değişken

  bool isDarkMode = true;

  void signUserUp() async {
    if (passwordController.text != confirmPasswordController.text) {
      setState(() {
        passwordMismatchError = true; // Şifrelerin uyuşmadığı durumu güncelle
      });
      return;
    }

    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    final url = Uri.parse('https://api.qline.app/api/register');
    final response = await http.post(
      url,
      body: {
        'email': emailController.text,
        'password': passwordController.text,
        'confirmPassword': confirmPasswordController.text,
      },
    );

    Navigator.pop(context);

    if (response.statusCode == 200) {
      // Başarılı kayıt işlemi
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.deepPurple,
            title: const Center(
              child: Text(
                'Kaydınız Tamamlandı',
                style: TextStyle(color: Colors.white),
              ),
            ),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Dialog'u kapat
                  widget.onTap?.call(); // Giriş yap sayfasına yönlendir
                },
                child: const Text('Giriş Yap'),
              ),
            ],
          );
        },
      );
    } else if (response.statusCode == 400) {
      // Kayıt başarısız oldu - Hesap zaten var
      final responseData = jsonDecode(response.body);
      final errorMessage = responseData['message'];
      setState(() {
        accountExists = true; // Hesap var mı durumunu güncelle
      });
      showErrorMessage(errorMessage);
    }
  }

  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.deepPurple,
          title: Center(
            child: Text(
              message,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  void toggleDarkMode() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(
                isDarkMode ? Icons.light_mode : Icons.dark_mode,
                color: isDarkMode ? Colors.white : Colors.black,
              ),
              onPressed: toggleDarkMode,
            ),
          ],
        ),
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 25),
                  const Icon(
                    Icons.apple,
                    size: 50,
                  ),
                  const SizedBox(height: 25),
                  Text(
                    'Kayıt Oluştur',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 25),
                  MyTextField(
                    controller: emailController,
                    hintText: 'E-Posta',
                    obscureText: false,
                  ),
                  const SizedBox(height: 10),
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Şifre',
                    obscureText: true,
                  ),
                  const SizedBox(height: 10),
                  MyTextField(
                    controller: confirmPasswordController,
                    hintText: 'Şifreyi Tekrar Giriniz',
                    obscureText: true,
                  ),
                  if (passwordMismatchError)
                    const SizedBox(
                      height: 15,
                      child: Text(
                        "Şifreler uyuşmuyor",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  const SizedBox(height: 25),
                  MyButton(
                    text: "Üye Ol",
                    onTap: signUserUp,
                  ),
                  if (accountExists)
                    const SizedBox(
                      height: 10,
                      child: Text("Zaten böyle bir hesap var"),
                    ),
                  const SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'Ya Da',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SquareTile(imagePath: 'assets/images/google.png'),
                      SizedBox(width: 25),
                      SquareTile(imagePath: 'assets/images/apple.png')
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Zaten Hesabınız Var Mı?',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      const SizedBox(width: 4),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: const Text(
                          'Şimdi Giriş Yap',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
