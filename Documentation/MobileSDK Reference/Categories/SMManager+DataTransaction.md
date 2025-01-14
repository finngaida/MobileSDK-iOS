# SMManager(DataTransaction) Category Reference

**Declared in** SMManager+DataTransaction.h  

## Overview

This category will help you to retrieve or send specific information to the selligent platform.

## Tasks

### 

[&ndash;&nbsp;sendDeviceInfo](#/api/name/sendDeviceInfo)  

[&ndash;&nbsp;sendDeviceInfo:](#/api/name/sendDeviceInfo:)  

<a title="Instance Methods" name="instance_methods"></a>
## Instance Methods

<a name="/api/name/sendDeviceInfo" title="sendDeviceInfo"></a>
### sendDeviceInfo

Deprecated method

<code>- (void)sendDeviceInfo</code>

#### Discussion
In order to send device informations to the back-end you can use

<strong>Warning:</strong> Deprecated method

#### Declared In
* `SMManager+DataTransaction.h`

<a name="/api/name/sendDeviceInfo:" title="sendDeviceInfo:"></a>
### sendDeviceInfo:

This method allow you to send an event with pre-defined devices informations to the back-end

<code>- (void)sendDeviceInfo:(SMDeviceInfos *_Nullable)*deviceInfos*</code>

#### Parameters

*deviceInfos*  
&nbsp;&nbsp;&nbsp;<a href="../Classes/SMDeviceInfos.md">SMDeviceInfos</a> object  

#### Discussion
The informations to be sent will be set in a <a href="../Classes/SMDeviceInfos.md">SMDeviceInfos</a> object. Each property of the created object will be a data that will be provided to the back-end. For additional informations you can refer to SMDevicesInfos.
This call can be done at any time  after starting the library and if the properties of <a href="../Classes/SMDeviceInfos.md">SMDeviceInfos</a> object has not changed from a previous call, the event will not be sent to avoid platform unnecessarily overload.

#### See Also

* <code><a href="../Classes/SMDeviceInfos.md">SMDeviceInfos</a></code>

#### Declared In
* `SMManager+DataTransaction.h`

