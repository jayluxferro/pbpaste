//
//  main.m
//  pbcopy
//
//  Created by Jay on 18/09/2021.
//

#import <UIKit/UIKit.h>

int main(int argc, char * argv[]) {
    @autoreleasepool {
        if(argc != 2){
            printf("Usage: %s <string_to_copy_to_the_clipboard>\n", argv[0]);
            return 1;
        }
        UIPasteboard *pb = [UIPasteboard generalPasteboard];
        NSString *pbItem = [NSString stringWithFormat:@"%s", argv[1]];
        [pb setString:pbItem];
    }
    return 0;
}
