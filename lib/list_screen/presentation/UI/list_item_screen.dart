import 'package:code_challenge/list_screen/data/model/item_model.dart';
import 'package:code_challenge/list_screen/presentation/GETX/list_item_controller_impl.dart';
import 'package:code_challenge/list_screen/presentation/UI/item_details_screen.dart';
import 'package:code_challenge/list_screen/presentation/widget/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  ListItemControllerImp listItemControllerImp = Get.find();
  @override
  void initState() {
    super.initState();
    // initiation states
    listItemControllerImp.iniTStatus();
    // call the data from source
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) =>
        listItemControllerImp.getListItem());
  }
  @override
  Widget build(BuildContext context) {
   return GetBuilder<ListItemControllerImp>(builder: (state){
     print(state.listItemState);
     if (state.listItemState.isLoading!) {
       return const Center(child:  CircularProgressIndicator());
     }
     else if (state.listItemState.error!.isNotEmpty) {
       return const Center(child: Text("Error"),);
     }
     else if (state.listItemState.success!) {
       List<ItemModel> items = state.listItemState.items!;
       return Scaffold(
         appBar: AppBar(
           title: Text('List Screen'),
         ),
         body: ListView.builder(
           itemCount: items.length,
           itemBuilder: (BuildContext context, int index) {
             return GestureDetector(
               onTap: (){
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context) => DetailsScreen(item: items[index],index:index),
                   ),
                 );
               },
               child: Column(
                 children: [
                   ItemWidget(
                     itemModel:items[index],
                   ),
                   SizedBox(height:25.h),
                 ],
               ),
             );
           },
         ),
       );
     }
     return Scaffold(
       appBar: AppBar(
         title: Text('List Screen'),
       ),
       body: Container(),
     );
    });
   }
}


