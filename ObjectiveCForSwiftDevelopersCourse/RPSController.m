//
//  RPSController.m
//  ObjectiveCForSwiftDevelopersCourse
//
//  Created by Pedro on 3/29/17.
//  Copyright © 2017 Rothen. All rights reserved.
//

#import "RPSController.h"

@implementation RPSController
-(void) throwDown:(Move)playerMove {
    RPSTurn *playersTurn = [[RPSTurn alloc] initWithMove:playerMove];
    RPSTurn *computersTurn = [[RPSTurn alloc] init];
    NSLog(@"%@", playersTurn.description);
    self.game = [[RPSGame alloc] initWithFirstTurn:playersTurn
                                        secondTurn:computersTurn];
}
-(NSString*) messageForGame:(RPSGame*) game {
    if (game.firstTurn == game.secondTurn) {
        return @"It's a tie!";
    }
    NSString *winnerString = [[game winner] description];
    NSString *loserString = [[game loser] description];
    NSString *resultString = [self resultsString:game];
    
    return [NSString stringWithFormat:@"%@ %@ %@ %@ %@", winnerString, @" defeats ", loserString, @". ", resultString];
}

-(NSString*) resultsString:(RPSGame*) game {
    if ([game.firstTurn defeats:game.secondTurn]) {
        return @"You win";
    }
    return @"You loose";
}
@end
