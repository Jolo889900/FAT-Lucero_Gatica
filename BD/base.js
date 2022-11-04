const mysql = require('mysql');
const connection = mysql.createConnection({
    host: "127.0.0.1",
    user: "root",
    password: "password",
    database: "prueba",
})

connection.connect((error)=>{
    if(error){
        console.log("El error de conexion es: " + error);
        return;
    }
    console.log("Conexion a la base de datos exitosa");
});
module.exports = connection;