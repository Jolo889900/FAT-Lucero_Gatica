let admins=[
    {
        user:'admin',
        pass:'admin'
    }];


/* Creating an array of objects. */
let alumnos=[
    {
        user:'lauta',
        pass:'1235',
        name:'lautaro lucero',
        dni:'45702847',
        curso:'7A',
        telefono:'3547524642',
        correo:'lautarolucero425539@gmail.com',
        matters:[ {name:'matematica',note:4,state:"desaprobado"}]
    }
];

/* Creating an array of objects. */


let matters=[{curso:'6B',materia:'lengua',profesor:'Sosa Natalia'},
             {curso:'7A',materia:'matematica',profesor:'Castelli Horacio'}]




/**
 * It takes the values from the input fields and pushes them into the arrays.
 */
const createUser = () =>{
    let nameUser = document.querySelector('.nombre').value;          
    let dniUser = document.querySelector('.dni').value              
    let cursoUser = document.querySelector('.curso').value          
    let telefonoUser = document.querySelector('.telefono').value    
    let correoUser = document.querySelector('.correo').value        
    let userUser = document.querySelector('.usuario').value
    let passUser = document.querySelector('.contraseña').value
    if(nameUser.length === 0 || dniUser.length === 0 || cursoUser.length === 0 ||telefonoUser.length === 0 ||correoUser.length === 0 ||userUser.length === 0 ||passUser.length === 0){
        alert('Por Favor complete todos los campos')
    }else{
        alumnos.push({user:userUser, pass:passUser, name:nameUser,dni:dniUser, curso:cursoUser, telefono:telefonoUser, correo:correoUser})
        alert('Alumno Creado')
    }
}



/**
 * It takes the value of the input with the class matterName and the value of the input with the class
 * matterDivision and pushes them into the matters array as an object with the keys names and
 * divisions.
 */

const createMatter = () =>{
    let matterName = document.querySelector('.materia').value
    let matterDivision = document.querySelector('.curso').value
    let profesorName = document.querySelector('.profesor').value
    if(matterName.length === 0 || matterDivision.length === 0 || profesorName.length === 0){
        alert('complete todos los campos por favor...')
    }else{
        matters.push({curso:matterDivision,materia:matterName,profesor:profesorName});
        console.log(matters)
        alert('Materia creada')
    }
}


/**
 * It takes the values of the inputs and if the userDni is equal to the dni of the object in the array,
 * it pushes the values of the inputs to the array.
 */
const addNote = () =>{
    let userName = document.querySelector('.nombre').value;
    let userDNI = document.querySelector('.dni').value;
    let curso = document.querySelector('.curso').value;
    let matter = document.querySelector('.materia').value;
    let note = document.querySelector('.nota').value;
    if(userName.length === 0 || userDNI.length === 0 || curso.length === 0 || matter.length === 0 || note.length === 0){
        alert('Complete todos los campos por favor...')
    }else{
        if(alumnos.find(item=>item.dni === userDNI)){
            if(note>6){
                console.log(alumnos['matters'])
                alumnos['matters'].push({name:matter,note:note,state:'aprobado'})
                alert('Notas agregadas')
            }else{
                alumnos['matters'].push({name:matter,note:note,state:'desaprobado'})
                alert('Notas agregadas')
            }
        }else{
            alert('Datos Incorrectos, revise los datos..')
        }
    }
}



/* mostrar todas las materias,si tiene 6 o menos Desaprobado(pintar en rojo)*/ 

const nameMatter = document.querySelector('.nombre')
const noteMatter= document.querySelector('.nota')
const stateMatter= document.querySelector('.estado')
const materias = document.querySelector('.materias')
const divContenerdor = document.querySelector('.libreta')
const td=document.createElement('td')
const tr=document.createElement('tr')

const inspectMatter = () =>{
    alumnos.forEach(alumno => {
        alumno.matters.forEach(matter=>{
            for(i in matter){
                console.log(matter[i])
                if(matter.note>6){
                    tr.appendChild(td)
                    divContenerdor.appendChild(tr)
                    materias.classList.add('materias','aprobado')
                    nameMatter.innerHTML = matter[i].name
                    noteMatter.innerHTML = matter.note
                    stateMatter.innerHTML = matter.state
                }else{
                    materias.classList.add('materias','desaprobado')
                    nameMatter.innerHTML = matter.name
                    noteMatter.innerHTML = matter.note
                    stateMatter.innerHTML = matter.state
                }
            }
        })
    }); 
}





const searchMatter = () =>{
    let matters=document.querySelector('.busqueda').value;
    let tabla=document.querySelector('.resultados')
    matters.forEach(matter => {
        if(matters === matter.materia){
            tabla.innerHTML=`<td>${matter.materia}</td>
            <td>${matter.curso}</td>
            <td>${matter.profesor}</td>`
        }
        
        
    });

}

const inspectDeprecatedMatter = () =>{
    alumnos.forEach(alumno => {
        alumno.matters.forEach(matter=>{
            for(i in matter){
                console.log(matter[i])
                if(matter.note<6){
                    tr.appendChild(td)
                    divContenerdor.appendChild(tr)
                    materias.classList.add('materias','desaprobado')
                    nameMatter.innerHTML = matter[i].name
                    noteMatter.innerHTML = matter[i].note
                    stateMatter.innerHTML = matter[i].state
                }
            }
        })
    }); 
}