# DIMO 앱 개발환경 세팅 가이드 (for 팀원)

Flutter + Firebase 프로젝트(`dimo-app`)를 팀원들이 동일하게 개발/실행할 수 있도록 필요한 작업을 정리했습니다.

---

## ✅ 사전 준비

### 1. 필수 프로그램 설치

-

### 2. Firebase CLI 설치(터미널에서 입력 시 cd 명령어 통해서 dimo-app 파일 경로로 이동 후 입력해야 함) 

```bash
npm install -g firebase-tools
```

---

## ✅ GitHub 프로젝트 받기

### 1. 저장소 클론

```bash
git clone https://github.com/your-team/dimo-app.git
cd dimo-app
```

### 2. 의존성 설치(터미널에서 입력)

```bash
flutter pub get
```

---

## ✅ Firebase 연동

### 1. `google-services.json` 파일 받기

- 팀장(혹은 담당자)에게 해당 파일을 전달받아 `android/app/` 경로에 직접 넣어주세요. (카톡 혹은 노션에 공유 예정)
- ⚠️ 이 파일은 GitHub에 올라가지 않음 (보안 이유)

### 2. Firebase CLI 로그인(터미널에서 입력)

```bash
firebase login
```

### 3. Firebase 초기화 (이미 완료되어 있을 경우 생략, 터미널에서 입력)

```bash
flutterfire configure
```

> 👉 이미 `.firebase_options.dart`가 생성되어 있다면, 이 과정은 생략해도 됩니다.

---

## ✅ 앱 실행(터미널에서 입력)

```bash
flutter run
```

또는 VS Code/Android Studio에서 직접 실행 버튼 클릭. (hot restart 버튼 클릭)

---

## 🔗 Firestore 실시간 DB 확인

- Firebase 콘솔 접속: [https://console.firebase.google.com/project/dimo-app-xxxxx/overview](https://console.firebase.google.com/project/dimo-app-xxxxx/overview)
- 왼쪽 메뉴 → **"Firestore Database" → "데이터"** 탭에서 확인 가능

---

## 📁 주요 경로 설명(vscode 속 dimo-app파일에서 확인가능)

| 경로                                 | 설명                                |
| ---------------------------------- | --------------------------------- |
| `lib/main.dart`                    | 앱 진입점. Firebase 초기화 및 루틴 저장 기능 포함 |
| `lib/firebase_options.dart`        | Firebase 설정 자동 생성 파일 (수정 금지)      |
| `android/app/google-services.json` | Firebase 인증 정보 (직접 받아야 함)         |
| `pubspec.yaml`                     | 사용 중인 패키지 목록                      |

---

## 🧪 테스트용 기능 (2025.07.08 기준)

- android studio 에뮬레이터 실행해서 텍스트 입력 후 "루틴 저장" 버튼 클릭 시, Cloud Firestore에 저장됨
- Firestore에서 `routines` 컬렉션 확인 가능

---

## 💬 문의

- Firebase 연동/실행이 안 될 경우 문의

