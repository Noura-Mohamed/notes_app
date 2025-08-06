import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/custom_text_feiled.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(title: 'Edit Note', icon: Icons.edit),
          SizedBox(height: 50,),
          CustomTextFeiled(hint: 'Title'),
          SizedBox(height: 16,),
          CustomTextFeiled(hint: 'Content', maxLines: 5,)

        ],
      ),
    );
  }
}
