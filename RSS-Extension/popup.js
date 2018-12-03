//Logic to search what the user needs to
let searchFeed = document.getElementById('search');
let divFeed = document.getElementById('feeds');
let listFeeds = document.getElementById('listFeeds');
searchFeed.oninput = function(element){
    var xhr = new XMLHttpRequest();
    xhr.open("GET", "http://localhost/RSS/Feeds/feed/search.php?s="+this.value, true);
    xhr.onreadystatechange = function(){
        if (xhr.readyState == 4) {
            var resp = JSON.parse(''+xhr.responseText+'');
            if (resp.records) {
                if (resp.records.length > 0) {
                    divFeed.innerText = '';
                    resp.records.forEach(element => {
                        createFeedItem(element);
                    });
                }
            }else{
                listFeeds.innerHTML = '';
                divFeed.innerText = 'No se encontro ninguna noticia con la palabra especificada'
            }
        }
    }
    xhr.send();
}

//Logic to refresh the database, is the process to indexing
let refresh = document.getElementById('refresh');
let loading = document.getElementById('loading');
let success = document.getElementById('success');
refresh.onclick = function(){
    loading.style.display = 'flex';
    var xhr = new XMLHttpRequest();
    xhr.open("GET", "http://localhost/RSS/Feeds/feeds.php", true);
    xhr.onreadystatechange = function(){
        if(xhr.readyState == 4){
            var resp = JSON.parse(xhr.responseText);
            if(resp.response){
                loading.style.display = 'none';
                setTimeout(function(){
                    success.style.display = 'inline-block';
                }, 3000);
            }
        }
    }
    xhr.send();
}

//Create a li, that contains a feed info and append to the DOM of the popup
function createFeedItem(feed){
    var listItem = document.createElement('li');
    listItem.classList += 'listItem';
    
    var title = document.createElement('p');
    var titleText = document.createTextNode(feed.title);
    title.appendChild(titleText);
    listItem.appendChild(title);
    console.log(listFeeds);

    var dateP = document.createElement('p');
    var date = document.createElement('small');
    date.innerText = feed.date;
    dateP.appendChild(date);
    
    listItem.appendChild(dateP);
    listFeeds.appendChild(listItem);
}