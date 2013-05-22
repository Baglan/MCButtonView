# MCButtonView

This is a tiny utility class for turning UIViews into buttons.

## Installation

Add files from the 'Classes' folder to your project.

## Usage

Create a custom "button" using the visual interface builder in Xcode or by some other means and "wrap" it in MCButtonView like so:

    [MCButtonView wrapView:_buttonView block:^{
        NSLog(@"Tap!");
    }];

## License

All the code and assets are available undet the MIT license.