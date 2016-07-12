# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /home/prakhar/Android/Sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:
-dontwarn org.apache.http.**
-dontwarn android.net.http.AndroidHttpClient
-dontwarn com.google.android.gms.**
-dontwarn com.android.volley.toolbox.**
-dontwarn android.support.v4.**
-dontwarn com.squareup.**
-dontwarn okio.**

# Gson uses generic type information stored in a class file when working with fields.
-keepattributes Signature

# Gson specific classes
-keep class sun.misc.Unsafe { *; }
-keep class com.google.gson.stream.** { *; }

# Application classes that will be serialized/deserialized over Gson
-keep class com.flipkart.flipkartquickapp.data.** { *; }
-keep class com.squareup.okhttp.** { *; }
-keep interface com.squareup.okhttp.** { *; }

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
-keepclassmembers class fqcn.of.javascript.interface.for.webview {
   public *;
}

-keepclassmembers class com.flipkart.flipkartquickapp.web.QuickChromeClient {
  public *;
}

-keepclassmembers class com.flipkart.flipkartquickapp.web.QuickWebUtilsInterface {
  public *;
}