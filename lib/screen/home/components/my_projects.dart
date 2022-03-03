// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/models/project.dart';
import 'package:my_portfolio/responsive.dart';
import 'package:my_portfolio/screen/home/components/projects_card.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Projects',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          const Responsive(
            mobile: ProjectGridView(
              crossAxisAlignment: 1,
              childAspectRatio: 1.7,
            ),
            mobileLarge: ProjectGridView(
              crossAxisAlignment: 2,
            ),
            tablet: ProjectGridView(
              childAspectRatio: 1.1,
            ),
            desktop: ProjectGridView(),
          ),
        ],
      ),
    );
  }
}

class ProjectGridView extends StatelessWidget {
  const ProjectGridView({
    Key? key,
    this.crossAxisAlignment = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);
  final int? crossAxisAlignment;
  final double? childAspectRatio;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: GridView.builder(
        itemCount: demo_projects.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisAlignment!,
          childAspectRatio: childAspectRatio!,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding,
        ),
        itemBuilder: (context, index) => ProjectCard(
          project: demo_projects[index],
        ),
      ),
    );
  }
}
