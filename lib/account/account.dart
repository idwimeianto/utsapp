import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:utsapp/shared/bottom_nav.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Akun Saya'),
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: const BottomNavBar(
        index: 3,
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/blank-profile.png'),
                    ),
                  ),
                ),
                Container(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                    ),
                    child: Icon(FontAwesomeIcons.penToSquare),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 20, left: 20, right: 40),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: ListTile(
                        title: Text(
                          "Bahasa",
                        ),
                        leading: Icon(FontAwesomeIcons.language),
                      ),
                    ),
                    Flexible(
                      child: LanguageRadio(),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: ListTile(
                        title: Text(
                          "Tentang Kami",
                        ),
                        leading: Icon(FontAwesomeIcons.paperPlane),
                      ),
                    ),
                    Flexible(
                      child: Icon(FontAwesomeIcons.chevronRight),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: ListTile(
                        title: Text(
                          "Nilai Kami",
                        ),
                        leading: Icon(FontAwesomeIcons.star),
                      ),
                    ),
                    Flexible(
                      child: Icon(FontAwesomeIcons.chevronRight),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: ListTile(
                        title: Text(
                          "Tentang Aplikasi Kami",
                        ),
                        leading: Icon(FontAwesomeIcons.book),
                      ),
                    ),
                    Flexible(
                      child: Text('2.1.3-d'),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      '/login',
                      (_) => false,
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: ListTile(
                            title: Text(
                              "Keluar",
                            ),
                            leading: Icon(FontAwesomeIcons.rightToBracket),
                          ),
                        ),
                        Flexible(
                          child: Icon(FontAwesomeIcons.chevronRight),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

enum Language { indonesia, english }

class LanguageRadio extends StatefulWidget {
  const LanguageRadio({super.key});

  @override
  State<LanguageRadio> createState() => _LanguageRadioState();
}

class _LanguageRadioState extends State<LanguageRadio> {
  Language? _value = Language.indonesia;

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Flexible(
          child: ListTile(
            title: const Text('ID'),
            leading: Radio<Language>(
              value: Language.indonesia,
              groupValue: _value,
              onChanged: (Language? value) {
                setState(() {
                  _value = value;
                });
              },
            ),
          ),
        ),
        Flexible(
          child: ListTile(
            title: const Text('EN'),
            leading: Radio<Language>(
              value: Language.english,
              groupValue: _value,
              onChanged: (Language? value) {
                setState(() {
                  _value = value;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
