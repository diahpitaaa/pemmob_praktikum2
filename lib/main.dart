import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

List<DropdownMenuItem<String>> items = <String>['pagi', 'siang'].map((String value) {
  return DropdownMenuItem<String>(
    value: value,
    child: Text(value),
  );
}).toList();

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController salamController = TextEditingController();
  String? pilihanSalam;
  bool isChecked = false; // Add this line to declare and initialize isChecked

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // jika ditap
          },
          backgroundColor: Colors.red,
          child: const Icon(Icons.dangerous),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DropdownButton<String>(
                value: pilihanSalam,
                items: items,
                onChanged: (String? newValue) {
                  setState(() {
                    pilihanSalam = newValue;
                  });
                },
              ),
              Text("Pilihan : $pilihanSalam"), //tampilkan hasil
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  // aksi jika ditap
                },
                child: const Text('Ini TextButton'),
              ),
              IconButton(
                icon: const Icon(Icons.account_box_outlined),
                tooltip: 'Profil User',
                onPressed: () {
                  // kalau ditap
                },
              ),
              CheckboxListTile(
                title: const Text('Pilihan satu'),
                value: isChecked, //boolean
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = !isChecked;
                  });
                },
                secondary: const Icon(Icons.check_circle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}