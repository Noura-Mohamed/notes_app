import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_feiled.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32,),
            CustomTextFeiled(hint: 'Title'),
            SizedBox(height: 16,),
            CustomTextFeiled(hint: 'Content', maxLines: 5,),
            SizedBox(height: 32,),
            CustomButton(),
            SizedBox(height: 32,),

          ],
        ),
      ),
    );
  }
}

