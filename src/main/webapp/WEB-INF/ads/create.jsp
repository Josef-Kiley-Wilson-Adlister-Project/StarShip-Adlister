<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad"/>
    </jsp:include>
    <style>
        body{
            background-color: #000000;
            color: yellow;
            background-image: url("https://lh3.googleusercontent.com/IW3y3Ysg0AhA4IdCkK600w66fAMSTeSj9vRnmeEDwWtlNH_B1wayw01FbvHNgUEjvQtAKbnDgH7va4LFaddvmWvhrwh8a1Te5GAF4Cj8fVw4DC6fudHWbaWZtmIqF07a_klfzqOBRi0jnLV9-LwDFsuR0gYH2CDFAIvOPFdb-H4hkO5hzaUJx4aBiMgum0YeWAwb2ZTClm_pBZnHOs_2Ne6ts6d9bUGSI4KJzb0zjI9poOXM10N2WfRiQPVYlWG6zj24n9PrsvYZuPSmD4IRDQl00q024oJSyVlbM3KsNXQ3v5HEcedKITbVYyYPi1T8ds4BdnhWgdB6QEcKN99QRpxPF0HVNUCl4vl6MG58j4CWIPQ36xnPyKeKN3RdZHGDs2ozMx_9mEeRDWNaDf5Llr8HYl7NEUk0M4mYvGvbTuYVvM3YEvYXYMephvNeVUaZDQm3biD3unrDVeIaK0eFbpUQCoD6Jg8So-30i1lZAfoovIFoVTYREl8frgR9eyXF4Bh4TZlifyRxPAZCMLlYPSrUtPJODxUN5DYzB2q8jqOVsbVPU7eKtYUy6wG6TkAhHmLT1kPht422pJePgkINlg_4NmmhWhIbk0vd1dCI5JIFppSfg-yN3306e8vUNOFSq4I78tJGaJAe_DLMmUfDvZGhrDqXwqoYQhXVgDrwaTBZ4Z-w6C0fJ0Xnde7vS_4pTmXLbS5v6fARXCkonjpsaLFuyRoFMytyxoGGFegdgzlW166ds7ZNCilEajh2XnJX-DjpHZ8vKRIvC-zIBOz9QSBuXgHq4zM1uZDv375Lmo7jU2Eyf-Dzw3WZ1GbnS4IoRtJ0oeUIQl9cacqdrz3v8IaD2Y8pxS_3OtORnSGabVu9dHRawbvr7N_XthpTZB4Cq5BWK_3SZkh4AF3ZC8C7mPwcIygAajs0loM1FvnlmACqGO8xuYEmkwHtL2G3oSwirMXsLsQCnLF6thMR=w640-h418-no?authuser=1");
            background-size: cover;
        }

    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container">
    <h1>Create a new Ad</h1>
    <form action="/ads/create" method="post">
        <div class="form-group">
            <label for="title">Star Ship</label>
            <input id="title" name="title" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <textarea id="description" name="description" class="form-control" type="text"></textarea>
        </div>
        <div class="form-group">
            <label for="price">Price</label>
            <input id="price" name="price" class="form-control" type="text">
        </div>
        <input type="submit" class="btn btn-block btn-primary">
    </form>
</div>
</body>
</html>
