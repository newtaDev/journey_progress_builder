import 'package:flutter/material.dart';

import '../../../data/model/shapes/journey_snake_lines.dart';

enum CardType {
  initial,
  normal,
}

class JourneyProgressBuilder extends StatefulWidget {
  final int countOfCircles;
  const JourneyProgressBuilder({
    Key? key,
    required this.countOfCircles,
  }) : super(key: key);

  @override
  State<JourneyProgressBuilder> createState() => _JourneyProgressBuilderState();
}

class _JourneyProgressBuilderState extends State<JourneyProgressBuilder> {
  Map<int, List<int>> mapOfCircleList = {};
  late List<int> listOfCircles;
  @override
  void initState() {
    listOfCircles = List.generate(widget.countOfCircles, (index) => index);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant JourneyProgressBuilder oldWidget) {
    listOfCircles = List.generate(widget.countOfCircles, (index) => index);
    super.didUpdateWidget(oldWidget);
  }

  /// Returns the length of list
  int getListCount() {
    int listCount = 0;
    bool hasDoubleCircle = false;
    for (var i = 0; i < listOfCircles.length; i++) {
      if (hasDoubleCircle) {
        bool isNotEnded = (i + 1) < listOfCircles.length;
        mapOfCircleList[listCount] = [i, if (isNotEnded) i + 1];
        i++;
        hasDoubleCircle = false;
      } else {
        mapOfCircleList[listCount] = [i];
        hasDoubleCircle = true;
      }
      listCount++;
    }
    return listCount;
  }

  CardType getCardType(int index) {
    if (index == 0) return CardType.initial;
    return CardType.normal;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: getListCount(),
      itemBuilder: (context, index) {
        switch (getCardType(index)) {
          case CardType.initial:
            return journeyPainter(
              painter: StartingSnakeLine(),
              child: Center(
                  child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.black,
                child: Text((listOfCircles[index] + 1).toString()),
              )),
            );
          case CardType.normal:
            return journeyPainter(
              painter:
                  index.isOdd ? LeftRightSnakeLine() : RightLeftSnakeLine(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: mapOfCircleList[index]!
                    .map(
                      (circleIndex) => CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.black,
                        child: Text(
                          (listOfCircles[circleIndex] + 1).toString(),
                        ),
                      ),
                    )
                    .toList(),
              ),
            );
        }
      },
    );
  }

  Widget journeyPainter(
      {required Widget child, required CustomPainter painter}) {
    const double snakeWidth = 300;
    const double snakeHeight = 140;
    return Center(
      child: SizedBox(
        height: snakeHeight,
        width: snakeWidth,
        child: CustomPaint(
          size: const Size(snakeWidth, snakeHeight),
          painter: painter,
          child: child,
        ),
      ),
    );
  }
}
