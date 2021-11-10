import 'package:flutter/material.dart';

class Modal{
  mainBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
    builder: (BuildContext context) {
      return Column(
        textDirection: TextDirection.rtl,
        children: <Widget>[
          Text('مرتب سازی بر اساس'),
          _CreatList(context, 'پربازدید ترین', Icons.check_box_outline_blank, _action1()),
          _CreatList(context, 'پرفروش ترین', Icons.check_box_outline_blank, _action1()),
          _CreatList(context, 'جدید ترین', Icons.check_box_outline_blank, _action1()),
          _CreatList(context, 'ارزانترین', Icons.check_box_outline_blank, _action1()),
          _CreatList(context, 'گرانترین', Icons.check_box_outline_blank, _action1()),
        ],
      );
    });
  }
}
 ListTile _CreatList(BuildContext context,String name,IconData icon,Function action) {
  return ListTile(
    leading: Icon(icon),
    title: Text(name),
    onTap: (){
      Navigator.pop(context);
      action();
    },
  );
}
_action1(){
  print("action1");
}
