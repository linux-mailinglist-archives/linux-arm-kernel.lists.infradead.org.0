Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 129AD748A9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 10:02:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tGvm59bc8Wx0WYuXOqybOhLv2xMTBvavZut/dm+1d5k=; b=L7q4qHKxZbxjiT
	4C6yIgaDFiRMNSMntEORl7dubArRS6+qNDAKJ+yvfUS0qsnSia7xDC/jO3X9qhouOre7JPwX9u7/i
	Zph3hkbVmhkMwX8D3yWbwBUarOcIBp3DytgxsMJk4R0KtfFocwtdqt90LwmvBGFUk/0bmCsLpWqU2
	b3CDSCUsOF3FW719FvD9RVkWJ0niOjjv1IhGWGu44uhq6uXDDFESJBBbPN2Hm8yeC017Nu1ctNWg7
	vSm3Me3Ry31TynPkVZAv8mWhRsai2FtVYNrWrBW698F9mK6kv5qJpLOPZSz+qCot/z8r4D4Oxe4gZ
	bNSBiGCJrLv2sS+Wxi7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqYhf-00074o-20; Thu, 25 Jul 2019 08:02:19 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqYhS-00074D-Mg
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 08:02:08 +0000
Received: by mail-pf1-x444.google.com with SMTP id r1so22323031pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 01:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yJ0esR3gqyjabjnRdkv3xq8sELXYTmCusEQ+i32vrcQ=;
 b=ejWQUWNE/qfPXJAbUOv1iSK/jBAEsTxBG7WHLr+jBvLhnFCl2Wn8FqmDwIWiwvm+PS
 JrW0EU3VVY/weHtzAy1FOLU1HNs1jqXOS3bTX2m+yMk3tFxAcxrlu2cd/rjrGrxwMfsV
 8PNLURtPsJfIeKBwQFbxx6UY6VtW1G8BuO/ySnnZ4Jvn7VkuIiRd7CcbPQ7ZdzWDIagl
 Yb1+i7FufmI8y6PrFrWzVsf7O7gXRorMJlN3qjibgF7cqwoUIEptILF5jUfswOERuT2t
 RrPnHheuxAhCN8Frphy8iH3cSOhwZ1WU+iMBZN46lHz0nKVrsAqf7jHeW24Z/r/BY9sd
 Wz5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yJ0esR3gqyjabjnRdkv3xq8sELXYTmCusEQ+i32vrcQ=;
 b=tm4XHQ6T3jEbRkihYby322yTJOBMMYxjOyxNPPFpGzQ4FpxOHnP+23WXLZ/hlgAL6b
 t6L0Usu9tdo97ZbC3T3ph5wv7/YylXEM2bcdhjpsrj3YOGHc7TNZkmzDmM4zKPxYcmcv
 3xL59lKu+PnpiqoTTPzxEw/r72B1BeCQI0hwH6QrNabgWKrlPz7iCeWwZh2y5Ai43S9G
 0ORYTzGP9bJUlGAzdn3Wt6jOJIC3VW1WSNC9Exj1B3qf3o7L/uJEhrMn3kF7ZByNXdvL
 bPGT6N1lmBJCF8NZmvmzTTcA8v+42wmfFfLZj7ZCtV52HmX4heKq8iVGme/pfVRPQ2hc
 021Q==
X-Gm-Message-State: APjAAAUv+TCEbgghYMUMK/6E/Qjc8SN+I17HLTIFvyNL/0LFZK6+x+d0
 3n1hl3S1oInFjHL0GhvnYu8=
X-Google-Smtp-Source: APXvYqwrO63J65nlVcYLjmqxh6lIEg38q2Kxx1VcwpM359myqL+zdL88hj1oGtrgK48MaYQXJeZIdA==
X-Received: by 2002:a62:483:: with SMTP id 125mr15831288pfe.245.1564041725605; 
 Thu, 25 Jul 2019 01:02:05 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id p27sm73176877pfq.136.2019.07.25.01.01.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 25 Jul 2019 01:02:04 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] hwrng: Use device-managed registration API
Date: Thu, 25 Jul 2019 16:01:55 +0800
Message-Id: <20190725080155.19875-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_010206_773124_A1CB2D15 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Deepak Saxena <dsaxena@plexity.net>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chuhong Yuan <hslester96@gmail.com>,
 =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Patrice Chotard <patrice.chotard@st.com>, linux-samsung-soc@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Kukjin Kim <kgene@kernel.org>, Paul Mackerras <paulus@samba.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Matt Mackall <mpm@selenic.com>,
 linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_hwrng_register to simplify the implementation.
Manual unregistration and some remove functions can be
removed now.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/char/hw_random/atmel-rng.c     |  3 +--
 drivers/char/hw_random/cavium-rng-vf.c | 11 +----------
 drivers/char/hw_random/exynos-trng.c   |  3 +--
 drivers/char/hw_random/n2-drv.c        |  4 +---
 drivers/char/hw_random/nomadik-rng.c   |  3 +--
 drivers/char/hw_random/omap-rng.c      |  3 +--
 drivers/char/hw_random/powernv-rng.c   | 10 +---------
 drivers/char/hw_random/st-rng.c        |  4 +---
 drivers/char/hw_random/xgene-rng.c     |  4 +---
 9 files changed, 9 insertions(+), 36 deletions(-)

diff --git a/drivers/char/hw_random/atmel-rng.c b/drivers/char/hw_random/atmel-rng.c
index 433426242b87..e55705745d5e 100644
--- a/drivers/char/hw_random/atmel-rng.c
+++ b/drivers/char/hw_random/atmel-rng.c
@@ -86,7 +86,7 @@ static int atmel_trng_probe(struct platform_device *pdev)
 	trng->rng.name = pdev->name;
 	trng->rng.read = atmel_trng_read;
 
-	ret = hwrng_register(&trng->rng);
+	ret = devm_hwrng_register(&pdev->dev, &trng->rng);
 	if (ret)
 		goto err_register;
 
@@ -103,7 +103,6 @@ static int atmel_trng_remove(struct platform_device *pdev)
 {
 	struct atmel_trng *trng = platform_get_drvdata(pdev);
 
-	hwrng_unregister(&trng->rng);
 
 	atmel_trng_disable(trng);
 	clk_disable_unprepare(trng->clk);
diff --git a/drivers/char/hw_random/cavium-rng-vf.c b/drivers/char/hw_random/cavium-rng-vf.c
index 2d1352b67168..3de4a6a443ef 100644
--- a/drivers/char/hw_random/cavium-rng-vf.c
+++ b/drivers/char/hw_random/cavium-rng-vf.c
@@ -67,7 +67,7 @@ static int cavium_rng_probe_vf(struct	pci_dev		*pdev,
 
 	pci_set_drvdata(pdev, rng);
 
-	ret = hwrng_register(&rng->ops);
+	ret = devm_hwrng_register(&pdev->dev, &rng->ops);
 	if (ret) {
 		dev_err(&pdev->dev, "Error registering device as HWRNG.\n");
 		return ret;
@@ -76,14 +76,6 @@ static int cavium_rng_probe_vf(struct	pci_dev		*pdev,
 	return 0;
 }
 
-/* Remove the VF */
-static void  cavium_rng_remove_vf(struct pci_dev *pdev)
-{
-	struct cavium_rng *rng;
-
-	rng = pci_get_drvdata(pdev);
-	hwrng_unregister(&rng->ops);
-}
 
 static const struct pci_device_id cavium_rng_vf_id_table[] = {
 	{ PCI_DEVICE(PCI_VENDOR_ID_CAVIUM, 0xa033), 0, 0, 0},
@@ -95,7 +87,6 @@ static struct pci_driver cavium_rng_vf_driver = {
 	.name		= "cavium_rng_vf",
 	.id_table	= cavium_rng_vf_id_table,
 	.probe		= cavium_rng_probe_vf,
-	.remove		= cavium_rng_remove_vf,
 };
 module_pci_driver(cavium_rng_vf_driver);
 
diff --git a/drivers/char/hw_random/exynos-trng.c b/drivers/char/hw_random/exynos-trng.c
index 94235761955c..b4b52ab23b6b 100644
--- a/drivers/char/hw_random/exynos-trng.c
+++ b/drivers/char/hw_random/exynos-trng.c
@@ -153,7 +153,7 @@ static int exynos_trng_probe(struct platform_device *pdev)
 		goto err_clock;
 	}
 
-	ret = hwrng_register(&trng->rng);
+	ret = devm_hwrng_register(&pdev->dev, &trng->rng);
 	if (ret) {
 		dev_err(&pdev->dev, "Could not register hwrng device.\n");
 		goto err_register;
@@ -179,7 +179,6 @@ static int exynos_trng_remove(struct platform_device *pdev)
 {
 	struct exynos_trng_dev *trng =  platform_get_drvdata(pdev);
 
-	hwrng_unregister(&trng->rng);
 	clk_disable_unprepare(trng->clk);
 
 	pm_runtime_put_sync(&pdev->dev);
diff --git a/drivers/char/hw_random/n2-drv.c b/drivers/char/hw_random/n2-drv.c
index d4cab105796f..2d256b3470db 100644
--- a/drivers/char/hw_random/n2-drv.c
+++ b/drivers/char/hw_random/n2-drv.c
@@ -768,7 +768,7 @@ static int n2rng_probe(struct platform_device *op)
 	np->hwrng.data_read = n2rng_data_read;
 	np->hwrng.priv = (unsigned long) np;
 
-	err = hwrng_register(&np->hwrng);
+	err = devm_hwrng_register(&pdev->dev, &np->hwrng);
 	if (err)
 		goto out_hvapi_unregister;
 
@@ -793,8 +793,6 @@ static int n2rng_remove(struct platform_device *op)
 
 	cancel_delayed_work_sync(&np->work);
 
-	hwrng_unregister(&np->hwrng);
-
 	sun4v_hvapi_unregister(HV_GRP_RNG);
 
 	return 0;
diff --git a/drivers/char/hw_random/nomadik-rng.c b/drivers/char/hw_random/nomadik-rng.c
index fc0f6b0cb80d..74ed29f42e4f 100644
--- a/drivers/char/hw_random/nomadik-rng.c
+++ b/drivers/char/hw_random/nomadik-rng.c
@@ -57,7 +57,7 @@ static int nmk_rng_probe(struct amba_device *dev, const struct amba_id *id)
 	if (!base)
 		goto out_release;
 	nmk_rng.priv = (unsigned long)base;
-	ret = hwrng_register(&nmk_rng);
+	ret = devm_hwrng_register(&dev->dev, &nmk_rng);
 	if (ret)
 		goto out_release;
 	return 0;
@@ -71,7 +71,6 @@ static int nmk_rng_probe(struct amba_device *dev, const struct amba_id *id)
 
 static int nmk_rng_remove(struct amba_device *dev)
 {
-	hwrng_unregister(&nmk_rng);
 	amba_release_regions(dev);
 	clk_disable(rng_clk);
 	return 0;
diff --git a/drivers/char/hw_random/omap-rng.c b/drivers/char/hw_random/omap-rng.c
index e9b6ac61fb7f..b27f39688b5e 100644
--- a/drivers/char/hw_random/omap-rng.c
+++ b/drivers/char/hw_random/omap-rng.c
@@ -500,7 +500,7 @@ static int omap_rng_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_register;
 
-	ret = hwrng_register(&priv->rng);
+	ret = devm_hwrng_register(&pdev->dev, &priv->rng);
 	if (ret)
 		goto err_register;
 
@@ -525,7 +525,6 @@ static int omap_rng_remove(struct platform_device *pdev)
 {
 	struct omap_rng_dev *priv = platform_get_drvdata(pdev);
 
-	hwrng_unregister(&priv->rng);
 
 	priv->pdata->cleanup(priv);
 
diff --git a/drivers/char/hw_random/powernv-rng.c b/drivers/char/hw_random/powernv-rng.c
index f2e8272e276a..8da1d7917bdc 100644
--- a/drivers/char/hw_random/powernv-rng.c
+++ b/drivers/char/hw_random/powernv-rng.c
@@ -33,18 +33,11 @@ static struct hwrng powernv_hwrng = {
 	.read = powernv_rng_read,
 };
 
-static int powernv_rng_remove(struct platform_device *pdev)
-{
-	hwrng_unregister(&powernv_hwrng);
-
-	return 0;
-}
-
 static int powernv_rng_probe(struct platform_device *pdev)
 {
 	int rc;
 
-	rc = hwrng_register(&powernv_hwrng);
+	rc = devm_hwrng_register(&pdev->dev, &powernv_hwrng);
 	if (rc) {
 		/* We only register one device, ignore any others */
 		if (rc == -EEXIST)
@@ -70,7 +63,6 @@ static struct platform_driver powernv_rng_driver = {
 		.of_match_table = powernv_rng_match,
 	},
 	.probe	= powernv_rng_probe,
-	.remove = powernv_rng_remove,
 };
 module_platform_driver(powernv_rng_driver);
 
diff --git a/drivers/char/hw_random/st-rng.c b/drivers/char/hw_random/st-rng.c
index bd6a98b3479b..863448360a7d 100644
--- a/drivers/char/hw_random/st-rng.c
+++ b/drivers/char/hw_random/st-rng.c
@@ -102,7 +102,7 @@ static int st_rng_probe(struct platform_device *pdev)
 
 	dev_set_drvdata(&pdev->dev, ddata);
 
-	ret = hwrng_register(&ddata->ops);
+	ret = devm_hwrng_register(&pdev->dev, &ddata->ops);
 	if (ret) {
 		dev_err(&pdev->dev, "Failed to register HW RNG\n");
 		clk_disable_unprepare(clk);
@@ -118,8 +118,6 @@ static int st_rng_remove(struct platform_device *pdev)
 {
 	struct st_rng_data *ddata = dev_get_drvdata(&pdev->dev);
 
-	hwrng_unregister(&ddata->ops);
-
 	clk_disable_unprepare(ddata->clk);
 
 	return 0;
diff --git a/drivers/char/hw_random/xgene-rng.c b/drivers/char/hw_random/xgene-rng.c
index 8c6f9f63da5e..7e568db87ae2 100644
--- a/drivers/char/hw_random/xgene-rng.c
+++ b/drivers/char/hw_random/xgene-rng.c
@@ -361,7 +361,7 @@ static int xgene_rng_probe(struct platform_device *pdev)
 
 	xgene_rng_func.priv = (unsigned long) ctx;
 
-	rc = hwrng_register(&xgene_rng_func);
+	rc = devm_hwrng_register(&pdev->dev, &xgene_rng_func);
 	if (rc) {
 		dev_err(&pdev->dev, "RNG registering failed error %d\n", rc);
 		if (!IS_ERR(ctx->clk))
@@ -375,7 +375,6 @@ static int xgene_rng_probe(struct platform_device *pdev)
 			rc);
 		if (!IS_ERR(ctx->clk))
 			clk_disable_unprepare(ctx->clk);
-		hwrng_unregister(&xgene_rng_func);
 		return rc;
 	}
 
@@ -392,7 +391,6 @@ static int xgene_rng_remove(struct platform_device *pdev)
 		dev_err(&pdev->dev, "RNG init wakeup failed error %d\n", rc);
 	if (!IS_ERR(ctx->clk))
 		clk_disable_unprepare(ctx->clk);
-	hwrng_unregister(&xgene_rng_func);
 
 	return rc;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
