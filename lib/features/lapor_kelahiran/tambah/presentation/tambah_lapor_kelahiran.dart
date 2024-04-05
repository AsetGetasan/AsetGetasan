// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:getasan_apps/constant/colors.dart';
import 'package:getasan_apps/constant/size_dimens.dart';

class TambahLaporKelahiranScreen extends StatefulWidget {
  const TambahLaporKelahiranScreen({super.key});

  @override
  State<TambahLaporKelahiranScreen> createState() =>
      _TambahLaporKelahiranScreenState();
}

class _TambahLaporKelahiranScreenState
    extends State<TambahLaporKelahiranScreen> {
  TextEditingController _dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
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
                        'Lapor Kelahiran Bayi',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: AppColor.blueColor,
                        ),
                      ),
                    ),
                    SizedBoxDimen().h15Gap,
                    CustomTextField(
                      hintText: "No Kartu Keluarga",
                    ),
                    SizedBoxDimen().h15Gap,
                    CustomTextField(
                      hintText: "Nama Bayi",
                    ),
                    SizedBoxDimen().h15Gap,
                    CustomTextField(
                      hintText: "Anak Ke",
                    ),
                    SizedBoxDimen().h15Gap,
                    CustomTextField(
                      hintText: "Jenis Kelamin",
                    ),
                    SizedBoxDimen().h15Gap,
                    CustomTextField(
                      hintText: "Jam Kelahiran",
                    ),
                    SizedBoxDimen().h15Gap,
                    CustomTextField(
                      hintText: "Tempat Lahir",
                    ),
                    SizedBoxDimen().h15Gap,
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.blueColor,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          controller: _dateController,
                          onTap: () => _selectedDate(),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            hintText: "  Tanggal Kegiatan",
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: AppColor.blueColor,
                            ),
                            suffixIcon: Icon(
                              Icons.calendar_today_outlined,
                              color: AppColor.blueColor,
                              size: 20,
                            ),
                            disabledBorder: InputBorder.none,
                            border: InputBorder.none,
                          ),
                          readOnly: true,
                        )),
                    SizedBoxDimen().h20Gap,
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TambahDataAyahScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Berikutnya',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.blueColor,
                        foregroundColor: AppColor.whiteColor,
                        minimumSize: Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _selectedDate() async {
    DateTime? _picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (_picked != null) {
      setState(() {
        _dateController.text = "  " + _picked.toString().split(' ')[0];
      });
    }
  }
}

class TambahDataAyahScreen extends StatelessWidget {
  const TambahDataAyahScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
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
                        'Data Ayah',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: AppColor.blueColor,
                        ),
                      ),
                    ),
                    SizedBoxDimen().h15Gap,
                    CustomTextField(
                      hintText: "Nama Ayah",
                    ),
                    SizedBoxDimen().h15Gap,
                    CustomTextField(
                      hintText: "Perkejaan",
                    ),
                    SizedBoxDimen().h15Gap,
                    CustomTextField(
                      hintText: "Alamat Rumah",
                    ),
                    SizedBoxDimen().h15Gap,
                    CustomTextField(
                      hintText: "NIK",
                    ),
                    SizedBoxDimen().h15Gap,
                    CustomTextField(
                      hintText: "No. HP",
                    ),
                    SizedBoxDimen().h30Gap,
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TambahDataIbuScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Berikutnya',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.blueColor,
                        foregroundColor: AppColor.whiteColor,
                        minimumSize: Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TambahDataIbuScreen extends StatelessWidget {
  const TambahDataIbuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
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
                        'Data Ibu',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: AppColor.blueColor,
                        ),
                      ),
                    ),
                    SizedBoxDimen().h15Gap,
                    CustomTextField(
                      hintText: "Nama Ibu",
                    ),
                    SizedBoxDimen().h15Gap,
                    CustomTextField(
                      hintText: "Perkejaan",
                    ),
                    SizedBoxDimen().h15Gap,
                    CustomTextField(
                      hintText: "Alamat Rumah",
                    ),
                    SizedBoxDimen().h15Gap,
                    CustomTextField(
                      hintText: "NIK",
                    ),
                    SizedBoxDimen().h15Gap,
                    CustomTextField(
                      hintText: "No. HP",
                    ),
                    SizedBoxDimen().h30Gap,
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Kirim',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.blueColor,
                        foregroundColor: AppColor.whiteColor,
                        minimumSize: Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  String hintText;
  CustomTextField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.blueColor,
        ),
        borderRadius: BorderRadius.circular(13),
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14,
            color: AppColor.blueColor,
          ),
          disabledBorder: InputBorder.none,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
