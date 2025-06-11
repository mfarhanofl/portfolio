import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactCards extends StatefulWidget {
  const ContactCards({super.key});

  @override
  State<ContactCards> createState() => _ContactCardsState();
}

class _ContactCardsState extends State<ContactCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0,bottom: 30),
          child: Wrap(
            spacing: 16,
            runSpacing: 16,
            children: [
              // Email Card
              contactCard(
                icon: Icons.email,
                title: "Email",
                subtitle: "muhammadfarhanofl@gmail.com",
                bgColor: Colors.blue.shade900,
                iconColor: Colors.white,
              ),
              // Facebook Card
              contactCard(
                icon: Icons.facebook,
                title: "Facebook",
                subtitle: "@mfarhanofl",
                bgColor: Colors.blueAccent,
                iconColor: Colors.white,
              ),
              // GitHub Card
              contactCard(
                icon: Icons.follow_the_signs,
                title: "GitHub",
                subtitle: "@mfarhanofl",
                bgColor: Colors.grey.shade900,
                iconColor: Colors.white,
                showFollow: true,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget contactCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color bgColor,
    required Color iconColor,
    bool showFollow = false,
  }) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*.3,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon, color: iconColor, size: 40),
                ],
              ),
              const SizedBox(height: 12),
              Center(
                child: Text(
                  title,
                  style: const TextStyle(color: Colors.white, fontSize: 27),
                ),
              ),
              const SizedBox(height: 4),
              Center(
                child: Text(
                  subtitle,
                  style: const TextStyle(color: Colors.white70, fontSize: 27),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
