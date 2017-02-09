//
//  Book.h
//  ObjectiveCForSwiftDevelopersCourse
//
//  Created by Pedro on 2/9/17.
//  Copyright © 2017 Rothen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject
@property (nonatomic) NSString *title;
@property (nonatomic) NSString *author;
@property (nonatomic) int year;

-(instancetype) initWithTitle:(NSString*)title
                       author:(NSString*)author
                         year:(int)year;
@end
