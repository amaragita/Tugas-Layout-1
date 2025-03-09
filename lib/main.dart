import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Profil',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.blue[800],
      ),
      body: Container(
        color: const Color.fromARGB(255, 216, 243, 255), // Warna latar belakang biru muda
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/my_photo.png'), // Pastikan path gambar benar
              backgroundColor: Colors.transparent,
              child: Align(
                alignment: Alignment.bottomCenter, // Mengatur posisi gambar lebih ke bawah
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/my_photo.png'),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Luh Putu Amaragita Tiarani Wicaya',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'https://www.instagram.com/amrgitatiarani/',
              style: TextStyle(fontSize: 14, color: Colors.blue),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ProfileButton(icon: Icons.gps_fixed, text: 'Denpasar', color: Colors.green),
                    SizedBox(width: 20),
                    ProfileButton(icon: Icons.store, text: 'Banyuning', color: Colors.yellow),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ProfileButton(icon: Icons.music_note, text: 'Pop', color: Colors.purple),
                    SizedBox(width: 20),
                    ProfileButton(icon: Icons.apartment, text: 'Undiksha', color: Colors.blue),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const ProfileButton({
    required this.icon,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.blue, width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color, size: 30),
          SizedBox(height: 5),
          Text(
            text,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.orange),
          ),
        ],
      ),
    );
  }
}