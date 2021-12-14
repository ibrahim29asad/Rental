import React from "react"
import {Link} from 'react-router-dom'

export default function Main() {
    return (
        <main>
            <h1 className="main--title">View Maintenance</h1>
            <ul>
                <li><h1><Link to="/employee">Return to Employee Home</Link></h1></li>
            </ul>
        </main>
    )
}