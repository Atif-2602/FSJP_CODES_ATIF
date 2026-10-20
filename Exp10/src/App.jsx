// Aim: Program for making use of React Hooks that displays four buttons namely,
//      "Red", "Blue", "Green", "Yellow". On clicking any of these buttons, the code
//      displays the message that you have selected that particular color, and the
//      text color changes to the selected color.
// Name: Qureshi Atif Meraj Alam
// UIN: 251P004
// Class: S.E.Computer A

import { useState } from 'react'

function App() {
    // useState Hook: stores the selected color (initially none)
    const [selectedColor, setSelectedColor] = useState('')

    // called when any color button is clicked — updates the state
    const handleClick = (color) => {
        setSelectedColor(color)
    }

    return (
        <div style={styles.container}>
            <h1>Exp 10 - React Hooks (useState)</h1>
            <h2>Qureshi Atif Meraj Alam | UIN: 251P004</h2>

            <div style={styles.buttonGroup}>
                <button style={{ ...styles.button, background: '#e74c3c' }}
                        onClick={() => handleClick('Red')}>Red</button>

                <button style={{ ...styles.button, background: '#3498db' }}
                        onClick={() => handleClick('Blue')}>Blue</button>

                <button style={{ ...styles.button, background: '#27ae60' }}
                        onClick={() => handleClick('Green')}>Green</button>

                <button style={{ ...styles.button, background: '#f1c40f', color: '#333' }}
                        onClick={() => handleClick('Yellow')}>Yellow</button>
            </div>

            {/* message displayed based on the state */}
            {selectedColor !== '' && (
                <h2 style={{ color: selectedColor.toLowerCase() }}>
                    You selected {selectedColor}
                </h2>
            )}
        </div>
    )
}

const styles = {
    container: {
        fontFamily: 'Arial, sans-serif',
        textAlign: 'center',
        marginTop: '80px',
    },
    buttonGroup: {
        marginTop: '30px',
    },
    button: {
        color: 'white',
        border: 'none',
        padding: '12px 30px',
        margin: '8px',
        fontSize: '16px',
        borderRadius: '6px',
        cursor: 'pointer',
    },
}

export default App
