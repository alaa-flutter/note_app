import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Const/color.dart';
import 'color_item.dart';

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({Key? key}) : super(key: key);

  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2*28.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (context, index) =>  Padding(
          padding:  EdgeInsets.symmetric(
            horizontal: 6.w,
          ),
          child: InkWell(
            onTap: (){
              setState(() {
                currentIndex = index;
              });
            },
            child: ColorItem(
              color:kColors[index] ,
              isSelected: currentIndex == index,
            ),
          ),
        ),
      ),
    );
  }
}
