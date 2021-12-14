import React from "react"
import {Link, useNavigate} from 'react-router-dom'


export default function Main() {
   let navigate = useNavigate()
    return (
        
        <main>
            <h1 className="main--title">Employee Home:</h1>
            <ul>
                <li><h1><Link to="/addCar">Add Car</Link></h1></li>
                <li><h1><Link to="/editCar">Edit Car</Link></h1></li> 
                <li><h1><Link to="/bookingDetails">Booking Details</Link></h1></li> 
                <li><h1><Link to="/updateMaintenance">Update Maintenance</Link></h1></li> 
                <li><h1><Link to="/viewMaintenance">View Maintenance</Link></h1></li> 
                <li><h1><Link to="/addMaintenance">Add Maintenance</Link></h1></li> 
                <li><h1><Link to="/removeCar">Remove Car</Link></h1></li> 
            </ul>

        </main>
    )
} 
