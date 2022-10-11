<#import "blocks/template.ftlh" as t>
<@t.template user>
    <h1 style="text-align: center">Поиск товаров</h1><hr>
    <form method="get" action="/">
        <div class="form-row">
            <div class="form-group col-md-10">
                <label for="searchWord">Поиск</label>
                <input type="text" name="searchWord" <#if searchWord??>value="${searchWord}"</#if> class="form-control"
                       id="searchWord">
            </div>
            <button style="width: 100%" type="submit" class="btn btn-dark">Поиск</button>
        </div>
    </form>
    <hr>
    <div class="card-columns">
        <#list products as product>
            <a href="/product/${product.id}" class="product-link">
                <div class="card text-white bg-dark my-3 product">

                    <img src="/images/${product.previewImageId}"
                         class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">${product.title}</h5>
                        <p class="card-text">${product.price} ₽</p>
                    </div>
                    <div class="card-footer">
                        ${product.city}
                    </div>
                </div>
            </a>
        <#else>
            <h1 style="text-align: center">Не найдено</h1>
        </#list>
    </div>
    <button class="page-btn-1">1</button>
    <button class="page-btn-2">2</button>
    <button class="page-btn-3">3</button>
    <script>
            let cards = document.querySelectorAll('.product-link');
            console.log(cards)
            cards[3].style.display = 'none';
            cards[4].style.display = 'none';
            cards[5].style.display = 'none';
            cards[6].style.display = 'none';
            cards[7].style.display = 'none';
            cards[8].style.display = 'none';


            let btn1 = document.querySelector('.page-btn-1');
            let btn2 = document.querySelector('.page-btn-2');
            let btn3 = document.querySelector('.page-btn-3');

            btn1.onclick = function () {
                cards[3].style.display = 'none';
                cards[4].style.display = 'none';
                cards[5].style.display = 'none';
                cards[6].style.display = 'none';
                cards[7].style.display = 'none';
                cards[8].style.display = 'none';

                cards[0].style.display = 'block';
                cards[1].style.display = 'block';
                cards[2].style.display = 'block';
            }
            btn2.onclick = function () {
                cards[3].style.display = 'block';
                cards[4].style.display = 'block';
                cards[5].style.display = 'block';

                cards[0].style.display = 'none';
                cards[1].style.display = 'none';
                cards[2].style.display = 'none';
                cards[6].style.display = 'none';
                cards[7].style.display = 'none';
                cards[8].style.display = 'none';
            }
            btn3.onclick = function () {
                cards[6].style.display = 'block';
                cards[7].style.display = 'block';
                cards[8].style.display = 'block';

                cards[0].style.display = 'none';
                cards[1].style.display = 'none';
                cards[2].style.display = 'none';
                cards[3].style.display = 'none';
                cards[4].style.display = 'none';
                cards[5].style.display = 'none';
            }
        </script>
</@t.template>