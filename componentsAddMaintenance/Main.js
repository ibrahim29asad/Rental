import React from "react"
import {Link} from 'react-router-dom'

export default function AddCar() {
    return (
        <main>
            <h1 className="main--title">Add maintenance</h1>
            <ul>
                <li><h1><Link to="/employee">Return to Employee Home</Link></h1></li>
            </ul>
        </main>
    )
}