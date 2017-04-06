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
-(Move)generateMove {
    return ROCK;
}
-(BOOL)defeats:(RPSTurn *)turn {
    return false;
}
@end
