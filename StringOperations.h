//
//  StringOperations.h
//  Word Effects
//
//  Created by Arsalan Vakili on 2015-08-04.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StringOperations : NSObject

@property(nonatomic,strong) NSString * inputString;


-(NSString *)upperCaseAll: (NSString *)userString;

-(NSString *)lowerCaseAll: (NSString *)userString;

-(NSNumber *)numberize: (NSString *) userString;

-(NSString *)Canadianize: (NSString *)userString;

-(void)respond : (NSString *)userSting;

@end
