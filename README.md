# Dyno-Chrome-mod-menu
-# paste this in
const menu = document.createElement('div');
menu.style = `
    position: fixed; top: 10px; right: 10px; z-index: 9999;
    background: #333; color: white; padding: 15px; border-radius: 8px;
    font-family: sans-serif; box-shadow: 0 0 10px rgba(0,0,0,0.5);
`;
menu.innerHTML = `
    <h3 style="margin-top:0">Dino Mod Menu</h3>
    <button onclick="godMode()">God Mode: OFF</button><br><br>
    <button onclick="">Sæt fart (not here)</button><br><br>
    <button onclick="">Højt hop: OFF(not here)</button>
`;
document.body.appendChild(menu);

let isGodMode = false;
window.godMode = () => {
    isGodMode = !isGodMode;
    const originalGameOver = Runner.prototype.gameOver;
    Runner.prototype.gameOver = isGodMode ? function(){} : originalGameOver;
    event.target.innerText = "God Mode: " + (isGodMode ? "ON" : "OFF");
};
