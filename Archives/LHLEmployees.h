//
//  LHLEmployees.h
//  Archives
//
//  Created by Hirad Motamed on 2014-08-11.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LHLDepartment.h"

@interface LHLEmployees : NSObject <NSCoding>

@property (nonatomic, copy) NSString* firstName;
@property (nonatomic, copy) NSString* lastName;

@property (nonatomic, weak) LHLDepartment* department;

@end
