let dollImg = document.getElementById('doll-img');

function selectDoll(activity) {
    let dollUrl;
    switch (activity) {
        case 'Listening to music in the rain':
            dollUrl = 'IMG_5147.jpg';
            break;
        case 'Listening to music in candlelight':
            dollUrl = 'IMG_5148.jpg';
            break;
        case 'Listening to music while taking photos':
            dollUrl = 'IMG_5149.jpg';
            break;
        default:
            break;
    }
    if (dollUrl) {
        dollImg.src = dollUrl;
    }
}
