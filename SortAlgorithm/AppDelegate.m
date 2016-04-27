//
//  AppDelegate.m
//  SortAlgorithm
//
//  Created by FoLeakey on 16/4/27.
//  Copyright © 2016年 FoLeakey. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}
-(IBAction)gerrandarray:(id)sender{
    int cot=[contxt integerValue];
    int max=[maxtxt integerValue];
    NSMutableArray *array=[[NSMutableArray alloc]init];
    for (int i=0; i<cot; i++) {
        [array addObject:[NSNumber numberWithInt:((rand()%max)+1)]];
//        NSLog(@"%@",[array objectAtIndex:i]);
    }
//    [self quicksort:[self cpyarray:array]];
    [self bubblesort:[self cpyarray:array]];
}
-(IBAction)redfromfile:(id)sender{
    
}
-(NSMutableArray*)cpyarray:(NSMutableArray*)array{
    NSMutableArray *tmp=[NSMutableArray arrayWithArray:array];
    return tmp;
}
-(void)quicksort:(NSMutableArray*)array{ //to be done
    NSMutableArray *tmp=[self cpyarray:array];
    int right=[tmp count]-1,left=1;
    int pvio=[[tmp objectAtIndex:0]integerValue];
    while(left!=right){
        if([[tmp objectAtIndex:right]integerValue]<pvio){
            if([[tmp objectAtIndex:left]integerValue]>pvio){
                [tmp exchangeObjectAtIndex:left withObjectAtIndex:right];
            }else{
                left++;
            }
            
        }else{
            right--;
        }
    }
    [tmp exchangeObjectAtIndex:0 withObjectAtIndex:left];
}
-(void)bubblesort:(NSMutableArray*)array{ //done
    NSMutableArray *tmp=[self cpyarray:array];
    int counter=[tmp count];
    for (int i=0; i<counter-1; i++) {
        for(int j=0;j<counter-1;j++){
            if([[tmp objectAtIndex:j]integerValue]>[[tmp objectAtIndex:j+1]integerValue]){
                [tmp exchangeObjectAtIndex:j withObjectAtIndex:j+1];
            }
        }
    }
    for (int i=0; i<counter; i++) {
        NSLog(@"%@",[tmp objectAtIndex:i]);
    }
}
@end