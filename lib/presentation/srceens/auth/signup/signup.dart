part of 'signup_imports.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Back button
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () => context.pop(),
                    ),
                  ),

                  // App Logo
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      Appassets.appLogo,
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),

                  SizedBox(height: 40),

                  // Welcome Text
                  AppText(
                    text: "Join our reading community!",
                    style: appTextStyle(
                      size: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  SizedBox(height: 5),

                  // Subtitle
                  AppText(
                    text:
                        "Create your account to start your reading journey\nand connect with fellow book lovers",
                    style: appTextStyle(
                      size: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 30),

                  // Name Field
                  Apptextfield(
                    hintText: "Full Name",
                    leadingIcon: Icon(CupertinoIcons.person_fill),
                    obscureText: false,
                    keyboardType: TextInputType.name,
                    controller: nameController,
                  ),

                  SizedBox(height: 16),

                  // Email Field
                  Apptextfield(
                    hintText: "Email",
                    leadingIcon: Icon(CupertinoIcons.envelope_fill),
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                  ),

                  SizedBox(height: 16),

                  // Password Field
                  Apptextfield(
                    hintText: "Password",
                    leadingIcon: Icon(CupertinoIcons.lock_fill),
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordController,
                  ),

                  SizedBox(height: 16),

                  // Confirm Password Field
                  Apptextfield(
                    hintText: "Confirm Password",
                    leadingIcon: Icon(CupertinoIcons.lock_shield_fill),
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    controller: confirmPasswordController,
                  ),

                  SizedBox(height: 30),

                  // Terms & Conditions
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      Expanded(
                        child: Text(
                          "I agree to the Terms & Conditions and Privacy Policy",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 24),

                  // Sign Up Button
                  Appbtn(
                    text: "SIGN UP",
                    height: 50,
                    radius: 10,
                    fontSize: 18,
                    textColor: Colors.white,
                    onPressed: () {},
                  ),

                  SizedBox(height: 20),

                  // Already have account
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText(
                        text: "Already have an Account? ",
                        style: appTextStyle(
                          size: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextButton(
                        onPressed: () => context.push('/login'),
                        child: AppText(
                          text: "Login",
                          style: appTextStyle(
                            size: 16,
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),

                  // Or sign up with
                  Row(
                    children: [
                      Expanded(child: Divider(thickness: 1)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text("Or sign up with"),
                      ),
                      Expanded(child: Divider(thickness: 1)),
                    ],
                  ),

                  SizedBox(height: 20),

                  // Social sign up buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _socialButton(
                        icon: Icons.g_mobiledata,
                        color: Colors.red,
                      ),
                      SizedBox(width: 24),
                      _socialButton(icon: Icons.facebook, color: Colors.blue),
                      SizedBox(width: 24),
                      _socialButton(icon: Icons.apple, color: Colors.black),
                    ],
                  ),

                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _socialButton({required IconData icon, required Color color}) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey.shade300, width: 1),
      ),
      child: Icon(icon, color: color, size: 30),
    );
  }
}
