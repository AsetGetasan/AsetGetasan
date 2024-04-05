import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getasan_apps/constant/colors.dart';
import 'package:getasan_apps/constant/size_dimens.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pengaturan',
          style: TextStyle(color: AppColor.whiteColor),
        ),
        iconTheme: const IconThemeData(
          color: AppColor.whiteColor,
        ), // Mengubah warna ikon tombol kembali menjadi putih
        leading: IconButton(
          icon: FaIcon(
            FontAwesomeIcons.angleLeft,
            color: Colors.white,
            size: 25,
          ), // Mengubah ikon kembali menjadi FaIcon dengan warna putih
          onPressed: () {
            Navigator.of(context)
                .pop(); // Fungsi untuk kembali ke halaman sebelumnya
          },
        ),
        backgroundColor: AppColor.blueColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileDetailItem(
                icon: FontAwesomeIcons.circleUser,
                text: 'Salma Safira',
              ),
              //hr in flutter
              Divider(),
              ProfileDetailItem(
                icon: Icons.email,
                text: 'salma@gmail.com',
              ),

              ProfileDetailItem(
                icon: Icons.location_on,
                text: 'Desa A ( asal desa )',
              ),

              ProfileDetailItem(
                icon: Icons.notifications,
                text: 'Notifikasi',
              ),

              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: ElevatedButton(
                  onPressed: () {
                    // do something
                  },
                  child: const Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: AppColor.whiteColor,
                    backgroundColor: AppColor.redColor,
                    minimumSize: const Size(double.infinity, 50),
                  ),
                ),
              ),
              // Add more ProfileDetailItem for additional details
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileDetailItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const ProfileDetailItem({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          SizedBox(width: 10),
          Icon(
            icon,
            size: 30,
            color: AppColor.blueColor,
          ),
          SizedBox(width: 40),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: AppColor.blueColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
