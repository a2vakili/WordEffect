//
//  main.m
//  Word Effects
//
//  Created by Arsalan Vakili on 2015-08-04.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StringOperations.h"




int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        while (true) {
            NSLog(@"Please tell us which operation would you like to do?");
            int userNumber;
            NSLog(@" press 1 for upper case, press 2 for lower case, press 3 for numberize, press 4 for canadianze, press 5 for respond, press 6 for De-space it");
            
            
            
            char inputChars[255];
            NSLog(@"Input as string:");
            fgets(inputChars, 255, stdin);
            
            NSLog(@"Your string is %s\n",inputChars);
            
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            
            //  NSLog(@"Input was %@", inputString);
            
            StringOperations *string = [[StringOperations alloc]init];
            NSString *upperCase = [string upperCaseAll:inputString];
            NSLog(@"%@", upperCase);
            NSString *lowerCase = [string lowerCaseAll:inputString];
            NSLog(@"%@",lowerCase);
            NSString *candanize = [string Canadianize:inputString];
            NSLog(@"%@",candanize);
            
        }
   
        
    }
    return 0;
}


