import 'package:flutter/material.dart';
import 'forgot_password.dart';
import 'sign_up.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue.shade800, Colors.purple.shade600],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Hey There!",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 40),
                  _buildTextField("Email", emailController, Icons.email, false),
                  const SizedBox(height: 20),
                  _buildTextField(
                      "Password", passwordController, Icons.lock, true),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ForgotPassword()),
                        );
                      },
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.blue.shade800,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    child:
                        const Text("Sign In", style: TextStyle(fontSize: 18)),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account? ",
                          style: TextStyle(color: Colors.white70)),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    SignUpPage()), // Ensure SignUpPage is imported
                          );
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration
                                .underline, // Optional: Underline for clarity
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 8),
                  const Text(
                    "Login with Social Media",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(60),
                        ),
                        child: Image.asset(
                          "images/facebook.png",
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(60),
                        ),
                        child: Image.asset(
                          "images/instagram.png",
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(60),
                        ),
                        child: Image.asset(
                          "images/google.png",
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 20),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(String hint, TextEditingController controller,
      IconData icon, bool obscure) {
    return TextField(
      controller: controller,
      obscureText: obscure,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.white70),
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.white54),
        filled: true,
        fillColor: Colors.white.withOpacity(0.2),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none),
      ),
    );
  }
}
