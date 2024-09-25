import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Navigate back to the main screen
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Profile Details',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/setan.jpg'),
                backgroundColor: Colors.white,
              ),
              SizedBox(height: 20),
              Text(
                'Rizki Maulana Arif',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              SizedBox(height: 20),
              buildInfoCard(
                title: 'About',
                content:
                    'Saya adalah seorang programmer yang memiliki pengalaman '
                    'dalam membangun berbagai aplikasi menggunakan teknologi modern '
                    'seperti Flutter, Laravel, Node.js, dan React. Saya sangat tertarik '
                    'dalam mengembangkan aplikasi yang memberikan solusi efektif untuk masalah nyata.',
                backgroundColor: Colors.amber.shade100,
              ),
              SizedBox(height: 16),
              buildInfoCard(
                title: 'History',
                content:
                    'Saya memulai karier sebagai web developer dengan fokus pada '
                    'front-end sebelum memperluas keahlian saya dalam full-stack development. '
                    'Saya telah mengerjakan berbagai proyek, termasuk sistem manajemen sekolah dan aplikasi mobile.',
              ),
              SizedBox(height: 16),
              buildInfoCard(
                title: 'Skills',
                content: '• HTML\n'
                    '• CSS\n'
                    '• JavaScript\n'
                    '• Flutter\n'
                    '• Laravel\n'
                    '• React\n'
                    '• Node.js',
                backgroundColor: Colors.amber.shade100,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi untuk membangun kartu informasi yang seragam
  Widget buildInfoCard({
    required String title,
    required String content,
    Color backgroundColor = Colors.white,
  }) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),
          SizedBox(height: 8),
          Text(
            content,
            style: TextStyle(fontSize: 16, color: Colors.grey[700]),
          ),
        ],
      ),
    );
  }
}
