part of 'login_imports.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
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
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      Appassets.appLogo,
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 100),
                  AppText(
                    text: "Welcome back, wordsmiths!",
                    style: appTextStyle(
                      size: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 5),
                  AppText(
                    text:
                        "Your story awaits. Pick up where you left off - \nyour thoughts matter ",
                    style: appTextStyle(
                      size: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 50),
                  Apptextfield(
                    hintText: "Email",
                    leadingIcon: Icon(CupertinoIcons.envelope_fill),
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 20),
                  Apptextfield(
                    hintText: "Password",
                    leadingIcon: Icon(CupertinoIcons.lock_fill),
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  Appbtn(
                    text: "LOG IN",

                    height: 50,
                    radius: 10,
                    fontSize: 18,
                    textColor: Colors.white,
                    onPressed: () {
                      context.go('/general');
                    },
                  ),
                  SizedBox(height: 18),
                  TextButton(
                    onPressed: () {},
                    child: AppText(
                      text: "Forgot Password ? ",
                      style: appTextStyle(
                        size: 18,
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText(
                        text: "Don't have an Account? ",
                        style: appTextStyle(
                          size: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: AppText(
                          text: "Sign Up",
                          style: appTextStyle(
                            size: 18,
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
