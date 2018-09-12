#ifndef MICRO_MOVE_H
#define MICRO_MOVE_H

#include <vector>
#include <string>
#include "Utility.h"
using namespace std;

class MicroMove
{
  public:
    // type of move
    char type; // P: Place Ring | M: Select Ring and Move Ring | R: Remove a Row | X: Remove a Ring

    // Coordinates information about the corresponding move
    // P: position of ring | M: position of ring, new position | R: start and end coordinates of the row | X: position of ring to remove
    vector<pair<int, int>> moveInfo;

  public:
    /** 
     * @Constructor with input in cartesian notation
     */
    MicroMove(char type, vector<pair<int, int>> moveInfo);

    /**
     * @Constructor with input in polar notation
     */
    MicroMove(string move);

    /**
     * Returns the polar representation of the micro-move in the form of a string
     */
    string cartesianToPolar();
};

#endif // MICRO_MOVE_H