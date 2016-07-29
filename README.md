1.Spring Starter Project 생성
	
	- name : MosaicWeb
	- type : Gradle(Buildship)
	- packaging : war 
	- group : com.hybrid
	- package : com.hybrid
	
	- boot version : 1.3.6
	- lib 선택 : web

2.형상관리 	
	
	- remote Repository 생성  (github.com) 
	- Local Repository 생성
		- git status
		- git log
		- dir /A > .gitignore 
		- notepad .gitignore 편집 
		- git init
		- git add * 
		- git commit -m "first commit"
		
		
	- Local --> Remote push(최초 동기화)

		- git remote add origin https://github.com/hmhee12/MosaicWeb.git	
		- git remote - v 	

		( >> git remote remove origin - 제거  )
	
		- git push -u origin master	
		
	-개발자 2가 Clone 수행
	
		- git clone http://github.com/hmhee12/MosaicWeb.git
		- git clone http://github.com/hmhee12/MosaicWeb.git MosaicWebDev
		- Eclipse Gradle Import
		
3. HTML 설정
	
	- 설정 불필요 
	- mkdir src/main/webapp  폴더 생성
	- notepad src/main/webapp/Hello.html
	- gradle bootRun
	- Firefox => http://localhost:8080/Hello.html 확인

4. JSP 설정 
	
	- mvnrepository.com -> search : tomcat jasper
	
	- build.gradle dependency : 
	providedRuntime group: 'org.apache.tomcat.embed', name: 'tomcat-embed-jasper', version: '8.5.4'

	- Eclipse -> gradle refresh	
	- notepad src/main/webapp/Hello.jsp
	- gradle bootRun 
	- Firefox -> http://localhost:8080/Hello.jsp
	


5. Servlet 설정

	- project facets 추가 
		Dynamic Web Module 3.1
		Java 1.8
		JavaScript 1.0
	
	- MosaicWebApplication.java 
		 @ServlitComponentScan 추가 
	
	- com.hybrid.servlet.HelloServlet.java 생성
	- gradle bootRun
	- Firefox -> http://localhost:8080/HelloServlet
	
6. SpringLoaded 설정 (리로드 기능)

	- mvnrepository.com -> search : spring loaded
	- build.gradle에 설정(두 곳)
	
	dependencies ->
	classpath("org.springframework:springloaded:1.2.6.RELEASE")
	
	compile group: 'org.springframework', name: 'springloaded', version: '1.2.6.RELEASE'

	- Elipse Output Directory 변경
		bin -> MosaicWeb
				/build/classes/main
				
				
7.Mybatis 설정 

	- mvnrepository.com -> search : spring mybatis

	- build.gradle 에 Dependency 설정
	  compile group: 'org.mybatis.spring.boot', name: 'mybatis-spring-boot-starter', version: '1.1.1'
	  compile files('src/main/webapp/WEB-INF/lib/ojdbc7.jar');
	
	- application properties 작성 
		spring.datasource.driver-class-name=oracle.jdbc.OracleDriver
		spring.datasource.url=jdbc:oracle:thin:@52.78.98.194:1521:orcl
		spring.datasource.username=scott
		spring.datasource.password=tiger
	
	- Eclipse Gradle Reflash 수행
	- gradle bootRun
	
	- notepad src/main/java/com/hybrid/mapper/DeptMapper.java 인터페이스 생성
	- notepad src/main/java/com/hybrid/dao/DeptDao.java 클레스 생성
	- notepad src/main/java/com/hybrid/domain/Dept.java 클레스 생성
	
	- notepad src/test/java/com/hybrid/mapper/DeptMapperTest.java
	
	- notepad src/main/webapp/dept.jsp 
	
	-
	
8. Deploy 방법 
	
	- gradle war
	- build/libs/MosaicWeb ~~~~ .war
	- cp MosaicWeb.war 
		C:\Program Files\Apache Software Foundation\Tomcat 8.5\webapps 복사함
	- Firefox --> http://localhost/MosaicWeb/index.html
	
9. Gluon 설정 

	- cp FXTempate/src/* MosaicWeb/src
	- merge FXTempate/build.gradle MosaicWeb/build.gradle
	- marge com.hybrid.fx.MainApplication / com.hybrid.MosaicApplication 
		->> spring boot + gluon start
		->> spring boot + gluon stop
		->> primaryView 에 WebView




	
	