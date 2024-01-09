#import <UIKit/UIKit.h>

%hook UILabel

- (void)setText:(NSString *)text {
    %log;
    if ([text containsString:@"Confidential & Proprietary, Call"]) {
        %orig(@"");
    } else {
        %orig(text);
    }
}

%end

