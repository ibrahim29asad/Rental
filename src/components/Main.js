import React from "react"

export default function Main() {
    return (
        <main>
            <h1 className="main--title">Please input login credentials below:</h1>
            <form className = "main--form">
                <label>
                    Username:
                    <input type="text" name="name" />
                </label>
                <label>
                    Password: 
                    <input type="text" name="name" />
                </label>
                <input type="submit" value="Submit" />
            </form>
        </main>
    )
}