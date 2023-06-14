import 'package:code_challenge/helpers/fonts.dart';
import 'package:code_challenge/list_screen/data/model/item_model.dart';
import 'package:code_challenge/list_screen/presentation/GETX/list_item_controller_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DetailsScreen extends StatelessWidget {
  final ItemModel item;
  final int index;
  const DetailsScreen({required this.item,required this.index});

  @override
  Widget build(BuildContext context) {
    ListItemControllerImp listItemControllerImp = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text('Details Screen'),
      ),
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 50.h,left: 112.w,right: 112.w,bottom: 30.h),
            child: Text(item.title,style: TextStyle(
                fontFamily: Fonts.Graphik,
                fontWeight: FontWeight.w700,
                fontSize: 46.sp,)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 120.75.w),
            child: TextFormField(
                initialValue: item.description,
                minLines: 10,
                maxLines: 20,
                onChanged: (String? value){
                  item.description= value!;
                  listItemControllerImp.updateItem(item,index);
                },
                style: TextStyle(
                    fontFamily: Fonts.Graphik,
                    fontWeight: FontWeight.normal,
                    fontSize: 46.sp)),
          )
        ],
      ),
    );
  }
}