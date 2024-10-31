import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main.dart';


class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                const SizedBox(
                  height: 100,
                ),

                Center(
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/profile_image.png"),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 16,
                ),

                Center(
                  child: Text(
                    "Zar Ni Bwar",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 16,
                ),

                SettingItem(
                  title: "Contact Information",
                  iconData: Icons.person_pin,
                ),

                SettingItem(
                  title: "Change Password",
                  iconData: Icons.lock_open,
                ),

                SettingItem(
                  title: "Security",
                  iconData: Icons.security,
                ),

                SettingItem(
                  title: "Privacy Policy",
                  iconData: Icons.payment,
                ),

                SettingItem(
                  title: "Terms & Conditions",
                  iconData: Icons.attach_money,
                ),

                SettingItem(
                  title: "Notifications",
                  iconData: Icons.notifications_none,
                ),

                SettingItem(
                  title: "Technical Support",
                  iconData: Icons.headset,
                ),

              ],
            ),
          ),
        )
    );
  }
}


class SettingItem extends StatelessWidget {

  final String title;
  final IconData iconData;

  SettingItem({super.key, required this.title, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      height: 40,
      child: Row(
        children: [

          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Icon(
              iconData,
              color: Colors.white,
            ),
          ),

          const SizedBox(
            width: 16,
          ),

          Text(
            title,
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),

        ],
      ),
    );
  }
}

