-------------------------
 FBA shuffle 版本特征说明
-------------------------
* 基于 FBA 0.2.95.23 原版定制, 悉心优化和细致调整的界面, 简洁高效的各种设置, 更好的用户体验.
* 绝对不含任何恶意代码和链接, 不改写注册表信息, 不在系统目录生成文件.
- 添加 AVI 录制. [Gangta, emufan]
- 添加支持中文游戏列表. [Sho, 800]
  导出游戏列表时支持导入 MAMEPlus! 的 mamep.lst. (mamep.lst 保存为 utf8 bom 编码放在 fbas.exe 或 config 目录)
  如果勾选了使用本地列表, 导出的游戏列表会包含当前选中的列表中已翻译过的内容.
- 添加 IPS v4 支持, 代码来自 MAME Plus!, 在游戏名上右键选择. (感谢 Emuman, emufan)
- 添加选择和自动选择背景图片功能 (支持 png, jpg, bmp 等格式).
- 添加可设置各种路径.
- 添加了保存默认按键功能, 在按键设置对话框中按 "保存为默认".
  (分为 neo, cps 和 其它 这三类, 文件保存在 config/presets 下)
- 添加自定义图标, 保存在 res 文件夹, 可用自己喜欢的图片替换它们.
- 添加游戏列表中显示分数, 选人, 关底, 游戏结束等预览图片. (http://www.progettosnaps.net/)
- 添加支持读取压缩包内的游戏预览图片, 支持 zip 和 7z 格式.
  (压缩包命名: snap, titles, flyers, score, select, boss, gameover, 扩展名为 zip 或 7z)
- 支持直接读取压缩包内的作弊文件(命名: cheat.zip/7z), 支持游戏时选择作弊文件和重新载入作弊.
- 添加游戏列表过滤器, 支持筛选翻译过的中文游戏名. (输入 "lamer" 可显示你缺少的游戏)
  你可以编辑 fbas.xml 中的"user-filter"值来自定义筛选字符, 使用分号分隔.
- 添加游戏收藏夹功能 (文件保存在 config/favorites.xml).
- 添加游戏录像的"撤销"和"回退"功能. [blip]
- 添加可调整游戏运行速度 (默认快捷键shift + +/-) 和录像运行帧数显示. [blip]
- 添加 7-Zip 压缩文件支持. (http://www.7-zip.org/)
- 添加 XAudio2 声音输出模式. (需要安装新的 DirectX 运行库或 DXSDK)
- 添加 OpenAL 声音输出模式.
- 添加 OpenGL, GDI, Direct2D 视频模式.
- 添加可选择声音设备和可以为全屏模式选择显示适配器.
- 加入连射功能, 可以在按键设置对话框里开启连射和改变连射延迟的值.
  (勾选按键设置里的选择框来启用对应按键的连射, 对方向键无效)
- 添加设置自定义组合键功能. (通过按键设置里的"自定义组合键"按钮进入)
- 添加自定义快捷键功能. (感谢 mauzus)
- 添加"反转立体声"选项和各种 DSP 效果.
- 添加游戏回退功能, 需设置快捷键, 默认关闭. (内存使用大小和帧间隔可手动改配置文件)
- 改变模拟器不需要依赖 kailleraclient.dll 也可以启动.
  可以把 kailleraclient.dll 放到根目录, 就可以使用网络联机功能. (x64 版本不可使用)
- 所有 romsets 同步 MAME Plus!.
- 清理官方版中的无用功能.
- 感谢星星对 PGM 驱动提供的支持.
- 非常感谢 OopsWare (http://oopsware.googlepages.com/) 增加 PGM, CPS3 和其他很多驱动到 FBA.

+ 快捷键 (在菜单的设置==>快捷键对话框里可自定义模拟器热键):
 部分默认的快捷键:
 Space           = 游戏时，按住此键为加速.
 Backspace       = 游戏中显示 FPS.
 F6              = 打开游戏列表对话框.
 Ctrl + F4       = 退出游戏.
 Ctrl + F1       = 开启作弊.
 F2 / F3         = 开启调节 DIPS / 复位游戏.
 F5 / Ctrl+F5    = 设置控制键位 / 设置 DIPS.
 F8 / F11        = 激活 上一个/下一个 存盘点.
 F9 / F10        = 从当前激活的存盘点 读取/保存 存档.
 F12 / Ctrl+F12  = 保存截图/打开截图工厂
 Alt + 1/2/3/4/5 = 调整窗口大小.
 Alt + P/R/T     = 运行/记录/停止 录像.
 Alt + V/E       = 录制/停止 AVI 录像.
 +/-             = 音量 升高/降低.
 Shift + +/-     = 调整模拟速度.
 Ctrl + F        = 切换窗口化全屏模式.
 Ctrl + M        = 启动 neogeo multi-slot.

+ 如何运行 Neogeo multi slot 游戏:
 运行游戏列表中的 neomvs 可以启动 neo multi-slot 对话框，然后选择要载入的游戏.
 也可以设置快捷键来直接启动.

+ 命令行支持:
 fbas -g <game> [-listxml|-w|-r <width>x<height>|-d <depth>|-ips]
 <game> = 游戏名. 你同样可以指定即时存档或录像的文件名.
 -w     = 使用窗口模式运行.
 -r     = 指定一个分辨率.
 -d     = 指定一个色深.
 -ips   = 使用已经配置过的ips.
 如果没有指定-a和-r, 默认使用全屏模式. 举例：
 fbas -g sfa3 -r 800x600 -d 32 -ips
 fbas -g awesome_sfzch_recording.fr -w
 fbas -g vsav2 -w

+ 游戏多个预览图片命名 (默认图片滚动时间 2.5 秒)
  图片命名示例: mvsc.png, mvsc [02].png, mvsc [03].png...
  MD 游戏图片放到 previews\MD, titles\MD, flyers\MD.

刷新游戏: 游戏列表界面按 F5. (注意焦点要在列表上)
模拟器语言选择: Misc ---> Select UI language... ---> 选择 lang 目录下的相应 dll.
游戏例表语言选择: Misc ---> Select gamelist... ---> 选择 lang 目录下的游戏列表.
使用 Lua 脚本: 设置快捷键中的"新建 Lua 窗口", 按键后即可打开.
使用回退功能: 设置中打开"允许使用回退"选项, 设置快捷键中的"回退", 游戏中按住快捷键.

* FBA shuffle 的维护者: KOF2112, Leaf, Creamymami.
* 请不要发送此版本的任何错误报告给官方 FBA 团队.
* FBA shuffle 项目主页: http://code.google.com/p/fbashuffle/

---------------------------------------------------------
 FB Alpha site: http://fba.emuunlim.com/
 EGCG forum: http://www.egcg.com.cn/bbs/
 MAWS site: http://www.mameworld.net/maws/
 progetto-SNAPS site: http://www.progettosnaps.net/
 MAME Plus! site: http://mameicons.free.fr/mame32p/
---------------------------------------------------------


----------------------
 FBA shuffle 更新记录
----------------------

----------------------
- v2.4.0  2013-12-31 -
----------------------
- 更新 zlib 到 1.2.8. (http://www.zlib.net)

----------------------
- v2.3.0  2012-06-06 -
----------------------
- 为还在使用上世纪电脑的玩家重新加回了 DirectDraw 模式. :)
- 修正了 win7 下 DirectDraw 模式退出全屏崩溃的问题.
- 修正结束联网游戏后连射功能被关闭的问题.

----------------------
- v2.2.6  2012-05-03 -
----------------------
- 修正某些驱动无法使用回退功能.
- 修正其他的一些小问题.

----------------------
- v2.2.5  2012-04-18 -
----------------------
- 修正全屏时退出游戏窗口描画错误. (感谢 110cjy 报告问题)
- 修正游戏启动时的爆音.
- 修正选择无声音输出时某些游戏崩溃.
- 添加游戏回退功能, 需设置快捷键, 默认关闭. (内存使用大小和帧间隔可手动改配置文件)
- 禁用一些 x64 版本不支持的选项, 以免引起误解.

----------------------
- v2.2.4  2012-04-03 -
----------------------
- 改进所有的声音输出模式.
- 改进新的文件夹浏览对话框.
- 改进声音音量调整, 可从0调整到200%.
- 改进 MAME 作弊文件对多 cpu 的支持.
- 添加声音延迟设置.
- 添加声音同步选项.
- 添加支持 PPMd 算法的压缩文件.
- 删除自动跳帧设置.

----------------------
- v2.2.3  2012-03-28 -
----------------------
- 添加是否启用作弊的选项. (覆盖老版本运行时记得打开)
- 添加 MAME 作弊文件支持, 模拟器会自动识别 xml 文件是 FBAS 还是 MAME 格式的.
  同样也支持压缩包文件(命名: cheat.zip/7z).
  (不完全支持 MAME 的作弊脚本, 效果和从 MAME 转换过来的作弊码差不多)
- 修正重新选择 libburn 文件后第一次运行游戏没有声音的问题.
- 修正其他的一些小问题.

----------------------
- v2.2.2  2012-03-11 -
----------------------
- 加快游戏列表对话框打开速度. (第一次打开除外)
- 更新 zlib 到 1.2.6. (http://www.zlib.net/)

----------------------
- v2.2.1  2012-02-02 -
----------------------
- 修正从命令行运行游戏时弹出的错误提示.
- 扩充可设置的 ROM 路径.
- 为路径设置添加新的文件夹浏览对话框, 方便选择目录.
- 略微优化了下游戏列表速度.

----------------------
- v2.2.0  2012-01-20 -
----------------------
* 由于改动过作弊接口, 此版开始请使用 libburn 2.5 或以上版本.
- 动态分配作弊选项大小, 以适应选项数量非常大的作弊文件.
- 重写画面旋转, 现在和 MAME 一样可以旋转四个方向.
- 删除菜单样式选项. (在 win7 下不美观)
- 删除过时的 DirectDraw 视频输出模式.

----------------------
- v2.1.3  2011-12-31 -
----------------------
- 修正第二次载入游戏时, 读取进度条进度不正确的问题.
- 修正读取作弊文件时, 作弊选项超过最大数目出错的问题.
- 修正重新读取作弊文件.
- 修正录制 AVI 时暂停游戏导致录像停止.
- 改进 re-record 功能, 录像文件中保存更多的信息.
- 录像文件扩展名从 "fr" 改成 "frs". (文件格式可参考 fileformat.txt)
- 录像对话框中添加"从头开始录制"选项.
- 播放录像对话框中添加"录像放完后暂停"选项.

----------------------
- v2.1.2  2011-12-16 -
----------------------
- 修正 rom 校验在某些特殊情况下结果不正确的问题.
- 修正载入老版本语言文件弹出警告后, 没有卸载的问题.
- 添加"反转立体声"选项.
- 添加更多的 DSP 效果.

----------------------
- v2.1.1  2011-12-09 -
----------------------
- 增加语言文件版本检测.
- 导出的 clrmamep data 文件中增加 libburn 版本信息.

----------------------
- v2.1.0  2011-12-04 -
----------------------
* 此版开始不兼容以前的 libburn 1.x, 请使用 libburn 2.0 以上版本.
- 添加 neogeo 多槽模拟. (游戏列表中运行 neomvs 来激活选项)
- 添加直接启动 gens 和 neogeo 多槽模拟的快捷键设置.
- 关于对话框显示详细的 libburn 信息.

----------------------
- v2.0.0  2011-11-11 -
----------------------
- fba shuffle 版本号改为 2.0.0.
- 把 burn 模块拆分成可以动态载入的 dll, 可通过帮助菜单下的"载入 burn 库"来选择不同的 dll.
- 把滤镜拆分为独立的 dll.
- 修正窗口失去焦点又得到焦点后, 用户手动暂停失效的问题.
- 修正启用滤镜并退出游戏后 cpu 占用偏高问题.
- 修正创建 kaillera 游戏列表.
- 修正某些情况下窗口化全屏模式中图像缩放不正确.
- 修正游戏暂停时描画不更新.
- 修正纵版游戏的扫瞄线方向.
- 添加设置自定义组合键功能. (通过按键设置里的"自定义组合键"按钮进入)
- 添加显示模拟器调试信息窗口 (通过修改配置文件中的 log="true" 开启).
- 添加 GDI 视频输出模式. (学习用途, 不推荐使用)
- 添加 Direct2D 视频输出模式. (需 win7 或者 vista sp2 以上系统)
- 部分调整了配置文件的结构. (某些选项需要重新设置)
- 调整所有作弊, 配置文件, 收藏夹, 本地游戏列表文件格式为 xml.
  (可以使用 fbas 的工具 banunu 来转换老的 ini 文件, 注意原文件内有非英文字符的需先转换成 utf8 格式)
- 修改部分默认设置.
- 改进 romset 校验, 需要用到 bios 中的个别 rom 的游戏将不需要检测 bios 中的所有 rom.
- 改进快速载入游戏, 现在支持选择没有在路径里设置过的压缩文件目录.
- 改进使用 Direct3D 模式在 win7 系统下开启 aero 效果后帧数不稳定的情况.
- 优化按键连射效果, 支持组合键连射.
- 按键连射设置会保存到游戏配置文件中.
- 优化游戏列表对话框的焦点切换. (选择或输入过滤之后不会自动切换焦点到列表上)
- 游戏列表上按 F3 会切换焦点到过滤框.
- 如果想从 mamep.lst 导入本地游戏列表, 必须先把 mamep.lst 保存为 utf8 bom 编码.
- 删除不稳定的简易音乐盒. (推荐使用 M1 来听游戏音乐).
- 代码清理和优化.
* 部分驱动的更新需要删除 config/games/ 目录下旧的 nv 文件.

--------------
- 06.01.2011 -
--------------
* 由于改动过即时存档压缩方法, 以前的存档和录像文件从这版开始不通用.
* 作弊文件推荐保存为 utf8(bom) 格式.
- 这版开始升级到 vs2010 编译, 并使用最新的 directx sdk 和 win7 sdk.
- 改进 burn 模块的可移植性.
- 部分驱动改动. [BisonSAS]
- 更新 PGM 驱动, 添加 kovplusb, kovsgqyz, kovsgqyza, kovlsqh, kovassg.
- 添加 neogeo 游戏 lasthpcd, ironclada, quizdaisk, quizkofk, rbffspeck.
- 添加 CPS1 游戏 wofch3p.
- 修正 kovplus 游戏崩溃.
- 修正 snowbros 游戏崩溃.
- 修正一些 CPS2 凤凰版游戏的按键.
- 修正竖版游戏的镜像翻转模式.
- 修正部分驱动读取即时存档错误.
- 修正读取部分作弊文件解析不正确的问题. (感谢 Ams 报告问题)
- 修正 DirectDraw 视频输出模式下运行16位色游戏录制 avi 不正确的问题.
- 修正某些显卡使用 OpenGL 模式时最大化或者全屏窗口时的画面清理问题.
- 修正一些内存泄漏.
- 改进游戏图标显示.
- 优化了从 mamep.lst 中导出中文游戏列表的速度.
- 简化了代码中游戏驱动需要的宏定义.
- 改进导出 clrmampro 文件的精确度.
- 重写扫描线效果, 添加亮度调整.
- 添加了窗口五倍大小选项.
- 重写了 direct3d 视频输出.
- 删除游戏驱动定义中不必要的项目.
- 删除一些垃圾 CPS1 和 neogeo 游戏.
- 移除过时的 Direct3D7 视频输出.
- 移除 Direct3D 视频模式中的动态模糊效果.
- 删除强制使用16位色, 游戏色深会自动使用桌面色深.
- 删除 2xpm, hq2xbold 和 hq3xbold 滤镜. (只支持16位色)
- 删除"非模态菜单"选项, 现在已经不需要了.
- 删除输入宏支持. (严重影响代码结构)
- 清理一些无用的功能.
- 修改部分默认设置.
- 修改选项设置对话框和游戏列表对话框为非模态的, 可即时改变视频设置.
- 更新了 direct input 并且移除了对旧版 dx 库的依赖.
- 更新 zlib 到 1.2.5. (http://www.zlib.net/)
- 更新 libpng 到 1.4.5. (http://libpng.sourceforge.net)
- 一些其它小修正.
- 代码清理和优化.
- 更新 romsets 同步到 MAME 0.141.

--------------
- 06.03.2010 -
--------------
- 更新 burn 模块代码同步到 FB Alpha v0.2.97.08.
- 添加 CPS1 游戏 knightsjb.
- 添加 orlegendca, kov2102, kov2103, kov2106, kov2107, martmast102c.
- 修正 PGM 部分游戏声音问题. (感谢 alix 报告问题)
- 修正 "西游释厄传 Super" 无法使用作弊.
- 修正 lady bug 驱动的部分游戏画面翻转错误.
- 修正 wofch 和 sfzch 的暂停键无法保存.
- 修正 darkseal (暗黑封印) 运行速度. (感谢 PlayerX 报告问题)
- 修正一些 Cave 游戏载入游戏后立刻读取存档黑屏问题. (感谢 doraemoo 报告问题)
- 修正简体中文语言文件中的几处翻译错误.
- 修正 DSound 声音输出模式下从命令行全屏载入游戏没有声音的问题.
- 修正一些警告信息.
- 改进游戏图标显示, 降低 GDI 资源占用, 当克隆游戏图标没找到时会使用父游戏图标.
- 添加在过滤栏内输入 "-romlist" 可导出 rom 名列表.
  (输入 "-mylist" 可导出单个驱动的列表, "-nwlist" 可导出不可运行的游戏列表)
- 添加可以设置图标所在路径.
- 扩充可设置的 ROM 路径到 14 个.
- 修改 rom 校验不区分文件名的大小写. (感谢 PlayerX 的建议)
- 在窗口化全屏模式里不隐藏鼠标指针.
- 删除全屏大小设置中"街机/1x/2x/3x/4x"选项. (同时删除 "-a" 命令行参数)
- 更新 libpng 到 1.4.1. (http://libpng.sourceforge.net)
- 更新 romsets 同步到 MAME 0.136u4.

--------------
- 07.12.2009 -
--------------
- 添加 kovlsqh2, kovlsjb, kovlsjba, kovqhsgs. (感谢 EGCG 的 flycboy, 0 day-s, eddids)
- 添加 neogeo 游戏"超铁战机".
- 修正 电神魔傀 II 黑屏问题.
- 修正无法读取 png 背景图.
- 修正从命令行全屏载入游戏没有声音的问题.
- 修正禁用 CRC 对新扫描方式无效的问题.
- 修正当没有找到游戏列表翻译文件时游戏列表速度变慢的问题.
- 改进了从压缩包读取作弊文件, 现在改为在内存中快速读取.
- 修改重新扫描 romset 为在游戏列表上按 F5.
- 添加显示游戏图标, 需要把 icons.zip/7z 放在 exe 相同目录下.
- 移除"载入压缩的图片/作弊文件"选项, 现在在找不到文件时会去自动检查压缩包.
- 移除"使用旧的扫描方式"选项, 新方法应该已经稳定了.
- 更新 romsets 同步到 MAME 0.135u2.

--------------
- 26.10.2009 -
--------------
- 更新 burn 模块代码同步到 FB Alpha v0.2.97.07.
- 修正 kof98ae 的声音问题. [sjx]
- 修正 kov2 在 x64 版本出错的问题.
- 修正全屏模式下鼠标指针未隐藏的问题.
- 修正 DirectDraw 模式下部分游戏画面旋转错误.
- 增强读取配置文件的容错性, 改动较大时不需要删除旧的配置文件.
- 扩充可设置的 ROM 路径到12个.
- 重新加入"禁用 CRC 检测"选项.
- 重写了语言翻译模块, 现在界面资源保存在 dll 里, 推荐使用汉化软件来翻译.
- 重新整理了菜单选项.
- 添加可以在按键设置对话框里设置是否启用按键连射 (对方向键和宏无效).
- 添加游戏列表中显示游戏宽高, 比例信息.
- 添加了各种选项设置对话框, 减少菜单点击.
- 添加了一个假全屏模式, 即是去除边框把窗口最大化. (默认快捷键: ctrl+F)
- 添加支持 7-Zip LZMA2 方式的压缩文件.
- 为 DirectDraw 显示模式添加了滤镜支持.
- 修改打开作弊搜索的默认快捷键为 Alt+F1, 默认加速键由 F1 改为空格.
- 更新 Blargg 的 File_Extractor 库到 1.0.0. (http://www.slack.net/~ant/)
- 一些其它小修正.
- 更新 romsets 同步到 MAME 0.134u4.

--------------
- 08.10.2009 -
--------------
- 添加了 "拳皇 '98 十周年纪念版". [EGHT]
- 改进了程序对 x64 系统的兼容性.
- 改进了自定义热键, 允许接收 Ctrl/Alt/Shift 组合键, 设置的快捷键在菜单上可显示.
- 改进了"显示 ROM 信息"对话框, 现在可以复制信息了.
- 修正游戏列表中图标描画位置错误的小问题.
- 修正退出游戏后载入相同游戏崩溃的问题.
- 修正 rom 校验中的一个小问题. (感谢 khiav, RaidenII 报告问题)
- 修正重新载入作弊码后使用无效的问题. (感谢 Ams 报告问题)
- 修正连射对一些游戏无效的问题. (比如 aerofgt)
- 修正 OpenGL 模式下未载入游戏时窗口最大化后屏幕清理问题. (感谢 khiav, JoshuaChang 报告问题)
- 修正 Vista 和 Win7 系统下使用 OpenGL 模式菜单栏变黑的问题.
- 修正一个 IPS 关联的问题. (感谢 katana)
- 禁止游戏时调整声音采样率. (感谢 nam1975 报告问题)
- 添加校验时检测 bad dump 的 rom.
- 添加为每个声音输出模式保存各自的声音设备.
- 添加为每个游戏单独保存连射延迟, 可在按键设置对话框里设置.
- 添加"预览图保持游戏宽高比"选项, 不勾选的话则保持图片本身宽高比. (游戏海报保持其本身宽高比)
- 添加可自定义按 F1 加速的速度, 修改 fbas.xml 中"<fastforward speed="2" />"的值, 范围从1到10.
- 添加自动设置显示器比例和手动输入比例选项. (不勾选"自动设置比例", 就会使用你手动输入的比例)
- 添加作弊搜索对话框, 默认快捷键: shift+F1. (m68k 地址较多, 列表速度慢, cpu 慢者慎用)
- 添加一个新的自定义图片资源, 存放在 res/about.bmp.
- 更新了扫描线滤镜.
- 更新了 libpng 到 1.2.40. (http://libpng.sourceforge.net)
- 删除菜单栏上的 Rebar 控件.
- 删除上版误添加的 CPS1 homebrew.
- 更新 romsets 同步到 MAME 0.134u2.
* 这版在使用前最好先删除 fbas.xml.

--------------
- 16.08.2009 -
--------------
- 更新 PGM 驱动, 使 kov2106 可运行. [星星]
- 改进了 m92 驱动. [OopsWare]
- 增加 sf2m9, sf2m10, sf2m11, sf2m12.
- 修正了部分 cps1 游戏保存 eeprom 的问题.
- 添加 msvc, mshvsf, xmvsf 的 4p hack 版.
- 修正对 sh2 cpu 使用作弊的问题.
- 修正部分游戏截图画面翻转不正确.
- 修正 AVI 录制部分游戏画面翻转不正确.
- 修改启动时不强制生成目录 (config 下的除外), 必需的截图和存档目录会在使用时自动生成.
- 重写了 rom 校验, 现在速度更快.
- 添加了"使用旧的扫描方法"选项, 如果在新方法中遇到问题, 请改回旧方法. (旧的扫描方式速度也有提高)
- 改进了预览图缩放方法, 现在速度更快.
- 游戏列表对话框中添加驱动选择, 并且移除以前的驱动选择树形列表.
- 游戏列表对话框中添加"不显示图标"选项.
- 游戏列表对话框中添加显示 bosses 预览图. (http://www.progettoemma.net/snaps/)
- 添加一个新的自定义图片资源, 存放在 res/misc.bmp.
- 添加作弊文件和本地游戏列表的 UTF8(BOM) 格式支持.
- 添加了自定义热键, 基于FBA-RR. (http://code.google.com/p/fbarr/)
- 添加了可选择声音设备.
- 添加了可以为全屏模式选择显示适配器.
- 修改 D3D9 模式默认使用软件顶点处理, 使得一些集成显卡也可以使用 D3D9 模式.
- 为 D3D9 模式添加 "使用硬件顶点处理" 选项.
- 为 D3D9 模式添加了录像时的帧数显示.
- 为 D3D9 模式添加了滤镜并且移除以前的 shader 支持.
- 为 D3D9 模式添加了动态模糊效果.
- 添加了 OpenGL 视频模式. (暂不支持屏幕文字显示)
- 为所有视频模式添加了垂直同步支持. (感谢 Dante, lzsgodmax, k600c 帮助测试)
- 添加对比度/亮度和其他的颜色调节.
- 添加了无声音输出模式.
- 添加了 OpenAL 声音输出模式.
- 重新整理了声音缓冲设置对话框.
- 增加第一次运行时自动设置窗口比例.
- 更新了 libpng 到 1.2.38. (http://libpng.sourceforge.net)
- 删除了 PNGlib, 重新使用 libpng 来读取 png 图片.
- 修改保存 neogeo, cps2 解密 rom 到 exe 目录下而不是以前的 config/droms.
- 将程序配置文件从 ini 改为 xml 格式.
- 删除"禁用文件大小和 CRC 检测"选项.
- 删除"保存预览图"选项.
- 删除"现在就保存按键设置"选项. (按键设置文件会在关闭按键设置对话框后自动保存)
- 删除 DirectDraw SoftFX 视频模式.
- 删除 Direct3D7 视频模式下的 RGB 效果.
- 删除"强制图像为滤镜大小"选项.
- 删除屏幕上显示状态图标.
- 删除所有汇编写的声音处理函数.
- 许多其他小修正.
- 更新 romsets 同步到 MAME 0.133u2.

--------------
- 03.06.2009 -
--------------
- 更新 burn 模块代码同步到 FB Alpha v0.2.97.06.
- 重新加入"载入游戏后自动全屏"选项.
- 修正了一处 IPS 说明文字的内存泄漏.
- 更新 romsets 同步到 MAME 0.131u3.
* 这版在使用前请先删除 config/games 下的所有文件.

--------------
- 27.05.2009 -
--------------
- 更新 PGM 驱动 (合并了前几版的改动).
- 更新 ddragon3 驱动.
- 修正了 Alien vs Predator 的按键设置信息.
- 优化了使用本地游戏列表的速度 (gamelist.ini 可以保存为 UTF-16LE 格式).
- 使用 GDI+ 来显示皮肤图片.
- 添加了使用 GDI+ 来读取图片.
- 添加了 UI 选项来打开/关闭使用 GDI+ 读取图片.
- 添加了保存默认按键功能 (在按键设置对话框中按"保存为默认").
 (分为 neo, cps 和 其他 这三类, 文件保存在 config/presets 下)
- 添加了选择作弊文件功能 (在作弊设定对话框内按"选择").
- 添加了重新载入作弊码功能.
- 代码清理, 移除所有汇编写的滤镜.
- 移除无用的 svc 盗版驱动.
- 修正一些小 bug. (感谢 Ams, katana)
- 更新 romsets 同步到 MAME 0.131u2.
* 由于改过按键保存代码, 这版最好先删除 config/games 下的所有ini文件.

--------------
- 26.04.2009 -
--------------
- 更新 burn 模块代码同步到 FB Alpha v0.2.97.05.
- 优化了 kovsh 的速度. [星星]
- 添加了 PGM 西游1的区域 hack.
- 修正了语言翻译文件中的一个潜在 bug. (当在一个弹出菜单中嵌套另一个弹出菜单有可能会引发这个问题)
- 修正了部分仅支持16位色的游戏在 DX9 模式下的一个小问题.
- 改变了连射按键的处理 (连射和组合键不会冲突).
- 添加了 DDraw SoftFX 模式下切换滤镜的快捷键 (Alt+Pageup/Pagedown).
- 简化了菜单选项选中后画面重新初始化的流程.
- 调整了 FPS 的显示.
- 改进在关闭声音时也可以使用F1来加速游戏.
- 更新了 MAWS 网站链接.
- 使 burn 模块代码更加独立.
- 增加了更多编译用的预定义.
- 更新 romsets 同步到 MAME 0.131.

--------------
- 31.03.2009 -
--------------
- 更新了 PGM 驱动, 使 olds, olds100 和 kovsh 可运行. [星星] (感谢 iq_132 将驱动转换到 fba)
- 修正了 kovsh 运行 demo 时的贴图错误.
- 增加了部分PGM游戏的区域hack.
- 增加扫描游戏时在进度条下显示rom名称.
- 加入按键连射功能. (可以修改fbas.ini中的"autofireDelay"值来改变连射延迟)
 (目前仅支持 P1 和 P2 的前4个按键，使用 Ctrl/Shift+1/2/3/4 来切换这些键的连射状态)
- 在联网游戏时自动关闭自定义宏和连射键.
- 添加了菜单选项来允许/禁止连射键支持.
- 增加作弊搜索等字符串到导出的翻译模板文件.
- 添加在 DIPS 设置对话框内可以通过鼠标左右键双击切换DIPS.
- 移除了 fr/fs 文件关联选项.
- 修正在 D3D7 模式下开启32位 2xSai 滤镜并使用大尺寸皮肤崩溃的问题.
- 修正一个潜在的压缩文件读取 bug.
- 略微调整了屏幕文字显示.
- 项目中添加了使用 stlport 库.
- 增加了更多编译用的预定义.
- 更新 romsets 同步到 MAME 0.130u2.

--------------
- 09.03.2009 -
--------------
- 更新 burn 模块代码同步到 FB Alpha v0.2.97.04.
- 更新 PGM 驱动. [iq_132]
- 使 olds100a 西游记释厄传 / 特别版 (100 替换版)可运行. [星星]
- 增加了编译用的预定义来方便的使用/禁止一些功能.
- 修正了一个 IPS 关联的小 bug. (感谢 katana)
- 更新 romsets 同步到 MAME 0.129u6.

--------------
- 05.03.2009 -
--------------
- 更新 burn 模块代码同步到 FB Alpha v0.2.97.03 (暂时不支持官方的保存hiscore).
 (特别感谢iq_132更新PGM驱动! :D)
- 添加了 hack 代码使 kov2p 可运行. [星星]
- 改进了 rom 扫描速度.
- 修正了过快点击重新扫描romset导致的崩溃问题.
- 替换 hq2xS 和 hq3xS 滤镜为 snes9x1.51-rerecording 中使用的(稍微快一些).
- 添加了 snes9x1.51 的 hq2xBold, hq3xBold 滤镜. (http://code.google.com/p/snes9x151-rerecording/)
- 添加了 snes9x 的 EPXB, EPXC 滤镜.
- 添加了 vba 的32位色版本 2xSaI，Super2xSaI 和 SuperEagle 滤镜.
- 删除了一些多余的滤镜.
- 添加了 D3D7模式下切换滤镜的快捷键 (Alt+Pageup/Pagedown).
- 重写了当前的 zip/7z 解压代码，基于 Blargg 的 File_Extractor 库. (http://www.slack.net/~ant/)
- 添加了 zlib-1.2.3 代码到 File_Extractor 以替代现在用的静态库.
- 更新了 libpng 到 1.2.35. (http://libpng.sourceforge.net)
- 重写了命令行, 添加了命令"-ips"来激活已经配置过的ips. (参考上面的详细说明)
- 添加了作弊搜索的快捷键.
- 添加支持读取压缩包里的作弊文件 (文件命名: cheat.zip/7z).
- 移除了 kawaks/nebula/mame 作弊文件支持，但仍在源代码中保留.
- 添加了文件拖拽支持 (zip/7z, .fr 和 .fs 格式).
- 重新整理了游戏选择对话框的选项.
- 添加了 CPS1 的wofch.
- 修正一些小 bug.
- 代码清理.
- 更新 romsets 同步到 MAME 0.129u5.

--------------
- 14.02.2009 -
--------------
- 修正了使用 XAudio2 声音输出的 cpu 占用率.
- 升级输入接口到 DirectInput8.
- 使声音选项在运行游戏时可以更改.
- 添加 vba-rerecording 的 hq2xS, hq3xS滤镜. (http://code.google.com/p/vba-rerecording/)
- 添加部分 CPS1 区域 hack.
- 删除 CPS2 一些无用的 romsets: csclubjr.
- 添加 PGM 驱动的默认组合键.
- 清理代码.
- 改良项目兼容性使之在 vs2008 中适应新的 windows/dx sdk.
- 添加 VC 编译用的 makefile 文件.
- 更新 7-Zip LZMA SDK 到4.65. (http://www.7-zip.org/)
- 删除 HAZEMD 驱动.

--------------
- 31.01.2009 -
--------------
- 更新代码同步到 FB Alpha v0.2.97.02 使用 vs2008sp1 编译.
- 初步的为 DX9 加入了屏幕文字显示
- 修正 DX9 模式一些游戏画面显示颠倒(那些有BDF_ORIENTATION_FLIPPED标志的游戏).
- 修正 AVI 录制垂直游戏画面显示颠倒.
- 添加 2xPM LQ 过滤 代码来自 Kega Fusion 插件.
- 添加快捷键到 记录/回放游戏输入 和 AVI录制.
- 添加保存游戏收藏夹 (文件在 config/favorites.ini).
- 更新 7-Zip LZMA SDK 到 4.63. (http://www.7-zip.org/)
- 修正选择无声音后弹出声音初始化失败的警告.
- 重命名图片压缩档 snap.xx, titles.xx, flyers.xx (xx = zip/7z).
  （可以直接使用MAMEUI的图片压缩包）.
- 删除 “导出RC data 数据” (新 RC 可以使用 clrmamep data 文件).
- 删除 "运行 IPS 游戏" 游戏菜单选项.(配置过IPS的游戏将自动使用)
- 添加 "Dogyuun (Licensed to Unite Trading For Korea)".
- 添加3个 CPS2 凤凰版 armwar1d, dimahoud, mmatrixd.
- 清除一些代码.
- 修正一些小 bug.
- 更新 romsets 同步到 MAME 0.129u3.

--------------
- 27.12.2008 -
--------------
- 更新代码同步到 FB Alpha v0.2.97.01 使用 vs2008sp1 编译.

--------------
- 26.12.2008 -
--------------
- 修正 IPSv4 冲突检测管理.
- 修正导出游戏列表的的BUG.
- 修正 ddrago3p 的图形错误.

--------------
- 25.12.2008 -
--------------
- 更新代码同步到 FB Alpha v0.2.96.99 使用 vs2008sp1 编译.
- 改变默认皮肤图片. (感谢 Emuman)
- 更新 7-Zip LZMA SDK to 4.62. (http://www.7-zip.org/)
- 添加导出新格式 clrmamepro data (xml).
- 修正扫描时 clrmamepro data 的警告.
- 添加 XAudio2 声音输出. (需要安装最新 DirectX runtime/SDK)
- 添加声音初始化失败后的弹出警告.
- 支持强制关联,同步更新到 IPS v4. (感谢 Emuman 和 MAME Plus! 小组)
- 重新调整 IPS 对话框.
- 添加显示 score, select 和 gameover 图片显示. (http://www.progettoemma.net/snaps/)
- 使用 PNGlib 代替 libpng 载入 PNG 图片. (faster and easy to use)
  (感谢 Thomas Bleeker 的 PNGlib: http://www.madwizard.org/)
- 添加支持预览图片压缩格式 (zip 和 7z).
  (压缩包命名: preview.xx, title.xx, flyer.xx, score.xx, select.xx, gameover.xx. xx = zip/7z)
- 添加选项能够使用和关闭载入压缩格式的图片预览.
- 添加使用 rebar 菜单选项到 UI 菜单 (目前的rebar菜单没有用处，建议不使用).
- 添加调整窗口大小的快捷键 (Alt+1/2/3/4/S).
- 添加 UI 效果选项到 UI 菜单. (来源自 Gens+ 和 Zsnes)
- 添加 导出/载入 游戏例表文件选项到 UI 菜单
- 改变kailleraclient列表的游戏名显示, 例如 "Commando (World) [commando]".
- 修正 player3 和 kodh.
- 添加 CPS1 dinohc.
- 添加 DIPS 到 dinoh, dinoha, dinohc.
- 一些代码的清理.
- 更新 romsets 同步到 MAME 0.128u7.
* 圣诞快乐~!

--------------
- 19.10.2008 -
--------------
- 更新代码同步到 FB Alpha v0.2.96.99 使用 vs2008 编译.
- 添加是否扫描 7-zip roms 的选项.
- 更新 romsets 同步到 MAME 0.128.

--------------
- 15.10.2008 -
--------------
- 更新 megadrive 驱动.
- 支持载入 megadrive roms (zip or 7z).
- 更新 pac-man 驱动. [iq_132]
- 更新 romsets 同步到 MAME 0.127u8.

--------------
- 24.09.2008 -
--------------
- 更新代码同步到 FB Alpha v0.2.96.98 使用 vs2008 编译.
- 修正 neogeo 默认宏.

--------------
- 21.09.2008 -
--------------
- 更新代码同步到 FB Alpha v0.2.96.97 使用 vs2008 编译.
- 添加选项 保存NEOGEO解密 M1 roms.
- 更新 romsets 同步到 MAME 0.127u4.

--------------
- 13.09.2008 -
--------------
- 添加重置 IPS 选项.
- 修正IPS预览图片显示错乱
(在我本机Vista和XP系统上打开IPS窗口后当切换到其它程序在换回IPS窗口后IPS图片显示成其它游戏图片或不显示)
- 添加 Marvel Vs. Capcom: Clash of Super Heroes (Euro 980123)

--------------
- 12.09.2008 -
--------------
- 更新代码同步到 FB Alpha v0.2.96.96 使用 vs2008 编译.
- 更新 neogeo uni-bios.
- 更新 romsets 同步到 MAME 0.127u2.

--------------
- 01.09.2008 -
--------------
- 更新代码同步到 FB Alpha v0.2.96.95 使用 vs2008 编译.
- 同步更新 CPS 刷新率到 MAME.
- 更新 romsets 同步到 MAME 0.127u1.

--------------
- 28.08.2008 -
--------------
- 更新代码同步到 FB Alpha v0.2.96.94 使用 vs2008 编译.

--------------
- 27.08.2008 -
--------------
- 更新代码同步到 FB Alpha v0.2.96.93 使用 vs2008 编译.
  (部分功能不添加, 如 自动-下载, gameinfo dialog...)
- 添加 IPS 管理同步官方.
- 更新 7-Zip LZMA SDK 到 4.60b.
- 更新 romsets 同步到 MAME 0.127.

--------------
- 30.07.2008 -
--------------
- 更新代码同步到 FB Alpha v0.2.96.89 使用 vs2008 编译.
- 分类 Kaneko 16, Psikyo and Pacman 驱动.
- 更新 romsets 同步到 MAME 0.126u2.

--------------
- 27.07.2008 -
--------------
- 更新代码同步到 FB Alpha v0.2.96.88 使用 vs2008 编译.
- 添加 街头霸王 驱动. [iq_132]
- 更新 romsets 同步到 MAME 0.126u2.

--------------
- 23.07.2008 -
--------------
- 更新代码同步到 FB Alpha v0.2.96.87 使用 vs2008 编译.
- 更新 romsets 同步到 MAME 0.126u1.

--------------
- 19.07.2008 -
--------------
- 更新代码同步到 FB Alpha v0.2.96.86 使用 vs2008 编译.
- 更新 CPS1 盗版.
- 修正 Neo Geo svcboot 和 kf2k3bl IPS 无效的问题
- 更新 romsets 同步到 MAME 0.126.

--------------
- 30.06.2008 -
--------------
- 添加 some CPS1 hacks 飆風戰警.
- 更新 some CPS1 DIPS.
- 添加 Vulgus 驱动. [iq_132]
EGCG官方授权支持,
- 添加 拳皇 2002 PlayStation II [EGCG]
- 添加 拳皇 '96 - 十周年纪念版 [EGCG]
没加拳皇2002:天国神族第三版.这个可以用FBAS支持的kof2k2nd来做IPS.

--------------
- 21.06.2008 -
--------------
- 更新代码同步到 FB Alpha v0.2.96.85 使用 vs2008 编译.
- 添加 quizoa 到 Quiz Olympic 驱动.
- 添加 Ninja Gaiden 驱动. [iq_132]
- 添加 Bionic Commando 驱动. [iq_132]
- 更新 romsets 同步到 MAME 0.125u6.

--------------
- 07.06.2008 -
--------------
- 更新代码同步到 FB Alpha v0.2.96.84 使用 vs2008 编译.
- 更新 7-Zip LZMA SDK to 4.58b.
- 添加 CPS2 phoenix romset ssf2tbd, ssf2xjd, sgemfd.
- 更改 ssf2tb doesn't link at start.
- 添加 The Legend of Silkroad 驱动. [iq_132]
- 更新 Pac-man 驱动. [iq_132]
- 更新 1943 驱动. [BisonSAS]
- 更新 Exed Exes 驱动. [BisonSAS]
- 添加 taito driver unicode title. [BisonSAS]
- 更新 romsets 同步到 MAME 0.125u4.

--------------
- 24.05.2008 -
--------------
- 更新代码同步到 FB Alpha v0.2.96.83 使用 vs2008 编译.
- 修正 lans2004 VROM 保存解密.
- 修正 CPS1 dinob, dinohb, wofb, 添加 punishrb.
- 添加 CPS2 Mighty! Pang (Euro 001010) as parent romset.
- 修正 CPS3 控制输入问题. [BisonSAS]
- 添加 Exed Exes 驱动. [iq_132]
- 添加 Dr. Tomy 驱动. [iq_132]
- 更新 romsets 同步到 MAME 0.125u2.

--------------
- 09.05.2008 -
--------------
- 更新代码同步到 FB Alpha v0.2.96.82 使用 vs2008 编译.
- 添加 Pirate Ship Higemaru 驱动. [iq_132]
- 更改 CPS 制图代码同步到 MAME.
- 更新 romsets 同步到 MAME 0.125.

--------------
- 30.04.2008 -
--------------
- 更新代码同步到 FB Alpha v0.2.96.81 使用 vs2008 编译.
- 添加 Green Beret / Mr. Goemon 驱动. [iq_132]
- 更新 Green Beret / Mr. Goemon 驱动. [BisonSAS]
- 更新 Mole Attack 驱动. [BisonSAS]
- 更新 Pooyan 和 Gunsmoke 驱动. [BisonSAS]
- 更改 CPS 制图代码同步到 MAME.
- 更新 romsets 同步到 MAME 0.124u4.

--------------
- 19.04.2008 -
--------------
- 更新代码同步到 FB Alpha v0.2.96.80 使用 vs2008 编译.
- 更新 pooyan 驱动. [iq_132]
- 更新 romsets 同步到 MAME 0.124u3.

--------------
- 05.04.2008 -
--------------
- 更新代码同步到 FB Alpha v0.2.96.77 使用 vs2008 编译.
- 添加 Gun Smoke 驱动. [iq_132]
- 添加 Scrambled Eggs 驱动. [iq_132]
- 添加 Funky Bee 驱动. [iq_132]
- 更新 Jack the Giantkiller 驱动. [iq_132]
- 更新 m90 驱动. [Treble Winner]
- 更新 dec0 驱动. [kev]
- 更新 m6502 核心. [kev]
- 更新 romsets 同步到 MAME 0.124u1.

--------------
- 26.03.2008 -
--------------
- 更新代码同步到 FB Alpha v0.2.96.76 使用 vs2008 编译.
- 更新 Jack the Giantkiller 驱动. [iq_132]
- 更新 tmnt 驱动 添加 wip konami 驱动. [kev]

--------------
- 15.03.2008 -
--------------
- 更新代码同步到 FB Alpha v0.2.96.75 使用 vs2008 编译.
- 修正部分 CPS1 和 Psikyo DIPS.
- 修正 shadfrce DIPS.
- 添加 Mysterious Stones 驱动. [iq_132]
- 添加 Bank Panic 驱动. [iq_132]
- 添加 The NewZealand Story 驱动. [iq_132]
- 更新 romsets 同步到 MAME 0.123u4.

--------------
- 24.02.2008 -
--------------
- 更新代码同步到 FB Alpha v0.2.96.73 使用 vs2008 编译.
- 添加作弊支持双击鼠标左键开启和关闭作弊选项. [Sho]
- 修正 sf2turyu.
- 添加 Marvel Super Heroes (USA 951024 Phoenix Edition).
- 添加 Street Fighter Zero 2 (Asia 960227 Phoenix Edition).
- 添加 The Amazing Adventures of Mr. F. Lea 驱动. [iq_132]
- 添加 Penguin-kun Wars 驱动. [iq_132]
- 添加作弊支持 m6502 和 Z80. [iq_132]
- 更新 romsets 同步到 MAME 0.123u2.

--------------
- 13.02.2008 -
--------------
- 修正 bug 部分 sega 游戏不能运行.
- 修正 sfa3, sfa3u 解锁.
- 修正 some CPS1 hack DIPS.
- changed seta2 CPU clock to 16.66666MHz.
- 添加 Mole Attack 驱动. [iq_132]
- 添加 Ambush 驱动. [iq_132]
- 添加 Pac-man 驱动. [iq_132]
- 添加 1942 驱动. [Treble Winner]
- 添加 初步支持 irem 驱动. [kev]
- 更新 romsets 同步到 MAME 0.123.

--------------
- 24.01.2008 -
--------------
- 升级编译器到 vs2008 vc9.0编译.
- 修正一些不可运行游戏图标显示.
- 一些小改动来提升联机游戏的同步.
  (推荐使用 Kaillera p2p 联网。下载地址: http://kaillera.movsq.net)
- 更新 CPS3 声音驱动. [感谢 OopsWare]
- 更新 Route 16 驱动. [感谢 iq_132]
- 添加 Genesis Driver port from PicoDrive WIP. [OopsWare]
- 添加 Arkanoid 驱动. [iq_132]
- 添加 Jack the Giantkiller 驱动. [感谢 iq_132]
- 添加 Wall Crash 驱动. [感谢 iq_132]
- 添加 CPS1 The King of Dragons (hack). (感谢 NEOGEO)
- 添加 neogeo Metal Slug 5 (set 2, decrypted C)
- 添加 neogeo The King of Fighters 2003 (set 2, decrypted C)

--------------
- 14.01.2008 -
--------------
- 轻微修正 CPS3 驱动 (图形,缩放等...). [感谢 OopsWare]
- 添加并从 MAME Plus! 移植 2xPM 显示滤镜. (感谢 Emuman)
- 修正 Super2xSaI 显示滤镜 (一些色彩错误). (代码参考自 Zsnes, 感谢 Emuman)
- 添加系统过滤选项可保存到设置文档的功能.
- 联网时不允许开启 DIP 设置对话框.
- 更新一些杂项驱动 (如：news, wc90, biomtoy). [感谢 BisonSAS]

--------------
- 13.01.2008 -
--------------
- 改善 PGM 声音. [感谢 OopsWare]
- 更新 CPS3 驱动, 添加存档. (感谢 OopsWare & CaptainCPS-X)
- 添加 Meijinsn 驱动. [感谢 BisonSAS]
- 改变 CPS3 驱动显示比例为 4:3.
- 修正 红色地球 区域和F2键死机.
- 在游戏选择对话框添加系统过滤功能.
- 更新 romsets 同步到 MAME 0.122u5.

--------------
- 09.01.2008 -
--------------
- 进一步完善 CPS3 驱动,速度稳步提升. [感谢 OopsWare]
- 调整预览和标题图片的显示位置.
- 调整游戏名到 FBA 标题前面显示.
- 添加 PGM unicode . (感谢 BisonSAS)
- 更新 PGM DIPs 设置. [感谢 BisonSAS]
- 添加 PGM homebrew: P-GeMeni (060123). [感谢 BisonSAS]
- 更新 romsets 同步到 MAME 0.122u4.

--------------
- 07.01.2008 -
--------------
- 更新 CPS-3 驱动. [感谢 OopsWare & CaptainCPS-X]
- 添加 CPS3 F2键的机台设置. [感谢 BisonSAS]
- 锁定红色地球区域
- 更新作弊码修改支持 CPS-3 (sh2 CPU) 游戏. [感谢 iq_132]
- 添加 4 En Raya 驱动. [感谢 iq_132]
- 添加 Meijinsn 驱动. [感谢 iq_132]

--------------
- 03.01.2008 -
--------------
- 更新 CPS3 驱动 [感谢 OopsWare]
  1. sh-2 core add jumptable mode , default set to off .
  2. add speed-up hack code
  3. 添加声音
  4. 修正DIP设置
  5. some other small fix

- 添加 三国志2（火凤凰）声音支持 （感谢 Creamymami）
- 更新 CPU SH2. [感谢 OopsWare]
- 更新 Epos 驱动. [Thanks to BisonSAS & iq_132]
- 更新 neogeo 驱动. [感谢 iq_132]
- 添加 合金弹头 5 (第2套)
- 添加 RB 饿狼传说 (第2套)
- 添加 拳皇 2003 (第2套)

--------------
- 31.12.2007 -
--------------
- 添加 Route 16 驱动. [感谢 iq_132]
- 添加 Quiz Olympic 驱动. [感谢 iq_132]
- 添加 CPS3 驱动 (NOCD) 全部区域的克隆版.  [感谢 CaptainCPS-X & IQ_132 & OopsWare]
- 更新 Epos 驱动. [感谢 BisonSAS & iq_132]

--------------
- 29.12.2007 -
--------------
- 添加 CPS3 驱动. [OopsWare]
- 添加 psikyosh 和 suprnova 驱动. [OopsWare]
- 添加游戏例表 CPS3 驱动选项.
- 更新 CPS1 wof 盗版驱动.
- 更新 CPS2 凤凰版 romsets.
- 添加 CPS2 凤凰版 romset ssf2ud.
- 更新 epos 驱动, 添加声音. [iq_132]
- 修正游戏例表显示错误的 epos 驱动.
- 更新 romsets 同步到 MAME 0.122u1.

--------------
- 25.12.2007 -
--------------
- 更新 7-Zip LZMA SDK 到 4.57.
- 添加支持 kawaks/nebula/mame 模拟器的作弊文件. [iq_132]
 (mame cheat.dat or kawaks/nebula 作弊文件放在 cheat 文件夹)
- 添加菜单"允许使用其他格式作弊文件"选项能够区别 kawaks/nebula/mame 作弊文件.
  (如果没有标准 FBA .ini cheats 文件, 会自动查找 nebula/mame cheat data 文件.)
- neogeo 驱动清理. (感谢 iq_132)
- 更新 seta2 驱动. [BisonSAS]
- changed Aerofighters and Turbo Force sound z80 to 5mhz.
- 删除 HazeMD 驱动.
- 清除 PGM 不能运行的游戏.
- 添加 三国志 II (火凤凰). (感谢 NEOGEO)
- 添加 侍魂 Ⅴ / 侍魂 零 (盗版, 第2套)
- 添加 拳皇 2001 (第2套, C 解密)
- 更新 romsets 同步到 MAME 0.122.

--------------
- 12.07.2007 -
--------------
- 添加 Hang-On
- 更新 seta2 驱动
- 添加 Wakakusamonogatari Mahjong Yonshimai (Japan). [OopsWare]
- 添加 Kosodate Quiz My Angel (Japan). [OopsWare]
- 添加 Kosodate Quiz My Angel 2 (Japan) <<-- 游戏黑屏 . [OopsWare]
- 添加 Puzzle De Bowling (Japan). [OopsWare]
- 添加 Penguin Brothers (Japan). [OopsWare]
- 修复ips的说明，只显示一个斜杠后的内容
- 更新 romsets 同步到 MAME 0.121u3.

--------------
- 12.04.2007 -
--------------
- 添加 电神魔傀 II

--------------
- 11.09.2007 -
--------------
- 添加 Progear no Arashi (Japan 010117 Phoenix Edition)
- 更新 NEOGEO uni-bios-2.3
- 更新 romsets 同步到 MAME 0.120u3.

--------------
- 10.16.2007 -
--------------
- 添加 Shinobi (Beta bootleg)
- 添加 Shinobi (Datsu bootleg)
- 添加 Alien Syndrome (set 5, System 16A, FD1089B 317-0037)
- 更新 romsets 同步到 MAME 0.120.

--------------
- 09.27.2007 -
--------------
- 修正 shadfrcj 驱动. [Treble Winner]
- 添加 Sega System 1 WIP 驱动. [Treble Winner]
- 更新 romsets 同步到 MAME 0.119u1.

--------------
- 09.14.2007 -
--------------
- 添加 raiden.c 雷电驱动. [OopsWare]
- 修正 m92.c 驱动. [OopsWare]
- 添加大部分天蚕变游戏 galpanic.c 驱动. [BisonSAS]
- 更新 romsets 同步到 MAME 0.119.

--------------
- 05.08.2007 -
--------------
- 基于 FB Alpha v0.2.96.72 使用 vs2005 编译.
- 修正DX7模式下联网载入时ROM出错.
- 更新 romsets 同步到 MAME 0.117u3.

* 提供自己整理的简体中文作弊码文件，还缺MD驱动的作弊码没汉化。有时间在整理
* 这套简体中文作弊码文件，不支持官方FBA使用，官方FBA不支持中文显示.会显示乱码。
* 全部简体中文作弊码文件转自阿电制做的MAME简体中文CHEAT

--------------
- 30.07.2007 -
--------------
- 修正导出 RC data 只修正 unicode 版本.
- 修正导出 CM/RC data 文件.
- 添加 铁钩船长 (世界版). [OopsWare]
- 添加 1945k III. [OopsWare]
- 添加 豪血寺一族 (日版). [OopsWare] - 添加声音[BisonSAS]
- 添加 豪血寺一族 (日版, 盗版). [OopsWare] - 添加声音[BisonSAS]
- 添加 豪血寺一族 (美版, 盗版 第1套). [OopsWare]
- 添加 豪血寺一族 (美版, 盗版 第2套). [OopsWare] - 添加声音[BisonSAS]

--------------
- 09.07.2007 -
--------------
- 完善 Shadow Force 驱动支持声音. [OopsWare]
-  PGM 驱动更新增加声音支持. [OopsWare]

--------------
- 04.07.2007 -
--------------
- fixed some CPS1 default DIPS. (thanks to EXIORI for reporting bug)
- updated PGM drivers. [iq_132]

--------------
- 02.07.2007 -
--------------
- 基于 FB Alpha v0.2.96.71 使用 vs2005 编译.
- 修正 neogeo 屏幕黑边和扩大窗口黑屏问题, 320/304 屏幕宽度会自动设置.
  取消使用 "设置可视区域" 选项功能.
- 添加 PGM (没有声音), galpanic and Video System drivers. [OopsWare]
- 添加 preliminary Shadow Force driver. [OopsWare]
- 添加 全部 PGM 驱动同步 MAME. [iq_132]
- 更新 Video System, Toaplan, dec0 drivers. [BisonSAS]
- 更新 部分 misc 驱动. [BisonSAS]
- 更新 romsets 同步到 MAME 0.116u3.

--------------
- 24.04.2007 -
--------------
- 基于 FB Alpha v0.2.96.71 使用 vs2003 编译.
- 添加游戏名上右键选项 "查看 ROM 信息" .
- 添加 dec0 驱动. [kev]
- 添加 misc 添加游戏 雷軋斗 Riot 和 Ganbare Ginkun. [BisonSAS]
- 更新 psikyo 驱动. [BisonSAS]
- CPS 驱动清理. [iq_132]
- 添加 CPS1 hacks: mbombrdu, mbombrda, mbombrdh, mbombdje.
- 修正 CPS2 3players/4players hacks.
- 修正部分NEO游戏同步到MAME PLUS

--------------
- 10.04.2007 -
--------------
- 基于 FB Alpha v0.2.96.70 使用 vs2003 编译.

--------------
- 09.04.2007 -
--------------
- 基于 FB Alpha v0.2.96.69 使用 vs2003 编译.

--------------
- 06.04.2007 -
--------------
- 基于 FB Alpha v0.2.96.68 使用 vs2003 编译.
- 添加支持 7-zip 压缩格式.
- 添加一个新菜单样式 "VS Extra". (感谢 CaptainCPS-X)
- 添加在游戏名上右键 "在MAWS网上查看信息" 功能.
- 修正过滤那栏输入时间间隔 0.5 秒过滤出游戏例表.
- 改变 MD 游戏预览图片和标题图片存放目录 preview\MD, titles\MD, flyers\MD folder.
- 更新 CPS1 Z80 和 YM2151 频率同步到 MAME.
- 修正部分 CPS1 DIPS 和游戏名字.
- 更新 tmnt, madgear, tigerheli 驱动. [BisonSAS]
- 更新 neogeo romsets 同步到 MAME 0.113u3.
- 删除 CPS1 hacks: slammasa, slammash. (IPS 已经支持)
* 推存使用 MAME Plus! IPS V3.0 20070329.

--------------
- 21.03.2007 -
--------------
- 基于 FB Alpha v0.2.96.67 使用 vs2003 编译. [Treble Winner, Kev]
- 更新一些 Taito 68k 游戏. [BisonSAS]
- some minor changes.

--------------
- 15.03.2007 -
--------------
- 更新代码同步到FB Alpha v0.2.96.66
- 添加1570个HazeMD游戏，无声音，也有图形错误.不完善
- 增加支持切换音乐的功能，
- 在游戏这个菜单项上加了个“显示简易音乐合盒”
- 读取音乐列表是在 exe 的 config 目录下。
- 游戏中按 pagedown,pageup是切换音轨；shift+pagedown, shift+pageup 是切换区段.
- 现在即可以在界面上选，也可以按 pagedown,pageup,shift+pagedown 等来选择.
- 如果这个游戏音乐有分类，那窗口是先显示分类，然后双击它，会进入音乐列表。音乐列表第一项“...”是返回分类。
- 游戏里直接按键盘的加号减号就是调音量
- 现在IPS v3完全unicode化了，和plus相同

--------------
- 03.03.2007 -
--------------
- 设置杂项对话框加了个“默认”按钮
- 加了快速打开游戏可以支持游戏 rom 的 zip 格式、fba 的存档 .fs 格式和 fba 的录像 .fr 格式。
- 增加单个游戏支持最大IPS数量77个，改增加到128个
- 可以自定义标题和海报目录。和 mame plus 一样，鼠标点图片的地方，会自动切换到下一项
- 在设置杂项目录里可以设置标题和海报路径。
- 稍微改了下ips的代码，同步到最新的 MAME plus

--------------
- 01.03.2007 -
--------------
- 更新代码同步到FB Alpha v0.2.96.64
- 修正UNICODE版保存解密问题
- 添加几个喜欢玩的HazeMD游戏，无声音，也有图形错误.不完善
 Bare Knuckle III (J)
 Genesis 6-Pak (U)
 Sonic Classics (Compilation) (UE) (REV01) [!]
 Sonic Classics (Compilation) (E) (REV00) [!]
 Sonic The Hedgehog
 Streets of Rage 2 (JE)
 Story of Thor, The - A Successor of The Light (J)
 Yuu Yuu Hakusho - Makyou Toitsusen (J)
 Raiden Trad (JU)
* 以上这几个HazeMD游戏需要关闭ASM MC68000

- spalsh 的图片能自定义了, 在 res\splash.bmp.
- 修正了个skin显示的释放问题。

--------------
- 20.02.2007 -
--------------
- 更新代码同步到FB Alpha v0.2.96.62.
- 修正CPS2游戏 长江 和 雀国志 声音.
- 添加游戏 Rastan Saga (Japan rev 1).

--------------
- 19.02.2007 -
--------------
- 修正了dx9模式下设置可视区域错误
- 更新CPS2游戏解密同步到MAME 112U2
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
 Garou - Mark of the Wolves (bootleg) [David Haywood, JohnBoy]

--------------
- 14.02.2007 -
--------------
- 现在按 F1 加速改回官方的方式了，就是要一直按着，和 MAME 一样
- neogeo 游戏分辨率改为320*224
- 视频菜单下加了个“设置可视区域”，左右各设8就能解决320的黑边问题了
- CPS2更新MAME112u1解密
 Eco Fighters (USA 931203) [Nicola Salmoria]
 Ultimate Ecology (Japan 931203) [Nicola Salmoria]
 Eco Fighters (Asia 931203) [Nicola Salmoria]
 Night Warriors: Darkstalkers' Revenge (Hispanic 950403) [Nicola]
 Night Warriors: Darkstalkers' Revenge (Brazil 950403) [Nicola]
- ROM文件改变 Mighty! Pang (USA 001010)

--------------
- 28.01.2007 -
--------------
- 模拟器更名FB Alpha Shuffle v0.2.96.61
- 更新游戏驱动和代码同步到FB Alpha v0.2.96.61
- 修正skins图片换个目录就不能随机.
- 更新CPS2解密游戏代码
- 游戏信息栏里中文游戏名显示
- 添加游戏
 Crouching Tiger Hidden Dragon 2003 Super Plus (fully decrypted)
 Metal Slug 5 (fully decrypted)
 Metal Slug 5 (not encrypted)
 Metal Slug 5 Plus (fully decrypted)
- 修正CPS一些错误的游戏名，删除部分MAMEPLUS里没有支持的非官方CPS游戏

--------------
- 12.01.2007 -
--------------
- 添加加了个彩蛋,在过滤那栏输入“lamer”就能显示你所有缺少的rom列表
- 界面背景图支持jpg和gif了，菜单上选的新菜单样式默认是office风格
- 修正了2个ips说明的内存泄漏
- 修正了ANSI版ips说明显示和UNICODE版一样正常。只是ips说明不会透明显示
- 添加CPS2几个解密游戏代码 [iq_132]
- 菜单上加了个选项，来确认是不是要保存xor,和保存所有解密的 cps2 的 prom
  现在解密出的文件都放在 config\droms
  下次你继续勾选这个选项，他会直接去读目录下的这个xor文件，这样解密速度就快很多了。
- 选保存解密p－rom，保存出来的rom命名是xxxd.xxx
  比如xmcota: xmne.03e ==> xmned.03e
- 添加CAVE游戏 Thunder Heroes 霹雳英雄   [iq_132]

--------------
- 30.12.2006 -
--------------
- 添加游戏
 Mega Man - The Power Battle (CPS2, USA 951006)
 Rockman: The Power Battle (CPS2, Japan 950922)
- 删除kof98cd

--------------
- 29.12.2006 -
--------------
- 在键位设置的右下角那个“使用预设”的键上点鼠标右键，就能弹出保存预设的对话框。只有那个按键是灰的情况下才行
- 修正了新菜单的小问题
- 修正了第一次运行fba，那个协议的窗口会跳到最后面去的问题
- 去掉载入游戏后自动全屏
- 添加玩游戏时窗口始终在最上层的选项。
- 添加NEO游戏的A+D组合键。
- 添加游戏
 Darkstalkers - The Night Warriors (Phoenix Edition, US 940705)
 Hyper Street Fighter II: The Anniversary Edition (Asia 040202)
 Puzz Loop 2 (Euro 010302) XOR
 SVC Chaos - SNK vs CAPCOM (fully decrypted)
 The King of Fighters 2000 (fully decrypted)
 Frog Feast
- 整理更新NEO部分解密游戏,方便自己做的一些简单的IPS使用
- 更新了下macros.dat，去掉了些没用的AB,BC这种宏，加了些射击游戏的连发

--------------
- 14.12.2006 -
--------------
- 修正了界面上按F7崩溃的问题
- 添加这5个游戏的DIP里多语言设置，感谢BisonSAS提供代码。
 Battle Bakraid (ver. Wed Apr 7 1999)
 Battle Bakraid (ver. Tue Jun 8 1999)
 Armed Police Batrider (Batrider ver. Fri Feb 13 1998, Japan)
 Armed Police Batrider (Batrider ver. Fri Feb 13 1998, Korea)
 Armed Police Batrider (Batrider ver. Mon Dec 22 1997, Japan)
- 添加
 Hyper Street Fighter II - The Anniversary Edition (Phoenix Edition, Asia 040202)  iq_132
- CPS2更新8个CHD解密的XOR's游戏
 Choko (010820 Japan)
 Capcom Sports Club (Euro 970722)
 Jyangokushi: Haoh no Saihai (Japan)
 Puzz Loop 2 (Japan 010205)
 Street Fighter Zero (Japan 950727)
 Street Fighter Zero (Japan 950627)
 Street Fighter Zero (Japan 950605)
 X-Men - Children of the Atom (Euro 950105)
- 删除CPS原来加的Hacked XOR's

--------------
- 07.12.2006 -
--------------
- 添加了那几个hack的炸弹键，还有修正了dinohb的p3不能控制
- neogeo游戏分辨率改回304
- kof2k3nd原2个V改用kf2k3pl的4个V

--------------
- 02.12.2006 -
--------------
- 增加支持筛选功能：支持游戏名，rom名，游戏说明之类的搜索。支持翻译的中文游戏列表里的中文游戏名搜索。
- 增加在fba.ini文件里自己定义要筛选的字符 。在fba.ini里每个字符串后面用分号分隔
// User defined filter string, separate with semicolon (';')
szUserFilterStr 饿狼;侍魂
 默认带拉几个常玩游戏名的搜索
- 增加模拟器例表里可选设置IPS语言和IPS说明文字的透明度设置
- 设置IPS说明文字的透明度设置
 根据自己喜欢透明度改变数字，数字小透明度变大，数字大透明度小。默认透明度是192

- 修正切换语言而不用重启模拟器
 1. neogeo游戏分辨率改为320*224；
 2. 导出的语言文件,现在可以翻译更多的界面文字
- 改了在窗口模式下,有无菜单下都能拖住屏幕移动.
- 修正上版Strikers 1945 (Korea)载入ROM后模拟器非法操作.

- 新加18个CPS2 Phoenix游戏，修正1944d、ringdstd的画面偏移问题
- 街霸zero3的几个版本解锁
- 新加CPS几个3 Players 和 4 Players for kaillera 代码Mame32 Plus Plus
- NEO新加几个解密游戏
 Samurai Shodown V / Samurai Spirits Zero (set 1,decrypted C)
 Samurai Shodown V / Samurai Spirits Zero (set 2,decrypted C)
 Samurai Shodown V Special / Samurai Spirits Zero Special (set 2, censored, decrypted C)
 Samurai Shodown V Special / Samurai Spirits Zero Special (set 3, censored, decrypted C)
 The King of Fighters 2003 (fully decrypted) 更新血条透明解密版
 The King of Fighters 2004 Plus / Hero (bootleg, fully decrypted) 血条透明
 The King of Fighters 2004 Ultra Plus (bootleg, fully decrypted)  血条透明

--------------
- 04.11.2006 -
--------------
- 新加游戏
 Teenage Mutant Hero Turtles (UK 2 Players, set 2) 无声
 Space Battle (bootleg set 2) 无声
 Sky Raiders 无声
 Strikers 1945 (Korea)
 Solomon's Key (US)
 DonPachi (Hong Kong)
 代码来自MAME0109u5

- 更新下面NEO游戏AES驱动.使用AES进入游戏，多拉家用机设置菜单，如kof10th原来AES进入游戏开始后是进入选人画面
 Crouching Tiger Hidden Dragon 2003 包括克隆游戏
 Metal Slug 4 包括克隆游戏
 Metal Slug 5 包括克隆游戏
 Rage of the Dragons  包括克隆游戏
 新豪血寺一族 - 闘婚 ? Matrimelee   包括克隆游戏
 Sengoku 3 ? 戦国伝承２００１   包括克隆游戏
 Nightmare in the Dark    包括克隆游戏
 The King of Fighters 10th Anniversary - All Team Battle (bootleg)     包括克隆游戏
 The King of Fighters 2000   包括克隆游戏
 Zupapa!   包括克隆游戏

- 修正cthd2k3a上版开始画面花屏
 代码驱动感谢IQ_132的帮助 http://neosource.1emulation.com/forums/

- 新加了几个CD to MVS Conversion游戏，和KOF99nd kof2k1nd kof2k2nd完全解密ROM方便使用弄IPS玩HACK
- 一些小修正感谢好友Cless帮助修正

内带简体中文游戏例表和语言文件

--------------
- 30.08.2006 -
--------------
- 只是修正拉上版的部分问题
- 修正SKIN图片扩张名bmp改成大写后SKIN起不了作用的BUG
- 修正一些小SKIN图片显示模糊
- 修正IPS的说明文显示
- 修正开启ROM路径设置窗口后关闭游戏列表窗口造成FBA模拟器当了而且CPU站用到100%的BUG（官方9527测试版已经修正）
- 还有一些小地方的修正在游戏上右键 Play 不被语言文件翻译.分辨率的 ？修正为 X 。还有的忘记拉^_^

- 修正CPS1游戏Cadillacs and Dinosaurs (Hack set 2) 的驱动.可以正常运行游戏
- 修正CPS1游戏Cadillacs and Dinosaurs (Hack set 2) 的声音
 感谢好友Cless帮助修正

内带简体中文游戏例表和语言文件
模拟器使用Microsoft Visual Studio .NET 2003编译

--------------
- 27.07.2006 -
--------------
- 游戏更新
- 修正CPS1的 Saturday Night Slam Masters (World 930713) 不能运行的问题。代码来自FBXXX
- 全部游戏同步和MAME Plus 107 NEO部分增加解密ROM

- NEO游戏部分驱动感谢IQ_132的帮写驱动 http://neosource.1emulation.com/forums/

- 其他也增加拉前久IQ_132提供的那60个小游戏的代码.SEGA的那几个没控制方向没有加。

--------------
- xx.xx.2006 -
--------------
- 开始提供.
