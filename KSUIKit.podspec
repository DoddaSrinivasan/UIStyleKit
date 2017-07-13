#
# Be sure to run `pod lib lint KSUIKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KSUIKit'
  s.version          = '0.1.1'
  s.summary          = 'Easily Configure and manage fonts and colours of UIComponents at a single place.'
  s.description      = <<-DESC
iOS Storyboard (or Interface Builder) is an effective way of developing UI for the apps. Storyboard provides ways to change colour and fonts of UIComponents. Wow, thats really wonderful.

But since the font and colour of each component is hardcoded in storyboard, its really time consuming and a tedious job to change the font or colour schema through out the app.

Say about 50 screens of the app were build using a font and color schema.

Now the designer desides to change the font and colour schema throught out hte app.

Now you have to go revisit all the 50 screens on the Storyboard and change the font and colour of each component. This sounds really a shit job to be done. And also this isn't done. What if they want to revert back at a later point (Versioning helps but you are dealing with Storyboard, so forget about it).

You could make use of UIAppearance. For example you could change the font and color of a button using UIAppearance, but this will change all the buttons unless overridden (But for overridden button this again seems like the above problem).

Wouldn't it be great if we could still set these properties in storyboard but changing the font or theme doesnt need to change in storyboard. Sound's real needy right. Yeah, so thats what this library does.
                       DESC

  s.homepage         = 'https://github.com/DoddaSrinivasan/KSUIKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'srinivasan.munna@gmail.com' => 'srinivasan.munna@gmail.com' }
  s.source           = { :git => 'https://github.com/DoddaSrinivasan/KSUIKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://www.facebook.com/srinivasan.munna'

  s.ios.deployment_target = '8.0'

  s.source_files = 'KSUIKit/Classes/**/*'
  s.frameworks = 'UIKit'
end
