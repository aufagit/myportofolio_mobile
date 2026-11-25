import 'package:material_ui/material_ui.dart';
import 'package:myportofolio_mobile/models/education.dart';

class EducationDetailScreen extends StatelessWidget {
  const EducationDetailScreen({super.key, required this.education});

  final Education education;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Education Detail'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              education.institution,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text('Degree: ${education.degreeLevel}'),
            const SizedBox(height: 8),
            Text('Major: ${education.major}'),
            const SizedBox(height: 8),
            Text('Description: ${education.description}'),
            const SizedBox(height: 8),
            Text('Started: ${education.startedAt.toString().split(' ')[0]}'),
            const SizedBox(height: 8),
            Text(
              'Ended: ${education.endedAt?.toString().split(' ')[0] ?? "Present"}',
            ),
          ],
        ),
      ),
    );
  }
}
