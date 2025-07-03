# 🚀 DIMO 앱 개발환경 세팅 가이드 (Windows 기준)

본 문서는 DIMO 앱 개발을 위한 Flutter 환경 구축 절차를 안내합니다. 팀원들은 아래 순서를 참고하여 본인 PC에서 동일한 환경을 세팅해주세요.

---

## ✅ 1. Flutter 설치

1. [Flutter 공식 사이트](https://flutter.dev/docs/get-started/install/windows)에서 ZIP 파일 다운로드
2. `C:\flutter` 폴더에 압축 해제
3. 시스템 환경변수 설정:
   - `Path` 항목에 `C:\flutter\bin` 추가

```bash
flutter doctor
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

🧑‍💻 **DIMO 개발팀용 내부 문서 / 작성일: 2025.07.03**