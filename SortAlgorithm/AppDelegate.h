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
//    NSMutableArray *empty;
}
-(IBAction)gerrandarray:(id)sender;
-(IBAction)redfromfile:(id)sender;
-(void)quicksort:(NSMutableArray*)array;
-(void)bubblesort:(NSMutableArray*)array;
-(void)sleepsort:(NSMutableArray*)array;
-(NSMutableArray*)cpyarray:(NSMutableArray*)array from:(int)min to:(int)max;
-(void)BucketSort:(NSMutableArray *)array;
-(void)SleepSort:(NSMutableArray *)array;
-(void)RadixSprt:(NSMutableArray *)array;//基数排序
-(void)PigeonholeSort:(NSMutableArray *)array;//鸽巢排序
-(void)MergeSort:(NSMutableArray *)array;//归并排序
-(void)SelectSort:(NSMutableArray *)array;//选择排序
-(void)CocktailSort:(NSMutableArray *)array;//鸡尾酒排序
-(void)ShellSort:(NSMutableArray *)array;//希尔排序
-(void)HeapSort:(NSMutableArray *)array;//堆排序
-(void)GnomeSort:(NSMutableArray *)array;//地精排序
-(void)OddevenSort:(NSMutableArray *)array;//奇偶排序
-(void)CombSort:(NSMutableArray *)array;//梳排序
-(void)PatientSort:(NSMutableArray *)array;//耐心排序
-(void)BeadSort:(NSMutableArray *)array;//珠排序
-(void)CountSort:(NSMutableArray *)array;//计数排序

@end