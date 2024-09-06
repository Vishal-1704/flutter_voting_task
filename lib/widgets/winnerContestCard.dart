import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class WinnerContestantCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.only(left: 16.0),
            decoration: BoxDecoration(
              color: Color(0xffF5A1A1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                Positioned(
                  left: 15,
                  top: 2,
                  child: Container(
                    height: 115,
                    child: Image.asset(
                      'images/tile 1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 27.0),
                      child: Text(
                        'Omar D. Regalado',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 4),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Lorem ipsum loremipsum',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: -16,
            right: -10,
            child: Container(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset('images/medal 1.png')),
          )
        ],
      ),
    );
  }
}
