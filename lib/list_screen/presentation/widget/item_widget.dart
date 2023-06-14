import 'package:code_challenge/helpers/fonts.dart';
import 'package:code_challenge/list_screen/data/model/item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ItemWidget extends StatelessWidget {
  final ItemModel itemModel;
  const ItemWidget({Key? key,required this.itemModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius:BorderRadius.all(Radius.circular(20.r)),
          color:Colors.white
        ),
        width: 670.w,
        height: 202.h,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 25.w,right: 16.w,top: 16.h),
              width: 444.w,
              child: Column(
                children: [
                  SizedBox(height: 7.h,),
                  Text(itemModel.title,style: TextStyle(
                    fontFamily: Fonts.Graphik,
                    fontWeight: FontWeight.w600,
                    fontSize: 22.sp
                  ),),
                  SizedBox(height: 10.h,),
                  Text(itemModel.description,
                      style: TextStyle(
                      fontFamily: Fonts.Graphik,
                      fontWeight: FontWeight.normal,
                      fontSize: 16.sp))
                ],
              ),
            ),
            Image.asset(
              height: 170.h,
                fit: BoxFit.fill,
                width: 210.w,
                itemModel.image),
          ],
        ),
      ),
    );
  }
}
