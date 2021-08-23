let a = "";

function appendImg(){
    // 0.5초 마다 자동으로 이동하게 한다 - setInterval() 메소드 사용
    a = setInterval(function(){
        $('#rst1 img').first().appendTo('#rst1');
    }, 500);
    // 실행 후 버튼 비활성화
    $('#btn1').prop('disabled', true);
}

function stopImg(){
    // setInterval 메소드를 멈춰준다
    clearInterval(a);

    // 종료 후 버튼 활성화
    $('#btn1').prop('disabled', false);
}