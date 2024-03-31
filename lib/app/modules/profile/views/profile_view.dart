import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      appBar: AppBar(
        backgroundColor: const Color(0xffE5E5E5),
        leading: IconButton(
          iconSize: 20,
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
              iconSize: 20,
              onPressed: () {
                //
              },
              icon: const Icon(Icons.more_horiz))
        ],
        title: const Text(
          'My Profile',
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.white70, borderRadius: BorderRadius.circular(20)),
            child: Stack(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      child: ClipOval(
                        child: Image.asset(
                          "assets/images/Avatar.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Neelesh Chaudhary',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'UI / UX Designer',
                      style: TextStyle(fontSize: 13),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffFF317B),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    child: const Text(
                      'PRO',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'My Folders',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  const Icon(Icons.add),
                  const SizedBox(
                    width: 30,
                  ),
                  SvgPicture.asset(
                    'assets/svg/Settings.svg',
                    height: 15,
                    width: 15,
                    colorFilter:
                        const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Icon(Icons.arrow_forward_ios),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: Get.width * 0.4,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffEEF7FE)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/folder-ungu.png'),
                        const Icon(Icons.more_vert)
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    const Text(
                      'Mobile Apps',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff415EB6),
                      ),
                    ),
                    const Text(
                      'December 20.2020',
                      style: TextStyle(
                        fontSize: 10,
                        color: Color(0xff415EB6),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: Get.width * 0.4,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffEEF7FE)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/folder-kuning.png'),
                        const Icon(Icons.more_vert)
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    const Text(
                      'SVG Icons',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(
                          0xffFFB110,
                        ),
                      ),
                    ),
                    const Text(
                      'December 14.2020',
                      style: TextStyle(
                        fontSize: 10,
                        color: Color(
                          0xffFFB110,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 19,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: Get.width * 0.4,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffEEF7FE)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/folder-merah.png'),
                        const Icon(Icons.more_vert)
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    const Text(
                      'Prototypes',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(
                          0xffAC4040,
                        ),
                      ),
                    ),
                    const Text(
                      'Novemaber 22.2020',
                      style: TextStyle(
                        fontSize: 10,
                        color: Color(
                          0xffAC4040,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: Get.width * 0.4,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffEEF7FE)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/folder-hijau.png'),
                        const Icon(Icons.more_vert)
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    const Text(
                      'Avatars',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(
                          0xff23B0B0,
                        ),
                      ),
                    ),
                    const Text(
                      'Novemaber 10.2020',
                      style: TextStyle(
                        fontSize: 10,
                        color: Color(
                          0xff23B0B0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Recent Uploads',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SvgPicture.asset(
                'assets/svg/Sort.svg',
                height: 15,
                width: 15,
                colorFilter:
                    const ColorFilter.mode(Colors.black, BlendMode.srcIn),
              )
            ],
          ),
          ListView.builder(
            padding: const EdgeInsets.only(bottom: 20),
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffEEF7FE),
                      borderRadius: BorderRadius.circular(30)),
                  padding: const EdgeInsets.all(8),
                  height: 40,
                  width: 40,
                  child: Image.asset(
                    "assets/images/Word.png",
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  'Projects-${index + 1}.docx',
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                subtitle: const Text(
                  'Novemaber 22.2020',
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
                trailing: const Text(
                  '300kb',
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
