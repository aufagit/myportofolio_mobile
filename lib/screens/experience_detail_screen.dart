import 'package:material_ui/material_ui.dart';
import 'package:myportofolio_mobile/models/experience.dart';

class ExperienceDetailScreen extends StatelessWidget {
  const ExperienceDetailScreen({super.key, required this.experience});

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Experience Detail'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              experience.title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text('Organization: ${experience.organization}'),
            const SizedBox(height: 8),
            Text('Category: ${experience.category}'),
            const SizedBox(height: 8),
            Text('Description: ${experience.description}'),
            const SizedBox(height: 8),
            Text('Started: ${experience.startedAt.toString().split(' ')[0]}'),
            const SizedBox(height: 8),
            Text(
              'Ended: ${experience.endedAt?.toString().split(' ')[0] ?? "Present"}',
            ),
            const SizedBox(height: 8),
            Text('ID: ${experience.id ?? "-"}'),
            const SizedBox(height: 8),
            Text('Thumbnail: ${experience.thumbnail ?? "-"}'),
          ],
        ),
      ),
    );
  }
}
