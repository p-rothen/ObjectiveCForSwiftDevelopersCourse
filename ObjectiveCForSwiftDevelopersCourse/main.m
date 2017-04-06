//
//  main.m
//  ObjectiveCForSwiftDevelopersCourse
//
//  Created by Pedro on 2/8/17.
//  Copyright © 2017 Rothen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        RPSController *controller = [RPSController alloc];
        [controller throwDown:PAPER];
        
        NSString *resultMessage = [controller messageForGame:controller.game];
        NSLog(@"%@", resultMessage);
    }
    return 0;
}
