import React from "react"
import {Link} from 'react-router-dom'


export default function Main() {
    return (
        <main>
            <h1 className="main--title">Cars Available:</h1>
            <ul>
                <li><h1><Link to="/payment">Continue to Payment</Link></h1></li>
            </ul>
        </main>
    )
}