//
//  RPSGame.h
//  ObjectiveCForSwiftDevelopersCourse
//
//  Created by Pedro on 2/10/17.
//  Copyright © 2017 Rothen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"

@interface RPSGame : NSObject
@property (nonatomic) RPSTurn *firstTurn;
@property (nonatomic) RPSTurn *secondTurn;
-(instancetype) initWithFirstTurn:(RPSTurn*)firstTurn
                   secondTurn:(RPSTurn*)secondTurn;
-(RPSTurn*) winner;
-(RPSTurn*) loser;
@end
