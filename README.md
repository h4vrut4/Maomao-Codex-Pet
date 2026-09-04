# 마오마오 Codex Pet

《약사의 혼잣말》의 마오마오를 모티프로 만든 Codex Desktop용 커스텀 펫입니다.

> A cute animated Maomao custom pet for Codex Desktop on Windows.

## 특징

- Codex Pets v2 형식 (`spriteVersionNumber: 2`)
- `1536 × 2288` RGBA WebP 스프라이트 시트
- `192 × 208` 셀, `8 × 11` 배열
- 9가지 기본 애니메이션 상태
- 마우스 방향을 따르는 16가지 시선 방향
- Windows 디스플레이 배율 200% 환경에서 테스트

## 설치

### PowerShell로 빠르게 설치

```powershell
git clone https://github.com/h4vrut4/Maomao-Codex-Pet.git
cd Maomao-Codex-Pet
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

설치 후 Codex에서 다음 순서로 불러옵니다.

1. **Settings → Pets**로 이동합니다.
2. **Refresh custom pets**를 누릅니다.
3. **마오마오 (Maomao)**를 선택합니다.
4. 펫이 보이지 않으면 채팅 입력창에서 `/pet`을 실행합니다.

### ZIP으로 수동 설치

1. GitHub의 **Code → Download ZIP**으로 저장소를 내려받아 압축을 풉니다.
2. `pet.json`과 `spritesheet.webp`를 아래 폴더에 함께 복사합니다.

```text
%USERPROFILE%\.codex\pets\maomao-kusuriya\
├── pet.json
└── spritesheet.webp
```

3. Codex에서 **Refresh custom pets**를 누릅니다. 그래도 나타나지 않으면 Codex를 완전히 종료한 뒤 다시 실행합니다.

## 업데이트

저장소 폴더에서 아래 명령을 다시 실행하면 설치된 파일을 최신 버전으로 덮어씁니다.

```powershell
git pull
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

## 제작

Built with OpenAI Codex and image generation. 캐릭터 스프라이트 제작부터 애니메이션 조립, 반복 개선, Codex Pets v2 검증까지 Codex를 활용했습니다.

이 저장소에는 커스텀 펫 자산과 설치 도우미만 포함되어 있으며, Codex Desktop 실행 파일이나 수정본은 포함하지 않습니다.

## 권리 안내

이 저장소는 비공식·비상업적 팬 프로젝트이며 원작자, 출판사, 애니메이션 제작위원회 또는 OpenAI와 제휴하거나 승인을 받은 프로젝트가 아닙니다. 마오마오와 《약사의 혼잣말》에 관한 권리는 각 권리자에게 있습니다. 개인적인 용도로만 사용해 주세요.
