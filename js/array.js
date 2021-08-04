/**
*
*/

let fruit;


function proc1(){
    // 리터럴로 생성
    //javascript는 다양한 형태로 배열에 넣을 수 있다.
    fruit = ["사과", "바나나", 100, 12.34, "복숭아"];
    print('rst1');
}

function proc2(){
    // 생성자로 생성1
    fruit = new Array("참외", "수박", "멜론","포도");
    print('rst2');
    
    
}

// 생성자로 생성2
function proc3(){
    fruit = new Array();
    fruit[0] = "자두";
    fruit[1] = "애플망고";
    fruit[2] = "수박";
    fruit[3] = "샤인머스캣";
    fruit[4] = "피치망고";
    print('rst3');
    
    
}

//중복되는 문장을 공통으로 사용한다
function print(param){
    let str = "";
    //출력
    for (let i = 0; i < fruit.length; i++) {
        str += fruit[i] + " ";
    }
    // document.getElementById('rst1').innerHTML = str;
    document.getElementById(param).textContent = str;

}