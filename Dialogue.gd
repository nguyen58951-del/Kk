extends Node

var dialogues = {
    "start": {"text": "Bạn có sẵn sàng?", "choices": ["Có", "Không"], "next": ["good", "bad"]},
    "good": {"text": "Bạn đã chọn đúng!", "next": ["end_good"]},
    "bad": {"text": "Bóng ma nổi giận...", "next": ["end_bad"]},
    "end_good": {"ending": "tốt"},
    "end_bad": {"ending": "xấu"},
    "secret": {"ending": "bí ẩn"}
}

var state = "start"

func next(choice_idx=0):
    var node = dialogues[state]
    if node.has("choices"):
        state = node["next"][choice_idx]
    elif node.has("next"):
        state = node["next"][0]
    return dialogues[state]
