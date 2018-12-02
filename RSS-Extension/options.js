let feedDiv = document.getElementById('feeds');

function loadAllFeeds() {
    var xhr = new XMLHttpRequest();
    
    xhr.open("GET", "http://localhost/RSS/Feeds/feed/read.php", true);
    xhr.onreadystatechange = function(){
        if (xhr.readyState == 4) {
            var resp = JSON.parse(''+xhr.responseText+'');
            if(resp.records){
                if(resp.records.length > 0){
                    resp.records.forEach(element => {
                        createFeed(element);
                    });
                }
            }
        }
    }
    xhr.send();
}


function createFeed(element){
    var col = document.createElement('div');
    col.classList += 'col-md-4 my-3';

    var card = document.createElement('div');
    card.classList += 'card';
    
    var cardHeader = document.createElement('div');
    cardHeader.classList += 'card-header';
    cardHeader.innerText = element.title;

    var cardBody = document.createElement('div');
    cardBody.classList += 'card-body'

    var description = document.createElement('p');
    description.innerText = element.description;
    cardBody.appendChild(description);

    var date = document.createElement('p');
    var dateSmall = document.createElement('small');
    dateSmall.innerText = element.date;
    date.appendChild(dateSmall);
    cardBody.appendChild(date);

    var link = document.createElement('a');
    link.innerText = 'Ver Noticia Completa';
    link.setAttribute('href', element.permalink);
    cardBody.appendChild(link);

    card.appendChild(cardHeader);
    card.appendChild(cardBody);
    col.appendChild(card);
    feedDiv.appendChild(col);
}

loadAllFeeds();