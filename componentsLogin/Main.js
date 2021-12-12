import React from "react"
import {useState} from "react"
import Employee from "../componentsEmployeeMain/Main"
import Payment from "../componentsPayment/Main"
import AddCar from "../componentsAddCar/Main"
import Cars from "../componentsCars/Main"
import {BrowserRouter, Routes, Route, Link} from 'react-router-dom'


export default function Main() {
    const [username, setUsername] = useState('')
    const [password, setPassword] = useState('')

    const handleSubmit = (e) =>{
        <BrowserRouter>
        <Routes>
            <Route path="employee" element={<Employee />} />
         </Routes>
         </BrowserRouter>
    }

    return (
        <main>
            <h1 className="main--title">Please input login credentials below:</h1>
            <form onSubmit={handleSubmit}>
                <label>
                    Username:
                    <input type="text" name="name" 
                        required
                        value = {username}
                        onChange={(e) => setUsername(e.target.value)}
                    />
                </label>
                <label>
                    Password: 
                    <input type="text" name="name" 
                    required
                    value = {password}
                    onChange={(e) => setPassword(e.target.value)}
                    />
                </label>
                <Link to="/employee"><input type="submit" value="Submit" /></Link>
            </form>
        </main>
    )
}