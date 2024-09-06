import 'package:flutter/material.dart';
import 'widgets/eventCard.dart';
import 'widgets/winnerContestCard.dart';
import 'widgets/otherContestentTile.dart';
import 'widgets/voteBox.dart';

class VoteAppUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 142,
              child: Image.asset(
                'images/image 1.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Live Vote Results',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Winner Contestent',
                    style: TextStyle(
                      color: Color(0xffF8B64C),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: WinnerContestantCard(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: VoteBox(
                        backgroundColor: Color(0xFF0497FF),
                        title: 'Total Votes',
                        data: '560',
                      ),
                    ),
                    Expanded(
                      child: VoteBox(
                          backgroundColor: Color(0xFF7CADBF),
                          title: 'Total Votes',
                          data: '50%'),
                    ),
                  ],
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Others Contestant',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                )),
            SizedBox(height: 7),
            ContestantCardTile(
              name: 'Chester Cheng',
              totalVotes: 196,
              votesPercent: 35,
              colour: Color(0xffA1D2F5),
              imagePath: 'images/tile 2.png',
            ),
            SizedBox(height: 10),
            ContestantCardTile(
              imagePath: 'images/tile 3.png',
              name: 'Robert Salmon',
              votesPercent: 10,
              totalVotes: 54,
              colour: Color(0xffA1F5D3),
            ),
            SizedBox(height: 10),
            ContestantCardTile(
              imagePath: 'images/tile 4.png',
              name: 'Kristine Lim',
              votesPercent: 5,
              totalVotes: 28,
              colour: Color(0xffBBF5A1),
            ),
            SizedBox(height: 25),
            Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contest Videos',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    'https://www.youtube.com/watch?v=aLtXzKyNxkY',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Upcoming Events',
                    style: TextStyle(fontSize: 22),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EventCard(
                    eventName: 'Music Festival',
                    date: 'Date: 30/09/2024',
                    imagePath: 'images/music.png',
                  ),
                  EventCard(
                    eventName: 'Sports Event',
                    date: 'Date: 30/09/2024',
                    imagePath: 'images/sport.png',
                  ),
                ],
              ),
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
