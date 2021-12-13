import React from "react"

 export default function Payment() {
    return (
         <main>
             <h1 className="main--title">Employee: Update Cars</h1>
             <h2 className="main--title">Remove:</h2>
             <form className = "main--form">
                 <label>
                     License Plate:
                     <input type="text" name="License Plate" />
                 </label>
                 <label>
                     Store ID: 
                     <input type="text" name="Store ID" />
                 </label>
                <input type="submit" value="Submit" />
                 </form>
         </main>
     )
 } 
