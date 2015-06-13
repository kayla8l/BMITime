//
//  BNREmployee.h
//  BMITime
//
//  Created by Lee on 15-06-11.
//  Copyright (c) 2015 Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

@interface BNREmployee: BNRPerson

// BNREmployee is now a subclass of BNRPerson

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;
- (double)yearsOfEmployment;




@end
