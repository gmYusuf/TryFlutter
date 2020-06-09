import 'package:flutter/material.dart';

class RowValues extends StatelessWidget {
  static const _coinNameList = [
    'Bitcoin',
    'Ethereum:',
    'Bitcoin Cash',
  ];
  static const _coinsShortName = [
    'BTC',
    'ETH:',
    'BCH',
  ];
  static const _dates = [
    '1H:',
    '7D:',
    '1M:',
  ];
  static const _coinRate = [
    '-1%',
    '20%',
    '40',
  ];
  static const _volumeList = [
    '9,702',
    '248',
    '255',
  ];
  static const _marketCapacitiesList= [
    '178,725,567,373',
    '27,073,162,964',
    '19,071,051,017',
  ];
  static const _marketCapacitityStri = ':MC';
  static const _stringVolume = ':VOL';

  var _coinNames = Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text(
        _coinNameList[0],
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w800,
          fontFamily: 'Roboto',
          letterSpacing: 0.5,
          fontSize: 20,
        ),
      ),
      Text(
       _coinsShortName[0],
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w800,
          fontFamily: 'Roboto',
          letterSpacing: 0.5,
          fontSize: 20,
        ),
      ),
    ],
  );
  static var valuePart = Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text(
        _coinNameList[0],
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w800,
          fontFamily: 'Roboto',
          letterSpacing: 0.5,
          fontSize: 20,
        ),
      ),
      Text(
       _coinsShortName[0],
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w800,
          fontFamily: 'Roboto',
          letterSpacing: 0.5,
          fontSize: 20,
        ),
      ),
    ],
  );
  var stars = Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.star, color: Colors.green[500]),
      valuePart,
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
          Text(
            '170 Reviews',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
