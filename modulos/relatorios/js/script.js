console.log('teste');
console.log(window.location.href);

const _hredArr = window.location.href.split('=');
const _estado = _hredArr[1];
console.log(_estado);

let _reportTable = document.querySelector('.report-table tbody');




    let formData = {
        estado: _estado
    }
    
    $.ajax({
        type: "POST",
        url: "backend/listagem.php",
        data: formData,
        dataType: "html",
        encode: false
    }).done(function (data) {
        console.log(data); 
        _reportTable.innerHTML = data;   
    }); 