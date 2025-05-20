// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'widget_import.dart';

class OnboardWidget extends StatelessWidget {
  final String onboard;
  final String imgUrl;

  const OnboardWidget({super.key, required this.onboard, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30),
        Image.asset(imgUrl, height: 355, width: 355),
        SizedBox(height: 40),
        AppText(
          text: onboard,
          style: appTextStyle(
            size: 20,
            color: AppColors.lightModeTextColor,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
          softWrap: true,
          maxLines: 3,
        ),
      ],
    );
  }
}
