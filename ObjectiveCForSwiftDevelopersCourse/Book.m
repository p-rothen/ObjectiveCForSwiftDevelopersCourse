//
//  Book.m
//  ObjectiveCForSwiftDevelopersCourse
//
//  Created by Pedro on 2/9/17.
//  Copyright © 2017 Rothen. All rights reserved.
//

#import "Book.h"

@implementation Book
-(instancetype)initWithTitle:(NSString *)title author:(NSString *)author year:(int)year{
    self = [super init];
    if (self) {
        _title = title;
        _author = author;
        _year = year;
    }
    return self;
}
@end
