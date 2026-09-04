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

## 문제 해결: Windows 배율 때문에 클릭·드래그가 안 될 때

마오마오는 Windows 디스플레이 배율 200%에서 테스트했습니다. 다른 배율이나 서로 다른 배율을 사용하는 다중 모니터 환경에서는 펫이 보이는 위치와 실제 클릭 영역이 어긋날 수 있습니다. 특히 150% 배율에서 펫은 보이지만 클릭과 드래그가 아래 창으로 통과하는 [Codex Desktop 알려진 문제](https://github.com/openai/codex/issues/42289)가 보고되어 있습니다.

이 저장소는 펫 자산만 제공하며, `pet.json`에는 화면 배율이나 클릭 영역을 보정하는 옵션이 없습니다. 따라서 아래는 앱이나 레지스트리를 수정하지 않는 임시 확인 방법입니다. 배율을 바꾸기 전에는 진행 중인 작업을 마치세요.

1. Codex Desktop이 최신 버전인지 확인합니다.
2. Codex 메인 창을 클릭한 뒤 `Ctrl+0`을 눌러 앱 내부 확대/축소를 기본값으로 되돌립니다. 이 조작은 Windows 배율 자체를 바꾸지는 않습니다.
3. **Settings → Pets → Tuck Away Pet**으로 펫을 숨긴 뒤 **Refresh custom pets**를 누르고 마오마오를 다시 선택합니다. `/pet`으로 다시 깨웁니다.
4. 트레이 아이콘과 작업 관리자에 남은 프로세스까지 포함해 Codex를 완전히 종료한 뒤, 펫을 사용할 주 모니터에서 다시 실행합니다.
5. 모니터가 여러 대라면 잠시 한 대만 사용하거나 **Windows 설정 → 시스템 → 디스플레이**에서 모든 모니터의 배율을 같은 값으로 맞춘 뒤 Codex를 재실행합니다.
6. 계속 어긋나거나 현재 배율이 150%라면, 진단용으로 펫을 사용할 모니터의 배율을 이 펫에서 확인한 **200%**로 바꾸고 Codex를 완전히 재실행합니다. 200%에서 클릭된다면 마오마오 파일보다 Windows 배율과 Codex 오버레이 입력 영역 문제일 가능성이 큽니다.
7. 기본 제공 펫도 같은 증상인지 확인합니다.
   - 기본 펫도 클릭되지 않음: Codex Desktop 또는 Windows 배율 문제일 가능성이 큽니다.
   - 마오마오만 클릭되지 않음: `install.ps1`을 다시 실행하고 **Refresh custom pets**를 누릅니다.

계속 원래 배율을 사용해야 한다면 위 이슈의 수정 상태를 확인해 주세요. 그래도 해결되지 않으면 앱 버전, Windows 배율, 모니터별 배율·배치, 기본 펫 재현 여부를 함께 적어 [OpenAI Codex 도움말](https://help.openai.com/en/articles/11369540)을 통해 지원을 요청할 수 있습니다.

Windows의 **높은 DPI 조정 동작 재정의**, 레지스트리 수정, 앱 파일 패치는 공식 해결책이 아니며 이 저장소에서는 권장하지 않습니다. 이전에 사용한 대각선 드래그 테스트 패치도 클릭 영역을 수정하는 패치가 아니므로 다른 PC의 배율 문제에는 적용할 수 없습니다.

펫 선택·숨기기·깨우기 방법은 [OpenAI Pets 문서](https://learn.chatgpt.com/docs/pets)를 참고하세요.
