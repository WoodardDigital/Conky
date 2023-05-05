# Conky

This is just me screwing around with Conky, there is still some work that needs done with this but here we go. All of this was done for my system that happens to be running PopOS.

![image](https://user-images.githubusercontent.com/92559124/221383884-9c15f0b4-cf53-4ed6-8a42-ebed297f61ff.png)

*Dependencies* 
 - [gcalcli by Insanium](https://github.com/insanum/gcalcli)
 - [Conky](https://github.com/brndnmtthws/conky)
  
 ## *Setup* 
 Install Conky 
 ``` sudo apt install gcalcli conky-all``` 
 
 Install gcalcli 
 ``` apt-get install gcalcli``` 
 
(this taken from the author's git)
### gcalcli configuration

OAuth2 is used for authenticating with your Google account. The resulting token is placed in the ~/.gcalcli_oauth file. When you first start gcalcli the authentication process will proceed. Simply follow the instructions.

1. Create a New Project within the [Google developer console](https://console.developers.google.com/projectcreate)
  - Activate the "Create" button.
2. [Enable the Google Calendar API](https://console.developers.google.com/apis/api/calendar-json.googleapis.com/)
  - Activate the "Enable" button.
3. [Create OAuth2 consent screen](https://console.developers.google.com/apis/credentials/consent/edit;newAppInternalUser=false) for an "UI /Desktop Application".
- Fill out required App information section
  - Specify App name. Example: "gcalcli"
  - Specify User support email. Example: your@gmail.com
- Fill out required Developer contact information
  - Specify Email addresses. Example: your@gmail.com
- Activate the "Save and continue" button.
- Scopes: activate the "Save and continue" button.
- Test users
  - Add your@gmail.com
  - Activate the "Save and continue" button.
4. [Create OAuth Client ID](https://console.developers.google.com/apis/credentials/oauthclient)
  - Specify Application type: Desktop app.
  - Activate the "Create" button.
5. Grab your newly created Client ID (in the form "xxxxxxxxxxxxxxx.apps.googleusercontent.com") and Client Secret from the Credentials page.
6. Call `gcalcli` with your Client ID and Client Secret to login via the OAuth2 Authorization Screen.  ` gcalcli --client-id=xxxxxxxxxxxxxxx.apps.googleusercontent.com --client-secret=xxxxxxxxxxxxxxxxx list`. In most shells, putting a space before the command will keep it, and therefore your secrets, out of history. Check with `history | tail`.
7. This should automatically open the OAuth2 authorization screen in your default browser.
  
  
  
  Credit to the resource I used to do a lot of this
  - https://www.linuxuprising.com/2018/11/how-to-embed-google-calendar-on-your.html
