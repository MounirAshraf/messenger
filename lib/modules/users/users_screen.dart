import 'package:flutter/material.dart';

import '../../models/user/user_model.dart';





class UsresScreeen extends StatelessWidget
{
  List<UserModel> users = [
    UserModel(id: 1, name: 'Mounir Ashraf', phone: '+201125077996'),
    UserModel(id: 2, name: 'Nancy Ashraf', phone: '+20115465496'),
    UserModel(id: 3, name: 'Nehal Ashraf', phone: '+20155698796'),
    UserModel(id: 1, name: 'Mounir Ashraf', phone: '+201125077996'),
    UserModel(id: 2, name: 'Nancy Ashraf', phone: '+20115465496'),
    UserModel(id: 3, name: 'Nehal Ashraf', phone: '+20155698796'),
    UserModel(id: 1, name: 'Mounir Ashraf', phone: '+201125077996'),
    UserModel(id: 2, name: 'Nancy Ashraf', phone: '+20115465496'),
    UserModel(id: 3, name: 'Nehal Ashraf', phone: '+20155698796'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
      ),
      body: ListView.separated(
          itemBuilder: (context,index) => bulidUserItem(users[index]),
          separatorBuilder: (context,index) => Padding(
            padding: const EdgeInsetsDirectional.only(start: 20.0),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300] ,
            ),
          ),
          itemCount: users.length),
    );
  }

  Widget bulidUserItem(UserModel userModel) => Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children:
      [
        CircleAvatar(
          radius: 25.0,
          child: Text(
            '${userModel.id}',
            style: TextStyle(
              fontSize: 25.0 ,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox( width: 20.0,),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Text(
              '${userModel.name}',
              style: TextStyle(
                fontSize: 30.0 ,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${userModel.phone}',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    ),
  ) ;
}
