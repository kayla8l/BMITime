//
//  BNREmployee.m
//  BMITime
//
//  Created by Lee on 15-06-11.
//  Copyright (c) 2015 Lee. All rights reserved.
//

#import "BNREmployee.h"

@implementation BNREmployee

- (double)yearsOfEmployment
{

// Do I have a non-nil hireDate?
    if (self.hireDate) {
    // NSTimeInterval is the same as double
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / 31557600.0; // seconds per year
    
    }
    
    else
{

    return 0;}

}

- (float)bodyMassIndex
{
    // return 19.0;
    // overrides a method
    
    float normalBMI = [super bodyMassIndex];
    // build implementation on superclass
    return normalBMI * 0.9;

}

- (NSString *)description
{
    // overriding description to return the string itself
    return[NSString stringWithFormat:@"<Employee %d>", self.employeeID];
}

@end
