#import <UIKit/UIKit.h>

%hook UILabel

- (void)setText:(NSString *)text {
    %log;
    if ([text isEqualToString:@"Confidential & Proprietary, Call +1 877-595-1125"]) {
        %orig(@"");
    } else {
        %orig(text);
    }
}

%end

