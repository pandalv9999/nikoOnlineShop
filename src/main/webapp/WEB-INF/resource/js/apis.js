function loadName(username) {
    console.log('loading username');
    // username = username.replace('.', '%2e')
    ajax(
         'GET',
         '/onlineShop/customer/getCustomerByUsername/' + username,
         null,
         function(result) {
            console.log("success");
             document.getElementById('result').textContent += result;
        },
        function () {
            console.log("fail");
            document.getElementById('result').textContent += 'fail';
        }
    );
}

function addToCart(productId, quantity) {
    console.log(productId, quantity);
    ajax('GET',
        '/onlineShop/cart/add/' + productId + '/' + quantity,
        null,
        function(result) {
            console.log("success");
            document.getElementById('errMsg' + productId).textContent += result;
        },
        function () {
            console.log("fail");
            document.getElementById('errMsg' + productId).textContent += 'FAIL';
        })
}


function ajax(method, url, data, successCallback, errorCallback) {
    var xhr = new XMLHttpRequest();
    console.log(url)
    xhr.open(method, url, true);

    xhr.onload = function() {
        if (xhr.status === 200) {
            successCallback(xhr.responseText);
        } else {
            errorCallback();
        }
    };

    xhr.onerror = function() {
        console.error("The request couldn't be completed.");
        errorCallback();
    };

    if (data === null) {
        xhr.send();
    } else {
        xhr.setRequestHeader("Content-Type", "application/json;charset=utf-8");
        xhr.send(data);
    }
}