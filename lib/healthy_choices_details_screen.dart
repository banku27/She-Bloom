import 'package:flutter/material.dart';

class HealthyChoicesDetailsScreen extends StatefulWidget {
  final String title;
  const HealthyChoicesDetailsScreen({
    super.key,
    required this.title,
  });

  @override
  State<HealthyChoicesDetailsScreen> createState() =>
      _HealthyChoicesDetailsScreenState();
}

class _HealthyChoicesDetailsScreenState
    extends State<HealthyChoicesDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/healthy_choices.png"),
              const SizedBox(
                height: 20,
              ),
              Text(
                widget.title,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              _buildBulletPoint(
                  'By incorporating these healthy choices into your lifestyle, you can enhance your overall well-being and quality of life as a woman.'),
              _buildBulletPoint(
                  'These are a few healthy choices you can consider in your day:'),
              _buildSubBulletPoint(
                  'Diet: Eat more fruits, veggies, whole grains, and lean proteins. Limit processed foods, sugar, and salt intake.'),
              _buildSubBulletPoint(
                  'Exercise: Aim for 150 minutes of moderate exercise weekly, including strength training and flexibility exercises.'),
              _buildSubBulletPoint(
                  'Sleep: Get 7-9 hours of quality sleep each night by maintaining a consistent sleep schedule.'),
              _buildSubBulletPoint(
                  'Stress Management: Practice relaxation techniques, prioritize tasks, and engage in enjoyable activities.'),
              _buildSubBulletPoint(
                  'Social Connections: Cultivate meaningful relationships and spend time with loved ones.'),
              _buildSubBulletPoint(
                  'Limit Substance Use: Avoid smoking, limit alcohol, and seek help for substance abuse.'),
              _buildSubBulletPoint(
                  'Health Check-ups: Schedule regular visits with your healthcare provider for check-ups and screenings.'),
              _buildSubBulletPoint(
                  'Positive Mindset: Cultivate gratitude, focus on solutions, and seek support for mental health if needed.'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return ListTile(
      leading: const Icon(Icons.circle),
      title: Text(text),
    );
  }

  Widget _buildSubBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: ListTile(
        leading: const Icon(Icons.fiber_manual_record),
        title: Text(text),
      ),
    );
  }
}
