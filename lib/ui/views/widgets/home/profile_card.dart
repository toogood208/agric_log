import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(8),
        child: Row(
          children: [
           const CircleAvatar(
            radius: 50,
            child: Icon(CupertinoIcons.person_fill,
            size: 80,
            color: Colors.black45,),
           ),
          const SizedBox(width: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("Ikem Frank", style: Theme.of(context).textTheme.titleLarge,),
              Text("FUCCI Services",style: Theme.of(context).textTheme.titleLarge,),
              Text("23/05/2024", style: Theme.of(context).textTheme.titleLarge,),
              ],
            )
          ],
        ),
      ),
    );
  }
}