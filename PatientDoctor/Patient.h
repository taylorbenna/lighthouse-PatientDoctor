//
//  Patient.h
//  PatientDoctor
//
//  Created by Taylor Benna on 2016-05-05.
//  Copyright © 2016 Taylor Benna. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;

@interface Patient : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSNumber *age;
@property (nonatomic) NSString *gender;
@property (nonatomic) NSNumber *healthCard;
@property (nonatomic) NSMutableSet *symptoms;
@property (nonatomic) NSMutableDictionary *prescriptions;

- (instancetype)initWithInfo;
- (void) visitDoctor:(Doctor *)doc;
- (void) requestMedication:(Doctor *)doc;

@end
