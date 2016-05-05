//
//  main.m
//  PatientDoctor
//
//  Created by Taylor Benna on 2016-05-05.
//  Copyright © 2016 Taylor Benna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Patient *pat = [[Patient alloc] initWithInfo];
        Doctor *doc = [[Doctor alloc] init];
        
        [pat.symptoms addObject:@"body aches"];
        [pat.symptoms addObject:@"stuffed nose"];
        
        NSLog(@"Patient: %@", pat.name);
        NSLog(@"Doctor: %@", doc.name);
        
        [pat visitDoctor:doc];
        //[pat requestMedication:doc];
        
        NSLog(@"Patient: %@", pat.prescriptions);
    }
    return 0;
}
