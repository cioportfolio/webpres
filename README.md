# Web-based presentations
This is a very basic setup for getting started developing web-based presentations i.e. using a browser instead of PowerPoint. This represents an Minimal Viable Product (MVP) and further work is needed to make this a viable alternative to all current uses of traditonal presentation technology.

Using the web for presentations provides a number of advantages over tools like PowerPoint:

 - Far more portable across devices, including smart TVs and wearables
 - Great delivery options such as streaming to large audiences or direct in-browser access from a web site
 - Does not depend upon expensive, proprietary technology
 - Greater automation e.g. generating presentations from data and standardised templates
 - Enables new ways to engage e.g. blurring the boundaries between presentations, web and apps e.g. slide content which changes in realtime in response to user interaction or other data.

PowerPoint use will obviously continue for some time as it is familiar to everyone. This repository is indended to allow early adopters to get started quickly.

## Getting your computer ready

> **Note:** If you are using the web development playpen you will already have this software. Skip to the next section.

You will need to install some basic utilities which you can easily find on the web. Use the links and pick the versions for your operating system (Windows or Mac).

Download and install `git` which is a utility to help keep track of software. It will also help with presentations as they effectively become software. If you have a Mac you can got to the app store and install `xcode` which includes `git` and a lot of other tools.

```
https://git-scm.com/downloads
```

Download and install `VirtualBox` which is a utility for creating a computing sandbox so that the presentation software does not interfere with your precious laptop or home computer

```
https://www.virtualbox.org/wiki/Downloads
```

Download and install `Vagrant` which is a utility which does a load of hard work to configure the presentation software for you.

```
https://www.vagrantup.com/downloads.html
```

**Optional:**

You can create your web presentations in a browser and text editor but there are some utilities which can do clever things like format your scripts, spot errors etc. Microsoft's editor is really good and works on Macs too.

```
https://code.visualstudio.com/download
```

## Using the command line
You will need to use your computers command line a little. On Windows type `cmd` into the search box to get to the command line. On Mac you can start the `terminal` app from the launcher or the applications folder. The VSCode editor has a built in terminal which you can use if you prefer.

Your favourite search engine will help you find lists of commands and explain error messages and how to fix anything that goes wrong.

## Setting up the presentation software

> **Note:** This version of the software includes NTT DATA branding. You will need to be granted permission to download it. Email richard.barton@nttdata.com.

Start up your command line and type in this command to download a copy of the playpen software:

```
git clone git://github.com/cioportfolio/nttreveal.git webpres
```

Typing `dir` (or `ls` on a Mac) will show a list of your folder and you will see a new `webpres` folder there. Move to that folder by typing:

```
cd webpres
```

Typing `dir` (or `ls`) will reveal a load of files. We will explain what these are later. For now let's get the presentation going.

Type the following command:

```
vagrant up
```

This command is **magic**! Vagrant will start up a virtual machine, download and install all the software it needs and run a presentation server. You will see a load of obscure messages scroll through your command line window. You can ignore these if everything works (and if something goes wrong the explanation will be in this log somewhere).

Once Vagrant has done its work you should see:

```
    default: Starting server
    default: Server started
```

Now go to a browser and in the address bar type:

```
localhost:8000/demo
```

You should see the title page of a NTT DATA branded presentation. 

Congratulations! The presentation server is running. Use the blue arrow at the bottom right of the screen to navigate through the demo slides.

## Basic Controls

You have already seen what `vagrant up` does.

`vagrant halt` will shutdown the sandbox so that it doesn't slow down your machine or drain the battery.

`vagrant destroy` will shutdown and delete the sandbox. You might want to do this if you mess something up and want to reset everything.

After these commands `vagrant up` will get things going again. It will know if you have halted or destroyed the sandbox and do the minimum it needs to get running again.

`vagrant ssh` will log you into the sandbox and start its command line so you can run other commands. The sandbox is actually a unix computer running inside you laptop. You can find out how to use it on the web.

# Creating your own presentations

## Step 1 - Edit `demo.ejs`

You can edit `webpres/demo.ejs` directly. If you are new to `html` you can find loads of help online. [W3Schools](https://www.w3schools.com/) or [codeacademy](https://www.codecademy.com/) are good places to start.

Start by changing some of the text of the headings and bullet points and then reload your browser to see what happens. Basic formatting uses `html` tags such as `<b>...</b>`.

The software uses [reveal.js](https://revealjs.com) to build the slides and navigate through them. The [reveal.js](https://revealjs.com) site has lots of instructions and demos of things you can do e.g. add speaker notes, include website and rich media and little tricks like zooms and overviews. As an exmple, when you are viewing the demo presentation press the `s` key or `esc` key. 

[draw.io](https://draw.io) is aslo included to create diagrams and visuals including things that, even, PowerPoint can't do. A very simple diagram is included in the demo which you can edit.

You may notice some special `<%- include... %>` tag in the demo file. This is an extension of `html` called `ejs` which lets you put repeated content in a macro and re-use it in your presentations. You can learn about ejs at [ejs.co](https://ejs.co/)

If you want to share the presentation with other people type the following into your browser address bar.

```
localhost:8000/export/demo
```

This will generate a `zip` file. Your audience can extract the files, double click on the `html` file and view the presentation.

## Step 2 - Generate new presentations

Create a copy of `demo.ejs` and give it a name for your new presentation.

Edit your new `.ejs` file

Now go to a browser and type the following url in the address bar. You can replace `demo` with the name of your own presentation:

```
localhost:8000/demo
```

The server will generate your new presentation and you can also export it to share with:

<pre>
localhost:8000/export/<i>name of your ejs file</i>
</pre> 

## Step 3 - Share live presentations

> This step is not yet automated for beginners

By modifying some of the software configurations files you and your audience can access your presentation remotely over a network.

Refer to the [reveal.js](https://revealjs.com) documentation for the additional features available in this mode. These include:

- Centrally controlling a presentation on a large number of client devices from a central device (e.g. a mobile phone)
- Building new presentation themes with client branding
- Using a variety of plugins for additional features.

You will also be able to use the whole web ecosystem to do things such as:

- Generating content from data, including in real-time
- Controlling access to authorised users e.g. using social media logins
- Tracking viewing with web analytics
- Integrating other services such as live chat and chat bots
- Personalisation and accessibility such as audio transcription, font size and high contrast.

## Step 4 - Presentations as a Service

>The instructions for this step are beyond the scope of this guide. 

With specialist input the options include:

- Using Vagrant plugins to deploy the presentation server on cloud infrastructure (such as Azure or AWS) 
- Serving presentations from a conventional web content management system as part of a corporate website
- Integrating engagement features such as instant messaging Q&A and live surveys.

# Folder content

This is an overview of what is in the folder and what you can do with it. The components have been built with some of the most popular internet tools so you will find extensive user guides, online training, example code and plenty of help online.

## "css" subfolder

This contains the theme styles used by the reveal.js presentation library and the documentation explains how to create new theme styles. This repository includes the special theme used in the demo presentation to mimic the NTT DATA branded PowerPoint template.

## "images" subfolder

This contains image files for slide backgrounds and logos and can be used to store other images you want to link into your presentations.

## "plugin" subfolder

Utilities and extra modules for the `reveal.js` presentation engine. Includes server code for special features such as controlling many copies of a presentation across devices.

## "views" subfolder

Containts the common `ejs` files including the main NTT DATA template. You can store other macros that you create here too.

## Express framework

The server mode uses a simple web and api framework called [express](https://expressjs.com/). There are lots of different frameworks around but the advantage of express is that it uses the same javascript language as web pages. You will find all of the configuration for the server mode in `server.js`. Vagrant will try to start the server by default but it can also be run manually by using `vagrant ssh` to login to the sandbox and using a unix command:

```
. /vagrant/server.sh
``` 

You can change `server.js` to handle api requests or generate whole websites. You can also change `server.js` to add ready-made express components for all sort of things such as handling user data, signing in to account and encryption.


### Vagrant configuration

`provisionserv.sh` is a unix script which does most of the hardwork when you ran `vagrant up` for the first time. Changing this is probably not for beginners but the vagrant website includes extensive how-to guides. You can change the script and rebuild the sandbox with additional software or different components e.g. add in a databases and other html frameworks like Facebook's `react.js`.

`Vagrantfile` provides the basic information which vagrant uses to build the sandbox, such as what operating system to use and what scripts to run. The vagrant website provides lots of instructions and how-tos. For example, you can get vagrant to deploy your web app onto a cloud service such as Amazon AWS.