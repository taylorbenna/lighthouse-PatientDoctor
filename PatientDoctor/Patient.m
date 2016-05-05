//
//  Patient.m
//  PatientDoctor
//
//  Created by Taylor Benna on 2016-05-05.
//  Copyright © 2016 Taylor Benna. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype)initWithInfo
{
    self = [super init];
    if (self) {
        _name = @"Taylor Benna";
        _age = @(22);
        _gender = @"female";
        _healthCard = @(46665776);
        _symptoms = [[NSMutableSet alloc] init];
        _prescriptions = [[NSMutableDictionary alloc] init];
    }
    return self;
}

- (void) visitDoctor:(Doctor *)doc {
    if([doc acceptPatient:self]) {
        [self requestMedication:doc];
    }
}

- (void) requestMedication:(Doctor *)doc {
    if([doc.acceptedPatients containsObject:self]) {
        //check which symptoms to decide which prescription
        [doc decidePrescription:self];
    } else {
        //deny prescription
    }
}

@end
