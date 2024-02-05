import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/my_textfield.dart';
import 'package:flutter_application_1/iphone_page.dart';
import 'package:http/http.dart' as http;
import '../components/my_button.dart';
import '../components/square_tile.dart';
import 'register_page.dart'; // Import the RegisterPage

class LoginPage extends StatefulWidget {
  final Function()? onTap;

  const LoginPage({Key? key, required this.onTap}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isDarkMode = false;
  bool isTranslated = false;
  String translatedText = '';

  Future<void> performTranslation() async {
    setState(() {
      isTranslated = !isTranslated;
    });

    if (isTranslated) {
      final translator = GoogleTranslator();
      final textToTranslate = isDarkMode ? 'Welcome' : 'Hoşgeldiniz';
      final translatedEmail =
          await translator.translate(textToTranslate, to: 'en');
      setState(() {
        translatedText = translatedEmail;
      });
    } else {
      final translator = GoogleTranslator();
      final textToTranslate = isDarkMode ? 'Welcome' : 'Hoşgeldiniz';
      final translatedEmail =
          await translator.translate(textToTranslate, to: 'tr');
      setState(() {
        translatedText = translatedEmail;
      });
    }
  }

  void signUserIn() async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    final url = Uri.parse('https://api.qline.app/api/login');
    final response = await http.post(
      url,
      body: {
        'email': emailController.text,
        'password': passwordController.text,
      },
    );

    Navigator.pop(context);

    if (response.statusCode == 200) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => iphone_page(),
        ),
      );
    } else {
      var message = isTranslated
          ? 'Giriş yapılamadı. Hata kodu: ${response.statusCode}'
          : 'Login failed. Error code: ${response.statusCode}';
      showErrorMessage(message);
    }
  }

  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.deepPurple,
          title: const Center(
            child: Text(
              'Hata',
              style: TextStyle(color: Colors.white),
            ),
          ),
          content: Text(
            message,
            style: const TextStyle(color: Colors.white),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Kapat',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }

  void forgotPassword() {
    showErrorMessage('Şifremi unuttum işlemi henüz uygulanmadı.');
  }

  void handleGoogleSignIn() {
    showErrorMessage('Google ile oturum açma işlemi henüz uygulanmadı.');
  }

  void handleAppleSignIn() {
    showErrorMessage('Apple ile oturum açma işlemi henüz uygulanmadı.');
  }

  void toggleDarkMode() {
    setState(() {
      isDarkMode = !isDarkMode;
      isTranslated = false;
      translatedText = '';
    });
  }

  void resetPassword() {}

  void goToRegisterPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RegisterPage(
          onTap: () {},
        ),
      ),
    );
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
                Icons.translate,
                color: Colors.black,
              ),
              onPressed: performTranslation,
            ),
            IconButton(
              icon: Icon(
                isDarkMode ? Icons.light_mode : Icons.dark_mode,
                color: Colors.black,
              ),
              onPressed: toggleDarkMode,
            ),
          ],
        ),
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  const Icon(
                    Icons.apple,
                    size: 100,
                  ),
                  const SizedBox(height: 50),
                  Text(
                    isTranslated
                        ? translatedText
                        : (isDarkMode ? 'Hoşgeldiniz' : 'Welcome'),
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 25),
                  MyTextField(
                    controller: emailController,
                    hintText: isTranslated ? 'E-Posta' : 'Email',
                    obscureText: false,
                  ),
                  const SizedBox(height: 10),
                  MyTextField(
                    controller: passwordController,
                    hintText: isTranslated ? 'Şifre' : 'Password',
                    obscureText: true,
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: resetPassword,
                          child: Text(
                            isTranslated
                                ? 'Şifremi Unuttum'
                                : 'Forgot Password',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  MyButton(
                    text: isTranslated ? 'Giriş Yap' : 'Sign In',
                    onTap: signUserIn,
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
                    children: [
                      GestureDetector(
                        onTap: handleGoogleSignIn,
                        child:
                            SquareTile(imagePath: 'assets/images/google.png'),
                      ),
                      const SizedBox(width: 25),
                      GestureDetector(
                        onTap: handleAppleSignIn,
                        child: SquareTile(imagePath: 'assets/images/apple.png'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        isTranslated ? 'Üye Değil Misin?' : 'Not a Member?',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      const SizedBox(width: 4),
                      GestureDetector(
                        onTap: goToRegisterPage,
                        child: Text(
                          isTranslated ? 'Şimdi Katıl Ol' : 'Join Now',
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

  GoogleTranslator() {}
}
