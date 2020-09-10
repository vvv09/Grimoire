<#import "../parts/common.ftl" as c>
<#--<#import "parts/login.ftl" as l>-->

<#if update>
    <#assign urlAction>${'/books/' + book.id}</#assign>
    <#assign submitTitle>Сохранить изменения</#assign>
    <#assign errorTitle>При сохранении изменений произошла ошибка!</#assign>
    <#assign title>Редактирование данных о книге #${book.id}</#assign>
<#else>
    <#assign urlAction>/books</#assign>
    <#assign submitTitle>Создать новую книгу</#assign>
    <#assign errorTitle>При добавлении новой книги произошла ошибка!</#assign>
    <#assign title>Добавление новой книги</#assign>
</#if>

<style>
    .red-gradient {
        background: linear-gradient(40deg, #FF3547, #FFBB33) !important;
    }
</style>

<@c.page>
    <#if errorMessage?has_content>
        <section class="card mb-4 red-gradient wow fadeIn">
            <div class="card-body text-white text-center py-5 px-5 ">
                <h1 class="mb-4">
                    <strong>${errorTitle}</strong>
                </h1>
                <p class="mb-4">
                    <strong>${errorMessage}</strong>
                </p>
            </div>
        </section>
    </#if>
    <div class="card mb-4 text-center wow fadeIn">

        <div class="card-header">${title}</div>

        <!--Card content-->
        <div class="card-body">

            <!-- Default form login -->
            <form action="${urlAction}" method="post" name="book">

                <#if update><input type="hidden" id="id" class="form-control" name="id" value="${book.id}"></#if>

                <label for="title" class="grey-text">Название</label>
                <input type="text" id="title" class="form-control" name="title"
                       value="<#if book.title??>${book.title}</#if>">
                <br>

                <label for="titleOriginal" class="grey-text">Оригинальное название</label>
                <input type="text" id="titleOriginal" class="form-control" name="titleOriginal"
                       value="<#if book.titleOriginal??>${book.titleOriginal}</#if>">
                <br>

                <label for="description" class="grey-text">Описание</label>
                <input type="text" id="description" class="form-control" name="description"
                       value="<#if book.description??>${book.description}</#if>">
                <br>

                <label for="year" class="grey-text">Год издания</label>
                <input type="text" id="year" class="form-control" name="year" maxlength="4"
                       value="<#if book.year??>${book.year}</#if>">
                <br>

                <label for="isbn" class="grey-text">ISBN</label>
                <input type="text" id="isbn" class="form-control" name="isbn"
                       value="<#if book.isbn??>${book.isbn}</#if>">
                <br>

                <div class="text-center mt-4">
                    <button class="btn btn-info btn-md" type="submit">${submitTitle}</button>
                    <a class="btn btn-secondary btn-md" href="/books">Отмена</a>
                    <#if update>
                        <button type="button" class="btn btn-danger btn-md" data-toggle="modal"
                                data-target="#confirmDialog">
                            Удалить
                        </button>

                        <!-- Modal -->
                        <div class="modal fade" id="confirmDialog" tabindex="-1" role="dialog"
                             aria-labelledby="exampleModalCenterTitle"
                             aria-hidden="true">

                            <!-- Add .modal-dialog-centered to .modal-dialog to vertically center the modal -->
                            <div class="modal-dialog modal-dialog-centered" role="document">


                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLongTitle">Подтверждение удаления
                                            объекта #${book.id}</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        Книга <strong>${book.title}</strong> будет безвозвратно удалена из библиотеки.
                                        Продолжить?
                                    </div>
                                    <div class="modal-footer">
                                        <a href="/books/delete/${book.id}" class="btn btn-danger">Удалить</a>
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Отмена
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </#if>
                </div>
            </form>
            <!-- Default form login -->


        </div>

    </div>
</@c.page>