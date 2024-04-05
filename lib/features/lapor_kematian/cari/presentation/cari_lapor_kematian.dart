import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getasan_apps/constant/colors.dart';
import 'package:getasan_apps/constant/size_dimens.dart';
import 'package:getasan_apps/features/lapor_camat/detail/presentation/detail_lapor_kegiatan.dart';
import 'package:getasan_apps/features/lapor_camat/tambah/presentation/tambah_lapor_camat.dart';
import 'package:getasan_apps/features/lapor_kelahiran/tambah/presentation/tambah_lapor_kelahiran.dart';
import 'package:getasan_apps/features/lapor_kematian/detail/presentation/detail_lapor_kematian.dart';
import 'package:getasan_apps/features/lapor_kematian/tambah/presentation/tambah_lapor_kematian.dart';
import 'package:getasan_apps/features/profile/presentation/profile.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class LaporKematianScreen extends StatelessWidget {
  LaporKematianScreen({super.key});

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
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return TambahLaporKematianScreen();
            }));
          },
          child: FaIcon(
            FontAwesomeIcons.plus,
            color: AppColor.whiteColor,
          ),
          backgroundColor: AppColor.blueColor,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
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
                ),
                Image.asset('assets/lapor_kematian.png'),
                SizedBoxDimen().h20Gap,
                Text(
                  'Lapor Kematian',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColor.blueColor,
                  ),
                ),
                // SizedBoxDimen().h20Gap,
                Text(
                  'Laporkan kematian yang terjadi di Desa Anda',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                SizedBoxDimen().h20Gap,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      DropdownMenuExample(),
                      SizedBoxDimen().h20Gap,
                      DropdownMenuExample(),
                      SizedBoxDimen().h30Gap,
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: AppColor.whiteColor,
                            backgroundColor: AppColor.blueColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DetailLaporKematianScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'Cari',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColor.whiteColor,
                            ),
                          ),
                        ),
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

class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  String dropdownValue = list.first;

  @override
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  String? selectedValue;
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(
            color: AppColor.blueColor, width: 1), //border of dropdown button
        borderRadius:
            BorderRadius.circular(13), //border raiuds of dropdown button
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: DropdownButton(
          borderRadius: BorderRadius.circular(10),
          isExpanded: true,
          hint: Text(
            'Tahun',
            style: TextStyle(
              fontSize: 14,
              color: AppColor.blueColor,
            ),
          ),
          items: items
              .map((String item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (String? value) {
            setState(() {
              selectedValue = value;
            });
          },
          icon: FaIcon(
            FontAwesomeIcons.chevronDown,
            size: 14,
            color: AppColor.blueColor,
          ),
        ),
      ),
    );
  }
}
