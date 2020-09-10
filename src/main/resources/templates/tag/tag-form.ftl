<#import "../parts/common.ftl" as c>
<#--<#import "parts/login.ftl" as l>-->

<#if update>
    <#assign urlAction>${'/tags/' + tag.id}</#assign>
    <#assign submitTitle>Сохранить изменения</#assign>
    <#assign errorTitle>При сохранении изменений произошла ошибка!</#assign>
    <#assign title>Редактирование данных о тэге #${tag.id}</#assign>
<#else>
    <#assign urlAction>/tags</#assign>
    <#assign submitTitle>Создать новый тэг</#assign>
    <#assign errorTitle>При добавлении нового тэга произошла ошибка!</#assign>
    <#assign title>Добавление нового тэга</#assign>
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

        <div class="card-header">${title}</div>

        <!--Card content-->
        <div class="card-body">

            <!-- Default form login -->
            <form action="${urlAction}" method="post" name="tag">

                <#if update><input type="hidden" id="id" class="form-control" name="id" value="${tag.id}"></#if>

                <label for="title" class="grey-text">Название</label>
                <input type="text" id="title" class="form-control" name="title"
                       value="<#if tag.name??>${tag.name}</#if>">
                <br>

                <div class="text-center mt-4">
                    <button class="btn btn-info btn-md" type="submit">${submitTitle}</button>
                    <a class="btn btn-secondary btn-md" href="/tags">Отмена</a>
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
                                            объекта #${tag.id}</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        Книга <strong>${tag.name}</strong> будет безвозвратно удален из библиотеки.
                                        Продолжить?
                                    </div>
                                    <div class="modal-footer">
                                        <a href="/tags/delete/${tag.id}" class="btn btn-danger">Удалить</a>
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