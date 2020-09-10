<#import "../parts/common.ftl" as c>
<@c.page>
    <div class="row row-cols-1 row-cols-md-3">
        <div class="col mb-4">
            <div class="card wow fadeIn">

                <div class="view overlay text-white text-center py-3" style="background-color: #388e3c">
                    <h1>
                        <strong>Тэги ( ${amount} )</strong>
                    </h1>
                </div>

                <div class="card-body py-0">
                    <table class="table" cellspacing="0" width="100%">
                        <tbody>
                        <#list tags as tag>
                            <tr>
                                <td class="td-custom"><#if tag.name??>${tag.name}</#if></td>
                                <td>
                                    <a href="/tags/${tag.id}" class="btn btn-primary btn-sm">
                                        <i class="fas fa-pen"></i>
                                    </a>
                                    <button type="button" class="btn btn-danger btn-sm" data-toggle="modal"
                                            data-target="#exampleModalCenter">
                                        <i class="fas fa-trash-alt"></i>
                                    </button>

                                    <!-- Modal -->
                                    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
                                         aria-labelledby="exampleModalCenterTitle"
                                         aria-hidden="true">

                                        <div class="modal-dialog modal-dialog-centered" role="document">

                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLongTitle">Подтверждения
                                                        удаления объекта #${tag.id}</h5>
                                                    <button type="button" class="close" data-dismiss="modal"
                                                            aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    Тэг <strong>${tag.name}</strong> будет безвозвратно удален из
                                                    библиотеки. Продолжить?
                                                </div>
                                                <div class="modal-footer">
                                                    <a href="/tags/delete/${tag.id}" class="btn btn-danger">Удалить</a>
                                                    <button type="button" class="btn btn-secondary"
                                                            data-dismiss="modal">Отмена
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </#list>
                        <tr>
                            <td class="td-custom footer-custom">Всего: ${amount}</td>
                            <td>
                                <a href="/tags/new" class="btn btn-success btn-sm">
                                    <i class="fas fa-plus"></i>
                                </a>
                            </td>
                        </tr>
                        </tbody>
                    </table>

                    <hr class="mb-5">

                    <nav class="d-flex justify-content-center wow fadeIn">
                        <ul class="pagination pg-blue">

                            <!--Arrow left-->
                            <li class="page-item disabled">
                                <a class="page-link" href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                    <span class="sr-only">Previous</span>
                                </a>
                            </li>

                            <li class="page-item active">
                                <a class="page-link" href="#">1
                                    <span class="sr-only">(current)</span>
                                </a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">2</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">3</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">4</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">5</a>
                            </li>

                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </li>
                        </ul>
                    </nav>

                </div>

            </div>
            <!-- Card -->
        </div>
    </div>
</@c.page>