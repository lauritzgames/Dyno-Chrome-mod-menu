const menu = document.createElement('div');
menu.style = `
    position: fixed; top: 10px; right: 10px; z-index: 9999;
    background: #333; color: white; padding: 15px; border-radius: 8px;
    font-family: sans-serif; box-shadow: 0 0 10px rgba(0,0,0,0.5);
`;
menu.innerHTML = `
    <h3 style="margin-top:0">Dino Mod Menu</h3>
    <button onclick="godMode()">God Mode: OFF</button><br><br>
    <button onclick="setSpeed()">Sæt fart (100)</button><br><br>
    <button onclick="highJump()">Højt hop: OFF</button>
`;
document.body.appendChild(menu);

let isGodMode = false;
window.godMode = () => {
    isGodMode = !isGodMode;
    const originalGameOver = Runner.prototype.gameOver;
    Runner.prototype.gameOver = isGodMode ? function(){} : originalGameOver;
    event.target.innerText = "God Mode: " + (isGodMode ? "ON" : "OFF");
};

window.setSpeed = () => {
    const speed = prompt("Indtast fart (f.eks. 100):", "100");
    Runner.getInstance().setSpeed(parseInt(speed));
};

window.highJump = () => {
    Runner.getInstance().tRex.config.GRAVITY = 0.1;
    alert("Tyngdekraften er ændret!");
};
