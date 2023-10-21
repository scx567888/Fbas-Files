-------------------------
 features of FBA shuffle
-------------------------
- added AVI recorder. [Gangta, emufan]
- added support translated game name list in game selection dialog. [Sho, 800]
  you can import game names from mamep.lst while exporting gamelist. (put mamep.lst under fbas.exe or config dir)
- added IPS v4 support from MAMEPlus!. (Thanks to Emuman, emufan)
- added select background image and select random image functions.
- added set misc paths and improved UI for game selection dialog.
- added save preset and save default input mapping, file is saved in config/presets.
- added some custom images in .\res folder, you can replace these images with what you like.
- added display score, select, gameover, boss snapshot to game selection dialog.
  (http://www.progettosnaps.net/)
- added support archived preview image (zip or 7z).
  (name it: snap, titles, flyers, score, select, boss, gameover. ext = zip/7z).
- added load cheat from archive file (name it: cheat.zip/7z), also added cheat select/reload.
- added filters in game selection dialog. (it also can filter the custom translated game names)
  (type "lamer" in the filter and it will show unavailable/missing sets)
  you can edit "user-filter" value in fbas.xml to define your filter string, separate with semicolon.
- added save favorite games (the file is in config/favorites.xml).
- added "Undo" for input recordings, "Rewind" for input recording playback. [blip]
- added adjustable emulation speeds (shift + +/-) and frame counter display. [blip]
- added 7-Zip support. (http://www.7-zip.org/)
- added XAudio2 sound output. (need install new DirectX runtime/SDK)
- added OpenAL sound output.
- added OpenGL, GDI, Direct2D video output.
- added select audio device and select display adapter.
- added autofire support, you can set the autofire delay value in input mapping dialog.
  (autofire only affects normal buttons, doesn't support direction buttons)
- added custom button feature. (Map Game Inputs ==> Custom buttons)
- added configurable hotkeys. (Thanks to mauzus)
- added "reverse stereo channels" option and more dsp.
- added rewind support. (you can change parameters in fbas.xml)
- changed the emulator will not depend on kailleraclient.dll.
  You can put kailleraclient.dll in the same directory as the emulator if you want to netplay.
- changed all romsets to match MAME Plus!.
- removed many rarely-used features from official FBA.
- Thanks to XingXing for the PGM drive.
- A big thanks to OopsWare (http://oopsware.googlepages.com/) for porting PGM, CPS3 and many other drivers to FBA.

+ Shortcuts (you can configure hotkeys from menu Settings==>Hotkeys...):
 Some default shortcuts:
 Space           = Fastforward emulation while held down.
 Backspace       = Show FPS in game.
 F6              = Open game list dialog.
 Ctrl + F4       = Exit game.
 Ctrl + F1       = Open cheat in game.
 F2 / F3         = Open DIPS in game / reset game.
 F5 / Ctrl+F5    = Map game inputs / Set DIPS.
 F8 / F11        = Active previous / next save state slot.
 F9 / F10        = Load / Save state from active slot.
 F12             = Save snapshot.
 Alt + 1/2/3/4/5 = Adjust window size.
 Alt + P/R/T     = Play / Record / Stop input replay/record.
 Alt + V/E       = Record / Stop AVI recording.
 +/-             = Sound volume up/down.
 Shift + +/-     = Adjust emulation speed.
 Ctrl + F        = Fake fullscreen.
 Ctrl + M        = Start neogeo multi-slot game.

+ Commandline interface:
 fbas -g <game> [-listxml|-w|-r <width>x<height>|-d <depth>|-ips]
 <game> = The game's romname. You can specify the filename of a savestate or input recording instead.
 -w     = Run in a window instead of fullscreen.
 -r     = Specify a resolution.
 -d     = Specify a depth (16 or 32).
 -ips   = Apply patches which have been configured.
 If neither -a nor -r are specified, the default fullscreen resolution is used. Examples:
 fbas -g sfa3 -r 800x600 -d 32 -ips
 fbas -g awesome_sfzch_recording.fr -w
 fbas -g vsav2 -w

+ tips for naming preview images.
  the preview image in game selection dialog can be displayed circularly
  (the default cycletime is 2.5 seconds) if you named them correctly, for example:
  mvsc.png, mvsc [02].png, mvsc [03].png...

Refresh romsets: Press F5 on gamelist.
Select UI language: Misc ---> Select UI language...
Select local gamelist: Misc ---> Select gamelist...
Use Lua script: Set the hotkey "New Lua script window".
Use Rewind: Enable it in Configuration dialog, set the hotkey "Rewind".

* The maintainers of FBA shuffle: KOF2112, Leaf, Creamymami.
* Please do not send any reports from this build to the FBA team.
* FBA shuffle google code page: http://code.google.com/p/fbashuffle/

-------------------------------------------------------------
 FB Alpha site: http://fba.emuunlim.com/
 EGCG forum: http://www.egcg.com.cn/bbs/
 MAWS site: http://www.mameworld.net/maws/
 progetto-SNAPS site: http://www.progettosnaps.net/
 MAME Plus! site: http://mameicons.free.fr/mame32p/
-------------------------------------------------------------


---------------------------
 Changelog for FBA shuffle
---------------------------

----------------------
- v2.4.0  2013-12-31 -
----------------------
- updated zlib library to 1.2.8. (http://www.zlib.net/)

----------------------
- v2.3.0  2012-06-06 -
----------------------
- readded DirectDraw video driver for whom still uses very old PC.
- fixed crash when exitting DirectDraw fullscreen mode in win7.
- fixed autofire will be turned off after playing with kaillera.

----------------------
- v2.2.6  2012-05-03 -
----------------------
- fixed rewind initialization for some drivers.
- some minor fixes.

----------------------
- v2.2.5  2012-04-18 -
----------------------
- fixed window state after exit game in fullscreen mode. (thanks to 110cjy for reporting)
- fixed crash when use none sound output.
- fixed sound crack after launching game.
- added experimental rewind support. (you can change parameters in fbas.xml)
- disabled some options which are not supported in x64 build.

----------------------
- v2.2.4  2012-04-03 -
----------------------
- improved audio drivers.
- improved new style folder browser dialog.
- improved mame cheat support.
- added audio latency setting.
- added audio sync option.
- added supported PPMd compression archives.
- volume control can be adjusted from 0 to 200%.
- removed "Auto frameskip" option.

----------------------
- v2.2.3  2012-03-28 -
----------------------
- added "Enable cheat" option. (remember to enable it if you want to use cheat)
- supported mame xml cheat file partially, also support archive file cheat.zip/7z.
  (emulator will detect fbas/mame cheat file automatically)
- fixed sound after selecting libburn file.
- some minor fixes.

----------------------
- v2.2.2  2012-03-11 -
----------------------
- improved speed for opening game selection dialog.
- updated zlib library to 1.2.6. (http://www.zlib.net/)

----------------------
- v2.2.1  2012-02-02 -
----------------------
- fixed error message when start from command line.
- extended configurable ROM paths.
- added new style folder browser dialog for path setting.

----------------------
- v2.2.0  2012-01-20 -
----------------------
* from this version, please use libburn 2.5 or newer version.
- adjusted cheat interface.
- rewrote video rotation.
- added new rotate option to video setting dialog.
- removed image menu.
- removed deprecated DirectDraw video driver.

----------------------
- v2.1.3  2011-12-31 -
----------------------
- fixed progress bar state when loading games.
- fixed cheat reload.
- fixed avi recording when pause the game.
- improved re-recording, save more information in movie file.
- changed movie file extension from "fr" to "frs". (refer fileformat.txt)
- added "Record from start" option to record input dialog.
- added "Pause after playback" option to replay input dialog.

----------------------
- v2.1.2  2011-12-16 -
----------------------
- fixed rom audit in some rare case.
- fixed choose language when language file version is old.
- added "reverse stereo channels" option.
- added more dsp.

----------------------
- v2.1.1  2011-12-09 -
----------------------
- added version check for language file.
- added libburn info to the exported clrmamep data.

----------------------
- v2.1.0  2011-12-04 -
----------------------
* libburn 1.x is not compatibale with this version, please use libburn 2.0.
- added neogeo multi-slot support. (run neomvs to active)
- added hotkeys to start genesis and neogeo multi-slot.

----------------------
- v2.0.0  2011-11-11 -
----------------------
- changed fba shuffle version to 2.0.0.
- separated burn library to dll. (you can select different dll from "Help" menu)
- separated pixel filters to dll.
- fixed game running after window reactive if pause manually.
- fixed cpu usage after exit game if filter is enabled.
- fixed create kaillera game list.
- fixed image scale in fake fullscreen mode.
- fixed frame display when pause.
- fixed scanline rotation in vertical games.
- added custom button feature. (Map Game Inputs ==> Custom buttons)
- added log window to show emulation debug information. (change log="true" in fbas.xml to enable log)
- added GDI video output.
- added Direct2D video output. (require win7 or vista sp2)
- adjusted config file structure.
- changed cheat, game config, favorite, gamelist file to xml.
  (you can use banunu, a tool of fba shuffle to convert old ini files)
- changed some default settings.
- improved rom audit.
- improved quick load game, support select file in directory which is not set in rom paths.
- improved frameskip on windows 7 when aero is enabled for direct3d driver.
- improved autofire, support custom buttons, settings will be saved in game config file.
- improved keyboard focus for gamelist dialog.
  (press F3 in gamelist will set focus to the filter combobox)
- mamep.lst must be saved as utf8(bom) for exporting local gamelist.
- removed unstable simple jukebox, M1 is the best choice to play sounds of games.
- source code cleanup & optimization.
* it's recommended to delete old config/games/*.nv files before using.

---------------
- Jan.06.2011 -
---------------
* old savestate/replay files cannot be used from this version.
- compiled with vs2010 (updated directx sdk and win7 sdk).
- improved burn lib.
- some drivers changes. [BisonSAS]
- updated PGM driver, added kovplusb, kovsgqyz, kovsgqyza, kovlsqh, kovassg.
- added lasthpcd, ironclada, quizdaisk, quizkofk, rbffspeck to neogeo driver.
- added wofch3p to CPS1 driver.
- added scanline intensity adjustment.
- added scale5x to video mode.
- fixed kovplus.
- fixed snowbros.
- fixed buttons for some CPS2 phoenix games.
- fixed software rotation for mirrored vertical alignment.
- fixed savestates for some drivers.
- fixed a small bug in cheat file parse. (thanks to Ams for reporting)
- fixed avi recording for 16-bit only games with DirectDraw video mode.
- fixed screen clear when enter fullscreen in OpenGL mode with some video cards.
- fixed some memory leaks.
- simplified macros defined in game drivers.
- improved accuracy of export clrmamep data.
- removed some unnecessary items in game drivers.
- removed some useless CPS1, neogeo romsets.
- removed old Direct3D7 blitter.
- removed motion blur effect from Direct3D biltter.
- removed "force-16bit" option.
- removed 2xpm, hq2xbold and hq3xbold filters.
- removed unnecessary "modeless menu" option.
- removed input combo support. (hacky code)
- removed some rarely-used features.
- changed some default settings.
- improved game icon display.
- optimized speed for exporting translation gamelist from mamep.lst.
- modified preference dialog and game list dialog to be modeless.
- updated dinput and removed dependency on old dx libs.
- updated zlib library to 1.2.5. (http://www.zlib.net/)
- updated libpng library to 1.4.5. (http://libpng.sourceforge.net)
- fixed some minor bugs.
- source code cleanup & optimization.
- updated romsets to match MAME 0.141.

---------------
- Mar.06.2010 -
---------------
- merged burn lib to FB Alpha v0.2.97.08 codebase.
- added knightsjb.
- added orlegendca, kov2102, kov2103, kov2106, kov2107, martmast102c.
- fixed sound problem for some PGM games. (thanks to alix for reporting)
- fixed cheat for "Oriental Legend Special".
- fixed screen rotation for "Dorodon" and "Space Raider".
- fixed pause button save for wofch and sfzch.
- fixed speed for darkseal. (thanks to PlayerX for reporting)
- fixed a blank screen bug in many Cave games when loading state for the first time.
  (thanks to doraemoo for reporting)
- fixed chinese simplified language translation.
- fixed sound when load game with fullscreen from commandline for DSound output.
- fixed some warning info.
- improved game icon display, reduced GDI objects usage.
- added type "-romlist" in filter to export rom name list.
  (type "-mylist" to export filtered list and "-nwlist" for non-working list)
- added set icons dir to the path dialog.
- extended configurable ROM paths to 14.
- changed to case-insensitive filename for rom audit. (thanks to PlayerX)
- changed show mouse in fake fullscreen mode.
- removed arcade/1x/2x/3x/4x fullscreen size (also removed "-a" cmd line parameter).
- updated libpng library to 1.4.1. (http://libpng.sourceforge.net)
- updated romsets to match MAME 0.136u4.

---------------
- Dec.07.2009 -
---------------
- added kovlsqh2, kovlsjb, kovlsjba, kovqhsgs. [EGCG flycboy, 0 day-s, eddids]
- added "Ironclad (Wii virtual console release)".
- fixed Guardians gfx problem.
- fixed load png skin.
- fixed sound when load game with fullscreen from commandline.
- fixed disable CRC check for new audit method.
- fixed gamelist translation speed when didn't find translation file.
- improved load cheat from archive.
- changed to refresh romsets by press F5 in gamelist.
- added game icon display. (drop icons.zip/7z in the same folder as the exe)
- removed "Load archive image/cheat" option. (they will be loaded automatically)
- removed "Use old audit method" option, the new method seems stable.
- updated romsets to match MAME 0.135u2.

---------------
- Oct.26.2009 -
---------------
- merged burn lib to FB Alpha v0.2.97.07 codebase.
- fixed sound for kof98ae. [sjx]
- fixed kov2 for x64 build.
- fixed cursor hide in fullscreen.
- fixed screen rotation of some flipped games for DirectDraw blitter.
- improved config file load.
- extended configurable ROM paths to 12.
- readded "Disable CRC check" option.
- rewrote language module, the UI resource is stored in dll.
- rearranged menu options.
- added autofire setting to input mapping dialog.
- added display game width, height, aspect info to gamelist.
- added preference setting dialogs.
- added fake fullscreen mode. (default shortcut: ctrl+F)
- added pixel filters for DirectDraw biltter.
- changed default shortcut key for cheat search to Alt+F1,
  changed default shortcut key for fastforward from F1 to Space.
- updated Blargg's File_Extractor to 1.0.0. (http://www.slack.net/~ant/)
- fixed some minor bugs.
- updated romsets to match MAME 0.134u4.

---------------
- Oct.08.2009 -
---------------
- added "The King of Fighters '98 - 10th Anniversary Edition". [EGHT]
- improved compatibility for x64 build.
- improved custom hotkeys, allow multiple modifiers and display keys on menu.
- improved show rom info dialog.
- fixed an icon draw bug in gamelist dialog.
- fixed a crash bug when load same romset after exit game.
- fixed a small issue in rom audit. (thanks to khiav, RaidenII for reporting)
- fixed cheat doesn't take effect after reloading. (thanks to Ams for reporting)
- fixed autofire for some games. (e.g. aerofgt)
- fixed screen clear when maximize the window in logo screen with OpenGL blitter.
  (thanks to khiav, JoshuaChang for reporting)
- fixed menubar display when use OpenGL blitter in Vista/Win7.
- fixed a bug for ips relation. (Thanks to katana)
- disabled sample rate change when playing game. (thanks to nam1975 for reporting)
- added bad dump rom detection for rom audit.
- added save device for each audio driver.
- added save autofire delay for each game, set the delay value in input mapping dialog.
- added "Preview keep game aspect" option to gamelist dialog.
  (check this to keep preview image with game aspect, or the image will keep its own aspect)
- added set fast forward speed, change "<fastforward speed="2" />" value in fbas.xml (from 1 to 10).
- added "auto monitor aspect" and "set custom monitor aspect" options.
  (check this to detect monitor aspect automatically, or it will use customized aspect)
- added cheat search dialog. (default shortcut: shift+F1)
- added a new custom resource res/about.bmp.
- updated scanline filters.
- updated libpng library to 1.2.40. (http://libpng.sourceforge.net)
- removed rebar control from menubar.
- removed cps1 homebrews which added in previous build by mistake.
- updated romsets to match MAME 0.134u2.
* it's recommended to delete fbas.xml before using.

---------------
- Aug.16.2009 -
---------------
- updated PGM driver, made kov2106 working. [XingXing]
- improved m92 driver. [OopsWare]
- added sf2m9, sf2m10, sf2m11, sf2m12.
- fixed eeprom save for some cps1 games.
- added 4 players hack for msvc, mshvsf, xmvsf.
- fixed cheat for sh2 cpu.
- fixed screenshot rotation for flipped games.
- added 32-bit clockwise rotation in avi recording for flipped games.
- changed directories are created automatically only when needed.
- rewrote romset audit, now it's faster. (also improved old audit method)
- added "Use old audit method", enable this if encount problem in new method.
- improved scale method for preview images.
- added driver config to gamelist dialog and removed hardware tree list.
- added "No icons" option to gamelist dialog.
- added display bosses snapshot to game selection dialog. (http://www.progettoemma.net/snaps/)
- added a new custom resource res/misc.bmp.
- added load cheat and gamelist with UTF8(BOM) format.
- added configurable hotkeys, based on FBA-RR. (http://code.google.com/p/fbarr/)
- added select audio device.
- added select display adapter for fullscreen.
- changed use software vertex processing for D3D9 biltter by default,
  so that some intgrated display cards can use D3D9 output.
- added "Use hardware vertex processing" option for D3D9 biltter.
- added tiny message display for D3D9 blitter.
- added pixel filters for D3D9 biltter and removed old shaders.
- added motion blur effect for D3D9 biltter.
- added experimental OpenGL biltter. (no OSD)
- added VSync support for all biltters. (Thanks to Dante, lzsgodmax, k600c for testing)
- added contrast/brightness and other color adjustment.
- added Null sound output.
- added OpenAL sound output.
- rearranged audio buffer size dialog.
- updated libpng library to 1.2.38. (http://libpng.sourceforge.net)
- removed PNGlib, use libpng to load png from file and memory.
- changed save neogeo and cps2 decrypted roms to exe folder.
- changed config file from ini to xml.
- removed "Disable CRC && size check" option.
- removed "save preview" option.
- removed "Auto-save input mapping" and "Save input mapping now" options.
  (it will be saved automatically after closing input mapping dialog)
- removed DirectDraw SoftFX blitter.
- removed RGB effects from Direct3D7 blitter.
- removed "Force image to SoftFX size" option.
- removed display status icons.
- removed all asm sound support functions.
- fixed many minor bugs.
- updated romsets to match MAME 0.133u2.

---------------
- Jun.03.2009 -
---------------
- merged burn lib to FB Alpha v0.2.97.06 codebase.
- readded "Switch to fullscreen on startup" option.
- fixed an IPS description memory leak.
- updated romsets to match MAME 0.131u3.
* it's recommended to delete all files in config/games before using.

---------------
- May.27.2009 -
---------------
- updated PGM driver, merged previous modification.
- updated ddragon3 driver.
- fixed input info for Alien vs Predator and clones.
- optimized speed for using translation gamelist (gamelist.ini can be saved with UTF-16LE format).
- changed to use GDI+ to display skin image.
- added use GDI+ to load images.
- added a UI option to enable/disable use GDI+.
- added save default input mapping.
 (file is saved in config/presets/default.ini, default_cps.ini, default_neo.ini)
- added select cheat (push "select" button in cheat dialog).
- added cheat reload.
- source code cleanup, removed asm filters.
- removed useless svc bootlegs.
- fixed some minor bugs. (Thanks to Ams, katana)
- updated romsets to match MAME 0.131u2.
* it's recommended to delete all ini files in config/games.

---------------
- Apr.26.2009 -
---------------
- merged burn lib to FB Alpha v0.2.97.05 codebase.
- optimized speed for kovsh. [XingXing]
- updated PGM driver, added region hack for orlegend and clones.
- fixed a potential bug for UI traslation template. (when use nested popup menus may cause the problem).
- fixed a small problem in some 16bit-only games for DX9 blitter.
- changed autofire processing.
- added shortcuts for switch filters in DDraw SoftFX blitter (Alt+Pageup/Pagedown).
- simplified screen_init routine for most menu options.
- changed FPS display.
- made fastfoward (F1) can also be used when sound disabled.
- updated MAWS link.
- made burn lib source more independent.
- added pre-definitions for disable asm core and IPS support.
- updated romsets to match MAME 0.131.

---------------
- Mar.31.2009 -
---------------
- updated PGM driver, made olds, olds100 and kovsh working. [XingXing] (Thanks to iq_132 for port this driver)
- fixed kovsh demo gfx problem.
- added region hack for some PGM games.
- added display romset name in romscan progress bar.
- added autofire support.
 (only support p1 and P2 first 4 buttons, use Ctrl/Shift+1/2/3/4 to turn on/off autofire buttons)
 (you can set "autofireDelay" value in fbas.ini to change autofire delay)
- changed marco and autofire will be disabled automatically during netplay.
- added an option to enable/disable autofire support.
- added cheat search strings to traslation template file.
- added mouse left/right double click event to DIPS setting dialog.
- removed fr/fs file association options.
- fixed crash when use large skin picture with 32-bit 2xSai filter in D3D7 blitter.
- fixed a potential archive load bug.
- adjusted osd text.
- added stlport to project.
- added more pre-definitions for enable/disable features.
- source code cleanup.
- updated romsets to match MAME 0.130u2.

---------------
- Mar.09.2009 -
---------------
- merged burn lib to FB Alpha v0.2.97.04 codebase.
- updated PGM driver. [iq_132]
- made olds100a working. [XingXing]
- added some pre-definitions to simply enable/disable some features.
- fixed a small ips relation bug. (Thanks to katana)
- updated romsets to match MAME 0.129u6.

---------------
- Mar.05.2009 -
---------------
- merged burn lib to FB Alpha v0.2.97.03 codebase (except hiscore support atm).
 (special thanks to iq_132 for update PGM driver! :D)
- added hack code to make kov2p working. [XingXing]
- improved rom scan speed.
- fixed crash when clicking rescan romsets too fast.
- replaced hq2xS and hq3xS filters with those from snes9x1.51-rerecording (slightly faster).
- added hq2xBold, hq3xBold filters. (http://code.google.com/p/snes9x151-rerecording/)
- added EPXB, EPXC filters from snes9x.
- added 32-bit version of 2xSaI, Super2xSaI and SuperEagle from vba.
- removed some useless filters.
- added shortcuts for switch filters in D3D7 blitter (Alt+Pageup/Pagedown).
- changed current zip/7z extractor based on Blargg's File_Extractor. (http://www.slack.net/~ant/)
- added zlib-1.2.3 source to File_Extractor instead of using static library.
- updated libpng library to 1.2.35. (http://libpng.sourceforge.net)
- rewrote command line interface, added "-ips" to apply configured patches. (see above for details)
- added shortcuts for cheat search.
- added support load cheats from archive file (name: cheat.zip/7z).
- kawaks/nebula/mame cheat support is removed from binary but left behind in the source code.
- added drag & drop support (zip/7z, .fr and .fs format files).
- rearranged options in game selection dialog.
- added CPS1 wofch.
- fixed some minor bugs.
- source code cleanup.
- updated romsets to match MAME 0.129u5.

---------------
- Feb.14.2009 -
---------------
- fixed cpu usage when use XAudio2 sound output.
- changed input interface to DirectInput8.
- made audio options configurable when playing games.
- added hq2xS, hq3xS filter from vba-rerecording. (http://code.google.com/p/vba-rerecording/)
- added some CPS1 region hacks.
- removed CPS2 useless romsets: csclubjr.
- added default input macro for PGM driver.
- source code cleanup.
- improved project compatibility with new windows/dx sdk in vs2008.
- added makefile for vc compiler.
- updated 7-Zip LZMA SDK to 4.65. (http://www.7-zip.org/)

---------------
- Jan.31.2009 -
---------------
- based on FB Alpha v0.2.97.02 compiled with vs2008sp1.
- preliminary added on screen message display for DX9 video output.
- fixed screen is incorrectly rotated for some flipped games
  (which has BDF_ORIENTATION_FLIPPED flag) in DX9 video output.
- fixed screen rotation in avi recording for some vertical and flipped games.
- added 2xPM LQ filter from Kega Fusion plugin.
- added shortcuts for record/replay input and avi.
- added save favorite games (the file is in config/favorites.ini).
- updated 7-Zip LZMA SDK to 4.63. (http://www.7-zip.org/)
- fixed popup sound initialize warning when sound is disabled.
- renamed archived image filename to snap.xx, titles.xx, flyers.xx (xx = zip/7z).
  so you can use these files from MAMEUI easily.
- removed export RC data (the new RC can import clrmamep data file).
- removed "Play game with IPS" from gamelist context menu.
 (IPS which have been configured will be used automatically)
- added "Dogyuun (Licensed to Unite Trading For Korea)".
- added CPS2 phoenix romsets armwar1d, dimahoud, mmatrixd.
- some source code cleanup.
- fixed some minor bugs.
- updated romsets to match MAME 0.129u3.

---------------
- Dec.27.2008 -
---------------
- based on FB Alpha v0.2.97.01 compiled with vs2008sp1.

---------------
- Dec.26.2008 -
---------------
- fixed bug for IPSv4 conflict/dependancy management.
- fixed bug for export translation gamelist.
- fixed sprites decode for ddrago3p.

---------------
- Dec.25.2008 -
---------------
- based on FB Alpha v0.2.96.99 compiled with vs2008sp1.
- changed default skin picture. (Thanks to Emuman)
- updated 7-Zip LZMA SDK to 4.62. (http://www.7-zip.org/)
- added export new clrmamepro data (xml).
- fixed double description warning for clrmamepro data.
- added XAudio2 sound output. (need install new DirectX runtime/SDK)
- added popup warning if sound output initialize failed.
- supported conflict/dependancy management for IPS v4. (Thanks to Emuman and MAME Plus! team)
- rearranged IPS setting dialog.
- added display score, select and gameover snapshot to game selection dialog.
  (http://www.progettoemma.net/snaps/)
- use PNGlib instead of libpng to load PNG image. (faster and easy to use)
  (Thanks to Thomas Bleeker for his PNGlib: http://www.madwizard.org/)
- added support load archived image (zip or 7z).
  (name to: preview.xx, title.xx, flyer.xx, score.xx, select.xx, gameover.xx. xx = zip/7z)
- added an option to game selection dialog to enable load archived image.
- added use rebar menu option to UI option (rebar is currently useless).
- added shortcuts for adjust window size (Alt+1/2/3/4/S).
- added UI effect to UI options. (source from Gens+ and Zsnes)
- added load/export/reset translation gamelist option to UI language options.
- changed game name for kailleraclient list, like "Commando (World) [commando]".
- fixed player3 for kodh.
- added CPS1 dinohc.
- added DIPS for dinoh, dinoha, dinohc.
- some source code cleanup.
- updated romsets to match MAME 0.128u7.
* Merry Christmas~!

---------------
- Oct.19.2008 -
---------------
- based on FB Alpha v0.2.96.99 compiled with vs2008.
- added check 7-zip roms option to game selection dialog.
- updated romsets to match MAME 0.128.

---------------
- Oct.15.2008 -
---------------
- updated megadrive driver.
- support load archive megadrive roms (zip or 7z).
- small update to pac-man driver. [iq_132]
- updated romsets to match MAME 0.127u8.

---------------
- Sep.24.2008 -
---------------
- based on FB Alpha v0.2.96.98 compiled with vs2008.
- fixed neogeo default macro.

---------------
- Sep.21.2008 -
---------------
- based on FB Alpha v0.2.96.97 compiled with vs2008.
- added an option to save neogeo decrypted M1 roms.
- updated romsets to match MAME 0.127u4.

---------------
- Sep.13.2008 -
---------------
- based on FB Alpha v0.2.96.96 compiled with vs2008.
- added reset patches for IPS manager.
- updated neogeo uni-bios.
- added Marvel Vs. Capcom: Clash of Super Heroes (Euro 980123).
- updated romsets to match MAME 0.127u2.

---------------
- Sep.01.2008 -
---------------
- based on FB Alpha v0.2.96.95 compiled with vs2008.
- changed CPS refresh rate to match MAME.
- updated romsets to match MAME 0.127u1.

---------------
- Aug.29.2008 -
---------------
- based on FB Alpha v0.2.96.94 compiled with vs2008.

---------------
- Aug.28.2008 -
---------------
- based on FB Alpha v0.2.96.93 compiled with vs2008.
  (some features were not added, like auto-download, gameinfo dialog...)
- added IPS manager from official build.
- updated 7-Zip LZMA SDK to 4.60b. (http://www.7-zip.org/)
- updated romsets to match MAME 0.127.

---------------
- Jul.30.2008 -
---------------
- based on FB Alpha v0.2.96.89 compiled with vs2008.
- seperated Kaneko 16, Psikyo and Pacman driver.
- updated romsets to match MAME 0.126u2.

---------------
- Jul.27.2008 -
---------------
- based on FB Alpha v0.2.96.88 compiled with vs2008.
- added Street Fighter driver. [iq_132]
- updated romsets to match MAME 0.126u1.

---------------
- Jul.19.2008 -
---------------
- based on FB Alpha v0.2.96.86 compiled with vs2008.
- updated CPS1 bootlegs.
- updated romsets to match MAME 0.126.

---------------
- Jun.30.2008 -
---------------
- added some CPS1 hacks.
- updated some CPS1 DIPS.
- added The King of Fighters 2002 PlayStation II. [EGCG]
- added The King of Fighters '96 - 10th Anniversary Edition. [EGCG]
- added Vulgus driver. [iq_132]

---------------
- Jun.21.2008 -
---------------
- based on FB Alpha v0.2.96.85 compiled with vs2008.
- added quizoa to Quiz Olympic driver.
- added Ninja Gaiden driver. [iq_132]
- added Bionic Commando driver. [iq_132]
- updated romsets to match MAME 0.125u6.

---------------
- Jun.07.2008 -
---------------
- based on FB Alpha v0.2.96.84 compiled with vs2008.
- updated 7-Zip LZMA SDK to 4.58b. (http://www.7-zip.org/)
- added CPS2 phoenix romset ssf2tbd, ssf2xjd, sgemfd.
- changed ssf2tb doesn't link at start.
- added The Legend of Silkroad driver. [iq_132]
- updated Pac-man driver. [iq_132]
- updated 1943 driver. [BisonSAS]
- updated Exed Exes driver. [BisonSAS]
- added taito driver unicode title. [BisonSAS]
- updated romsets to match MAME 0.125u4.

---------------
- May.24.2008 -
---------------
- based on FB Alpha v0.2.96.83 compiled with vs2008.
- fixed save decrypted VROM for lans2004.
- fixed CPS1 dinob, dinohb, wofb, added punishrb.
- added CPS2 Mighty! Pang (Euro 001010) as parent romset.
- fixed CPS3 input problem. [BisonSAS]
- added Exed Exes driver. [iq_132]
- added Dr. Tomy driver. [iq_132]
- updated romsets to match MAME 0.125u2.

---------------
- May.09.2008 -
---------------
- based on FB Alpha v0.2.96.82 compiled with vs2008.
- added Pirate Ship Higemaru driver. [iq_132]
- updated romsets to match MAME 0.125.

---------------
- Apr.30.2008 -
---------------
- based on FB Alpha v0.2.96.81 compiled with vs2008.
- added Green Beret / Mr. Goemon driver. [iq_132]
- updated Green Beret / Mr. Goemon driver. [BisonSAS]
- updated Mole Attack driver. [BisonSAS]
- small update to Pooyan and Gunsmoke driver. [BisonSAS]
- changed CPS code to use the mapper tables from MAME.
- updated romsets to match MAME 0.124u4.

---------------
- Apr.19.2008 -
---------------
- based on FB Alpha v0.2.96.80 compiled with vs2008.
- added pooyan driver. [iq_132]
- updated romsets to match MAME 0.124u3.

---------------
- Apr.05.2008 -
---------------
- based on FB Alpha v0.2.96.77 compiled with vs2008.
- added Gun Smoke driver. [iq_132]
- added Scrambled Eggs driver. [iq_132]
- added Funky Bee driver. [iq_132]
- updated Jack the Giantkiller driver. [iq_132]
- updated m90 driver. [Treble Winner]
- updated dec0 driver. [kev]
- updated m6502 core. [kev]
- updated romsets to match MAME 0.124u1.

---------------
- Mar.26.2008 -
---------------
- based on FB Alpha v0.2.96.76 compiled with vs2008.
- updated Jack the Giantkiller driver. [iq_132]
- updated tmnt driver and added wip konami driver. [kev]
- updated romsets to match MAME 0.124.

---------------
- Mar.15.2008 -
---------------
- based on FB Alpha v0.2.96.75 compiled with vs2008.
- fixed some CPS1 and Psikyo DIPS.
- fixed shadfrce DIPS.
- added Mysterious Stones driver. [iq_132]
- added Bank Panic driver. [iq_132]
- added The NewZealand Story driver. [iq_132]
- added sound support for Mr. Do and Bank Panic. [Treble Winner]
- updated romsets to match MAME 0.123u4.

---------------
- Feb.24.2008 -
---------------
- based on FB Alpha v0.2.96.73 compiled with vs2008.
- added mouse left/right double click to select cheat. [Sho]
- fixed sf2turyu.
- added Marvel Super Heroes (USA 951024 Phoenix Edition).
- added Street Fighter Zero 2 (Asia 960227 Phoenix Edition).
- added The Amazing Adventures of Mr. F. Lea driver. [iq_132]
- added Penguin-kun Wars driver. [iq_132]
- added cheat support for m6502 and Z80. [iq_132]
- updated romsets to match MAME 0.123u2.

---------------
- Feb.13.2008 -
---------------
- fixed bug that some sega games cannot be played.
- fixed sfa3, sfa3u unlocked.
- fixed some CPS1 hack DIPS.
- changed seta2 CPU clock to 16.66666MHz.
- added Mole Attack driver. [iq_132]
- added Ambush driver. [iq_132]
- added Pac-man driver. [iq_132]
- added 1942 driver. [Treble Winner]
- added preliminary irem drivers. [kev]
- updated romsets to match MAME 0.123.

---------------
- Jan.24.2008 -
---------------
- compiled with vs2008.
- changed some preliminary drive label to not working.
- minor changes to improve netplay sync.
  (Kaillera p2p client is recommended: http://kaillera.movsq.net)
- updated CPS3 driver sound. [OopsWare]
- added Genesis Driver port from PicoDrive WIP. [OopsWare]
- updated Route 16 driver. [iq_132]
- added Jack the Giantkiller driver. [iq_132]
- added Wall Crash driver. [iq_132]
- added Arkanoid driver. [iq_132]
- added CPS1 The King of Dragons (hack). (Thanks to NEOGEO)
- removed old MD driver.

---------------
- Jan.14.2008 -
---------------
- added 2xPM filter from MAME Plus!. (Thanks to Emuman)
- fixed Super2xSaI filter (some color error). (source from Zsnes, thanks to Emuman)
- added system filtered option will be saved in config file.
- changed not allow to open DIP switch dialog when netplay.
- minor fix for CPS3 driver (gfx, zoom). [OopsWare]
- updated some misc drivers (news, wc90, biomtoy). [BisonSAS]

---------------
- Jan.13.2008 -
---------------
- fixed PGM sound. [OopsWare]
- improved CPS3 driver, added save state. (Thanks to OopsWare & CaptainCPS-X)
- minor changes for Meijinsn driver. [BisonSAS]
- changed CPS3 driver aspect to 4:3.
- added system filter in game selection dialog.
- updated romsets to match MAME 0.122u5.

---------------
- Jan.09.2008 -
---------------
- accomplished CPS3 driver (speedup and some fix). [OopsWare]
- changed to show preview image first in game selection dialog.
- reversed game name and FBA version on screen title.
- added PGM unicode game titles. (Thanks to BisonSAS)
- updated PGM DIPS and controls. [BisonSAS]
- added PGM homebrew: P-GeMeni (060123). [BisonSAS]
- updated romsets to match MAME 0.122u4.

---------------
- Jan.07.2008 -
---------------
- added Meijinsn and 4 En Raya drivers. [iq_132]
- updated CPS3 driver. (Thanks to OopsWare & iq_132 & BisonSAS)
- added cheat support for CPS3 driver. [iq_132]
- minor update to Epos driver. [BisonSAS]
- updated CPS1 bootleg driver.
- updated neogeo driver. (Thanks to iq_132)
 added Metal Slug 5 (set 2)
 added Real Bout Fatal Fury (set 2)
 added The King of Fighters 2003 (set 2)

---------------
- Dec.31.2007 -
---------------
- added Route 16 driver. [iq_132]
- added Quiz Olympic driver. [iq_132]
- minor update for epos driver. [BisonSAS]

---------------
- Dec.29.2007 -
---------------
- added preliminary CPS3 driver. [OopsWare]
- added preliminary psikyosh and suprnova drivers. [OopsWare]
- added gamelist option for CPS3 driver.
- updated CPS1 wof bootleg driver.
- updated CPS2 phoenix romsets.
- added CPS2 phoenix romset ssf2ud.
- updated epos driver, added sound. [iq_132]
- fixed gamelist audit problem for epos driver.

---------------
- Dec.25.2007 -
---------------
- updated 7-Zip LZMA SDK to 4.57. (http://www.7-zip.org/)
- added kawaks/nebula/mame cheat file support. [iq_132]
 (put mame cheat.dat or kawaks/nebula cheat files in cheat folder)
- added a menu item to enable find kawaks/nebula/mame cheat files.
  (If standard FBA .ini cheats aren't found, it looks for nebula/mame cheat data file.)
- neogeo driver cleanup. (Thanks to iq_132)
- added epos driver (no sound). [iq_132]
- updated seta2 drivers. [BisonSAS]
- changed Aerofighters and Turbo Force sound z80 to 5mhz.
- added CPS1 Sangokushi II (火凤凰/Fire Phoenix). (Thanks to NEOGEO)
- updated romsets to match MAME 0.122u1.

---------------
- Dec.08.2007 -
---------------
- fixed IPS description.
- added drivers in seta2. [OopsWare]
 Wakakusamonogatari Mahjong Yonshimai (Japan)
 Kosodate Quiz My Angel (Japan)
 Kosodate Quiz My Angel 2 (Japan) <<-- black screen
 Puzzle De Bowling (Japan)
 Penguin Brothers (Japan)
- updated romsets to match MAME 0.121u3.

---------------
- Dec.04.2007 -
---------------
- added new driver Guardians / Denjin Makai II. [OopsWare]

---------------
- Nov.09.2007 -
---------------
- supported neogeo uni-bios v2.3.
- added Progear no Arashi (Japan 010117 Phoenix Edition).
- updated romsets to match MAME 0.120u3.

---------------
- Oct.16.2007 -
---------------
- added Shinobi (Beta bootleg).
- added Shinobi (Datsu bootleg).
- added Alien Syndrome (set 5, System 16A, FD1089B 317-0037).
- updated romsets to match MAME 0.120.

---------------
- Sep.27.2007 -
---------------
- fixed shadfrcj driver. [Treble Winner]
- added Sega System 1 WIP driver. [Treble Winner]
- updated romsets to match MAME 0.119u1.

---------------
- Sep.14.2007 -
---------------
- added raiden driver. [OopsWare]
- improved irem m92 driver. [OopsWare]
- added more games to galpanic driver. [BisonSAS]
- updated romsets to match MAME 0.119.

---------------
- Aug.05.2007 -
---------------
- based on FB Alpha v0.2.96.72 compiled with vs2005.
- fixed net play crash when not use dx9 mode.
- updated romsets to match MAME 0.117u3.

---------------
- Jul.30.2007 -
---------------
- fixed exporting RC data for unicode build.
- fixed version info in exported CM/RC data file.
- added preliminary irem m92 driver. [OopsWare]
- added 1945kiii and Power Instinct drivers. [OopsWare]
- updated Power Instinct driver (fixed sound, etc). [BisonSAS]
- updated toaplan2 romsets to match MAME 0.117u1.

---------------
- Jul.09.2007 -
---------------
- accomplished Shadow Force driver. [OopsWare]
- added sound to PGM drivers. [OopsWare]

---------------
- Jul.04.2007 -
---------------
- fixed some CPS1 default DIPS. (thanks to EXIORI for reporting)
- updated PGM drivers. [iq_132]

---------------
- Jul.02.2007 -
---------------
- based on FB Alpha v0.2.96.71 compiled with vs2005.
- fixed neogeo visible display width, it will set the width to 320/304 automatically.
  the "set visible area" option is not needed now.
- added PGM (no sound), galpanic and Video System drivers. [OopsWare]
- added preliminary Shadow Force driver. [OopsWare]
- ported more PGM drivers from MAME. [iq_132]
- updated Video System, Toaplan, dec0 drivers. [BisonSAS]
- updated some misc drivers. [BisonSAS]
- updated romsets to match MAME 0.116u3.

---------------
- Apr.24.2007 -
---------------
- based on FB Alpha v0.2.96.71 compiled with vs2003.
- added item "Show ROM info" to game selection dialog context menu.
- added preliminary dec0 driver. [kev]
- added misc games riot and ginkun. [BisonSAS]
- updated psikyo driver. [BisonSAS]
- CPS driver cleanup. [iq_132]
- added CPS1 region hacks: mbombrdu, mbombrda, mbombrdh, mbombdje.
- fixed CPS2 3players/4players hacks.
- renamed rom names to follow 8.3 naming conventions.

---------------
- Apr.06.2007 -
---------------
- based on FB Alpha v0.2.96.68 compiled with vs2003.
- added 7-Zip support. (http://www.7-zip.org/)
- added a new menu style "VS Extra". (Thanks to CaptainCPS-X)
- added item "view in MAWS" to game selection dialog context menu.
- changed the filter to delay 0.5 second to filter the game list.
- changed to place MD games image in previews\MD, titles\MD, flyers\MD folder.
- changed CPS1 Z80 and YM2151 cycles to match MAME.
- fixed some CPS1 DIPS and game names.
- updated tmnt, madgear, tigerheli drivers. [BisonSAS]
- updated romsets to match MAME 0.114.
- removed CPS1 region hacks: slammasa, slammash. (use IPS instead)
* MAME Plus! IPS V3.0 20070329 package is recommended.

---------------
- Mar.21.2007 -
---------------
- based on FB Alpha v0.2.96.67 compiled with vs2003. [Treble Winner, Kev]
- updated some Taito 68k games. [BisonSAS]
- some minor changes.

---------------
- Mar.15.2007 -
---------------
- based on FB Alpha v0.2.96.66 compiled with vs2003. [Treble Winner, Kev]
- added a simple jukebox for neo,cps1/2 games. (Thanks to CaptainCPS-X, iq_132)
  (put sound.dat of caname in .\config folder)
  You can also use the shortcut keys to switch soundtracks:
  pagedown       ==> next track
  pageup         ==> previous track
  shift+pagedown ==> next section
  shift+pageup   ==> previous section
- added all MD games ported from HazeMD (no sound, and some gfx problems). [KEV]
- changed IPS to all unicode support to match MAME Plus!. (Thanks to MAME Plus! Team)
* Thanks to tcwlee, lxglxg, Avens, and others for advice and reporting bugs.

---------------
- Mar.03.2007 -
---------------
- added "default" button in set misc paths dialog.
- added a "quick load game" option. (you can open zip file, FBA .fr and .fs format files directly)
- changed max IPS per game from 77 to 128.
- changed GUI in game selection dialog to display game titles, flyers. (Thanks to CaptainCPS-X)
- added set flyers and titles image paths in set misc paths dialog.
- updated IPS code to match MAME Plus!.

---------------
- Mar.01.2007 -
---------------
- based on FB Alpha v0.2.96.64 compiled with vs2003. [Treble Winner]
- fixed saving neogeo decrypted rom for Unicode build.
- added a custom resource in .\res\splash.bmp.
- fixed a minor memory release problem for background image.
- added some MD games (no sound, and some gfx problems): [KEV]
 Bare Knuckle III (J)
 Genesis 6-Pak (U)
 Sonic Classics (Compilation) (UE) (REV01) [!]
 Sonic Classics (Compilation) (E) (REV00) [!]
 Sonic The Hedgehog
 Streets of Rage 2 (JE)
 Story of Thor, The - A Successor of The Light (J)
 Yuu Yuu Hakusho - Makyou Toitsusen (J)
 Raiden Trad (JU)

---------------
- Feb.20.2007 -
---------------
- based on FB Alpha v0.2.96.62 compiled with vs2003. [Treble Winner]
- fixed sound for jyangoku and choko.
- added Rastan Saga (Japan rev 1).

---------------
- Feb.19.2007 -
---------------
- fixed "set visible area" problem in DX9 experimental mode. (still buggy)
- added Garou - Mark of the Wolves (bootleg). [David Haywood, JohnBoy]
- updated decrypted CPS2 games from MAME 0.112u2:
 Dungeons & Dragons: Tower of Doom (Asia 940113) [Nicola Salmoria]
 X-Men: Children of the Atom (Hispanic 950331) [Nicola Salmoria]
 Armored Warriors (Asia 940920) [Nicola Salmoria]
 Street Fighter Zero (4 sets) [Nicola Salmoria]
 Dungeons & Dragons: Shadow over Mystara (Brazil 960223) [Nicola]
 Mega Man 2: The Power Fighters (Asia 960708) [Nicola Salmoria]
 Street Fighter Zero 2 (6 sets) [Nicola Salmoria]
 X-Men Vs. Street Fighter (7 sets) [Nicola Salmoria]
 Battle Circuit (Asia 970319) [Nicola Salmoria]
 Marvel Super Heroes Vs. Street Fighter (2 sets) [Nicola Salmoria]
 Super Gem Fighter: Mini Mix (Hispanic 970904) [Nicola Salmoria]
 Hyper Street Fighter 2 (Japan 031222) [Nicola Salmoria]
 Giga Wing (Asia 990222) [Nicola Salmoria]
 1944: The Loop Master (Japan 000620) [Nicola Salmoria]
 Progear (Asia 010117) [Nicola Salmoria]

----------------
- Feb.14.2007 -
----------------
- changed F1 speed up, now it works the same as official FBA.
- changed the neogeo screen size to 320x224 pixels again.
- added "set visible area.." to specify the visible area of any game. (buggy)
- updated games from MAME 0.112u1:
 Eco Fighters (USA 931203) [Nicola Salmoria]
 Ultimate Ecology (Japan 931203) [Nicola Salmoria]
 Eco Fighters (Asia 931203) [Nicola Salmoria]
 Night Warriors: Darkstalkers' Revenge (Hispanic 950403) [Nicola]
 Night Warriors: Darkstalkers' Revenge (Brazil 950403) [Nicola]
 Mighty! Pang (USA 001010)

----------------
- Jan.28.2007 -
----------------
- based on FB Alpha v0.2.96.61 compiled with vs2003. [Treble Winner]
- renamed the emulator to "FB Alpha shuffle".
- fixed the select random background images will not work after changing skin folder.
- updated CPS2 decrypted keys from MAME. [Nicola, Andreas]
- the gameinfo text will also be translated if you use translated gamelist.
- fixed some CPS game names to match MAME Plus!.
- added neogeo decrypted games:
 Crouching Tiger Hidden Dragon 2003 Super Plus (fully decrypted)
 Metal Slug 5 (fully decrypted)
 Metal Slug 5 (not encrypted)
 Metal Slug 5 Plus (fully decrypted)

----------------
- Jan.12.2007 -
----------------
- added show unavailable/missing games if you type "lamer" in the filter.
- added support jpg and gif format for background image. (maybe unstable)
- changed the default image menu style to Office menu style.
- fixed two IPS description memory leaks.
- added IPS description for ANSI build, now it's same as the Unicode build (except the transparency).
- added some CPS2 working games from MAME. [Nicola, Andreas]
- added save CPS2 XORs and decrypted PROMs. (Thanks to iq_132)
  (it will be saved to .\config\droms\xxxd.xxx)
- added CAVE game "Thunder Heroes" from MAME. [iq_132]

----------------
- Dec.30.2006 -
----------------
- added games from MAME:
 Mega Man - The Power Battle (CPS2, USA 951006)
 Rockman: The Power Battle (CPS2, Japan 950922)
- removed kof98cd.

----------------
- Dec.29.2006 -
----------------
- added save preset.
  (click right mouse button on "Use preset" button in "Map game input" dialog)
- fixed minor problems of image menu.
- fixed the bug that the license dialog will be hid at first run.
- removed "Switch to fullscreen after loading game" option.
- added "Always on top when playing games" option.
- added A+D macro for neogeo games.
- updated/added games:
 Darkstalkers - The Night Warriors (Phoenix Edition, US 940705)
 Hyper Street Fighter II: The Anniversary Edition (Asia 040202)
 Puzz Loop 2 (Euro 010302) XOR
 SVC Chaos - SNK vs CAPCOM (fully decrypted)
 The King of Fighters 2000 (fully decrypted)
 Frog Feast
- updated macros.dat, removed some AB,BC macros.

----------------
- Dec.14.2006 -
----------------
- fixed crash of push F7 on GUI when not playing game.
- updated the region DIPS in the Battle Bakraid and Batrider drivers. [BisonSAS]
- added "Hyper Street Fighter II - The Anniversary Edition (Phoenix Edition, Asia 040202)". [iq_132]
- updated new XORs from MAME and deleted hacked XORs:
 Choko (010820 Japan)
 Capcom Sports Club (Euro 970722)
 Jyangokushi: Haoh no Saihai (Japan)
 Puzz Loop 2 (Japan 010205)
 Street Fighter Zero (Japan 950727)
 Street Fighter Zero (Japan 950627)
 Street Fighter Zero (Japan 950605)
 X-Men - Children of the Atom (Euro 950105)

----------------
- Dec.07.2006 -
----------------
- fixed dinoha, dinohb controls.
- changed back the neogeo screen size to 304x224 pixels.
- changed kof2k3nd romset. (2Vs==>4Vs)

----------------
- Dec.02.2006 -
----------------
- changed GUI for game selection dialog.
- added a filter in game selection dialog. (it also can filter the custom translated game names)
  you can edit the filter string in the file .\config\fbas.ini:
  // User defined filter string, separate with semicolon (';')
  szUserFilterStr fatal fury;samurai shodown
- added IPS language and description tranparency options into game selection dialog.
- changed the neogeo screen size to 320x224 pixels.
- made a change that you can drag the screen to move the window.
- changed use UI default language, now doesn't need to restart emulator.
- now the traslation template can translate more UI strings.
- fixed the "Strikers 1945 (Korea)" crash.
- added eighteen CPS2 Phoenix games.
- sfa3 and some of its clones unlocked.
- added some CPS2 games of 3 Players / 4 Players for kaillera. [mame32k]
- added some neogeo decrypted games:
 Samurai Shodown V / Samurai Spirits Zero (set 1,decrypted C)
 Samurai Shodown V / Samurai Spirits Zero (set 2,decrypted C)
 Samurai Shodown V Special / Samurai Spirits Zero Special (set 2, censored, decrypted C)
 Samurai Shodown V Special / Samurai Spirits Zero Special (set 3, censored, decrypted C)
 The King of Fighters 2003 (fully decrypted)
 The King of Fighters 2004 Plus / Hero (bootleg, fully decrypted)
 The King of Fighters 2004 Ultra Plus (bootleg, fully decrypted)

----------------
- Nov.04.2006 -
----------------
- added new games from MAME 0.109u5:
 Teenage Mutant Hero Turtles (UK 2 Players, set 2) (no sound)
 Space Battle (bootleg set 2) (no sound)
 Sky Raiders (no sound)
 Strikers 1945 (Korea)
 Solomon's Key (US)
 DonPachi (Hong Kong)
- updated some neogeo AES drivers (Thanks to iq_132, Nsk):
 Crouching Tiger Hidden Dragon 2003 and clones
 Metal Slug 4 and clones
 Metal Slug 5 and clones
 Rage of the Dragons and clones
 Matrimelee and clones
 Sengoku 3 - 戦国伝承２００１ and clones
 Nightmare in the Dark and clones
 The King of Fighters 10th Anniversary - All Team Battle (bootleg) and clones
 The King of Fighters 2000 and clones
 Zupapa! and clones
- fixed cthd2k3a gfx problem. [iq_132]
- added some neogeo CD to MVS Conversion games. (Thanks to oak2003)
- some minor fixes.

----------------
- Aug.30.2006 -
----------------
- minor fixed problems for using background image.
- minor fixed IPS description display.
- fixed a bug that is the cause of increasing cpu usage to 100% when you close
  game selection dialog with setting rom paths dialog opened.
- fixed the menu item "Play" of IPS context menu cannot be translated.
- fixed gfx problem of "Cadillacs and Dinosaurs (Hack set 2)" driver.

----------------
- Jul.27.2006 -
----------------
- added galaxian drivers (no sound). [Treble Winner]
- fixed CPS1 Saturday Night Slam Masters and clones. [FBAxxx, BisonSAS]
- added some neogeo decrypted drivers. (Thanks to iq_132)

---------------
- xxx.xx.2006 -
---------------
- first release.
