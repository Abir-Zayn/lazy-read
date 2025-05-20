import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_read_app/common/widgets/app_btn.dart';
import 'package:lazy_read_app/common/widgets/app_text.dart';
import 'package:lazy_read_app/common/widgets/app_text_style.dart';
import 'package:lazy_read_app/core/constants/app_assets.dart';
import 'package:lazy_read_app/core/constants/app_colors.dart';

class AuthChoice extends StatelessWidget {
  const AuthChoice({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> gradientColor = [
      AppColors.lightModeTextColor.withOpacity(0.1),
      AppColors.lightModeTextColor.withOpacity(0.7),
    ];

    return Scaffold(
      body: Stack(
        children: [
          // Background image with gradient overlay
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Appassets.authChoicePage),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),

          // Gradient overlay
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: gradientColor,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

          // Content - Text and buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Spacer(flex: 5),

                // Title text
                AppText(
                  text: "LazyRead",
                  style: appTextStyle(
                    color: Colors.white,
                    size: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 16),

                // Subtitle text
                Text(
                  "Discover a new way to enjoy your favorite books",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 16),

                // Login button
                Appbtn(
                  text: "Login",
                  onPressed: () {
                    context.push('/login');
                  },
                  textColor: AppColors.lightModeBackground,
                  fontSize: 24,
                  height: 56,
                  radius: 10,
                ),

                const SizedBox(height: 16),

                // Signup button
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                      context.pushNamed('signup');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: Colors.white, width: 1),
                      ),
                    ),
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
