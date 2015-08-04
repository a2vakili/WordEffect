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
            //take usuer input
            
            //save input to varible
            NSLog(@"Please tell us which operation would you like to do?");
            char userNumber[255];
            NSLog(@" press 1 for upper case \n press 2 for lower case\n  press 3 for numberize\n press 4 for canadianze\n press 5 for respond\n press 6 for De-space it\n press 7 for word count");
            fgets(userNumber, 255, stdin);
    
            
            NSString *userNumberString = [NSString stringWithUTF8String:userNumber];
            
            NSInteger userNumberInt = [userNumberString integerValue];
            
            
            char inputChars[255];
            NSLog(@"Input as string:");
            fgets(inputChars, 255, stdin);
           // scanf("%[^\n]s",inputChars);
            
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            
            NSString *trimmedString = [inputString stringByTrimmingCharactersInSet:
                                       [NSCharacterSet whitespaceCharacterSet]];
    
            
            StringOperations *string = [[StringOperations alloc]init];
            
            if (userNumberInt == 1) {
              
                NSString *upperCase = [string upperCaseAll:inputString];
                NSLog(@"%@", upperCase);
                }
            
            else if (userNumberInt == 2){
                NSString *lowerCase = [string lowerCaseAll:inputString];
                NSLog(@"%@",lowerCase);
                }
            else if (userNumberInt == 3){
                [string numberize:inputString];
            }
            
            else if (userNumberInt == 4){
           
            NSString *canadanize = [string canadianize:inputString];
            NSLog(@"%@",canadanize);
            
            }
            
            else if (userNumberInt == 5){
                [string respond:trimmedString];
                }
            
            else if (userNumberInt == 6){
                NSString *deSpace = [string replaceSpace:inputString];
                NSLog(@"%@",deSpace);
            }
            else if (userNumberInt == 7){
                [string wordCount:inputString];
            }
            
    }
    return 0;
}

}
