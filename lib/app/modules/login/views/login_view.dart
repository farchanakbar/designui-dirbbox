import 'package:dirbbox/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // background
          SizedBox(
            width: Get.width,
            child: Image.asset(
              'assets/images/bg.png',
              fit: BoxFit.cover,
            ),
          ),
          // body
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  SizedBox(
                    height: 150,
                    width: 150,
                    child: Image.asset(
                      'assets/images/pic-1.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Welcome to',
                    style: TextStyle(
                      fontSize: 21,
                    ),
                  ),
                  const Text(
                    'Dirbbox',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 250,
                    child: Text(
                      'Best cloud storage platform for all business and individuals to manage there data\n\nJoin For Free.',
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffEEF7FE),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 26, vertical: 13),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          children: [
                            Image.asset('assets/icons/finger.png'),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text('Smart Id')
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Get.toNamed(Routes.PROFILE);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff567DF4),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 26, vertical: 13),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Row(
                          children: [
                            Text(
                              'Sign in',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_right_alt,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 54,
                  ),
                  const Center(
                    child: Text('Use Social Login'),
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/logo/insta.png'),
                      Image.asset('assets/logo/twit.png'),
                      Image.asset('assets/logo/face.png'),
                    ],
                  ),
                  const SizedBox(
                    height: 53,
                  ),
                  const Center(
                    child: Text('Create an account'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
