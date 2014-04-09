vim-howdoi
==========

This is a simple vim plugin I wrote during my internship over the summer,
My friends Blake and Laurent also wrote their own implementations of this plugin.

Laurent's seems to be the most popular, and will be the one that I will be making
contributions to in the future. You can check it out here:

https://github.com/laurentgoudet/vim-howdoi

The implementation I have written is purely in vimscript and does not require
vim to be compiled with python support.

------------------------------------------------------------

Search StackOverflow and paste code snippets, all within vim

This plugin is based on [howdoi](https://github.com/gleitz/howdoi).
Please make sure it is installed before using the plugin.

To use:

1. Type statement on new line e.g. 'parse csv file in php'
2. Run :Howdoi
