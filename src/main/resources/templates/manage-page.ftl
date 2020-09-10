<#import "parts/common.ftl" as c>

<@c.page>

    <section class="text-center">
        <div class="row mb-4 wow fadeIn">
            <div class="col-lg-4 col-md-12 mb-4">
                <!-- Card -->
                <div class="card card-image"
                     style="background-image: url('/img/authors.jpg');">

                    <!-- Content -->
                    <div class="text-white text-center d-flex align-items-center rgba-black-strong py-5 px-4">
                        <div>
                            <h5 class="pink-text"><i class="fas fa-user"></i></h5>
                            <h3 class="card-title pt-2"><strong>Авторы - ${amountAuthors}</strong></h3>
                            <p>Просмотр редактирование существующих авторов, добавлене новых.</p>
                            <a class="btn btn-pink" href="/authors"><i class="fas fa-clone left"></i> Перейти</a>
                        </div>
                    </div>

                </div>
                <!-- Card -->
            </div>


            <div class="col-lg-4 col-md-12 mb-4">
                <!-- Card -->
                <div class="card card-image"
                     style="background-image: url('/img/books.jpg');">

                    <!-- Content -->
                    <div class="text-white text-center d-flex align-items-center rgba-black-strong py-5 px-4">
                        <div>
                            <h5 class="cyan-text"><i class="fas fa-book"></i></h5>
                            <h3 class="card-title pt-2"><strong>Книги - ${amountBooks}</strong></h3>
                            <p>Просмотр редактирование существующих книг, добавлене новых.</p>
                            <a class="btn btn-cyan" href="/books"><i class="fas fa-clone left"></i> Перейти</a>
                        </div>
                    </div>

                </div>
                <!-- Card -->
            </div>

            <div class="col-lg-4 col-md-12 mb-4">
                <!-- Card -->
                <div class="card card-image"
                     style="background-image: url('/img/tags.jpg');">

                    <!-- Content -->
                    <div class="text-white text-center d-flex align-items-center rgba-black-strong py-5 px-4">
                        <div>
                            <h5 class="green-text"><i class="fas fa-tag"></i></h5>
                            <h3 class="card-title pt-2"><strong>Тэги - ${amountTags}</strong></h3>
                            <p>Просмотр редактирование существующих тэгов, добавлене новых.</p>
                            <a class="btn btn-green" href="/tags"><i class="fas fa-clone left"></i> Перейти</a>
                        </div>
                    </div>

                </div>
                <!-- Card -->
            </div>
        </div>
    </section>
</@c.page>