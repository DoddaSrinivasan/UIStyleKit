KSUIKit - Enhanced UIKit for managing fonts and colours
===================

iOS Storyboard (or Interface Builder) is an effective way of developing UI for the apps. Storyboard provides ways to change colour and fonts of UIComponents. Wow, thats really wonderful.

But since the font and colour of each component is hardcoded in storyboard, its really time consuming and a tedious job to change the font or colour schema through out the app.

Say about 50 screens of the app were build using the following

#### Font - Roboto
#### Color Schema - ![#387ef5](https://placehold.it/15/387ef5/000000?text=+)![#ffc900](https://placehold.it/15/ffc900/000000?text=+)![#444444](https://placehold.it/15/444444/000000?text=+)

And now the font and colour schema changes as follows

#### Font - Palatino
#### Color Schema - ![#ef473a](https://placehold.it/15/ef473a/000000?text=+)![#33cd5f](https://placehold.it/15/33cd5f/000000?text=+)![#444444](https://placehold.it/15/444444/000000?text=+)

Now you have to go revisit all the 50 screens Storyboard and change the font and colour of each component. This sounds really a shit job to be done. And also this isn't done. What if they want to revert back at a later point (Versioning helps but you are dealing with Storyboard, so forget about it).

Wouldn't it be great if we could configure something like a Theme at one single place. Yes thats what this library provides.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

KSUIKit is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "KSUIKit"
```

## Author

srinivasan.munna@gmail.com, srinivasan.munna@gmail.com

## License

KSUIKit is available under the MIT license. See the LICENSE file for more info.
