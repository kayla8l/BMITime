//
//  main.m
//  BMITime
//
//  Created by Lee on 15-06-09.
//  Copyright (c) 2015 Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
// #import "BNRPerson.h"
#import "BNREmployee.h"

// quotation marks tell the compiler to look within the current project

// Since BNRPerson is a subclass of 

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create an instance of BNREmployee
        BNREmployee *kayla = [[BNREmployee alloc] init];
        
        // program runs because because an employee is a person
        // an instance of BNREmployee can respond to methods from BNRPerson
        // you can use an instance of BNREmployee anywhere that the program expects an instance of BNRPerson
        
        // Give the instance variables interesting values using setters
        // setter methods allows code outside of a class to change, or set, the value of an instance variable
        [kayla setWeightInKilos:50];
        [kayla setHeightInMeters:1.5];
        kayla.employeeID = 12;
        kayla.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd, 2010"];
        NSDate *date = kayla.hireDate;
        NSLog(@"%@ hired on %@", kayla, date); // returns <Employee 12> hired on x; see the BNR.Employee.m override

        
        // Log the instance variables using the getters
        // getter methods allows code outside of a class to read, get, the value of an instance variable
        float height = [kayla heightInMeters];
        int weight = [kayla weightInKilos];
        NSLog(@"Kayla is %.2f meters tall and weighs %i kilograms\n", height, weight);
        NSLog(@"Employee %u was hired on %@", kayla.employeeID, kayla.hireDate);
        
        // Log some values using custom methods
        float bmi = [kayla bodyMassIndex];
        NSLog(@"Kayla has a bmi of %.2f", bmi);
        double years = kayla.yearsOfEmployment;
        NSLog(@"Kayla has been employed for %.2f years", years);

        
        
        
        
    }
    return 0;
}

