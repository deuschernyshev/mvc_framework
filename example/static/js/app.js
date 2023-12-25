function incrementCounter() {
    const counter = document.getElementById('counter');
    const value = Number.parseInt(counter.innerHTML);
    
    counter.innerHTML = value + 1;
}

function decrementCounter() {
    const counter = document.getElementById('counter');
    const value = Number.parseInt(counter.innerHTML);
    
    if (value <= 0) {
        return;
    }

    counter.innerHTML = value - 1;
}