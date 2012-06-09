//
//  Length.m
//  Laengenrechner
//
//  Created by Valentyn Kukushkin on 06.06.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Length.h"

@implementation Length

@synthesize userInput;
@synthesize value;
@synthesize unit;
@synthesize valueInCm;

-(id)initWithString: (NSString*)str {
    NSLog(@"%s", __PRETTY_FUNCTION__);
    self = [super init];
    if (self) {
        if (str != nil) {
            NSString *s;
            NSCharacterSet *chSet = [NSCharacterSet letterCharacterSet];
            
            NSScanner *scanner = [NSScanner scannerWithString: str];
            [scanner scanFloat: &value ];
            [scanner scanCharactersFromSet: chSet intoString: &s];
            unit = s;
            
            NSLog(@"Scanned: value=%f, units=%@", value, unit);

            if ([unit isEqualToString:@"m"]) {
                NSLog(@"unit is %@", s);
                valueInCm = value * 100;
            } else if ([unit isEqualToString:@"cm"]) {
                valueInCm = value;
            } else if ([unit isEqualToString:@"in"]) {
                valueInCm = value * 2.54;
            } else if ([unit isEqualToString:@"ft"]) {
                valueInCm = value * 30.48;
            } else {
                NSLog(@"(Warning!) Cannot convert this unit, check your input");
            }
        }
    }
    return self;
}

-(bool)setInput:(NSString *)inputString {
    
    if(valueInCm != 0.0f && unit != nil) {
//        NSLog(@"setInput was successfull? %@", YES);
        return YES;
    } else {
//        NSLog(@"setInput was successfull? %@", NO);
        return NO;
    }
    return NO;
}

-(NSString *)getMeter {
    float d = valueInCm / 100.0;
    NSLog(@"Calling getMeter, result: %f m", d);
    return [NSString stringWithFormat:@"%f m", d];
}

-(NSString *)getCentimeter {
    NSLog(@"Calling getCentimeter, result: %f cm", valueInCm);
    return [NSString stringWithFormat:@"%f cm", valueInCm];
}

-(NSString *)getInch {
    float d = valueInCm / 2.54;
    NSLog(@"Calling getInch, result: %f in", d);
    return [NSString stringWithFormat:@"%f in", d];
}

-(NSString *)getFoot {
    float d = valueInCm / 30.48;
    NSLog(@"Calling getFoot, result: %f ft", d);
    return [NSString stringWithFormat:@"%f ft", d];
}

@end
