//
//  RPSGame.m
//  ObjectiveCForSwiftDevelopersCourse
//
//  Created by Pedro on 2/10/17.
//  Copyright © 2017 Rothen. All rights reserved.
//

#import "RPSGame.h"

@implementation RPSGame
-(instancetype) initWithFirstTurn:(RPSTurn *)firstTurn
                       secondTurn:(RPSTurn *)secondTurn {
    self = [super init];
    
    if (self) {
        _firstTurn = firstTurn;
        _secondTurn = secondTurn;
    }
    
    return self;
}
-(RPSTurn*) winner {
    return [_firstTurn defeats:_secondTurn] ? _firstTurn : _secondTurn;
}
-(RPSTurn*) loser {
    return [_firstTurn defeats:_secondTurn] ? _secondTurn : _firstTurn;
}
@end
