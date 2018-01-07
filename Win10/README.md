## Setup Windows 10 for Ruby Development

#### Package Management: Chocolatey
Chocolatey is a powerful package manager for Windows, working sort of like apt-get or homebrew. Let's get that first. Fire up CMD.exe as Administrator and run:

```
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
```

#### Install Ruby 2.2.1

```
choco install ruby --version 2.2.1
```

##### Update RubyGems

http://guides.rubygems.org/ssl-certificate-update/#installing-using-update-packages

##### Install Ruby DevKit

```
cinst ruby2.devkit
```

Open C:/tools/DevKit2/config.yml file in your favorite editor, simply add a line below the
triple hyphens with the absolute path to the Ruby root directory.

```
---
- C:/tools/ruby22
```

You need to initialize the DevKit and bind it to your Ruby installation. Open your favorite command line tool and navigate to the folder you extracted the DevKit into.

```
cd tools/DevKit2
```

then type

```
ruby dk.rb install
```


####  Download and Install Uru (Ruby version manager on Windows, rbenv like on *nix)

https://bitbucket.org/jonforums/uru/wiki/Chocolatey

```
uru admin add c:/tools/ruby22/bin
```

then

```
uru ls
```
switch to ruby 2.2.1

```
uru 221p85
```

type

```
ruby -v
```

####  Install Ruby 2.4.2.2

```
choco install ruby --version 2.4.2.2
```

```
uru admin add c:/tools/ruby24/bin
```

then

```
uru ls
```
switch to ruby 2.4.2.2

```
uru 242p198
```

No need to install or configure DevKit anymore.(Only Ruby >= 2.4) Instead we need to install
MSYS2 libraries and toolchain.

Info : https://rubyinstaller.org/2017/05/25/rubyinstaller-2.4.1-1-released.html

Info 2: https://github.com/oneclick/rubyinstaller2/blob/master/CHANGELOG.md

Info 3: https://rubyinstaller.org/add-ons/devkit.html

No need to Update RubyGems

type

```
ridk install
```

type 1,2,3 then enter


#### Installing PhantomJS (Optional)

* Navigate to http://phantomjs.org/download.html
* Under the Windows section, click on the download link zip file
* Right click on the downloaded phantomJs zip file to Extract All
* Copy all the contents located in phantomjs-X.X.X-windows
* On your drive, create a new directory structure C:\ \PhantomJs\bin\phantomjs
* Paste the contents on the extracted phantomjs-X.X.X-windows directory
* Copy bin\phantomjs.exe to C:\ \PhantomJs\bin\phantomjs
* Copy the path of the phantomjs directory (C:\ \PhantomJs\bin\phantomjs)
* Right click on my computer and select Properties
* Select Advanced system settings
* Click on the Environment Variables.. button
* Under the User Variables section, find the Path variable
* Click on the Edit.. button
* Click on the New.. button
* At the end of the line, add phantomjs path

then type

```
refreshenv
where phantomjs
```

