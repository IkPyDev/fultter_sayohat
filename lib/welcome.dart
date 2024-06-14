import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home/home.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF031F2B),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Column(
            children: [
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: SvgPicture.asset("assets/romantic.svg"),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: RichText(
                    text: TextSpan(
                        text: "Oddiy hayotdan qoching",
                        style: TextStyle(fontSize: 24))),
              ),
              RichText(
                  text: TextSpan(
                      text:
                          "Atrofingizdagi ajoyib tajribalarni kashf eting\nva sizni qiziqarli yashashga majbur qiling!")),
              Spacer(),
              Spacer(),
              InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Home()));

                },
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFF5EDFFF),
                  ),
                  child: Center(
                    child: Text("Boshladik"),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              )
            ],
          ),
        ),
      ),
    );
  }
}
