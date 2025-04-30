#!/bin/bash

 #Replace UUIDs with your actual values
 AIML_UUID="d1b48f7c-d89c-4e42-907d-5aa3d0b91b79"


qdbus org.kde.ActivityManager /ActivityManager/Activities org.kde.ActivityManager.Activities.SetCurrentActivity "$AIML_UUID"

dbus-send --session --dest=org.kde.plasmashell --type=method_call /PlasmaShell org.kde.PlasmaShell.evaluateScript 'string: var allDesktops = desktops(); for (i=0;i<allDesktops.length;i++) { d = allDesktops[i]; d.wallpaperPlugin = "org.kde.image"; d.currentConfigGroup = Array("Wallpaper", "org.kde.image", "General"); d.writeConfig("Image", "file:///opt/KMS/assets/aiml.jpg") }'
