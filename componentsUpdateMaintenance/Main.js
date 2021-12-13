import React from "react"

 export default function Payment() {
    return (
         <main>
             <h1 className="main--title">Employee: Car Maintenance</h1>
             <h2 className="main--title">Update Maintenance:</h2>
             <form className = "main--form">
                 <label>
                     License Plate:
                     <input type="text" name="License Plate" />
                 </label>
                 <label>
                     Mileage: 
                     <input type="text" name="Mileage" />
                 </label>
                <label>
                     Services Done: 
                     <input type="text" name="Service Done" />
                 </label>

                <label>
                     Cost: 
                     <input type="text" name="Cost" />
                 </label>

                <input type="submit" value="Submit" />
                 </form>
         </main>
     )
 } 
