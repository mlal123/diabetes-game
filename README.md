# diabetes-game

Screenshot of the game on 3/10:
https://cloud.githubusercontent.com/assets/11747966/23805441/e5130380-058b-11e7-863e-2e534701d7b0.png

Nutrition-based game to help kids manage their diabetes by being able to identify carbs and make dishes with certain numbers of carbs.

If when building, it gives error that a swift file is not found but you see it in there:
  - Go to the project (Blue text thing that says SpriteKitGame)
  - Go to Build Phase
  - Under Compile Sources, click the plus sign and add the files that it claims is missing to this


Swift 3 is depreciated error:
  - Go to Project
  - Go to Build Settings
  - Find Swift 3@obj Inference (you can search in search bar) change that to default
  
Images:
  - to get Images to work, first go to the folder (top left area)
  - under SpriteKitGame, click the Assets.xcassets 
  - then drag images from your file to the open area where you'll see 'AppIcon, LaunchImage' etc
