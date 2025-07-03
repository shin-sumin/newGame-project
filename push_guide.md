# 🚀 GitHub에 파일 푸시하는 방법 (PUSH GUIDE)

DIMO 팀 개발자들을 위한 GitHub 푸시 가이드입니다. 새로운 파일을 저장소에 올릴 때 아래 단계를 참고하세요.

---

## ✅ 1. GitHub에서 새 저장소 만들기
1. [https://github.com](https://github.com) 접속 → 로그인
2. 오른쪽 상단 `+` → `New repository`
3. 저장소 이름 설정 (예: `newGame-project`)
4. 공개/비공개 설정 → `Create repository`

---

## ✅ 2. 로컬에서 Git 초기화

```bash
mkdir my-project
cd my-project
git init
```

---

## ✅ 3. 파일 추가 및 커밋

```bash
# 예: flutter_setup_guide.md 파일 복사 또는 생성
git add flutter_setup_guide.md
git commit -m "Add flutter setup guide"
```

---

## ✅ 4. GitHub 원격 저장소 연결

```bash
git remote add origin https://github.com/your-username/newGame-project.git
```

---

## ✅ 5. 브랜치 이름 변경 (필요 시)

```bash
git branch -M main
```

---

## ✅ 6. 원격 저장소와 병합 (파일이 이미 있을 경우)

```bash
git pull origin main --allow-unrelated-histories
```

- 편집기 화면이 나오면 `:wq` 입력 후 Enter

---

## ✅ 7. 푸시

```bash
git push -u origin main
```

---

## ✅ 결과 확인
- GitHub 저장소 웹사이트에서 파일이 보이면 성공!
- `.md` 파일은 자동으로 렌더링됨

---

## 🧪 전체 요약 (명령어 모음)

```bash
git init
git add .
git commit -m "First commit"
git remote add origin https://github.com/your-username/newGame-project.git
git branch -M main
git pull origin main --allow-unrelated-histories
git push -u origin main
```

---

🧑‍💻 DIMO 개발팀용 푸시 가이드 / 2025.07.03