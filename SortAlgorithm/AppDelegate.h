//
//  AppDelegate.h
//  SortAlgorithm
//
//  Created by FoLeakey on 16/4/27.
//  Copyright © 2016年 FoLeakey. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>{
    IBOutlet NSButton *gerbtn,*readbtn;
    IBOutlet NSTextField *contxt,*maxtxt,*pathtxt;
}
-(IBAction)gerrandarray:(id)sender;
-(IBAction)redfromfile:(id)sender;
-(void)quicksort:(NSMutableArray*)array;
-(void)bubblesort:(NSMutableArray*)array;
-(NSMutableArray*)cpyarray:(NSMutableArray*)array;
@end