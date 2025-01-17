# SMManager(RemoteNotification) Category Reference

**Declared in** SMManager+RemoteNotification.h  

## Overview

This category contains the basic step-by-step implementation to get you started.
Make sure to read the category <a href="../Categories/SMManager+SilentPush.md">SMManager(SilentPush)</a> to learn more about background-remote-notification.

<h2>Handling Remote Notifications</h2>

In order to receive remote-notification from the back-end,  all the following methods must be included in you application&rsquo;s delegate:

<ul>
<li><a href="#/api/name/didRegisterForRemoteNotificationsWithDeviceToken:">didRegisterForRemoteNotificationsWithDeviceToken:</a></li>
<li><a href="#/api/name/didRegisterUserNotificationSettings:">didRegisterUserNotificationSettings:</a></li>
<li><a href="#/api/name/didFailToRegisterForRemoteNotificationsWithError:">didFailToRegisterForRemoteNotificationsWithError:</a></li>
<li><a href="#/api/name/didReceiveRemoteNotification:">didReceiveRemoteNotification:</a></li>
</ul>

Finally, make sure to call <a href="#/api/name/registerForRemoteNotification">registerForRemoteNotification</a> according to your application&rsquo;s need.

<h2>Receiving Remote Notifications</h2>

When a remote-notification is received, the library will automatically display a custom UIViewController.
Should you want to prevent this behaviour, feel free to configure the <a href="../Classes/SMManagerSetting.md">SMManagerSetting</a> accordingly before starting the <a href="../Classes/SMManager.md">SMManager</a>.

Before displaying the remote-notification&rsquo;s UIVIewController, the library will broadcast an NSNotification offering the application a chance to pause any ongoing heavy task.
The same principle is applied before dismissing the UIVIewController providing the application the opportunity to start again the paused heavy-task.

Finally, should you want to know when the user interact with UIViewController&rsquo;s control, an NSNotification is also posted providing information about the selected element.
For additionnal information about NSNotification processing and handling, please check SMNSNotification

<h2>Displaying notification</h2>

The application can display any notification based on its ID using the API <a href="#/api/name/displayNotificationID:">displayNotificationID:</a>
These IDs can be retrieved from broadcasted NSNotification.
(Please read SMNSNotification for additional information).

A convenient method is provided to display the last received remote-notification using <a href="#/api/name/displayLastReceivedRemotePushNotification">displayLastReceivedRemotePushNotification</a>

## Tasks

### 

[&ndash;&nbsp;registerForRemoteNotification](#/api/name/registerForRemoteNotification)  

[&ndash;&nbsp;registerForProvisionalRemoteNotification](#/api/name/registerForProvisionalRemoteNotification)  

[&ndash;&nbsp;unregisterForRemoteNotification](#/api/name/unregisterForRemoteNotification)  

[&ndash;&nbsp;enableRemoteNotification](#/api/name/enableRemoteNotification)  

[&ndash;&nbsp;disableRemoteNotification](#/api/name/disableRemoteNotification)  

[&ndash;&nbsp;didRegisterForRemoteNotificationsWithDeviceToken:](#/api/name/didRegisterForRemoteNotificationsWithDeviceToken:)  

[&ndash;&nbsp;didRegisterUserNotificationSettings:](#/api/name/didRegisterUserNotificationSettings:)  

[&ndash;&nbsp;didRegisterUserNotificationSettings](#/api/name/didRegisterUserNotificationSettings)  

[&ndash;&nbsp;didFailToRegisterForRemoteNotificationsWithError:](#/api/name/didFailToRegisterForRemoteNotificationsWithError:)  

[&ndash;&nbsp;didReceiveRemoteNotification:](#/api/name/didReceiveRemoteNotification:)  

[&ndash;&nbsp;displayNotificationID:](#/api/name/displayNotificationID:)  

[&ndash;&nbsp;displayLastReceivedRemotePushNotification](#/api/name/displayLastReceivedRemotePushNotification)  

[&ndash;&nbsp;retrieveLastRemotePushNotification](#/api/name/retrieveLastRemotePushNotification)  

[&ndash;&nbsp;setNotificationMessageAsSeen:](#/api/name/setNotificationMessageAsSeen:)  

<a title="Instance Methods" name="instance_methods"></a>
## Instance Methods

<a name="/api/name/didFailToRegisterForRemoteNotificationsWithError:" title="didFailToRegisterForRemoteNotificationsWithError:"></a>
### didFailToRegisterForRemoteNotificationsWithError:

Mandatory API to be included in application:didFailToRegisterForRemoteNotificationsWithError

<code>- (void)didFailToRegisterForRemoteNotificationsWithError:(NSError *_Nonnull)*error*</code>

#### Parameters

*error*  
&nbsp;&nbsp;&nbsp;An NSError object that encapsulates information why registration did not succeed. Provided by the delegate call  

#### Discussion
Called when the user has deactivated remote-notification or if any other error happen.

#### Declared In
* `SMManager+RemoteNotification.h`

<a name="/api/name/didReceiveRemoteNotification:" title="didReceiveRemoteNotification:"></a>
### didReceiveRemoteNotification:

Mandatory API to be included in application:didReceiveRemoteNotification
Handle and display remote notification when application is in foreground

<code>- (void)didReceiveRemoteNotification:(NSDictionary *_Nonnull)*userInfo*</code>

#### Parameters

*userInfo*  
&nbsp;&nbsp;&nbsp;An NSDictionary that contains information related to the remote notification. Provided by the delegate call  

#### Discussion
This method is not mandatory anymore if you implement didReceiveRemoteNotification:fetchCompletionHandler:
For additional information about background-remote-notifications, please check <a href="../Categories/SMManager+SilentPush.md">SMManager(SilentPush)</a> for further details.

#### Declared In
* `SMManager+RemoteNotification.h`

<a name="/api/name/didRegisterForRemoteNotificationsWithDeviceToken:" title="didRegisterForRemoteNotificationsWithDeviceToken:"></a>
### didRegisterForRemoteNotificationsWithDeviceToken:

Mandatory API to be included in application:didRegisterForRemoteNotificationsWithDeviceToken:

<code>- (void)didRegisterForRemoteNotificationsWithDeviceToken:(NSData *_Nonnull)*deviceToken*</code>

#### Parameters

*deviceToken*  
&nbsp;&nbsp;&nbsp;A string that identifies the device to APNs.  

#### Discussion
This method is mandatory to handle properly all notifications

#### Declared In
* `SMManager+RemoteNotification.h`

<a name="/api/name/didRegisterUserNotificationSettings" title="didRegisterUserNotificationSettings"></a>
### didRegisterUserNotificationSettings

Mandatory API to be included in application:didRegisterUserNotificationSettings

<code>- (void)didRegisterUserNotificationSettings</code>

#### Discussion
This method confirms the type of notification the user would like to receive.

#### Declared In
* `SMManager+RemoteNotification.h`

<a name="/api/name/didRegisterUserNotificationSettings:" title="didRegisterUserNotificationSettings:"></a>
### didRegisterUserNotificationSettings:

Mandatory API to be included in application:<a href="#/api/name/didRegisterUserNotificationSettings">didRegisterUserNotificationSettings</a>

<code>- (void)didRegisterUserNotificationSettings:(UIUserNotificationSettings *_Nonnull)*notificationSettings*</code>

#### Parameters

*notificationSettings*  
&nbsp;&nbsp;&nbsp;The user notification settings that are available to your app.  

#### Discussion
This method confirms the type of notification the user would like to receive.

<strong>Warning:</strong> Deprecated method - replaced by  <a href="#/api/name/didRegisterUserNotificationSettings">didRegisterUserNotificationSettings</a>;

#### Declared In
* `SMManager+RemoteNotification.h`

<a name="/api/name/disableRemoteNotification" title="disableRemoteNotification"></a>
### disableRemoteNotification

Use this API to disable the selligent notification on current device. In other words, the device will not receive any remote-notification from selligent backend server anymore.

<code>- (void)disableRemoteNotification</code>

#### Discussion


<strong>Warning:</strong> This does NOT call unregisterForRemoteNotifications on the sharedApplication instance.
Therefore, the application can still receive third-party remote-notifications.

#### Declared In
* `SMManager+RemoteNotification.h`

<a name="/api/name/displayLastReceivedRemotePushNotification" title="displayLastReceivedRemotePushNotification"></a>
### displayLastReceivedRemotePushNotification

Retrieve and display the last known notification.

<code>- (void)displayLastReceivedRemotePushNotification</code>

#### Discussion
Basically, This API is a helpher which combine both <a href="#/api/name/retrieveLastRemotePushNotification">retrieveLastRemotePushNotification</a> and <a href="#/api/name/displayNotificationID:">displayNotificationID:</a>
It only focuses on remote-notification. Not on IAM.
At this stage, only the very last remote-notification can be recovered, previous ones are automaticly overriden.
To learn more about this API, please read documentation in <a href="../Classes/SMManagerSetting.md">SMManagerSetting</a>, more particularly <a href="../Classes/SMManagerSetting.md#/api/name/shouldDisplayRemoteNotification">[SMManagerSetting shouldDisplayRemoteNotification]</a>

#### Declared In
* `SMManager+RemoteNotification.h`

<a name="/api/name/displayNotificationID:" title="displayNotificationID:"></a>
### displayNotificationID:

Display a notification based on its ID

<code>- (void)displayNotificationID:(NSString *_Nullable)*idNotification*</code>

#### Parameters

*idNotification*  
&nbsp;&nbsp;&nbsp;NSString instance referencing the unique notification&rsquo;s ID  

#### Discussion
Basically, the application may store notification&rsquo;s IDs and then display them according to its need.
In this context, the word &ldquo;notification&rdquo; stands for either a remote-notification or an InAppMessage.
This feature has initially been added to allow applications to display remote-notifications at any time (not directly when the push is received).
Then, it has been extended to display In-App-Messages. For additional information about IAM, please read <a href="../Categories/SMManager+InAppMessage.md">SMManager(InAppMessage)</a>.

#### Declared In
* `SMManager+RemoteNotification.h`

<a name="/api/name/enableRemoteNotification" title="enableRemoteNotification"></a>
### enableRemoteNotification

Use this API to enable the selligent notification on current device. In other words, the device will receive any remote-notification from selligent backend server.

<code>- (void)enableRemoteNotification</code>

#### Discussion


<strong>Warning:</strong> This is independent from <a href="#/api/name/registerForRemoteNotification">registerForRemoteNotification</a> and from notification settings for the app on device level.

#### Declared In
* `SMManager+RemoteNotification.h`

<a name="/api/name/registerForProvisionalRemoteNotification" title="registerForProvisionalRemoteNotification"></a>
### registerForProvisionalRemoteNotification

Optional method which allows getting a provisional push token <a href="https://developer.apple.com/documentation/usernotifications/asking_permission_to_use_notifications">more info</a>

<code>- (void)registerForProvisionalRemoteNotification</code>

#### Discussion
This API will automatically obtain a push token without asking the user, triggering <a href="#/api/name/registerForRemoteNotification">registerForRemoteNotification</a> afterwards will still present the prompt to the user.

<strong>Warning:</strong> iOS 12+ method, do only implement this method when you have a clear strategy about how to engage with these type of users.

#### Declared In
* `SMManager+RemoteNotification.h`

<a name="/api/name/registerForRemoteNotification" title="registerForRemoteNotification"></a>
### registerForRemoteNotification

Mandatory method which allows notification registration

<code>- (void)registerForRemoteNotification</code>

#### Discussion
This API will display a dialog asking user&rsquo;s permission for remote-notifications (when app is launched the very 1st time).
Often, this call is added right after startWithLaunchOptions:Setting:
However, you may call this API later in your code according to your application need. Just remember that this call is mandatory to receive remote-notifications

<strong>Warning:</strong> If your device has already been registered to remote-notifications by your application or a third-party framework, then this call is not mandatory.

#### Declared In
* `SMManager+RemoteNotification.h`

<a name="/api/name/retrieveLastRemotePushNotification" title="retrieveLastRemotePushNotification"></a>
### retrieveLastRemotePushNotification

Retrieve information about the last received remote-notification

<code>- (NSDictionary *_Nullable)retrieveLastRemotePushNotification</code>

#### Return Value
NSDictionary instance containing basic information about the last push, nil if no push was received so far.

#### Discussion
This is a convinient method to quickly retrieve the last remote-notificaiton known by the device.
At this stage, only the very last remote-notification can be recovered, previous ones are automaticly overriden.
To learn more about this API, please read documentation in <a href="../Classes/SMManagerSetting.md">SMManagerSetting</a>, more particularly <a href="../Classes/SMManagerSetting.md#/api/name/shouldDisplayRemoteNotification">[SMManagerSetting shouldDisplayRemoteNotification]</a>

#### Declared In
* `SMManager+RemoteNotification.h`

<a name="/api/name/setNotificationMessageAsSeen:" title="setNotificationMessageAsSeen:"></a>
### setNotificationMessageAsSeen:

Tells to the SDK that a certain <a href="../Classes/SMNotificationMessage.md">SMNotificationMessage</a> object has been seen.
The SDK will send an opened event to the Selligent platform.

<code>- (void)setNotificationMessageAsSeen:(SMNotificationMessage *_Nullable)*notificationMessage*</code>

#### Parameters

*notificationMessage*  
&nbsp;&nbsp;&nbsp;<a href="../Classes/SMNotificationMessage.md">SMNotificationMessage</a> that needs to be marked as seen.  

#### Discussion
This is a convinient method when the behaviour when receiving a remote-notification is handled at App side
and the standard events need to be sent back to the Selligent platform.

<strong>Warning:</strong> The App will be fully responsible of possible event duplication in the Selligent platform when implementing this method,
as each execution will trigger a new event, so make sure to just trigger it once if you don&rsquo;t want this to happen.

#### See Also

* <code><a href="../Classes/SMNotificationMessage.md">SMNotificationMessage</a></code>

#### Declared In
* `SMManager+RemoteNotification.h`

<a name="/api/name/unregisterForRemoteNotification" title="unregisterForRemoteNotification"></a>
### unregisterForRemoteNotification

Use this API to unregister the current device. In other words, the device will not receive any remote-notification from our backend server anymore.

<code>- (void)unregisterForRemoteNotification</code>

#### Discussion


<strong>Warning:</strong> Deprecated method. This does NOT call unregisterForRemoteNotifications on the sharedApplication instance.
Therefore, the application can still receive third-party remote-notifications.

#### Declared In
* `SMManager+RemoteNotification.h`

