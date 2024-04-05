import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getasan_apps/constant/colors.dart';
import 'package:getasan_apps/constant/size_dimens.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

class DetailLaporKelahiranScreen extends StatelessWidget {
  const DetailLaporKelahiranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset(
              'assets/appbar_logo.png',
              width: 110,
            ),
          ),
          automaticallyImplyLeading: false,
          // elevation: 20,
          backgroundColor: AppColor.whiteColor,
          shape: Border(
            bottom: BorderSide(color: Colors.grey, width: 0.5),
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
            child: ListView(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icon-back.svg'),
                      SizedBoxDimen().w10Gap,
                      Text(
                        'Kembali',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColor.orangeColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBoxDimen().h20Gap,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Data Lapor Kelahiran',
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: AppColor.blueColor,
                          ),
                        ),
                      ),
                      SizedBoxDimen().h15Gap,
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  '2024',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: AppColor.blueColor,
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColor.blueColor,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBoxDimen().w10Gap,
                          Expanded(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'Maret',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: AppColor.blueColor,
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColor.blueColor,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBoxDimen().h15Gap,
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColor.greyColor.withOpacity(0.5),
                          border: Border.all(
                            color: AppColor.blueColor,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              children: [
                                AccordionCustom(),
                                AccordionCustom(),
                                AccordionCustom(),
                              ],
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class AccordionCustom extends StatelessWidget {
  const AccordionCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GFAccordion(
      titleBorder: Border.all(
        color: AppColor.blueColor,
      ),
      titleBorderRadius: BorderRadius.circular(10),
      contentBorderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      ),
      collapsedTitleBackgroundColor: AppColor.whiteColor,
      expandedTitleBackgroundColor: AppColor.whiteColor,
      titleChild: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Jeon Wonwoo',
            style: TextStyle(
              fontSize: 14,
              // fontWeight: FontWeight.bold,
              color: AppColor.blueColor,
            ),
          ),
          Text(
            '1/3/2024',
            style: TextStyle(
              fontSize: 14,
              color: AppColor.blueColor,
            ),
          ),
        ],
      ),
      contentChild: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Data Bayi : ",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColor.blueColor,
            ),
          ),
          Text('a. No Kartu Keluarga '),
          Text("    " + '1234569670909'),
          Text('b. Anak Ke '),
          Text("    " + '2'),
          Text(
            "Data Ayah : ",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColor.blueColor,
            ),
          ),
          Text('a. Nama Ayah '),
          Text("    " + 'Joko'),
          Text('b. Pekerjaan '),
          Text("    " + 'PNS'),
          Text(
            "Data Ibu : ",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColor.blueColor,
            ),
          ),
          Text('a. Nama Ibu '),
          Text("    " + 'Siti'),
          Text('b. Pekerjaan '),
          Text("    " + 'PNS'),
        ],
      ),
      collapsedIcon: FaIcon(
        FontAwesomeIcons.chevronUp,
        size: 15,
        color: AppColor.blueColor,
      ),
      expandedIcon: FaIcon(
        FontAwesomeIcons.chevronDown,
        size: 15,
        color: AppColor.blueColor,
      ),
    );
  }
}
