//
//  Doctor.h
//  PatientDoctor
//
//  Created by Taylor Benna on 2016-05-05.
//  Copyright © 2016 Taylor Benna. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Patient;

@interface Doctor : NSObject

@property (nonatomic, readonly) NSString *name;
@property (nonatomic, readonly) NSString *specialization;
@property (nonatomic) NSMutableSet *acceptedPatients;

-(BOOL) acceptPatient:(Patient *)pat;
-(void) decidePrescription:(Patient *) pat;

@end
