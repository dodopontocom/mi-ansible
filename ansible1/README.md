### Steps
<strong>Servers are centOS

JDK is just simple tar, untared to ~/jdk/jdk-<VERSION>  
and we have symlink like ~/jdk/jdk - linking to latest version  
For exemple, we have java 2.4.1  
So we'll have ~/jdk/jdk-2.4.1 with java and  
ln -s ~/jdk/jdk-2.4.1 ~/jdk/jdk  

Given that, think the following:  

1) Get jdk from artifactory (maven_artifactory probably)
```
<dependency>
    <groupId>com.oracle</groupId>
    <artifactId>jdk</artifactId>
    <version>1.8.0_201</version>
    <classifier>db-linux-x86_64</classifier>
    <type>tar.gz</type>
</dependency>
```

2) Check that this version does not exist in ~/jdk
    Maybe is better swap 1) and 2)

3) Untar downloaded jdk artifact to ~/jdk/jdk-<VERSION>  
    Clean up downloaded tar

4) Copy config from old version to new  
    This step is because we'll have not only jdk, but other services - they all use the same schema with symlinks

5) Adjust symlink to jdk

5) Enjoy