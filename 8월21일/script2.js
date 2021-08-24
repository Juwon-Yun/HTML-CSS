let crudApp = new function () {
    this.myClass = [
        { ID: '1', Class_Name: '운영체제', Category: '전공필수', credit: 3 },
        { ID: '2', Class_Name: 'JAVA', Category: '전공선택', credit: 4 },
        { ID: '3', Class_Name: 'HTML', Category: '교양필수', credit: 2 },
    ];

    this.Category = ['전공필수', '전공선택', '교양필수', '교양선택'];

    this.col = [];

    this.createTable = () => {
        for (let i = 0; i < this.myClass.length; i++) {
            for (let key in this.myClass[i]) {
                if (this.col.indexOf(key) === -1) this.col.push(key);
            }
        }
        let table = document.createElement('table');
        table.setAttribute('id', 'classTable');
        
        let tr = table.insertRow(-1);
        for (let j = 0; j < this.col.length; j++) {
            let th = document.createElement('th');
            th.innerHTML = this.col[j];
            tr.appendChild(th);
        }
        

        let div = document.getElementById('container');
        div.innerHTML = "수강관리 App";
        div.appendChild(table);
    }
}
crudApp.createTable();
