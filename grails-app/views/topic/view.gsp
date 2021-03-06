<!DOCTYPE html>
<html>
    <head>
        <title>ngPhotos - ${topic.name}</title>
        <meta name = "layout" content = "main">
        <asset:stylesheet href = "style.css" />
    </head>
    <body>
        <div class = "container">
            <div class = "row">
                <div class = "col-xs-12"><h1>${topic.name}</h1></div>

                <div class = "col-xs-12">
                    <div style = "margin-top: 25px;">
                        <a class = "btnlink" href = "${request.contextPath}/topic/addPhotos/${topic.id}">
                            <button class = "btn-sm btn">Add Photos</button>
                        </a>
                        <a class = "btnlink" href = "${request.contextPath}/topic/edit/${topic.id}">
                            <button class = "btn-sm btn">Edit Topic</button>
                        </a>
                        <a class = "btnlink" href = "${request.contextPath}/topic/delete/${topic.id}">
                            <button class = "btn-sm btn btn-danger">Delete Topic</button>
                        </a>
                    </div>
                </div>
            </div><br />

            <g:each in="${photos}">
                <div class = "row">
                    <div class = "col-xs-12">
                        <div class = "image-container">
                            <img class = "full-image" src = "${request.contextPath}/photo/view/${it.id}" />
                            <a href ="${request.contextPath}/photo/delete/${it.id}">
                                <button class = "del-image pull-right btn btn-xs btn-danger">
                                    Delete
                                </button>
                            </a>
                        </div> <!-- image container -->
                    </div> <!-- col span -->
                </div> <!-- row -->
            </g:each>

        </div> <!-- Container -->
    </body>
</html>