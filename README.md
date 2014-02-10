# Compare with Araxis Merge in RubyMine

This recipe was created for those who use [RubyMine](http://www.jetbrains.com/ruby/) for code development, [Subversion](http://subversion.apache.org/) for source control and [Araxis Merge](http://www.araxis.com/merge/index.en) for code comparison. It helps to merge the code between local branches quickly and easily.

For example, let's say you have the following directory structure:

    dev
      |- project1
      |- project1_branch
      |- project2
      |- project2_branch

Using this recipe you can select any file or folder in `project1` in RubyMine, then use the hotkey to open the Araxis Merge window with the comparison of this file between `project1` and `project1_branch`.

### Configuration

  1. Put `compare_with_araxis_merge.rb` script in user's home directory. For example, `/Users/eugene`.
  2. Configure your projects and branch name in the script:
    * Specify the name of your branch in `BRANCH` constant.
    * Specify the list of projects in `PROJECTS` constant.
  3. Add external tool into RubyMine: 
    * Select RubyMine -> Preferences -> IDE Settings -> External Tools -> Add.
    * Setup fields as on following screenshot
      ![ScreenShot](https://raw2.github.com/enaruta/rubymine-compare-with-araxis-merge/master/screenshot.png)
  4. Add hotkey for added tool:
    * Select RubyMine -> Preferences -> IDE Settings -> Keymap -> External Tools -> Compare with Araxis Merge.
    * Right click on Compare with Araxis Merge -> Add Keyboard Shortcut and enter a hotkey. For example, `Shift + Command + W`.

### Usage

Select any file or folder anywhere in RubyMine and click Tools -> Compare with Araxis Merge. Or press the hotkey `Shift + Command + W`.

### Requirements

  * RubyMine.
  * Araxis Merge.

### Author

Done by [Eugene Naruta](https://github.com/enaruta).
