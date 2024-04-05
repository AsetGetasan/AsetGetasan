// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:getasan_apps/constant/colors.dart';
import 'package:getasan_apps/constant/size_dimens.dart';
import 'package:getasan_apps/features/lapor_camat/cari/presentation/cari_lapor_camat.dart';
import 'package:getasan_apps/features/lapor_kegiatan/cari/presentation/cari_lapor_kegiatan.dart';
import 'package:getasan_apps/features/lapor_kelahiran/cari/presentation/cari_lapor_kelahiran.dart';
import 'package:getasan_apps/features/lapor_kematian/cari/presentation/cari_lapor_kematian.dart';
import 'package:getasan_apps/features/profile/presentation/profile.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Image.asset(
            'assets/appbar_logo.png',
            width: 110,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              icon: FaIcon(FontAwesomeIcons.gear),
              onPressed: () {
                // do something
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ProfileScreen();
                }));
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBoxDimen().h10Gap,
          RichText(
            text: TextSpan(
              text: 'Sugeng Rawuh ',
              style: TextStyle(fontSize: 19, color: AppColor.blueColor),
              children: <TextSpan>[
                TextSpan(
                  text: 'SALMA SHAFIRA',
                  style: TextStyle(
                    fontSize: 19,
                    color: AppColor.blueColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBoxDimen().h20Gap,
          Expanded(
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset(
                      'assets/background_dashboard.png',
                      fit: BoxFit
                          .cover, // Ensure the image covers the entire container
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      ContainerDashboard(
                        title: "Lapor Camat",
                        image: "assets/lapor_camat.png",
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LaporCamatScreen();
                          }));
                        },
                      ),
                      ContainerDashboard(
                        title: "Lapor Kegiatan Desa",
                        image: "assets/lapor_kegiatan_desa.png",
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LaporKegiatanScreen();
                          }));
                        },
                      ),
                      ContainerDashboard(
                        title: "Lapor Kelahiran",
                        image: "assets/lapor_kelahiran.png",
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LaporKelahiranScreen();
                          }));
                        },
                      ),
                      ContainerDashboard(
                        title: "Lapor Kematian",
                        image: "assets/lapor_kematian.png",
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LaporKematianScreen();
                          }));
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ContainerDashboard extends StatelessWidget {
  final String title;
  final String image;
  final Function()? onTap;
  const ContainerDashboard({
    Key? key,
    required this.title,
    required this.image,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 25),
      child: InkWell(
        onTap: onTap,
        child: Container(
            height: MediaQuery.of(context).size.height * 0.14,
            decoration: BoxDecoration(
              color: AppColor.whiteColor,
              borderRadius: BorderRadius.circular(20),
              //make shadow
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColor.blueColor,
                  ),
                ),
                Image.asset(image),
              ],
            )),
      ),
    );
  }
}
