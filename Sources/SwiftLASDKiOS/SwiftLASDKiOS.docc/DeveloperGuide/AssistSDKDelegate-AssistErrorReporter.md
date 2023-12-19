# AssistSDKDelegate/AssistErrorReporter

## Error Reporting

Now we have 2 different delegates that you can conform to depending on whether or not you are using *Objective-C* or *Swift*.

For Swift please use the *AssistErrorReporter* protocol with it's method

```swift 
      func assistSDKDidEncounterError(_ error: LASDKErrors) async
```

For Objective-C please use the *AssistNSErrorReporter* protocol with it's method
```objective-c
     - (void) assistSDKDidEncounterErrorWith:(NSError *)nserror
```

When conforming to *AssistErrorReporter* you will have a swift enum called `LASDKErrors` available to you, in order to switch on the different errors that may be present. 

When conforming to *AssistNSErrorReporter* the protocol method will receive an *nserror* that you will be able to switch on the *NSError* code in order to get the list of `ASDKErrorCode`s.

A reported error may have its code attribute set to one of the enum case provided in the supplied `LASDKErrors` or `ASDKErrorCode` enums. See the <doc:Error-Codes> section.

Swift
```swift
@objc func cobrowseActiveDidChange(to active: Bool)
```

Objective-C
```objective-c
  - cobrowseActiveDidChangeTo: (BOOL) active
```

Implement this method to receive notification when co-browsing becomes active or inactive. The active parameter is YES if co-browsing has started, and NO if it has stopped. You could use this to display something other than the default indication in the user interface.

Swift
```swift
@objc func supportCallDidEnd()
```

Objective-C
```objective-c
  - supportCallDidEnd
```

Implement this method to receive notification of when the support call ends, either by the application calling endSupport, or the agent hanging up the call.. The callback is triggered only when an FCSDK support call is made; it does not occur in co-browse only mode. The callback has no parameters.

Add this delegate using the AssistSDK addDelegate method.

Your application will probably want to adopt this delegate, at least for error reporting.
