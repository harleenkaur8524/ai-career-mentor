import 'package:flutter/material.dart';

class CareerAnalysisScreen extends StatefulWidget {
  const CareerAnalysisScreen({super.key});

  @override
  State<CareerAnalysisScreen> createState() => _CareerAnalysisScreenState();
}

class _CareerAnalysisScreenState extends State<CareerAnalysisScreen> {
  final _formKey = GlobalKey<FormState>();

  String? selectedRole;
  String? selectedExperience;

  final TextEditingController skillController = TextEditingController();

  final List<String> skills = [];
  final roles = [
    'Flutter Developer',
    'Android Developer',
    'Backend Developer',
    'QA Engineer',
  ];
  final experiences = ['Fresher', '0-1 Years', '1-3 Years', '3+ Years'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Career Assessment")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        child: Icon(Icons.psychology, size: 40),
                      ),

                      SizedBox(height: 12),

                      Text(
                        "AI Career Mentor",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),

                      SizedBox(height: 8),

                      Text(
                        "Analyze your career readiness and get a personalized roadmap",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                DropdownButtonFormField<String>(
                  initialValue: selectedRole,
                  decoration: const InputDecoration(
                    labelText: "Target Role",
                    border: OutlineInputBorder(),
                  ),
                  items: roles
                      .map(
                        (role) =>
                            DropdownMenuItem(value: role, child: Text(role)),
                      )
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedRole = value;
                    });
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Select role';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                DropdownButtonFormField<String>(
                  initialValue: selectedExperience,
                  decoration: const InputDecoration(
                    labelText: "Experience Level",
                    border: OutlineInputBorder(),
                  ),
                  items: experiences
                      .map(
                        (exp) => DropdownMenuItem(value: exp, child: Text(exp)),
                      )
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedExperience = value;
                    });
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Select experience level';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: skillController,
                  decoration: InputDecoration(
                    labelText: 'Add Skill',
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {
                        final skill = skillController.text.trim();
                        if (skill.isEmpty) return;

                        if (RegExp(r'^[0-9]+$').hasMatch(skill)) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Please enter a valid skill'),
                            ),
                          );
                          return;
                        }

                        setState(() {
                          skills.add(skill);
                        });

                        skillController.clear();
                      },
                    ),
                  ),
                ),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: skills.map((skill) {
                    return Chip(
                      label: Text(skill),
                      deleteIcon: const Icon(Icons.close),
                      onDeleted: () {
                        setState(() {
                          skills.remove(skill);
                        });
                      },
                    );
                  }).toList(),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.auto_awesome),
                    label: const Text("Generate AI Assessment"),

                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        if (skills.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Add at least one skill"),
                            ),
                          );

                          return;
                        }

                        debugPrint(selectedRole);
                        debugPrint(selectedExperience);
                        debugPrint(skills.toString());
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
