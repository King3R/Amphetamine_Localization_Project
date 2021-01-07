//
//  AmphHelpMessages.m
//  Amphetamine
//
//  Created by William Gustafson on 10/29/18.
//  Copyright © 2018 William C. Gustafson. All rights reserved.
//

#import "AmphHelpMessages.h"

@implementation AmphHelpMessages

+ (NSMutableArray *) getMessage : (long) messageSet
{
    NSMutableArray *messageContent = [[NSMutableArray alloc] init];
    
    if (messageSet == 1)
    {
        [messageContent addObject:@"Schnellstart einer Sitzung"];
        [messageContent addObject:@"Wählen Sie, ob ein Linksklick (auch als primärer Klick bezeichnet) oder ein Rechtsklick (auch als sekundärer Klick bezeichnet) auf das Menüleisten-Symbol von Amphetamine das Menü aufruft oder eine Sitzung startet/beendet."];
    }
    else if (messageSet == 2)
    {
        [messageContent addObject:@"Start- und Aufwachverhalten"];
        [messageContent addObject:@"• Amphetamine beim Anmelden starten\nKreuzen Sie dieses Kontrollkästchen an, wenn Amphetamine automatisch gestartet werden soll, wenn Sie sich an Ihrem Mac anmelden.\n\n• Sitzung beim Start von Amphetamine starten\nKreuzen Sie dieses Kontrollkästchen an, wenn Amphetamine automatisch eine neue Sitzung starten soll, wenn das Programm startet.\n\n• Sitzung nach Aufwachen aus dem Schlafmodus starten\nKreuzen Sie dieses Kontrollkästchen an, wenn Amphetamine eine neue Sitzung starten soll, wenn Ihr Mac aus dem Schlafmodus aufwacht. Wenn bereits eine Sitzung läuft, wird keine neue Sitzung gestartet."];
    }
    else if (messageSet == 3)
    {
        [messageContent addObject:@"Other"];
        if (@available(macOS 10.14, *))
        {
            [messageContent addObject:@"• Amphetamine im Dock ausblenden\nKreuzen Sie dieses Feld an, um das Amphetamine-Symbol im Dock auszublenden. Stellen Sie sicher, dass Sie auch die Funktion 'Letzte Anwendungen im Dock anzeigen' von macOS unter  → Systemeinstellungen → Dock ausschalten\n\n• Farbe zur Darstellung des Status in den Schnelleinstellungen verwenden\nKreuzen Sie dieses Kontrollkästchen an, um einen farbigen Kreis zur Darstellung des Status jedes Elements in den Schnelleinstellungen zu verwenden. Grün = EIN, Rot = AUS. Deaktivieren Sie dieses Kontrollkästchen, um ein nicht farbbasiertes Bild zu verwenden: ein Häkchen für EIN und ein X für AUS.\n\nKlicken Sie auf die Schaltfläche 'Warnungen und Dialoge zurücksetzen', um alle 'Nicht wieder anzeigen'-Flaggen auf Warnmeldungen und anderen Dialogen zu löschen.\n\nKlicken Sie auf die Schaltfläche 'Alle Einstellungen zurücksetzen', um Amphetamine auf den Standardzustand zurückzusetzen (alle Einstellungen, einschließlich Auslöser, gehen verloren)."];
        }
        else
        {
            [messageContent addObject:@"• Amphetamin im Dock ausblenden\nKreuzen Sie dieses Kontrollkästchen an, um das Amphetamine-Symbol im Dock auszublenden.\n\n• Farbe zur Darstellung des Status in den Schnelleinstellungen verwenden\nKreuzen Sie dieses Kontrollkästchen an, um den Status der einzelnen Elemente in den Schnelleinstellungen mit einem farbigen Kreis darzustellen. Grün = EIN, Rot = AUS. Deaktivieren Sie dieses Kontrollkästchen, um ein nicht farbbasiertes Bild zu verwenden: ein Häkchen für EIN und ein X für AUS.\n\nKlicken Sie auf die Schaltfläche 'Warnungen und Dialoge zurücksetzen', um alle 'Nicht wieder anzeigen'-Flaggen auf Warnmeldungen und anderen Dialogen zu löschen.\n\nKlicken Sie auf die Schaltfläche 'Alle Einstellungen zurücksetzen', um Amphetamine auf den Standardzustand zurückzusetzen (alle Einstellungen, einschließlich Auslöser, gehen verloren)."];
        }
    }
    else if (messageSet == 4)
    {
        [messageContent addObject:@"Standarddauer"];
        [messageContent addObject:@"Die Standarddauer wird in Amphetamine verwendet, wenn keine andere Sitzungsdauer angegeben ist. Beispiele sind, wenn eine Sitzung beim Start beginnt und wenn Sie auf das Menüleisten-Symbol von Amphetamine klicken, um eine Sitzung zu starten."];
    }
    else if (messageSet == 5)
    {
        [messageContent addObject:@"Berechnung der Endzeit"];
        [messageContent addObject:@"Die Sitzungsendzeit kann entweder mit einem Timer oder mit der Systemuhr berechnet werden. Angenommen, Sie wählen 'Timer verwenden' und starten dann eine Sitzung für 3 Stunden. Danach wird der Mac sofort für 2 Stunden in den Ruhezustand versetzt. Wenn Ihr Mac aufwacht, sind noch 3 Stunden von der Sitzung übrig. Das liegt daran, dass der Timer angehalten wird, während Ihr Mac schläft. Hätten Sie im oben beschriebenen Szenario stattdessen 'Systemuhr verwenden' ausgewählt, wäre nur noch 1 Stunde von der Sitzung übrig. Das liegt daran, dass 2 Stunden auf der Systemuhr verstrichen wären, während Ihr Mac schläft."];
    }
    else if (messageSet == 6)
    {
        [messageContent addObject:@"Ruhezustand Bildschirm"];
        [messageContent addObject:@"Kreuzen Sie dieses Kontrollkästchen an, wenn Sie möchten, dass der Bildschirm Ihres Macs während einer Sitzung in den Ruhezustand versetzt wird. Beachten Sie, dass diese Einstellung nur für Nicht-Trigger-Sitzungen gilt. Wenn Sie möchten, dass bei Trigger-basierten Sitzungen der Bildschirm Ihres Macs in den Ruhezustand versetzt wird, kann jeder einzelne Trigger so konfiguriert werden, dass er dies tut."];
    }
    else if (messageSet == 7)
    {
        [messageContent addObject:@"Bildschirmschoner"];
        [messageContent addObject:@"Kreuzen Sie dieses Kontrollkästchen an, wenn Sie möchten, dass der Bildschirmschoner Ihres Macs während einer Sitzung läuft. Verwenden Sie den Schieberegler, um die Zeitschwelle vor dem Start des Bildschirmschoners auszuwählen. Während einer Sitzung wird Amphetamine Ihren Mac auf Tastatur- und Mausbewegungen überwachen. Nachdem der Schwellenwert überschritten wurde, startet Amphetamine Ihren Bildschirmschoner.\n\nSie können Apps zu einer Ausnahmeliste hinzufügen, indem Sie auf die Schaltfläche 'Ausnahmen...' klicken. Wenn eine App in der Ausnahmeliste auf Ihrem Mac ausgeführt wird, startet Amphetamine den Bildschirmschoner nicht. Dies kann nützlich sein, wenn Sie ein Video ansehen oder einen langen Text lesen.\n\nBeachten Sie, dass diese Einstellung nur für Nicht-Trigger-Sitzungen gilt. Wenn Sie möchten, dass bei Trigger-basierten Sitzungen Ihr Bildschirmschoner läuft, kann jeder einzelne Trigger so konfiguriert werden, dass er dies tut."];
    }
    else if (messageSet == 8)
    {
        [messageContent addObject:@"Schneller Benutzerwechsel"];
        [messageContent addObject:@"Kreuzen Sie dieses Kontrollkästchen an, um alle Amphetamine-Sitzungen (sowohl Trigger als auch Nicht-Trigger) automatisch zu deaktivieren, wenn Sie auf Ihrem Mac zu einem anderen Benutzerkonto wechseln, ohne sich von dem Konto abzumelden, unter dem Amphetamine läuft."];
    }
    else if (messageSet == 9)
    {
        [messageContent addObject:@"Battery"];
        [messageContent addObject:@"• End Session if Battery Charge is Below...\nCheck this box if you want Amphetamine to automatically end non-Trigger sessions when your Mac's battery falls below the threshold set using the slider.\n\n• Prompt Before Ending a Session\nCheck this box if you want to be prompted before Amphetamine automatically ends a session due to a low battery charge. You can choose to continue the session, ignoring your Mac's battery charge, if desired.\n\n• Ignore Charge if AC Power Adapter is Connected\nCheck this box if you want Amphetamine to not automatically end sessions due to a low battery charge while your Mac's AC power adapter is connected.\n\nNote that these preferences only affect non-Trigger sessions. If you want Trigger sessions to consider your Mac's battery charge, add a Power criterion to your Trigger(s)."];
    }
    else if (messageSet == 10)
    {
        [messageContent addObject:@"AC Power Adapter"];
        [messageContent addObject:@"Note that you must enable the 'End Session if Battery Charge is Below...' preference and enable 'Ignore Battery Level if AC Power Adapter' or move the 'End Session if Battery Charge is Below...' slider all the way to the right for this preference to be available.\n\nCheck this box to have Amphetamine automatically start a new session whenever your Mac's AC power adapter is connected. Amphetamine will only start a new session if the previous session ended due to a low battery charge."];
    }
    else if (messageSet == 11)
    {
        [messageContent addObject:@"Triggers"];
        [messageContent addObject:@"Triggers are one of Amphetamine's most powerful feature. You can create as many Triggers as you want. When all of the criteria of any given Trigger are met, Amphetamine will automatically start a new session (if one is not already running).\n\nIn addition to the global Enable Triggers button, which if checked, enables the Triggers feature, each individual Trigger you create can also be enabled/disabled. Use the checkbox to the right of each Trigger in the list to temporarily enable or disable an individual Trigger.\n\nTriggerUse the + button to create a new Trigger. Select a Trigger in the list and use the - button to delete a Trigger.\n\nSelect a Trigger in the list and use the ↑ and ↓ buttons to reorder the Trigger list. Triggers will be evaluated in the order they are shown in the list. Meaning, the first (topmost) Trigger in the list will be evaluated first. If all its criteria are met, a session will start. If not all of its criteria are met, the second Trigger in the list will be evaluated."];
    }
    
    else if (messageSet == 12)
    {
        [messageContent addObject:@"Drive Alive"];
        [messageContent addObject:@"Drive Alive can keep your hard drives awake (alive) and ready for action. Drive Alive works by writing a tiny amount of data to your hard drives(s) on a regular interval. This data is repeatedly overwritten, and only takes up a couple of kilobytes (KB) of space on your drive.\n\nTo add a new drive, click the + button and then select the drive you want to keep alive. Select a drive in the list and click the - button to remove it.\n\nEach drive in the list can be kept alive either only when a session is running, or kept alive any time Amphetamine is running. To keep a drive alive all the time, check the box to the right of the drive in the list.\n\nThe default interval for Drive Alive to write data to your drive(s) is every 10 seconds. You can change this by entering a new number in the number field at the bottom of the window."];
    }
    else if (messageSet == 13)
    {
        [messageContent addObject:@"Start or End Session"];
        [messageContent addObject:@"This hot key will allow you to start or end a session using one hot key. The Default Duration (Preferences → Sessions → Default Duration) will be used for the session's duration.\n\nAfter recording the key combination for this hot key, you will be able to access this function of Amphetamine regardless of where you are in macOS. Amphetamine does not need to be the frontmost app, but it does need to be running.\n\nIf you aren't able to record your desired hot key combination, that means that the key combination is already in use elsewhere, by another app."];
    }
    else if (messageSet == 14)
    {
        [messageContent addObject:@"Start Session"];
        [messageContent addObject:@"This hot key will allow you to start a session with a specific duration using a hot key. Specify the duration you would like the session to have.\n\nAfter recording the key combination for this hot key, you will be able to access this function of Amphetamine regardless of where you are in macOS. Amphetamine does not need to be the frontmost app, but it does need to be running.\n\nIf you aren't able to record your desired hot key combination, that means that the key combination is already in use elsewhere, by another app."];
    }
    else if (messageSet == 15)
    {
        [messageContent addObject:@"End Session"];
        [messageContent addObject:@"This hot key will allow you to end any session using a hot key.\n\nAfter recording the key combination for this hot key, you will be able to access this function of Amphetamine regardless of where you are in macOS. Amphetamine does not need to be the frontmost app, but it does need to be running.\n\nIf you aren't able to record your desired hot key combination, that means that the key combination is already in use elsewhere, by another app."];
    }
    else if (messageSet == 16)
    {
        [messageContent addObject:@"Open Menu"];
        [messageContent addObject:@"This hot key will allow you to open Amphetamine's menu using a hot key. This is useful to quickly check the session and Drive Alive details show in the menu, or to quickly navigate or select menu items using the arrow keys and/or keyboard shortcuts (i.e. ⌘F to start a 'While File is Downloading...' session.\n\nAfter recording the key combination for this hot key, you will be able to access this function of Amphetamine regardless of where you are in macOS. Amphetamine does not need to be the frontmost app, but it does need to be running.\n\nIf you aren't able to record your desired hot key combination, that means that the key combination is already in use elsewhere, by another app."];
    }
    else if (messageSet == 17)
    {
        [messageContent addObject:@"Session Reminders"];
        [messageContent addObject:@"Check this box to have Amphetamine deliver a notification/reminder on a regular interval while any session is running."];
    }
    else if (messageSet == 18)
    {
        [messageContent addObject:@"Trigger/Scheduled Notifications"];
        [messageContent addObject:@"Check these boxes to have Amphetamine deliver a notification when any session starts or ends automatically. This includes Trigger sessions, scheduled, and some timed sessions.\n\nSessions started or ended manually by clicking on Amphetamine's image in the menu bar, or by selecting an option from Amphetamine's menu will not cause a notification to be delivered."];
    }
    else if (messageSet == 19)
    {
        [messageContent addObject:@"Sound"];
        [messageContent addObject:@"• Play When Any Session Starts or Ends\nCheck this box to have a sound play whenever a session starts or ends.\n\n• Play With Session Reminders/Other Notifications\nCheck this box if you want a sound to play whenever a notification is delivered.\n\nTo add a new custom sound, click the + button and select a sound file. To remove a custom sound, click the - button. A Finder window will open to the directory where custom files are saved. Delete the sound file in Finder by dragging it to the Trash or by using the Command + Delete keyboard combination."];
    }
    else if (messageSet == 20)
    {
        [messageContent addObject:@"Notification Center"];
        [messageContent addObject:@"Check this box to have Amphetamine automatically clean up its notifications in Notification Center. This will help reduce notification clutter, especially if you have Session Reminders enabled."];
    }
    else if (messageSet == 21)
    {
        [messageContent addObject:@"Status Image"];
        [messageContent addObject:@"Choose the images you want displayed in the menu bar to represent Amphetamine's session state (active/inactive). When a session starts or ends, Amphetamine's image in the menu will update accordingly.\n\nAlternatively, provide your own custom images."];
    }
    else if (messageSet == 22)
    {
        [messageContent addObject:@"Menu Bar Text"];
        [messageContent addObject:@"• Show Session Time Remaining in Menu Bar\nCheck this box if you want a session's time remaining or end time to display alongside Amphetamine's image in the menu bar.\n\nChoose additional formatting options like the size of the text in the menu bar, how time is represented, whether to include seconds, and whether to represent time in a 12 or 24 hour format."];
    }
    else if (messageSet == 23)
    {
        [messageContent addObject:@"Menu Extras"];
        [messageContent addObject:@"• Show Current Session Details\nCheck this box to show session details such as the session's duration/time remaining and activation reason in Amphetamine's menu.\n\n• Show Drive Alive Details\nCheck this box to show Drive Alive details such as which drives are being kept alive and which aren't."];
    }
    else if (messageSet == 24)
    {

    }
    else if (messageSet == 25)
    {
        [messageContent addObject:@"Exceptions"];
        [messageContent addObject:@"If any of the apps or processes in this table are running, it will prevent Amphetamine from activating your Mac's screen saver.\n\nClick the + button to add an app or process to this table. Select an app in the table and click the - button to remove it.\n\nIf you do not see the app or process you are looking for either it is not currently running or Apple's sandboxing security prevents Amphetamine from seeing the app/process."];
    }
    else if (messageSet == 26)
    {
        [messageContent addObject:@"Apps and Processes"];
        [messageContent addObject:@"To see an app or process in this table, it must be running on your Mac. This checkbox will further filter this list between including helper apps/processes and excluding them. Helper apps and processes typically do not have a user interface and run in the background. This often includes apps such as Amphetamine, which can run from the menu bar and do not have a Dock icon.\n\nIf you are not seeing an app/process in the table, either it is not running, or Amphetamine is blocked from interacting with the app/process by macOS's sandboxing security feature."];
    }
    else if (messageSet == 27)
    {
        [messageContent addObject:@"Trigger Configuration"];
        [messageContent addObject:@"Name\nGive your Trigger a memorable name. Your Trigger’s name will be used in notifications and in the session details section of Amphetamine’s menu (if you have these preferences enabled).\n\nCriteria\nYour Trigger can use one instance of each criterion. To add a new criterion, use the \"Add criterion…\" button, select a criterion, and then check the box to use it. To remove a criterion, double-click the criterion in the Criteria table, and uncheck the box.\n\nAdditional Options\nEach Trigger you create can independently be configured to allow or prevent display sleep and/or your Mac’s screen saver. Note that the screen saver exceptions list (Preferences → Sessions) will be used for your Trigger if you choose to allow your Mac’s screen saver to run."];
    }
    else if (messageSet == 28)
    {
        [messageContent addObject:@"Wi-Fi Criterion"];
        [messageContent addObject:@"This criterion will evaluate true only when your Mac is connected to a specified Wi-Fi network. Enter the name of Wi-Fi network (case-sensitive) in the provided field, or use the button to automatically get the name of the current network your Mac is connected to."];
    }
    else if (messageSet == 29)
    {
        [messageContent addObject:@"IP Address Criterion"];
        [messageContent addObject:@"This criterion will evaluate true only when your Mac has a specific IP address, or your Mac's IP address falls within a specified range. Use the button to get your Mac's current IP address, or enter the address(es) manually."];
    }
    else if (messageSet == 30)
    {
        [messageContent addObject:@"App Criterion"];
        [messageContent addObject:@"This criterion will evaluate true only when the specified app is running on your Mac. Only apps that are currently running appear in the list. If an app does not appear in the list, either it is not currently running, or Apple's sandboxing feature prevents Amphetamine from interacting with the app."];
    }
    else if (messageSet == 31)
    {
        [messageContent addObject:@"Power Criterion"];
        [messageContent addObject:@"This criterion will evaluate true only when the specified power conditions are met on your Mac."];
    }
    else if (messageSet == 32)
    {
        [messageContent addObject:@"Schedule Criterion"];
        [messageContent addObject:@"This criterion will evaluate true only when the current time and day of your Mac's system clock falls within the specified time and day range."];
    }
    else if (messageSet == 33)
    {
        [messageContent addObject:@"Display Criterion"];
        [messageContent addObject:@"This criterion will evaluate true only when the specified number of displays are connected to your Mac. If your Mac has a built-in display, this will count as 1 display./n/nIf you connect an external display in addition to your Mac's built-in display, 2 displays will be detected./n/nIf you have display mirroring enabled for your Mac's internal display and an external display is connected, only 1 display will be detected."];
    }
    else if (messageSet == 34)
    {
        [messageContent addObject:@"Volume/Drive Criterion"];
        [messageContent addObject:@"This criterion will evaluate true only when the specified drive or volume is mounted on your Mac. To see the desired drive or volume in the list, ensure it is already mounted."];
    }
    else if (messageSet == 35)
    {
        [messageContent addObject:@"Audio Output Criterion"];
        [messageContent addObject:@"This criterion will evaluate true only when the specified audio output is set as the current output on your Mac./n/nAudio output can be set by visiting  → System Preferences → Sound → Output."];
    }
    else if (messageSet == 36)
    {
        [messageContent addObject:@"Bluetooth Device Criterion"];
        [messageContent addObject:@"This criterion will evaluate true only when the specified Bluetooth device is connected to your Mac. Only Bluetooth devices which have been paired with your Mac will appear in the list.\n\nTo pair a new Bluetooth device, place your device in pairing mode and visit  → System Preferences → Bluetooth."];
    }
    else if (messageSet == 37)
    {
        [messageContent addObject:@"VPN Service Criterion"];
        [messageContent addObject:@"This criterion will evaluate true only when your Mac is connected to the specified VPN service. Start your VPN service on your Mac and then click the refresh button to automatically get the name of the service.\n\nThis criterion is somewhat experimental, as not all VPN services have been tested. Contact Amphetamine support for assistance if needed to report an issue."];
    }
    else if (messageSet == 38)
    {
        [messageContent addObject:@"USB Device Criterion"];
        [messageContent addObject:@"This criterion will evaluate true only when the specified USB device is connected to your Mac. To see the desired USB device in the list, connect it to your Mac and power it on."];
    }
    
    return messageContent;
}

@end
