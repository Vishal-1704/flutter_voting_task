import 'dart:core';
import 'package:flutter/material.dart';

class ContestantCardTile extends StatelessWidget {
  ContestantCardTile({
    required this.name,
    required this.imagePath,
    required this.colour,
    required this.totalVotes,
    required this.votesPercent,
  });

  final String imagePath;
  final Color colour;
  final String name;
  final int totalVotes;
  final int votesPercent;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 4,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            title: Padding(
              padding: const EdgeInsets.only(left: 100, top: 15),
              child: Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            titleAlignment: ListTileTitleAlignment.center,
            subtitle: Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Text(
                '$totalVotes votes',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                ),
              ),
            ),
            trailing: Text(
              '$votesPercent%',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            left: 15,
            top: 0,
            child: Container(
              height: 90,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
