//
//  RPSController.h
//  ObjectiveCForSwiftDevelopersCourse
//
//  Created by Pedro on 3/29/17.
//  Copyright © 2017 Rothen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"
#import "RPSGame.h"

@interface RPSController : NSObject
@property (nonatomic) RPSGame* game;

-(void) throwDown:(Move) playerMove;
-(NSString*) messageForGame:(RPSGame*) game;
@end
