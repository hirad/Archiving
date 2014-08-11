//
//  LHLDepartment.h
//  Archives
//
//  Created by Hirad Motamed on 2014-08-11.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LHLDepartment : NSObject <NSCoding>

@property (nonatomic, copy) NSString* name;
@property (nonatomic, strong) NSArray* employees;

@end
