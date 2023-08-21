import 'package:flutter/material.dart';

class AddStudent extends StatefulWidget {
  const AddStudent({super.key});

  @override
  State<AddStudent> createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  String? _selectedGender = 'male';

  // Controllers for changing text for TextFormField
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _addressController = TextEditingController();

  // Form key for validating form
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Student'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter name';
                  }
                  return null;
                },
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: "Enter name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter email';
                  }
                  return null;
                },
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: "Enter email",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              DropdownButton(
                  value: _selectedGender,
                  items: const [
                    DropdownMenuItem(value: 'male', child: Text("Male")),
                    DropdownMenuItem(value: 'female', child: Text("Female"))
                  ],
                  onChanged: (value) {
                    setState(() {
                      _selectedGender = value;
                    });
                  }),
              SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter phone';
                  }
                  return null;
                },
                controller: _phoneController,
                decoration: InputDecoration(
                  hintText: "Enter phone",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter address';
                  }
                  return null;
                },
                controller: _addressController,
                decoration: InputDecoration(
                  hintText: "Enter address",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      print('Form is valid');
                    }
                  },
                  child: Text('Add Student')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/viewStudents');
                  },
                  child: Text('View Student'))
            ],
          ),
        ),
      ),
    );
  }
}
