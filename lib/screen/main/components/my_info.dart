import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: const Color(0xff242430),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Spacer(
              flex: 2,
            ),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                'assets/img/my_img2.png',
              ),
            ),
            SelectableText(
              'Mohammad Alazmeh',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const Text(
              'Flutter Developer',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
            ),
            const Spacer(
              flex: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SelectableText(
                    'mohamadalazmeh4@gmail.com',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  IconButton(
                      onPressed: () {
                        mail();
                      },
                      icon: Icon(Icons.mark_email_read))
                ],
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SelectableText(
                    '+963931480357',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  IconButton(
                    hoverColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onPressed: () {
                      whatsapp();
                    },
                    icon: SvgPicture.asset('assets/icons/whatsapp2.svg'),
                  )
                ],
              ),
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }

  whatsapp() async {
    var url = "whatsapp://send?phone=+963931480357&text=Hello";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  mail() async {
    var url =
        'mailto:mohamadalazmeh4@gmail.com?subject=${Uri.encodeFull('Hello')}&body=${Uri.encodeFull('')}';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
