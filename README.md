# 계산기

## ⭐️ 목차

1. [팀원소개](#팀원소개)
2. [STEP 소개](#step-소개)
3. [타임라인](#타임라인)
4. [UML](#uml)
5. [파일 구조](#파일-구조)
6. [트러블 슈팅](#step2-트러블슈팅)
7. [Reference](#reference)

---

## 팀원을 소개합니다

|<center>무리</center>|
|---|
|<img width="200" alt="image" src=https://i.imgur.com/U7TmXby.jpg>|

## STEP 소개 

> ****STEP 1 - Queue 타입 구현****
- 계산기 구현을 위한 큐타입을 구현합니다.
> ****STEP 2 - 계산 타입 및 주변 타입 구현****
- 제시 된 UML을 기반으로 연산과 관련한 타입을 구현합니다.
> ****STEP 3 - 계산기 UI 연동****
- 제공된 UI를 코드에 연동합니다.
- 숫자를 입력하고 계산하는 기능을 구현합니다.

### 스텝 수행 중 핵심 경험

<details>
<summary>스텝별 핵심경험</summary>

### STEP 1

- [x] TDD 시작하기
    - [x] 기존의 프로젝트에 Test Target 추가
- [x] Queue 자료구조의 이해와 구현
- [ ] List 자료구조 직접 구현해보기(선택)
    - [ ] 리스트를 활용하여 Queue 구현(선택)

### STEP 2
- [x] UML을 기반으로 한 코드구현
- [x] 숫자와 연산자 입력에 큐 활용
- [ ] TDD를 기반으로 코드 작성하기(선택)

### STEP 3
- [ ] IBOutlet / IBAction의 활용
- [ ] 스택뷰의 활용
- [ ] 스크롤뷰의 활용
</details>

---

## 타임라인

<details>
<summary>타임라인</summary>

| STEP | 날짜 | 타임라인 |
| --- | --- | --- |
| STEP1 | 2023.01.24 | - 유닛테스트 타겟 설정 </br>- CalculatorItemQueue.swift파일 생성 </br>- CalculatorItemQueue 변수 data, isEmpty, count 생성, enqueue메서드 생성</br>- dequeue호출 시 test코드 작성 |
| STEP1 | 2023.01.25 | - 배열값 전체 삭제 메서드 테스트 구현</br>- clearAll메서드 추가, test코드 메서드 명 변경 및 순서 변경</br>- 변수 head추가 및 dequeue로직 수정</br>- 변수 first, last 생성 및 테스트코드 구현 </br>- Calculator프로토콜 생성 및 채택 </br>- dequeue로직 수정 |
| STEP1 | 2023.01.27 | - dequeue test code 메서드 네이밍 변경 </br>- dequeue test code 메서드 수정 </br>- 제네릭 타입 네이밍 수정, 프로토콜 채택 </br>- test를 위한 Int 타입 protocol extension 사용</br>- data 접근제어자 설정 및 테스트 코드에서 사용하는 sut.data 수정 |
| STEP2 | 2023.01.27 | - first변수 네이밍 수정, last변수 삭제, 관련 test 코드 수정 및 삭제</br>- CalculatorItem 프로토콜 리팩토링</br>- Formul.swift파일 생성 및 변수, 메서드 선언</br>- Operator.swift 생성 및 operator 구현 |
| STEP2 | 2023.01.30 | - String Extension 구현</br>- componentsByOperators메서드 작성, Formula연산자 큐 타입 변경</br>- 컨벤션 및 주석 제거</br>- parse메서드 구현</br>- Model, Controller 폴더 생성 및 파일분리 |
| STEP2 | 2023.01.31 | - Formula result 구현</br>- Formula result 리팩토링</br>- 불필요한 코드 제거 </br>- 0으로 나누었을때 Nan 구현</br>- 두자리 숫자일때 오류 filter로 처리 |
| STEP2 | 2023.02.01 | - ExpressionParser 유닛 테스트</br>- parser유닛테스트 코드 리팩토링 </br>- Formula 유닛테스트 </br>- 오타 수정 및 개행 수정</br>- parse 분기처리를 이용해 enqueue하는 로직으로 수정|
| STEP2 | 2023.02.02 | - 피연산자, 연산자 버튼 연결</br>- 연속된 숫자 입력 구현</br>- calculation, ac, ce버튼 연결 및 연산기능 추가|
| STEP2 | 2023.02.03 | - dot버튼 생성 및 연결</br>- oldInputFormula변수 생성으로 로직 수정</br>- operator원시값 변경, stackView에 연산값 추가 구현|
</details>

---

## UML



<details>
<summary>Class Diagram</summary>
    
### STEP1 UML
<img width="250" alt="image" src=https://i.imgur.com/SpkUBq1.png>
    
### 제시된 STEP2 UML
<img width="800" alt="image" src=https://i.imgur.com/wZnWVIS.png>
    
</details>

## 파일 구조
```bash
|____Calculator
| |____Controller
| | |____ViewController.swift
| | |____AppDelegate.swift
| | |____SceneDelegate.swift
| |____Model
| | |____CalculateItem.swift
| | |____Operator.swift
| | |____Formula.swift
| | |____CalculatorItemQueue.swift
| | |____Extension.swift
| | |____ExpressionParser.swift
|____CalculatorTests
| |____CalculatorTests.swift
| |____ParserTests.swift
| |____FormulaTests.swift
    

```
---

## STEP2 트러블슈팅

### 1️⃣ UML의 이해
- UML을 접해본게 프로젝트 전 구현해야하는 것에대해 생각해보고 구현했던것이 전부여서 **이미 존재하는 UML**을 보고 구현을 해야하는게 아주아주 힘들었습니다🥲
처음으로 다른 사람이 기획한 UML을 보며 기획자의 의도(~~이 프로퍼티,메서드가 어떠한 동작을 하는지에 대한~~)를 파악하는데에 시간이 오래 걸렸던 것 같습니다. (함께 고민해준 캠퍼들 감사합니다!)
- 이 타입이 무엇을 이용하여 어떠한 동작을 하는지에 대해 글로 정리를 해보니 이해가 한결 쉬웠던 것 같습니다. 가장 이해하기 힘들었던 내용 두 가지를 아래처럼 정리했습니다.
- struct Formula 는 피연산자 큐 operands 와 연산자 큐 operators 를 가지며
이 둘을 이용하여 계산한 결과를 반환하는 result() 메서드가 있습니다.
- enum ExpressionParser 는
input값을 연산자로 나누어 문자열 배열로 반환하는 componentsByOperator 메서드와
input값을 분석하여 struct Formula 로 반환해주는 parse() 메서드가 있습니다.
- 글로 정리해가면서 UML을 구현하는것이 이해하는데에 아주 큰 도움이 되었습니다.

### 2️⃣ Static의 사용 이유
- 프로젝트에 제시된 내용 중 **UML에서의 밑줄은 어떤 의미일까?** 라는 질문이 있었습니다.
- 먼저 `static` 은 `Type Method` 로, 자주 사용하는 `Instance Method` 와는 다르게 **인스턴스의 생성 유무와 관계없이** `Type.Type Method` 의 형식으로 접근할 수 있습니다.
현재 UML에서는 `ExpressionParser.parse()` 으로 해당 메서드에 접근 가능합니다.
- `class` 와 `static` 모두 타입메서드지만 가장 큰 차이는 **overriding 가능 여부**입니다.
~~단, 타입이 클래스일때!~~ `class func someMethod()` 는 override하여 사용할 수 있지만
`static func otherMethod()` 는 override할 수 없다는 차이가 있습니다.
- 그럼 `enum ExpressionParser` 에서는 왜 타입메서드를 사용할까?
`enum` 은 위에 설명한 overriding과는 관계없이 **인스턴스를 생성하지 않아서** type method를 사용하지 않았을까..? 하는 결론을 내게 되었습니다.

### 3️⃣ 두 자리 숫자 입력 시 연산자 enqueue에서 발생한 오류 & 코드 리팩토링
```swift
// 연산자 enqueue를 위해 구현했던 코드
components.compactMap({ Operator(rawValue: Character($0)) })
          .forEach { operatorsQueue.enqueue($0) }
```
- 오류가 나기 전 구현 했던 코드입니다. input을 한 자리 숫자로만 사용했을때는 이상이 없었는데, 두 자리 숫자를 넣는 순간 Character($0)부분에서 오류가 발생했습니다. 두자리는 캐릭터가 아니라 String이라 발생한 오류였습니다.
- 어떻게 처리를 해주어야할까 고민하다가 filter로 한자리인걸 먼저 걸러주면 되겠구나, 하는 생각이 들었고 다음과 같이 수정했습니다.
```swift
components.filter({ $0.count == 1 })
	.compactMap({ Operator(rawValue: Character($0)) })
	.forEach { operatorsQueue.enqueue($0) }
```
> _components 안의 요소가 Double 타입으로 형변환이 되냐 안되냐에 따라 분기처리를 해줄 수 있을 것 같아요_ 
- 리뷰어의 코멘트에 위와같은 내용이 있었고, 저 힌트를 기반으로 다시한번 코드를 리팩토링 해보았습니다.
```swift
for component in components {
    if let component = Double(component) {
        operandsQueue.enqueue(component)
    } else if let component = Operator(rawValue: Character(component)) {
        operatorsQueue.enqueue(component)
    }
}
```
- 분기처리를 이용한 코드로 가독성이 한결 좋아졌습니다!

## ⭐️ (아직 진행중인)STEP3 트러블슈팅
### 1️⃣ 무수히 많은 IBOutlet
- 계산기의 숫자 버튼 하나하나를 `@IBOutlet`을 이용하여 각각 선언해주었습니다. 선언하고 보니 코드가 깔끔하지 않은 것 같아 좋은 방법이 없을까하며 구글링을 하다가 `IBOutlet Collection`에 대해 알게되었고, 코드에 적용해보았습니다.
```swift
// 수정 전
@IBOutlet weak var number0Button: [UIButton]!
@IBOutlet weak var number1Button: [UIButton]!
// ...
@IBOutlet weak var number9Button: [UIButton]!

// 수정 후
@IBOutlet var operandsButton: [UIButton]!
```
- `IBOutlet Collection`을 이용하여 코드를 한결 더 간결하게 사용할 수 있었습니다.

### 2️⃣ ScrollView안에 StackView안에 StackView😵‍💫
- 계산기에서 숫자를 입력한 후 연산자를 입력하면 숫자는 입력을 받는 view위에 있는 scrollView안의 stackView안에 stackView로 추가되어야합니다.
- stackView를 동적으로 추가해주는 개념부터 어려웠고, 추가해줘도 얘가 어떻게 라벨을 두개가지고있고(피연산자, 연산자) 이 크기를 알까?하는 고민을 하게된것같습니다.
그러다 캠퍼에게 `arrangedSubview`키워드를 듣게되었습니다. 
- `arrangedSubview`는 **stackView의 subView들을 모아놓은 배열**이고 이 `subView들`은 **stackView에 의해 크기나 기타 속성**들을 가지게됩니다.
- `addArrangedSubview()`를 이용하여 원하는 방법으로 stackView를 동적으로 추가할 수 있었습니다!

---

## Reference

- [🍎 swift 공식문서 - UIStackView](https://developer.apple.com/documentation/uikit/uistackview)
- [🍎 swift 공식문서 - arrangedSubview](https://developer.apple.com/documentation/uikit/uistackview/1616232-arrangedsubviews)
- [🐻 야곰닷넷 - 오토레이아웃 정복하기](https://yagom.net/courses/autolayout/)
- [sun02 블로그 - 코드로 stackView작성하기](https://velog.io/@sun02/UIStackView-%EC%BD%94%EB%93%9C%EB%A1%9C-%EC%9E%91%EC%84%B1%ED%95%98%EA%B8%B0)
- [wonhee 블로그 - stack.addArrangedSubview](https://velog.io/@wonhee010/stack.addArrangedSubview)
