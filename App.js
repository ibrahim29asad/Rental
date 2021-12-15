import React from "react"
import NavbarLogin from "./componentsLogin/Navbar"
import Login from "./componentsLogin/Main"
import NavbarCars from "./componentsWelcome/Navbar"
import Welcome from "./componentsWelcome/Main"
import NavbarPayment from "./componentsPayment/Navbar"
import Payment from "./componentsPayment/Main"
import Cars from "./componentsCars/Main"
import {
  BrowserRouter,
  Routes,
  Route,
  Link,
  Outlet
} from "react-router-dom";


export default function App() {
    return (
        <div className="container">
            <Welcome />
            <ul>
                <li><h1><Link to="/login">Employee Login</Link></h1></li>
                <li><h1><Link to="/customerInfo">Rent a Car</Link></h1></li> 
            </ul>
        </div>
    )
}