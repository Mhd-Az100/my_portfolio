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
    return InkWell(
      hoverColor: Colors.transparent,
      onTap: () => showAlertDialog(
          context, project!.imagepath!, project!.title!, project!.description!),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          border: Border.all(
              width: 1.0,
              color: primaryColor.withOpacity(0.3),
              style: BorderStyle.solid),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/img/${project!.imagepath}.png',
                      ),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  project!.title!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
            ),
          ],
        ),
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

  showAlertDialog(BuildContext context, String img, String name, String desc) {
    // set up the button
    Widget okButton = FlatButton(
      child: const Text(
        "OK",
        style: TextStyle(color: primaryColor),
      ),
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
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(desc),
        ),
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
