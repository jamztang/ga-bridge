Google Analytics Bridge
=======================

This helper class bridges the event tracking from your app to the web version of google analytics.
This will let you use Google Analytics on your OSX application.

    // Initialize GoogleAnalyticsBridge
    NSString *trackerID = @"UA-XXXXXX-Y";
    self.gan = [[GoogleAnalyticsBridge alloc] initWithTrackerID:trackerID];
    
    [self.gan trackView:@"applicationDidFinishLaunching"];

### Installation

Drag `Classes/GoogleAnalyticsBridge.*` into your repository.

### Something you should know

The bridging make use of the same repo's project github page. If you're trying to
fork your repository, you can update the trackers pageViewURL accordingly.

    self.GATrack.pageViewURL = @"yourawesomerepo.github.io/ga-bridge/pageview"


### Issues

- I've no luck trying to see real time events in Google Analytics. I may be implementing it wrong unless that's some issues on Google Analytics side.
- Not sure if app versions and OS versions is automatically delivered without using Google Analytics app SDK.
