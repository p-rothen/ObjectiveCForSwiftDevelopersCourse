//
//  RPSTurn.m
//  ObjectiveCForSwiftDevelopersCourse
//
//  Created by Pedro on 2/10/17.
//  Copyright © 2017 Rothen. All rights reserved.
//

#import "RPSTurn.h"

@implementation RPSTurn
-(instancetype)initWithMove:(Move) move {
    self = [super init];
    if (self) {
        _move = move;
    }
    return self;
}
-(instancetype)init {
    self = [super init];
    if (self) {
        _move = [self generateMove];
    }
    return self;
}
-(Move)generateMove {
    NSUInteger randomNumber = arc4random_uniform(3);
    switch (randomNumber) {
        case 0:
            return ROCK;
            break;
        case 1:
            return PAPER;
            break;
        case 2:
            return SCISSOR;
            break;
        default:
            return INVALID;
            break;
    }
}
-(BOOL)defeats:(RPSTurn *)turn {
    if ((self.move == PAPER && turn.move == ROCK) ||
        (self.move == SCISSOR && turn.move == PAPER) ||
        (self.move == ROCK && turn.move == SCISSOR)) {
        return true;
    } else {
        return false;
    }
}
- (NSString *)description
{
    switch (self.move) {
        case ROCK:
            return @"Rock";
            break;
        case SCISSOR:
            return @"Scissor";
            break;
        case PAPER:
            return @"Paper";
            break;
        default:
            return @"Invalid";
            break;
    }
}
@end
