import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'List Mahasiswa';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text(
            appTitle,
          ),
        ),
        body: const Center(
          child: Column(
            children: [
              ListMhs(
                nama: 'MUHAMAD YAZID FYZE RAHMAN',
                nim: 'NIM : ' 'STI202102545',
              ),
              ListMhs(
                nama: 'HENDRI HIDAYATULLAH',
                nim: 'NIM : ' 'STI202102546',
              ),
              ListMhs(
                nama: 'RIFKI DWI ARDIANTO',
                nim: 'NIM : ' 'STI202102552',
                highlightBackground: true, // menandai latar belakang
              ),
              ListMhs(
                nama: 'FAQIH FIKRI RIYANTO',
                nim: 'NIM : ' 'STI202102553',
              ),
              ListMhs(
                nama: 'GIGIH ARYADITA',
                nim: 'NIM : ' 'STI202102554',
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}

class ListMhs extends StatelessWidget {
  final String nama;
  final String nim;
  final bool highlightBackground;

  const ListMhs({
    super.key,
    required this.nama,
    required this.nim,
    this.highlightBackground = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: highlightBackground ? Colors.green.withOpacity(0.4) : null,
        borderRadius: BorderRadius.circular(5),
      ),
      margin: const EdgeInsets.all(0),
      child: ListTile(
        title: Text(
          nama,
          style: TextStyle(
              color: Colors.grey[900],
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          nim,
          style: TextStyle(fontSize: 15, color: Colors.grey[800]),
        ),
      ),
    );
  }
}
