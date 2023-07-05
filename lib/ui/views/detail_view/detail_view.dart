import 'package:agri_logistics/ui/views/detail_view/detail_view_model.dart';
import 'package:agri_logistics/ui/views/widgets/shared/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DetailViewModel>.reactive(
      viewModelBuilder: () => DetailViewModel(title),
      builder: (
        BuildContext context,
        DetailViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          appBar: CustomAppBar(title: title),
          body:  Center(
            child: Text(
             model.note,
            ),
          ),
        );
      },
    );
  }
}
