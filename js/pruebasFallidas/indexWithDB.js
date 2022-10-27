const db = require('./conexion.js')


const tablaDB= 'alumno'

function login(tablaDB,user,pass){
    // let pass = document.getElementsByClassName("pass").value;
    // let user = document.getElementsByClassName("user").value;
    if((user === undefined)||(pass === undefined)){
        console.log('ingrese datos')
    }
    else if((user === db.showUser(tablaDB,user,pass))&&(pass === db.showUser(tablaDB,user,pass))){
        console.log('usuario existente')
    }else if((user !== db.showUser(tablaDB,user,pass))||(pass !== db.showUser(tablaDB,user,pass))){
        console.log('Usuario inexistente')
    }
}





// let y = db.addUser('alumno','toledo',45089240,'6A',3547628424,'nicolas@gmail.com','admin','toledoFranco','franco1235')
// console.log(y)



//let c = db.updateUser('alumno','Nicolas',45089239,'5B',3547628424,'francotoledo1235@gmail.com','admin','pepe456')
// console.log(c)

// let b = db.removeUser('alumno',45089248)
