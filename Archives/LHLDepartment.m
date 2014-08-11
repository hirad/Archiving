//
//  LHLDepartment.m
//  Archives
//
//  Created by Hirad Motamed on 2014-08-11.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHLDepartment.h"

NSString* const kNameKey = @"name";
NSString* const kEmployeesKey = @"employees";

@implementation LHLDepartment

-(void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.name forKey:kNameKey];
    [aCoder encodeObject:self.employees forKey:kEmployeesKey];
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if (self) {
        self.name = [aDecoder decodeObjectForKey:kNameKey];
        self.employees = [aDecoder decodeObjectForKey:kEmployeesKey];
    }
    
    return self;
}

@end
