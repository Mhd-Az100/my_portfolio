import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/models/project.dart';
import 'package:my_portfolio/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({Key? key, this.project}) : super(key: key);
  final Project? project;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        border: Border.all(
            width: 1.0, color: primaryColor, style: BorderStyle.solid),
        boxShadow: const [
          BoxShadow(
            color: primaryColor,
            // blurStyle: BlurStyle.outer,
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
        color: secondaryColor,
      ),
      margin: const EdgeInsets.all(defaultPadding / 3),
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project!.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          const Spacer(),
          Text(
            project!.description!,
            maxLines: Responsive.isMobileLarge(context) ||
                    Responsive.isTablet(context)
                ? 2
                : 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  googleplay(project!.url!);
                },
                child: Visibility(
                  visible: project!.url != "",
                  child: const Text(
                    'Google play >>',
                    style: TextStyle(color: primaryColor),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  showAlertDialog(
                      context, project!.imagepath!, project!.title!);
                },
                child: Image.asset(
                  'assets/img/camera.png',
                  scale: Responsive.isMobileLarge(context) ||
                          Responsive.isTablet(context)
                      ? (Responsive.isMobile(context) ? 33 : 25)
                      : 20,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  googleplay(String url2) async {
    var url = "$url2";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  showAlertDialog(BuildContext context, String img, String name) {
    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(name),
      content: img == ''
          ? const Text('Old Project, \n Image not found!')
          : Image.asset('assets/img/$img.png'),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
