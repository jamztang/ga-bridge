/*
 * This file is part of the ga-bridge package
 * (c) Jamz Tang <jamz@jamztang.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

#import "GoogleAnalyticsBridge.h"
#import <WebKit/WebKit.h>

@implementation GoogleAnalyticsBridge

- (id)initWithTrackerID:(NSString*)trackerID {
    self = [super init];
    if (self) {
        self.webView = [[WebView alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
        self.trackerID = trackerID;

        // You only need to change this when you're forking your repository
        self.pageViewURL = @"http://jamztang.github.io/ga-bridge/pageview";
    }
    return self;
}

-(void)trackView:(NSString*)viewName
{
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@?page=%@&id=%@",self.pageViewURL, viewName, self.trackerID]];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    
    NSLog(@"GA URL: %@", url);

    [self.webView.mainFrame loadRequest:urlRequest];
}

@end
