// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:getasan_apps/constant/colors.dart';
import 'package:getasan_apps/constant/size_dimens.dart';
import 'package:getasan_apps/features/lapor_camat/cari/presentation/cari_lapor_camat.dart';
import 'package:getasan_apps/features/lapor_kegiatan/cari/presentation/cari_lapor_kegiatan.dart';
import 'package:getasan_apps/features/lapor_kelahiran/cari/presentation/cari_lapor_kelahiran.dart';
import 'package:getasan_apps/features/lapor_kematian/cari/presentation/cari_lapor_kematian.dart';
import 'package:getasan_apps/features/profile/presentation/profile.dart';

// class AdminDashboardScreen extends StatelessWidget {
//   const AdminDashboardScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       appBar: AppBar(
//         title: Padding(
//           padding: const EdgeInsets.only(left: 15),
//           child: Image.asset(
//             'assets/appbar_logo.png',
//             width: 110,
//           ),
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 15),
//             child: IconButton(
//               icon: FaIcon(FontAwesomeIcons.gear),
//               onPressed: () {
//                 // do something
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                   return const ProfileScreen();
//                 }));
//               },
//             ),
//           ),
//         ],
//       ),
//       body: ListView(
//         children: [
//           SizedBoxDimen().h30Gap,
//           Align(
//             alignment: Alignment.center,
//             child: RichText(
//               text: TextSpan(
//                 text: 'Sugeng Rawuh ',
//                 style: TextStyle(fontSize: 19, color: AppColor.blueColor),
//                 children: <TextSpan>[
//                   TextSpan(
//                     text: 'SALMA SHAFIRA',
//                     style: TextStyle(
//                       fontSize: 19,
//                       color: AppColor.blueColor,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(
//               left: 30,
//               right: 30,
//               top: 50,
//             ),
//             child: TextField(
//               decoration: InputDecoration(
//                 filled: true,
//                 fillColor: AppColor.greyColor.withOpacity(0.4),
//                 prefixIcon: Icon(
//                   Icons.search,
//                   color: AppColor.blueColor,
//                 ),
//                 contentPadding: EdgeInsets.symmetric(horizontal: 20),
//                 hintText: 'Email',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(13),
//                   borderSide: BorderSide(
//                     color: AppColor.blueColor,
//                   ),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(13),
//                   borderSide: BorderSide(
//                     color: AppColor.blueColor,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           SizedBoxDimen().h20Gap,
//           Expanded(
//             child: Stack(
//               children: [
//                 Container(
//                   height: MediaQuery.of(context).size.height,
//                   width: MediaQuery.of(context).size.width,
//                   child: Align(
//                     alignment: Alignment.bottomRight,
//                     child: Image.asset(
//                       'assets/background_dashboard.png',
//                       fit: BoxFit
//                           .cover, // Ensure the image covers the entire container
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(30.0),
//                   child: Container(
//                     width: MediaQuery.of(context).size.width,
//                     child: Column(
//                       children: [
//                         ContainerDashboard(
//                             title: "Testing", image: "assets/desa.png"),
//                         ContainerDashboard(
//                             title: "Testing", image: "assets/desa.png"),
//                         ContainerDashboard(
//                             title: "Testing", image: "assets/desa.png"),
//                         ContainerDashboard(
//                             title: "Testing", image: "assets/desa.png"),
//                         ContainerDashboard(
//                             title: "Testing", image: "assets/desa.png"),
//                         ContainerDashboard(
//                             title: "Testing", image: "assets/desa.png"),
//                         ContainerDashboard(
//                             title: "Testing", image: "assets/desa.png"),
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class AdminDashboardScreen extends StatelessWidget {
  const AdminDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Expanded(
                // height: ,
                // width: MediaQuery.of(context).size.width,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    'assets/background_dashboard.png',
                    fit: BoxFit
                        .cover, // Ensure the image covers the entire container
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        text: 'Sugeng Rawuh ',
                        style:
                            TextStyle(fontSize: 19, color: AppColor.blueColor),
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
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColor.greyColor.withOpacity(0.4),
                      prefixIcon: Icon(
                        Icons.search,
                        color: AppColor.blueColor,
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: BorderSide(
                          color: AppColor.blueColor,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: BorderSide(
                          color: AppColor.blueColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ContainerDashboard(title: "Desa A", image: "assets/desa.png"),
                  ContainerDashboard(title: "Desa Ac ", image: "assets/desa.png"),
                  ContainerDashboard(title: "Desa A", image: "assets/desa.png"),
                  ContainerDashboard(title: "Desa A", image: "assets/desa.png"),
                  ContainerDashboard(title: "Desa A", image: "assets/desa.png"),
                  ContainerDashboard(title: "Desa A", image: "assets/desa.png"),
                  ContainerDashboard(title: "Desa A", image: "assets/desa.png"),
                  ContainerDashboard(title: "Desa A", image: "assets/desa.png"),
                ],
              ),
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
    return InkWell(
      onTap: onTap,
      child: Container(
          margin: EdgeInsets.only(bottom: 20),
          // height: MediaQuery.of(context).size.height * 0.05,
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
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            ),
          )),
    );
  }
}
