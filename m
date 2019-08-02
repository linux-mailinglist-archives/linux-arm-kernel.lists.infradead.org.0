Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B1697F9F9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 15:31:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zAREUI90vniL2LfSxIPCD69PECj/GaGijgQScw49LFg=; b=Me6hm1TRQVuuOg
	LqYW0dYnLahVsEZQKZ5rBYMZWsDVAviOBzgg1BxM8tbQlT92jyIHil4nQTeEQXta6jCfb5KXugdiQ
	sUISJp5+gV+yMq4/+xJYVVSYY2CXxhmkI580JYAe4jdMNfB3Oudwn/XkEIlsSkaMuoKB8lCoANju7
	wWV2Sxpw5N5rakruQnH8q7taBc9TWRDMu9nHq03XAM5NvUzrDxGMzSLQvKucGruO9AiTHndZjOQfN
	4SYWlBp/b89hj4kKYWkKTfFJNHrmyt0J+pXn0BA6Z/GP5YXgTKY5R1GFk+ojKPx0Md15A9STamh9N
	b9UBx4O4HkKuw18xihLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htXev-0001Fm-Ss; Fri, 02 Aug 2019 13:31:49 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htXeR-0000hP-VN; Fri, 02 Aug 2019 13:31:21 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 040855C56A2A8F2ACCCA;
 Fri,  2 Aug 2019 21:31:15 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0; Fri, 2 Aug 2019
 21:31:08 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <herbert@gondor.apana.org.au>, <lars.persson@axis.com>,
 <jesper.nilsson@axis.com>, <davem@davemloft.net>, <thomas.lendacky@amd.com>,
 <gary.hook@amd.com>, <krzk@kernel.org>, <kgene@kernel.org>,
 <antoine.tenart@bootlin.com>, <matthias.bgg@gmail.com>,
 <jamie@jamieiles.com>, <agross@kernel.org>, <heiko@sntech.de>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <clabbe.montjoie@gmail.com>, <mripard@kernel.org>, <wens@csie.org>
Subject: [PATCH -next 03/12] crypto: exynos - use
 devm_platform_ioremap_resource() to simplify code
Date: Fri, 2 Aug 2019 21:28:00 +0800
Message-ID: <20190802132809.8116-4-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
In-Reply-To: <20190802132809.8116-1-yuehaibing@huawei.com>
References: <20190802132809.8116-1-yuehaibing@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_063120_199910_B2B46741 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-samsung-soc@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@axis.com, linux-rockchip@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/crypto/exynos-rng.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/crypto/exynos-rng.c b/drivers/crypto/exynos-rng.c
index 2cfabb9..cbd8ca6 100644
--- a/drivers/crypto/exynos-rng.c
+++ b/drivers/crypto/exynos-rng.c
@@ -268,7 +268,6 @@ static struct rng_alg exynos_rng_alg = {
 static int exynos_rng_probe(struct platform_device *pdev)
 {
 	struct exynos_rng_dev *rng;
-	struct resource *res;
 	int ret;
 
 	if (exynos_rng_dev)
@@ -289,8 +288,7 @@ static int exynos_rng_probe(struct platform_device *pdev)
 		return PTR_ERR(rng->clk);
 	}
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	rng->mem = devm_ioremap_resource(&pdev->dev, res);
+	rng->mem = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(rng->mem))
 		return PTR_ERR(rng->mem);
 
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
