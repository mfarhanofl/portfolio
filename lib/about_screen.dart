import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:project_lohar/imgae_slider.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  final List<Map<String, dynamic>> skills = [
    {"name": "Flutter", "percent": 0.85, "label": "85%"},
    {"name": "UI/UX Design", "percent": 0.80, "label": "80%"},
    {"name": "Offline \n(Hive, SQLite)", "percent": 0.75, "label": "75%"},
    {"name": "SQL", "percent": 0.65, "label": "65%"},
    {"name": "MS Office", "percent": 0.80, "label": "80%"},
    {"name": "Hardware/\nSoftware", "percent": 0.75, "label": "75%"},
    {"name": "Windows Install", "percent": 0.90, "label": "90%"},
    {"name": "Cybersecurity", "percent": 0.60, "label": "60%"},
  ];

  Color getProgressColor(double percent) {
    if (percent >= 0.8) return Colors.green;
    if (percent >= 0.6) return Colors.yellow;
    return Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0F172A), Color(0xFF1E293B)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const SizedBox(height: 40),
            const ImageSlider(),
            const SizedBox(height: 30),
            Text(
              "My Skills",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 16,
              runSpacing: 20,
              alignment: WrapAlignment.center,
              children: skills.map((skill) {
                final percent = skill['percent'] as double;
                return CircularPercentIndicator(
                  radius: 60.0,
                  animation: true,
                  animationDuration: 1000,
                  lineWidth: 10.0,
                  percent: percent,
                  circularStrokeCap: CircularStrokeCap.round,
                  backgroundColor: Colors.grey.shade700,
                  progressColor: getProgressColor(percent),
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        skill['label'],
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        skill['name'],
                        style: TextStyle(color: Colors.white70, fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
