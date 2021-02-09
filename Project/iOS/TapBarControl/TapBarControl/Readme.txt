Tab Bar는 만든 구성에 따라 Code가 헷갈릴 수있으니까
잘알아야 한다.(Tab Bar Item 먼저 만들기!!!)

View Controller가 (위의 3개의 탭중에 있는) 선택된후 -> Editor 누르고 Ebeded in -> Tab Bar -> 화면 나옴
-> 새로운 Tab Bar 선택후 -> System Item으로 아이콘 바꾼다.

1. Images 폴더 만들고 lamp.on, lamp.off 넣고
2. ImageViewController(ImageView 폴더), DateViewController(DatePickerView 폴더)에서 가져온
   Controller 이다. (두개 같이 띄우기 위해서.)
3. 클래스 이름들을 똑같이 바꿔준다. DateViewController에서는 #selector 부분도 바꿔주어야 함.

4. 그림 가져오기 .
  1) ImageView (Project)에 있는 --> Base.lproj 폴더 --> Main.storyboard를 클릭후. ->
  XML 전부 드래그 해서 복사 후 --> 이곳 XML에 붙여넣기 해서 가져온다.
  2) DatePicker 도 동일.
  
*** 주의 사항 --> Tab Bar의 위치와 안 겹쳐지게 조정을 해야함 (ImageView 조절함)

5. ImageViewController,DateViewController --> Tab(동그라미 세개 있는것) 선택후 각자 이름과 동일한 Controller를 선택해야함

6. Main 컨트롤러에서 오른쪽 마우스 버튼 선택해서 -> 연결할 컨트롤러로 드래그해서 ---> Manual Segue로 연결 --> Relation -> viewcontroller 선택
   ImageViewController,DateViewController 둘다 동일하게 선택
