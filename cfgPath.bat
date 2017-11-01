::1.7的jdk无法运行当前的jar，必须要换成1.8以上的才可以运行
set JAVA_HOME=C:\Program Files\Java\jdk1.8.0_101
set CLASSPATH=.;%JAVA_HOME%\lib\dt.jar;%JAVA_HOME%\lib\tools.jar;
set Path=%JAVA_HOME%\bin;%Path%

::把当前两个单元测试jar，临时添加到环境变量中
set CLASSPATH=%CLASSPATH%;%~dp0mujava.jar;%~dp0openjava.jar;%~dp0classes;%cd%\junitJars\junit.jar;%cd%\junitJars\org.hamcrest.core_1.3.0.v201303031735.jar