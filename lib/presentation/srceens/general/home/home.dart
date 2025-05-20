import 'package:flutter/material.dart';
import 'package:lazy_read_app/common/widgets/app_text.dart';
import 'package:lazy_read_app/common/widgets/app_text_style.dart';
import 'package:lazy_read_app/core/constants/app_assets.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 50),

              //Image box of home page which will have images of blogs .
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black.withOpacity(0.8)),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  AppText(
                    text: "Latest Post",
                    style: appTextStyle(
                      size: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                  AppText(
                    text: "See all",
                    style: appTextStyle(
                      size: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Image.asset(
                        Appassets.appLogo,
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ).cornerRadius(15),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            text: "Title of the post",
                            style: appTextStyle(
                              size: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10),

                          Row(
                            children: [
                              Icon(Icons.access_time),
                              SizedBox(width: 5),
                              AppText(
                                text: "Posting time",
                                style: appTextStyle(
                                  size: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText(
                                text: "Author name",
                                style: appTextStyle(
                                  size: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.3,
                              ),

                              GestureDetector(
                                onTap: () {},
                                child: Icon(Icons.bookmark_outline),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
