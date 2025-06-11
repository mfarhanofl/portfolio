import 'package:flutter/material.dart';
import 'package:project_lohar/contact_screen.dart';

import 'about_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0F172A),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutScreen()),
            );
          },
          icon: Icon(Icons.info_outline,color: Colors.white,),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactCards()),
              );
            },
            icon: Icon(Icons.call_outlined,color: Colors.white,),
          ),
        ]
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0F172A), Color(0xFF1E293B)], // Dark gradient
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        // Card container
                        Container(
                          margin: const EdgeInsets.only(top: 100),
                          padding: const EdgeInsets.only(top: 80),
                          width: MediaQuery.of(context).size.width * .85,
                          decoration: BoxDecoration(
                            color: const Color(0xFF1E293B),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Text(
                                'Muhammad Farhan Lohar',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                '@farhanlohar',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 16),
                              _InfoRow(
                                icon: Icons.pin_drop_outlined,
                                text: '2255/p Rahwali Gujranwala Cantt',
                                iconColor: Colors.redAccent,
                              ),
                              _InfoRow(
                                icon: Icons.offline_pin_outlined,
                                text: 'Flutter Developer',
                                iconColor: Colors.lightBlue,
                              ),
                              _InfoRow(
                                icon: Icons.dark_mode_outlined,
                                text: 'Dev by Day | Wizard by Night',
                                iconColor: Colors.purpleAccent,
                              ),
                              _InfoRow(
                                icon: Icons.person_2_outlined,
                                text: 'Born in NOV 30, 2006',
                                iconColor: Colors.tealAccent,
                              ),
                            ],
                          ),
                        ),

                        // Avatar
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "assets/IMG_20250603_160832.jpg", // Make sure this path is correct
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),

                    // About Me Card
                    Container(
                      padding: const EdgeInsets.all(30),
                      width: MediaQuery.of(context).size.width * .9,
                      decoration: BoxDecoration(
                        color: const Color(0xFF2F4263),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "About me!",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 36,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "👋 Hey! I’m Farhan Lohar — a passionate Flutter Developer 🚀 who loves crafting sleek, smooth apps 📱 with clean code 💻 and creative design 🎨. I turn ideas 💡 into reality and always push for the best UX/UI experience ✨. Let’s build something amazing together! 🔥",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.white70,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;

  const _InfoRow({
    Key? key,
    required this.icon,
    required this.text,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      child: Row(
        children: [
          Icon(icon, color: iconColor, size: 20),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(color: Colors.white70, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
