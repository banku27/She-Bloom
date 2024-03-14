import 'package:flutter/material.dart';

class DailyNutritionDetailsScreen extends StatefulWidget {
  final String title;
  const DailyNutritionDetailsScreen({
    super.key,
    required this.title,
  });

  @override
  State<DailyNutritionDetailsScreen> createState() =>
      _DailyNutritionDetailsScreenState();
}

class _DailyNutritionDetailsScreenState
    extends State<DailyNutritionDetailsScreen> {
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
              Image.asset("assets/daily_nutrition.png"),
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
                  'Calories: 1,800 to 2,400 calories per day, based on age, activity level, and metabolic rate.'),
              _buildBulletPoint(
                  'Protein: 46-56 grams daily for tissue repair and immune function.'),
              _buildBulletPoint(
                  'Carbohydrates: 130-225 grams daily from whole grains, fruits, and vegetables for energy.'),
              _buildBulletPoint(
                  'Fats: Balance unsaturated fats (avocado, nuts) while limiting saturated and trans fats.'),
              _buildBulletPoint(
                  'Fiber: Aim for 25 grams daily from grains, fruits, and vegetables for digestive health.'),
              _buildBulletPoint('Vitamins and Minerals:'),
              _buildSubBulletPoint(
                  'Calcium: 1,000-1,200 milligrams daily for bone health.'),
              _buildSubBulletPoint(
                  'Iron: Around 18 milligrams daily for oxygen transport (varies based on menstrual status).'),
              _buildSubBulletPoint(
                  'Vitamin D: 600-800 IU daily for bone health and immune function.'),
              _buildSubBulletPoint(
                  'Vitamin B12: 2.4 micrograms daily for nerve function and red blood cells.'),
              _buildSubBulletPoint(
                  'Folate: 400-800 micrograms daily for DNA synthesis (important during pregnancy).'),
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
