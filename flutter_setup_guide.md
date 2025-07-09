# 🚀 DIMO 앱 개발환경 세팅 가이드 (Windows 기준)

본 문서는 DIMO 앱 개발을 위한 Flutter 환경 구축 절차를 안내합니다. 팀원들은 아래 순서를 참고하여 본인 PC에서 동일한 환경을 세팅해주세요. (windows 기준임!!)

---

## ✅ 1. Flutter 설치

1. [Flutter 공식 사이트](https://flutter.dev/docs/get-started/install/windows)에서 ZIP 파일 다운로드
2. `C:\flutter` 폴더에 압축 해제 (미리 flutter 폴더를 c드라이브에 생성해놓고 압축 해제 시 경로를 C:\flutter로 설정하기)
3. 시스템 환경변수 설정:
   - `Path` 항목에 `C:\flutter\bin` 추가 (시작에서 검색 > 시스템 환경변수 편집 > 환경변수(N) > Path 누르고 편집 > 새로 만들기 > C:\flutter\bin 추가 > 확인 저장 누르고 나오기)
   - ![image](https://github.com/user-attachments/assets/6513413d-d9ec-4493-8c80-de13711cfb81) 이런식으로!! 나와야 됨


```bash
flutter doctor #이 메세지 실행하여 flutter 설치 상태 점검!!, 초록 체크박스에 표시 안되어있으면 오류나 문제 있는 것
```

---

## ✅ 2. Android Studio 설치

1. [Android Studio 다운로드](https://developer.android.com/studio)
2. 설치 시 아래 항목 체크:
   - ✅ Android SDK
   - ✅ Android Virtual Device (Emulator)

---

## ✅ 3. VS Code 설치 및 Flutter 플러그인

1. [VS Code 다운로드](https://code.visualstudio.com/)
2. 확장 프로그램 설치:
   - `Flutter` (→ 자동으로 Dart도 설치됨)

---

## ✅ 4. Emulator (AVD) 생성

1. Android Studio > **Device Manager**
2. `Create Device` → Pixel 4 선택
3. 시스템 이미지: Android 13 (API 33) 또는 Android 16 (API 36)
4. 완료 후 ▶️ 버튼으로 에뮬레이터 실행

> 💡 에뮬레이터 창이 너무 크면, Zoom 기능 또는 AVD 설정에서 Scale 조정
![image](https://github.com/user-attachments/assets/1a92d915-dab4-4118-8a43-f4273437d21d) 이런 설정으로 우선 만들기 

---

## ✅ 5. Android 라이선스 동의

```bash
flutter doctor --android-licenses
```
→ 모두 `y` 입력

---

## ✅ 6. Flutter 프로젝트 생성 및 실행

```bash
flutter create dimo_app
cd dimo_app
flutter run
```
6번은 따라하지 말고 디모 앱은 내(수민)가 만들었으니까 그거 파일 깃헙에 공유할테니 그 파일로 같이 하장!!! 
깃허브에 파일 올릴테니 아래 과정으로 복제하여 사용하면 됨! 수정사항 있으면 수정하고 수정사항 기재하여 깃헙에 푸시하기

```bash
git clone https://github.com/shin-sumin/dimo-app.git
cd dimo-app
flutter pub get   # 의존성 설치
flutter run       # 실행 테스트

```
![image](https://github.com/user-attachments/assets/962ef31b-2848-4d5f-870a-7f5e306f5790)


---

## ✅ flutter doctor 최종 확인 예시

```bash
flutter doctor
```
> 모든 항목이 `[✓]` 로 표시되어야 정상 상태입니다.

---

## ✅ 참고 사항

- Firebase, GPT API, Figma 등은 추후 기능 구현 시 연동 예정
- 에러 발생 시 터미널 메시지를 공유해주세요

---

🧑‍💻 **DIMO 개발팀용 내부 문서**
