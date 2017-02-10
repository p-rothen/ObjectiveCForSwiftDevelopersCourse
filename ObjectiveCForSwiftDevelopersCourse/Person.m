//
//  Person.m
//  ObjectiveCForSwiftDevelopersCourse
//
//  Created by Pedro on 2/10/17.
//  Copyright © 2017 Rothen. All rights reserved.
//

#import "Person.h"

@implementation Person
-(instancetype) initWithName:(NSString*)name birthday:(NSDate*) birthday {
    self =  [super init];
    if (self) {
        _name = name;
        _birthday = birthday;
    }
    return self;
}
@end
