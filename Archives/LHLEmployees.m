//
//  LHLEmployees.m
//  Archives
//
//  Created by Hirad Motamed on 2014-08-11.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHLEmployees.h"

NSString* const kFirstNameKey = @"first name key";
NSString* const kLastNameKey = @"last name key";
NSString* const kDepartmentKey = @"department key";

@implementation LHLEmployees

-(void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeConditionalObject:self.department forKey:kDepartmentKey];
    [aCoder encodeObject:self.firstName forKey:kFirstNameKey];
    [aCoder encodeObject:self.lastName forKey:kLastNameKey];
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    
    if (self) {
        LHLDepartment* department = [aDecoder decodeObjectForKey:kDepartmentKey];
        if (department) {
            self.department = department;
        }
        
        self.firstName = [aDecoder decodeObjectForKey:kFirstNameKey];
        self.lastName = [aDecoder decodeObjectForKey:kLastNameKey];
    }
    
    return self;
}

@end
