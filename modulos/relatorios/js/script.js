console.log('teste');
console.log(window.location.href);

const _hredArr = window.location.href.split('=');
const _estado = _hredArr[1];
console.log(_estado);

const _reportTable = document.querySelector('.report-table body');




    let formData = {
        estado: _estado
    }
    
    $.ajax({
        type: "POST",
        url: "backend/listagem.php",
        data: formData,
        dataType: "json",
        encode: true
    }).done(function (data) {
        console.log(data);    
    }); 