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

-(void)numberize: (NSString *) userString{
    NSUInteger stringLength = [userString length];
   // userString = userMutableString;
    for (int i = 0 ; i < stringLength; i++) {
        int asccicode = [userString characterAtIndex:i];
        [userString stringByAppendingFormat:@"%d",asccicode];
        NSLog(@"%i",asccicode);
        }
  }
-(NSString *)canadianize: (NSString *)userString{
    NSString *currentString = [userString stringByAppendingString:@", eh?"];
    return currentString;
}

-(void)respond :(NSString *)userString{
  
    if ([userString hasSuffix:@"?\n"]) {
        NSLog(@" I dont know");
    }
    
    else if ([userString hasSuffix:@"!\n"]){
        NSLog(@" Whoa, Calm down!");
    }
    
}

-(NSString *)replaceSpace: (NSString *)userString{
    
    NSString *currentString = [userString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
    
    return currentString;

}

-(void)wordCount:(NSString *)userString{
    
   // NSUInteger stringLength = [userString length];
    
    NSArray *stringArrays = [userString componentsSeparatedByString:@" "];
    
    NSUInteger countOfWords = [stringArrays count];
    
    NSLog(@"%lu",(unsigned long)countOfWords);
    
}


@end
