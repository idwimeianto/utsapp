import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar'),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(30),
            child: RegisterForm(),
          ),
        ],
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Nama*'),
              TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color.fromARGB(255, 206, 212, 218),
                    ),
                  ),
                  hintText: "Nama",
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Jenis Kelamin (Optional)'),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text('Pilih:'),
                    ),
                    Flexible(
                      flex: 5,
                      child: GenderRadio(),
                    ),
                  ],
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Email*'),
              TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color.fromARGB(255, 206, 212, 218),
                    ),
                  ),
                  hintText: "Email",
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text('Tempat Lahir (optional)*'),
                    TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 206, 212, 218),
                          ),
                        ),
                        hintText: "Kota/Kabupaten",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  children: [
                    Text('Tanggal Lahir (Optional)'),
                    TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 206, 212, 218),
                          ),
                        ),
                        hintText: "00/00/0000",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('No Handphone*'),
              TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color.fromARGB(255, 206, 212, 218),
                    ),
                  ),
                  hintText: "08xxxx",
                ),
              ),
            ],
          ),
          AgreementRadio(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(50), // NEW
            ),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context, '/home', (_) => false);
            },
            child: const Text('Proses'),
          ),
        ],
      ),
    );
  }
}

enum Gender { male, female }

class GenderRadio extends StatefulWidget {
  const GenderRadio({super.key});

  @override
  State<GenderRadio> createState() => _GenderRadioState();
}

class _GenderRadioState extends State<GenderRadio> {
  Gender? _value = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Flexible(
          child: ListTile(
            title: const Text('Pria'),
            leading: Radio<Gender>(
              value: Gender.male,
              groupValue: _value,
              onChanged: (Gender? value) {
                setState(() {
                  _value = value;
                });
              },
            ),
          ),
        ),
        Flexible(
          child: ListTile(
            title: const Text('Wanita'),
            leading: Radio<Gender>(
              value: Gender.female,
              groupValue: _value,
              onChanged: (Gender? value) {
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

enum Agreement { agree }

class AgreementRadio extends StatefulWidget {
  const AgreementRadio({super.key});

  @override
  State<AgreementRadio> createState() => _AgreementRadioState();
}

class _AgreementRadioState extends State<AgreementRadio> {
  Agreement? _value = Agreement.agree;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:
          const Text('Setuju dengan persyaratan Layanan dan Kebijakan Pribadi'),
      leading: Radio<Agreement>(
        value: Agreement.agree,
        groupValue: _value,
        onChanged: (Agreement? value) {
          setState(() {
            _value = value;
          });
        },
      ),
    );
  }
}
