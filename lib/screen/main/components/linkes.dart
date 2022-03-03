import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Linkes extends StatelessWidget {
  const Linkes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        const SizedBox(
          width: defaultPadding / 2,
        ),
        TextButton(
          onPressed: () {
            cv();
          },
          child: Row(
            children: [
              Text(
                'DOWNLOAD CV',
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyText1!.color,
                ),
              ),
              const SizedBox(
                width: defaultPadding / 2,
              ),
              SvgPicture.asset('assets/icons/download.svg'),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: defaultPadding),
          color: const Color(0xff24242e),
          child: Row(
            children: [
              const Spacer(),
              IconButton(
                hoverColor: Colors.transparent,
                focusColor: Colors.transparent,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  linkedin();
                },
                icon: SvgPicture.asset('assets/icons/linkedin2.svg'),
              ),
              IconButton(
                hoverColor: Colors.transparent,
                focusColor: Colors.transparent,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  facebook();
                },
                icon: SvgPicture.asset(
                  'assets/icons/facebook2.svg',
                ),
              ),
              IconButton(
                hoverColor: Colors.transparent,
                focusColor: Colors.transparent,
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onPressed: () {
                  github();
                },
                icon: SvgPicture.asset('assets/icons/github2.svg'),
              ),
              const Spacer(),
            ],
          ),
        )
      ],
    );
  }

  cv() async {
    var url =
        "https://drive.google.com/file/d/1gfcOYMFBGdmYAyD5Tr-3k4FRzUQ8obft/view?usp=sharing";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  linkedin() async {
    var url = "https://www.linkedin.com/in/mohammad-alazmeh-026498217/";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  github() async {
    var url = "https://github.com/Mhd-Az100";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  facebook() async {
    var url = "https://www.facebook.com/profile.php?id=100010221011270";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
