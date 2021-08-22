//함수도 1급객체이기 때문에 변수안에 담을 수 있다
//테이블에 들어갈 데이터
let crudApp = new function(){
    //수강데이터를 담을 Json형식의 배열 만들기
    this.myClass = [
        {ID:'1', Class_Name : '운영체제', Category: '전공필수', credit: 3},
        {ID:'2', Class_Name : '컴퓨터구조론', Category: '전공선택', credit: 4},
        {ID:'3', Class_Name : '심리학의이해', Category: '교양필수', credit: 2},
    ];

    //선택할 수 있는 항목 미리 정의
    this.Category = ['전공필수', '전공선택', '교양필수', '교양선택'];

    // Table Header에 담길 데이터를 학장성을 위해 배열에 담기
    this.col = [];

    // 위의 데이터들을 토대로 실제로 테이블을 만들어주는 메서드
    this.createTable =()=>{
        //테이블을 만들고 데이터를 채우는 코드
        
        // col에 table header에 해당하는 데이터 (myclass의 key값들)들을 넣어주는 코드
        // 비어있는 col 배열에 myClass 배열 속 객체들의 key값들을 넣어줘야 함
        for(let i=0; i<this.myClass.length; i++){
            //각 객체들 속 Key값들 순회
            for(let key in this.myClass[i]){
                //key를 col배열에 담기
                // indexOf: 문자열속의 문자열 검색 (없으면 -1 후에 push(넣어라)) 
                if(this.col.indexOf(key) === -1 ) this.col.push(key);
            }
        }
        // --------------------------
        // table : 새로운 테이블 생성
        let table = document.createElement('table');
        table.setAttribute('id', 'classTable');

        //tr : 새로운 행 추가
        //테이블행의 마지막행에 추가해라 (-1) 지금은 없으니 첫번째 행이 생성됨
        let tr = table.insertRow(-1);

        //th : 작성
        for(let h = 0; h <this.col.length; h++){
            let th = document.createElement('th');
            //th에 col 배열의 h 번쨰 값을 넣는다 
            th.innerHTML = this.col[h];
            // tr의 자식요소로 th를 추가한다
            tr.appendChild(th);
        }

        let div = document.getElementById('container');
        div.innerHTML = "<h3>수강관리 App</h3>";
        div.appendChild(table);

    }
}

crudApp.createTable();