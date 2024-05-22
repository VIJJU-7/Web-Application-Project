function addNewCard() {
          
            const bankName = document.getElementById('bankName').value;
            const newCard = document.createElement('div');
            newCard.classList.add('card'); 
            newCard.innerHTML = `
                <h4>Bank Name: ${bankName}</h4>
            `;           
            const cardContainer = document.getElementById('cardContainer');
            cardContainer.appendChild(newCard);
        }