<#import "parts/common.ftl" as c>

<@c.page>
    <section class="card wow fadeIn"
             style="background-image: url(https://mdbootstrap.com/img/Photos/Others/gradient1.jpg);">
        <div class="card-body text-white text-center py-5 px-5 my-5">
            <h1 class="mb-4">
                <strong>Поиск книги</strong>
            </h1>
            <p>
                <input class="form-control form-control-lg" type="text"
                       placeholder="Введите название книги, или отдельные фразы, или слова, или что-нибудь">
            </p>
            <p>
                <#list tags as tag>
            <div class="custom-control custom-checkbox custom-control-inline">
                <input type="checkbox" class="custom-control-input" id="tag-${tag.id}">
                <label class="custom-control-label" for="tag-${tag.id}">${tag.name}</label>
            </div>
            </#list>
            </p>
            <p class="mb-4">
            <div class="btn-group text-left">
                <button class="btn btn-primary btn-sm dropdown-toggle" type="button" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                    Автор
                </button>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="#">Все</a>
                    <div class="dropdown-divider"></div>
                    <#list authors as author>
                        <a class="dropdown-item" href="#">${author.firstName} ${author.firstName}</a>
                    </#list>
                </div>
            </div>
            </p>
            <a target="_blank" href="#" class="btn btn-outline-white btn-lg">поиск
                <i class="fas fa-search ml-2"></i>
            </a>
        </div>
    </section>

    <hr class="my-5">

    <section class="text-center">
        <div class="row mb-4 wow fadeIn">
            <#list books as book>
                <div class="col-lg-4 col-md-12 mb-4">
                    <!--Card-->
                    <div class="card">

                        <div class="view overlay">
                            <img src="https://mdbootstrap.com/wp-content/uploads/2017/11/brandflow-tutorial-fb.jpg"
                                 class="card-img-top"
                                 alt="">
                            <a href="/books/${book.id}">
                                <div class="mask rgba-white-slight"></div>
                            </a>
                        </div>

                        <div class="card-body">
                            <!--Title-->
                            <h4 class="card-title">${book.title}</h4>
                            <!--Text-->
                            <p class="card-text">${book.description}</p>
                            <a href="/books/${book.id}"
                               class="btn btn-primary btn-md">Читать
                                <i class="fas fa-book-open ml-2"></i>
                            </a>
                            <a href="/books/${book.id}"
                               class="btn btn-secondary btn-md">Подробнее
                                <i class="fas fa-info ml-2"></i>
                            </a>
                        </div>

                    </div>
                </div>
            </#list>
        </div>
    </section>
</@c.page>