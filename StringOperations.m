//
//  StringOperations.m
//  Word Effects
//
//  Created by Arsalan Vakili on 2015-08-04.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import "StringOperations.h"

@implementation StringOperations


-(NSString *)upperCaseAll: (NSString *)userString{
    NSString * currentString = [userString uppercaseString];
    return currentString;
    
}

-(NSString *)lowerCaseAll: (NSString *)userString{
    NSString * currentString = [userString lowercaseString];
    return currentString;
}

//-(NSNumber *)numberize: (NSString *) userString{
//    
//    
//    
//}
-(NSString *)Canadianize: (NSString *)userString{
    NSString *currentString = [userString stringByAppendingString:@", eh?"];
    return currentString;
}

-(void)respond : (NSString *)userString{
    NSUInteger index = [userString length] - 1;
    
   NSString *lastCharacter = [userString stringAtIndex: index];
    
    if ([lastCharacter isEqualToString:@"?"]) {
        NSLog(@" I dont know");
    }
    else if ([lastCharacter isEqualToString:@"!"]){
        NSLog(@" Whoa, Calm down!");
    }
    
    }



@end
