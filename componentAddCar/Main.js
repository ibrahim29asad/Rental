import React from "react"

 export default function Payment() {
    return (
         <main>
             <h1 className="main--title">Employee: Update Cars</h1>
             <h2 className="main--title">Add:</h2>
             <form className = "main--form">
                 <label>
                     License Plate:
                     <input type="text" name="License Plate" />
                 </label>
                 <label>
                     Price:
                     <input type="text" name="Price" />
                 </label>
                 <label>
                     Store ID: 
                     <input type="text" name="Store ID" />
                 </label>
                 <label>
                    Damage: 
                     <input type="text" name="Damage" />
                 </label>
                <label>
                     Brand: 
                     <input type="text" name="Brand" />
                 </label>
                 <label>
                    Model: 
                     <input type="text" name="Model" />
                 </label>
                 <label>
                    Colour: 
                     <input type="text" name="Colour" />
                 </label>
                 <label>
                    Size: 
                     <input type="text" name="Size" />
                 </label>
                 <label>
                    Avalibility: 
                     <input type="text" name="Avalibility" />
                 </label>   
                <label>
                    Number of Seats: 
                     <input type="text" name="Number of Seats" />
                 </label>                  
                <input type="submit" value="Submit" />
                 </form>
         </main>
     )
 } 
 


