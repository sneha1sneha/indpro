
const express = require("express");
const app = express();
const mysql = require("mysql")
const jwt=require("jsonwebtoken");
const bodyParser = require("body-parser");
// var jsonParser = bodyParser.json()
var urlencodedParser = bodyParser.urlencoded({ extended: false })
app.use(bodyParser.urlencoded({ extended: false })); 
app.use(bodyParser.json());
var cors = require('cors')
app.use(cors())
const bcrypt=require("bcryptjs");
const saltrounds=7;
// const bcrypt=require("bcrypt-nodejs");

let con = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'indproject'
});

con.connect((err) => {
    if (err) {
        return console.error('error: ' + err.message);
    }

    console.log('Connected to the MySQL server.');
});


// middileware for verification
function verifytoken(req,res,next){
    let authHeader=req.headers.authorization;
    // console.log(authHeader)
    if (authHeader==undefined){
        res.status(401).send({error:"no token provided"})
    }
    let token=authHeader.split(" ")[1]
        //  console.log(token)
    jwt.verify(token,"secret",function(err,decoded)
    {
        if (err){
            res.status(500).send({error:"Authentication failed"})
        }
        else{
            // res.send(decoded);
            next();
        }
    
    })

}



app.post("/login",urlencodedParser, function (req, res) {
    if(req.body.username == undefined || req.body.password == undefined) {
        console.log("error");
        res.status(500).send({ error: "autentication failed" });
    }

    let username = req.body.username;
    let passwordd = req.body.password;
    let r=`select password from registerationtable where username = '${username}'`
    con.query(r,(err,resultt)=>
    {
        if(err){
            res.status(500).send({error:"server er"})
                console.log("error in passwordhashing")}
                
        else{
            console.log("GGDGCGDHGCHD")
            console.log(resultt)
            const data=resultt[0].password
            
            console.log(data)
            console.log(passwordd)
            bcrypt.compare(passwordd,data,function(err,result){
                console.log("dbvcfdv")
                if(result){
                    console.log(username)
                    console.log(passwordd)
                    let qr = `select name from registerationtable  where username = '${username}' and  password =  '${data}'   `
                    con.query(qr,(err,result)=>{
                        if(err || result.length==0){
                        res.status(500).send({error:"login failed"});
                        console.log("error")
                        a=result.length
                        console.log(a)
                        }
                        else{
                                                //    res.status(200).send({success:"login success"});
                            
                            let resp={
                                id:result[0].id,
                                displayname:result[0].name
                            }
                            let token=jwt.sign(resp,"secret",{expiresIn:270});
                            res.status(200).send({auth:true,token:token});
                            console.log(token)
                
                        }
                    
                                            
                    })

                }
            
            else{
                    throw err;
                }
            
            })
        }   








    })

    // 
    
    //             }else{
    //                         throw err;
    //                     }
    // })
    //         }
            
    //     }

    // )
    



    // bcrypt.compare(password,data,function(err,resulttt){
    //             if(resulttt){
    //                         console.log("username")
    //                         let qr = `select name from registerationtable  where username = '${username}' and  password =  '${password}'   `
    //                         con.query(qr,(err,result)=>{
    //                             if(err || result.length==0){
    //                             res.status(500).send({error:"login failed"});
    //                             console.log("error")
    //                             }
    //                             else{
    //                                                     //    res.status(200).send({success:"login success"});
                                    
    //                                 let resp={
    //                                     id:result[0].id,
    //                                     displayname:result[0].name
    //                                 }
    //                                 let token=jwt.sign(resp,"secret",{expiresIn:270});
    //                                 res.status(200).send({auth:true,token:token});
    //                                 console.log(token)
                        
    //                             }
                            
                            
    //                         })
    //                     }else{
    //                         throw err;
    //                     }
    // })

    

    })





app.post("/register",urlencodedParser,function(req,res){
    const name=req.body.name
    const email=req.body.email
    const account=req.body.account
    const phonenumber=req.body.phonenumber
    const username=req.body.username
    const password=req.body.password
    bcrypt.hash(password,saltrounds,function(err,hash){
     

    if(hash){
  
      const password=hash;
     let query = `INSERT INTO registerationtable ( name,email,account,phonenumber,username,password) VALUES ("${name}","${email}", "${account}", "${phonenumber}", "${username}","${password}")`;
 

     con.query(query,(err,result)=>{

            if(err) throw err

            res.json(result)

        })
    }

else{
    throw err
}


    

 })
 })


app.post('/addemp', urlencodedParser,verifytoken,(req,res)=>{

    

   

    const emp_name=req.body.name;

    

    

    const emp_account=req.body.account;

    const emp_salary=req.body.salary;

    const emp_project=req.body.project;

    const emp_gender=req.body.gender;



   let query   = `INSERT INTO empdetails( name, account, salary, project,gender) VALUES ("${emp_name}", "${emp_account}", "${emp_salary}", "${emp_project}","${emp_gender}")`;

    con.query(query,(err,result)=>{

      if(err) throw err

      res.json(result)

    })



  })

  app.get('/getemp',(req,res)=>{
    con.query('select * from empdetails;',(err,result)=>{
        res.json(result)
    })
          })



// <------------------------------------------------->project    details  ---------------------------------->



app.get('/getproject',(req,res)=>{
    con.query('select * from projecttable;',(err,result)=>{
        res.json(result)
    })
          })









app.listen('8080', () => {
    console.log("server connected to port 8080")
})


























// const PORT= process.env.PORT || 8080



// app.get("/",(req,res)=>{
//     res.send('HEY ITS WORKING');
// });



// app.listen(PORT, () =>{console.log (`SERVER  RUNNING AT  ${PORT}`)

// })






