
import React from "react"
import {Link} from 'react-router-dom'


 export default function Payment() {
    return (
         <main>
             <h1 className="main--title">Please Provide Payment Information:</h1>
             <h2 className="main--title">Payment:</h2>
             <form className = "main--form">
                 <label>
                     Form of Payment:
                     <input type="text" name="Form of Payment" />
                 </label>
                 <label>
                     Name On Card: 
                     <input type="text" name="Name on Card" />
                 </label>
                <label>
                     Card Number: 
                     <input type="text" name="Card Number" />
                 </label>

                <label>
                     CVV: 
                     <input type="text" name="CVV" />
                 </label>
                <label>
                     Billing Address: 
                     <input type="text" name="Billing Address" />
                 </label>
             </form>
            <ul>
                <li><h1><Link to="/">Confirm Payment</Link></h1></li>
            </ul>
         </main>
     )
 } 
