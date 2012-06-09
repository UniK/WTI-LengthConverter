//
//  Length.h
//  Laengenrechner
//
//  Created by Valentyn Kukushkin on 06.06.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Length : NSObject {
    
}

@property NSString *userInput;
@property float value;
@property NSString *unit;
@property float valueInCm; 


-(id) initWithString: (NSString*) str;

-(bool)setInput: (NSString *)inputString;

-(NSString *)getMeter;
-(NSString *)getCentimeter;
-(NSString *)getInch;
-(NSString *)getFoot;

@end
