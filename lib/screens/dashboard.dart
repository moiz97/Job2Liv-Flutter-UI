import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobs2liv/responsiveness/layout.dart';
import 'package:jobs2liv/widgets/other_widgets.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);

  final List _featuredJobs = [
    {
      'logoPath': 'assets/images/google_logo.png',
      'companyName': 'Google',
      'jobTitle': 'Software Engineer',
      'jobLocation': 'Lahore, Pakistan',
      'jobType': 'Full Time',
      'experienceLevel': 'Mid Level',
      'priority': 'high',
    },
    {
      'logoPath': 'assets/images/microsoft_logo.png',
      'companyName': 'Microsoft',
      'jobTitle': 'Software Engineer',
      'jobLocation': 'Lahore, Pakistan',
      'jobType': 'Full Time',
      'experienceLevel': 'Mid Level',
      'priority': 'low',
    },
    {
      'logoPath': 'assets/images/facebook_logo.png',
      'companyName': 'Facebook',
      'jobTitle': 'Software Engineer',
      'jobLocation': 'Lahore, Pakistan',
      'jobType': 'Full Time',
      'experienceLevel': 'Mid Level',
      'priority': 'low',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                topBar(context),
                Spacers.verticalSpaceMedium(context),
                searchBar(context),
                Spacers.verticalSpaceMedium(context),
                interest(context),
                Spacers.verticalSpaceTiny(context),
                featuredJobs(context),
                Spacers.verticalSpaceMedium(context),
                recent(context),
                Spacers.verticalSpaceTiny(context),
                recentlyViewed(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget featuredJobs(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.37,
      width: MediaQuery.of(context).size.width * 0.9,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _featuredJobs.length,
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        itemBuilder: ((context, index) {
          return Padding(
              padding: const EdgeInsets.all(8.0),
              child: FeaturedJobCard(
                logoPath: _featuredJobs[index]['logoPath'],
                companyName: _featuredJobs[index]['companyName'],
                jobTitle: _featuredJobs[index]['jobTitle'],
                jobLocation: _featuredJobs[index]['jobLocation'],
                jobType: _featuredJobs[index]['jobType'],
                experienceLevel: _featuredJobs[index]['experienceLevel'],
                priority: _featuredJobs[index]['priority'],
              ));
        }),
      ),
    );
  }

  Widget recentlyViewed(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      width: MediaQuery.of(context).size.width * 0.9,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _featuredJobs.length,
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        itemBuilder: ((context, index) {
          return Padding(
              padding: const EdgeInsets.all(8.0),
              child: RecentlyViewed(
                logoPath: _featuredJobs[index]['logoPath'],
                companyName: _featuredJobs[index]['companyName'],
                jobTitle: _featuredJobs[index]['jobTitle'],
                jobLocation: _featuredJobs[index]['jobLocation'],
                jobType: _featuredJobs[index]['jobType'],
                experienceLevel: _featuredJobs[index]['experienceLevel'],
                priority: _featuredJobs[index]['priority'],
              ));
        }),
      ),
    );
  }

  Widget interest(BuildContext context) {
    return Row(
      children: [
        Text(
          "Most Match Job: UI UX",
          style: Theme.of(context).textTheme.headline3,
        ),
        const Spacer(),
        Text(
          "Change interest",
          style: Theme.of(context).textTheme.headline3,
        )
      ],
    );
  }

  Widget recent(BuildContext context) {
    return Row(
      children: [
        Text(
          "Recently Viewed",
          style: Theme.of(context).textTheme.headline3,
        ),
        const Spacer(),
        Text(
          "see all",
          style: Theme.of(context).textTheme.headline3,
        )
      ],
    );
  }

  Widget searchBar(BuildContext context) {
    return Row(
      children: [
        const CustomTextField(hintText: 'Search jobs, titles, etc...'),
        Spacers.horizontalSpaceSmall(context),
        Expanded(
          child: CustomCircleButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () {},
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget topBar(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello, Moiz!",
              style: GoogleFonts.abrilFatface(
                fontSize: 28,
              ),
            ),
            Text(
              "Hope you find some good jobs today",
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
        const Spacer(),
        Container(
          //circle black border
          width: MediaQuery.of(context).size.width * 0.15,
          height: MediaQuery.of(context).size.width * 0.15,
          decoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.black,
              width: 1.5,
            ),
          ),
          child: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/person_doddle.png'),
          ),
        ),
      ],
    );
  }
}
