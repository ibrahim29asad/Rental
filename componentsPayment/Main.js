
import React from "react"

 export default function Payment() {
    return (
         <main>
             <h1 className="main--title">Please Provide Customer Info and Payment:</h1>
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
             <h3 className="main--title">Customer Info:</h3>
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
         </main>
     )
 } 
