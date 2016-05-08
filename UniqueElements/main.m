//
//  main.m
//  UniqueElements


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *line = @"1,1,1,2,2,3,3,4,4";
        NSArray *componentsArray = [line componentsSeparatedByString:@","];
//        NSMutableOrderedSet *mutOrdSet = [[NSMutableOrderedSet alloc]init];
        NSMutableArray *mutComponentsArray = [[NSMutableArray alloc]initWithArray:componentsArray];
        NSMutableString *solutionString = [[NSMutableString alloc]init];
        
        // NSMutableOrderedSet not supported by codeEval
//        NSInteger i = 0;
//        for (i = 0; i < componentsArray.count; i++) {
//            [mutOrdSet addObject:[componentsArray objectAtIndex:i]];
//        }
//        
//        NSInteger k = 0;
//        for (k = 0; k < mutOrdSet.count; k++) {
//            [solutionString appendFormat:@"%@,",[mutOrdSet objectAtIndex:k]];
//        }
//        NSRange lastCommaRange = NSMakeRange(solutionString.length - 1, 1);
//        [solutionString deleteCharactersInRange:lastCommaRange];
        NSInteger i = 0;
        for (i = 0; i < componentsArray.count; i++) {
            [mutComponentsArray removeObject:[componentsArray objectAtIndex:i]];
            [mutComponentsArray addObject:[componentsArray objectAtIndex:i]];
        }
        NSInteger k = 0;
        for (k = 0; k < mutComponentsArray.count; k++) {
            [solutionString appendFormat:@"%@,",[mutComponentsArray objectAtIndex:k]];
        }
        NSRange lastCommaRange = NSMakeRange(solutionString.length - 1, 1);
        [solutionString deleteCharactersInRange:lastCommaRange];
        
        NSLog(@"\nsolutionString:%@\n\n", solutionString);
    }
    return 0;
}
