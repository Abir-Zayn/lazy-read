part of 'splash_imports.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the Onboard screen after a delay
    Future.delayed(const Duration(seconds: 2), () {
      context.go("/onboard");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0),
      body: Container(
        color: AppColors.lightModeBackground,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //App Logo with animation
              FadedScaleAnimation(
                child: Image.asset(Appassets.appLogo, height: 300, width: 250),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
