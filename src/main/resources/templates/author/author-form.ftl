<#import "../parts/common.ftl" as c>

<#if update>
    <#assign urlAction>${'/authors/' + author.id}</#assign>
    <#assign submitBtn>Сохранить изменения</#assign>
    <#assign errorTitle>При сохранении изменений произошла ошибка!</#assign>
    <#assign formTitle>Редактирование данных об авторе #${author.id}</#assign>
<#else>
    <#assign urlAction>${'/authors'}</#assign>
    <#assign submitBtn>Добавить автора</#assign>
    <#assign errorTitle>При добавлении новго автора произошла ошибка!</#assign>
    <#assign formTitle>Добавление нового автора</#assign>
</#if>

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

        <div class="card-header">${formTitle}</div>

        <!--Card content-->
        <div class="card-body">
            <!-- Default form login -->
            <form action="${urlAction}" method="post" name="author">

                <#if update><input type="hidden" id="id" class="form-control" name="id" value="${author.id}"></#if>

                <label for="lastName" class="grey-text">Фамилия</label>
                <input type="text" id="lastName" class="form-control" name="lastName"
                       value="<#if author.lastName??>${author.lastName}</#if>">
                <br>

                <label for="firstName" class="grey-text">Имя</label>
                <input type="text" id="firstName" class="form-control" name="firstName"
                       value="<#if author.firstName??>${author.firstName}</#if>">
                <br>

                <label for="patronymic" class="grey-text">Отчество</label>
                <input type="text" id="patronymic" class="form-control" name="patronymic"
                       value="<#if author.patronymic??>${author.patronymic}</#if>">
                <br>

                <label for="originalName" class="grey-text">Оригинальное имя</label>
                <input type="text" id="originalName" class="form-control" name="originalName"
                       value="<#if author.originalName??>${author.originalName}</#if>">
                <br>

                <label for="birthDate" class="grey-text">Дата рождения</label>
                <input type="text" id="birthDate" class="form-control" name="birthDate" maxlength="10"
                       value="<#if author.birthDate??>${author.birthDate}</#if>">
                <br>

                <label for="description" class="grey-text">Описание</label>
                <input type="text" id="description" class="form-control" name="description"
                       value="<#if author.description??>${author.description}</#if>">
                <br>

                <div class="text-center mt-4">
                    <button class="btn btn-info btn-md" type="submit">${submitBtn}</button>
                    <a class="btn btn-secondary btn-md" href="/authors">Отмена</a>
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
                                            объекта #${author.id}</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        Автор <strong>${author.firstName} ${author.lastName}</strong> будет безвозвратно
                                        удален из библиотеки. Продолжить?
                                    </div>
                                    <div class="modal-footer">
                                        <a href="/authors/delete/${author.id}" class="btn btn-danger">Удалить</a>
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