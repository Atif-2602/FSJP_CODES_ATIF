// Aim: Program for making use of React Hooks that displays four buttons namely,
//      "Red", "Blue", "Green", "Yellow". On clicking any of these buttons, the code
//      displays the message that you have selected that particular color, and the
//      PAGE BACKGROUND COLOR also changes to the selected color.
// Name: Qureshi Atif Meraj Alam
// UIN: 251P004
// Class: S.E.Computer A

import { useState } from 'react'

// button style factory
function btn(background, color = '#ffffff') {
    return {
        background, color, border: 'none', padding: '12px 30px',
        margin: '8px', fontSize: '16px', borderRadius: '6px', cursor: 'pointer',
    }
}

function App() {
    // useState Hook: stores the selected color (initially none)
    const [selectedColor, setSelectedColor] = useState('')

    // called when any color button is clicked — updates the state
    const handleClick = (color) => {
        setSelectedColor(color)
    }

    return (
        <div style={{
            fontFamily: 'Arial, sans-serif',
            textAlign: 'center',
            paddingTop: '80px',
            minHeight: '100vh',
            // background changes to the selected color
            background: selectedColor !== '' ? selectedColor.toLowerCase() : '#f4f4f4',
            color: selectedColor !== '' ? '#ffffff' : '#222222',
            transition: 'background 0.4s ease',
        }}>
            <h1>Exp 10 - React Hooks (useState)</h1>
            <h2>Qureshi Atif Meraj Alam | UIN: 251P004</h2>

            <div style={{ marginTop: '30px' }}>
                <button style={btn('#e74c3c')} onClick={() => handleClick('Red')}>Red</button>
                <button style={btn('#3498db')} onClick={() => handleClick('Blue')}>Blue</button>
                <button style={btn('#27ae60')} onClick={() => handleClick('Green')}>Green</button>
                <button style={btn('#f1c40f', '#333333')} onClick={() => handleClick('Yellow')}>Yellow</button>
            </div>

            {/* message displayed based on the state */}
            {selectedColor !== '' && (
                <h2 style={{ marginTop: '40px', fontWeight: 'bold' }}>
                    You selected {selectedColor}
                </h2>
            )}
        </div>
    )
}

export default App
