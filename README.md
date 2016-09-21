# appodeal-air-plugin-ios-demo
IOS demo project with appodeal plugin

To launch demo project in Flash builder you should download Appodeal ANE extension. 
When it's done go to the project properties and click on "ActionScript Build Path". Choose "Native extension" tab and add downloaded extension.

<img src="https://i.gyazo.com/0895f5ca7021800f95089230fb95eee8.png"/>

Then press OK to apply changes. 

After that go to project properties again, choose "ActionScript Build Packaging" property, choose "Apple IOS" and go to "Native extensions" tab.
If "Appodeal.ane" has red marker then click on the package to add extension to IOS build packaging.

<img src="https://i.gyazo.com/3b281cad0d6415dd7d2028194a4774c8.png"/>

<img src="https://i.gyazo.com/135e3717f0941926236bbec8dc948639.png"/>

And now you can launch project. Make sure you didn't forget to add provisioning profile and certificates for successful debug on Apple devices
