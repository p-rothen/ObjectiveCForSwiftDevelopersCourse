//
//  RPSTurn.h
//  ObjectiveCForSwiftDevelopersCourse
//
//  Created by Pedro on 2/10/17.
//  Copyright © 2017 Rothen. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, Move) {
    ROCK, PAPER, SCISSOR
};

@interface RPSTurn : NSObject
@property (nonatomic) Move move;
@end

