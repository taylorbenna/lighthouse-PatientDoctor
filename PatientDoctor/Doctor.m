//
//  Doctor.m
//  PatientDoctor
//
//  Created by Taylor Benna on 2016-05-05.
//  Copyright © 2016 Taylor Benna. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

- (instancetype)init
{
    self = [super init];
    if (self) {
        _name = @"Danielle Neeson";
        _specialization  = @"surgical";
        _acceptedPatients = [[NSMutableSet alloc] init];
    }
    return self;
}

-(BOOL) acceptPatient:(Patient *)pat {
    if(!pat.healthCard) {
        return NO;
    } else {
        [self.acceptedPatients addObject:pat];
        return YES;
    }
}

- (void) decidePrescription:(Patient *) pat {
    //look at the symptoms, return diff values
    NSString *pres;
    if ([pat.symptoms containsObject:@"body aches"] && [pat.symptoms containsObject:@"stuffed nose"]) {
        pres = @"advil: cold and sinus";
    } else {
        pres = @"tylenol";
    }
    //are they already prescribed this
    if (![pat.prescriptions objectForKey:pres]) {
        pat.prescriptions[pres] = self.name;
    }
    
}

@end
