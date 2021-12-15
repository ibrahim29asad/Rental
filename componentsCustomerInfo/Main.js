
import React from "react"
import {Link} from 'react-router-dom'


 export default function CustomerInfo() {
    return (
         <main>
             <h3 className="main--title">Please input your information below:</h3>
              <form className = "main--form">
                <label>
                     First Name:
                     <input type="text" name="First Name" />
                 </label>
                <label>
                     Last Name:
                     <input type="text" name="Last Name" />
                 </label>
                 <label>
                     DOB:
                     <input type="text" name="DOB" />
                 </label>
                 <label>
                     License Number:
                     <input type="text" name="License Number" />
                 </label>
                <label>
                     Address:
                     <input type="text" name="Address" />
                 </label>
                <label>
                     Email:
                     <input type="text" name="Email" />
                 </label>
                <label>
                     Phone:
                     <input type="text" name="Phone" />
                 </label>
                <input type="submit" value="Submit" />
                 </form>
            <ul>
                <li><h1><Link to="/cars">View Cars</Link></h1></li>
            </ul>
         </main>
     )
 } 
