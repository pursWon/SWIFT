 if storyLabel.text == storyBrain.wolfStoryList[10].story {
            let text: String = storyBrain.wolfStoryList[10].story
            let attributeString = NSMutableAttributedString(string: text)
            attributeString.addAttribute(.foregroundColor, value: UIColor.red, range: (text as NSString).range(of: "화난 늑대"))
            self.storyLabel.attributedText = attributeString
        }

// text에 storyLabel이라는 레이블 문구를 구조체 storyBrain에 있는 wolfStory 배열 10번째에 있는 story라는 String 값을 가져온다. 
// NSMutableAttributedString을 이용하여 상수 attributeString에 text를 담아줌
// attributeString에 색을 지정해주기 위해서 .foregroundColor를 적고, 빨강색으로 지정해줌. 그리고 글자의 범위는 "화난 늑대"
// 마지막으로 storyLabel에 Plain(기본) text가 아닌 attributedText로 적고 attributeString을 담아주면 완료
