import 'package:flutter/Material.dart';

class AccountEditScreen extends StatelessWidget {
  const AccountEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ubah profile"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: ListView(
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
            AccountEditForm(),
          ],
        ),
      ),
    );
  }
}

class AccountEditForm extends StatefulWidget {
  const AccountEditForm({super.key});

  @override
  State<AccountEditForm> createState() => _AccountEditFormState();
}

class _AccountEditFormState extends State<AccountEditForm> {
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
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(50), // NEW
            ),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/account',
                (_) => false,
              );
            },
            child: const Text('Simpan'),
          ),
        ],
      ),
    );
  }
}
