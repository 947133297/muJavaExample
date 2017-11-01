::clean
rd /s /Q %~dp0testset
rd /s /Q %~dp0classes
rd /s /Q %~dp0result

::进行环境配置
call %cd%\cfgPath.bat

::生成配置文件
echo MuJava_HOME=%cd%>mujava.config

::创建目录
java mujava.makeMuJavaStructure

::复制文件
XCOPY %~dp0bin\*.class %~dp0testset\ /s /e /Y
XCOPY %~dp0bin\*.class %~dp0classes\ /s /e /Y

java mujava.gui.GenMutantsMain