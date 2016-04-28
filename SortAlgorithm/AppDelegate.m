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
//    empty=[[NSMutableArray alloc]init];
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
//    [self bubblesort:[self cpyarray:array]];
    array=[self cpyarray:array from:0 to:[array count]-1];
    [self sleepsort:array];
    sleep(15);
    for (int i=0; i<20; i++) {
        NSLog(@"%@",[array objectAtIndex:i]);
    }
}
-(IBAction)redfromfile:(id)sender{
    
}
-(NSMutableArray *)cpyarray:(NSMutableArray *)array from:(int)min to:(int)max{
    NSMutableArray *tmp=[[NSMutableArray alloc]init];
    for(int i=min;i<=max;i++){
        [tmp addObject:[array objectAtIndex:i]];
    }
    return tmp;
}
-(void)quicksort:(NSMutableArray*)array{ //to be done
    NSMutableArray *tmp=[self cpyarray:array from:0 to:[array count]-1];
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
    if ([[tmp objectAtIndex:left]intValue]<pvio) {
        [tmp exchangeObjectAtIndex:0 withObjectAtIndex:left];
    }
    for (int i=0; i<[tmp count]; i++) {
        NSLog(@"%d : %@",i,[tmp objectAtIndex:i]);
    }
    if(left>=2){
        [self quicksort:[self cpyarray:tmp from:0 to:left]];
    }
    if(right-left>=3){
        [self quicksort:[self cpyarray:tmp from:left to:right-1]];
    }
    for (int i=0; i<[tmp count]; i++) {
        NSLog(@"out %d : %@",i,[tmp objectAtIndex:i]);
    }
    return;
}
-(void)bubblesort:(NSMutableArray*)array{ //done
    NSMutableArray *tmp=[self cpyarray:array from:0 to:[array count]-1];
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
-(void)sleepsort:(NSMutableArray*)array{
    NSMutableArray *tmp=[self cpyarray:array from:0 to:[array count]-1];
    int counter=[tmp count];
    NSMutableArray *empty=[[NSMutableArray alloc]init];
    for(int i=0;i<counter;i++){
        NSNumber *a=[tmp objectAtIndex:i];
        NSThread *nstd=[[NSThread alloc]initWithTarget:self selector:@selector(slpsub: obj:) object:(array,a)];
        [nstd start];
    }
}
-(void)slpsub:(NSMutableArray *)array obj:(NSNumber*)time{
    sleep([time integerValue]);
    [array addObject:[NSNumber numberWithInt:time]];
    NSLog(@"%@",time);
}
-(void)BucketSort:(NSMutableArray *)array{
}
-(void)RadixSprt:(NSMutableArray *)array{//基数排序
}
-(void)PigeonholeSort:(NSMutableArray *)array{//鸽巢排序
}
-(void)MergeSort:(NSMutableArray *)array{//归并排序
}
-(void)SelectSort:(NSMutableArray *)array{//选择排序
}
-(void)CocktailSort:(NSMutableArray *)array{//鸡尾酒排序
}
-(void)ShellSort:(NSMutableArray *)array{//希尔排序
}
-(void)HeapSort:(NSMutableArray *)array{//堆排序
}
-(void)GnomeSort:(NSMutableArray *)array{//地精排序
}
-(void)OddevenSort:(NSMutableArray *)array{//奇偶排序
}
-(void)CombSort:(NSMutableArray *)array{//梳排序
}
-(void)PatientSort:(NSMutableArray *)array{//耐心排序
}
-(void)BeadSort:(NSMutableArray *)array{//珠排序
}
-(void)CountSort:(NSMutableArray *)array{//计数排序
}
@end