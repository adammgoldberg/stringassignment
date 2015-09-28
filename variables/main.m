//
//  main.m
//  variables
//
//  Created by Adam Goldberg on 2015-09-28.
//  Copyright (c) 2015 Adam Goldberg. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  
    while (true) {
    
    printf("1. Uppercase\n");
    printf("2. Lowercase\n");
    printf("3. Numberize\n");
    printf("4. Canadianize\n");
    printf("5. Respond\n");
    printf("6. De-Space-It\n");
    
    char inputOption[255];
    
    printf("Please type in the number of the option you would like to choose: ");
    // limit input to max 255 characters
    fgets(inputOption, 255, stdin);
    
    // 255 unit long array of characters
    char inputChars[255];
    
    printf("Input a string: ");
    // limit input to max 255 characters
    fgets(inputChars, 255, stdin);
    
    
    // convert char array to an NSString object
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    
    // convert char array to an NSString object
    NSString *optionChoice = [NSString stringWithUTF8String:inputOption];
    
    NSString *resultString = nil;
    NSString *usableInputString = nil;
        
    NSArray *components= [inputString componentsSeparatedByString:@"\\"];
    usableInputString = components[0];
    
    if ([optionChoice isEqualToString: @"1\n"]) {
        // uppercase operation
        resultString = [inputString uppercaseString];
        NSLog(@"%@", resultString);
    }
    else if ([optionChoice isEqualToString:@"2\n"]) {
        //lowercase operation
        resultString = [inputString lowercaseString];
        NSLog(@"%@", resultString);
    }
    else if ([optionChoice isEqualToString:@"3\n"]) {
        NSLog(@"%li", [usableInputString integerValue]);
    }
    else if ([optionChoice isEqualToString:@"4\n"]) {
        //canadianize operation
        NSString *canadaString = @", eh?";
        resultString = [usableInputString stringByAppendingString:canadaString];
        NSLog(@"%@", resultString);
    }
    else if ([optionChoice isEqualToString:@"5\n"]) {
        //respond operation
        if ([inputString hasSuffix:@"?"]) {
           printf("I don't know");
        } else if ([inputString hasSuffix:@"!"]) {
            printf("Whoa, calm down!");
        } else
            printf("I can't respond unless you ask a question. Questions end with question marks.");
    }
    else if ([optionChoice isEqualToString:@"6\n"]) {
        //despace-it-operation
        resultString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
        NSLog(@"%@", resultString);
    }
    else {
        printf("Please type in the number of the operation you would like to perform\n");
    }

    

    }
    
    
    

    
    return 0;
}
