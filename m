Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5314B104C83
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 08:28:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U4lWKomjRHuCUlln8lY8T8Y+PQNhQtY2F4tZS5vX5pk=; b=VAmN5Jt/h8pqas
	D54zDCO9OiQ3NTJjYlYc097wcUk1hMM/zw7mM6kurh+XPkMQUOyFfxRyNyx5BI2nmTo8gIT+7b7ND
	rZaHL+hVbygZqX49xNu7dUxVmgzp+qyfKFp/NxwL10mfpjQoOTTxiMciRMpsT9MayvD3daeovh01+
	XO6X98cxM7mxQZpie81y3R2lghjzect33n3iHcI6Hcj4MfWQVpq7RgTp8pAMGn4Tp2bFGO+tmHdOl
	UVsbkMogYWUCbpFYtnD6RVLFJgMw9EU9esvxkbZiEjnD08UO3BI7gOmS8Q759Snqk5iW0LSIf4Q6O
	oBEpB+iuqovpVUzejfKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXgt5-00017u-4o; Thu, 21 Nov 2019 07:28:23 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXgsP-0000ja-Vz
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 07:27:43 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAL7RUiO121185;
 Thu, 21 Nov 2019 01:27:30 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1574321250;
 bh=avftAO4KNvNoNRnpg3sOK4jR51D3tqR6xIXLBziuwm4=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=mCpZyDZvfCGTIzoWPtVWDzd/XcwuhhgyfatJ71YIw2A08zGYBfbsHvqg/ygBnziSy
 wYnHN1xcpFE2ROUvGff8vSH37e/o/2DaB9+NK3hENqkcTj2xygch2uefBMdUz7Shtt
 XHDslgQY30nvqlK1pfqjE3fHX8ndLEQip6hbGzAw=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xAL7RUQK006777
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 21 Nov 2019 01:27:30 -0600
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 21
 Nov 2019 01:27:29 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 21 Nov 2019 01:27:29 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAL7RNTr079857;
 Thu, 21 Nov 2019 01:27:26 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>
Subject: [PATCH 1/3] crypto: atmel-aes - Retire
 dma_request_slave_channel_compat()
Date: Thu, 21 Nov 2019 09:27:21 +0200
Message-ID: <20191121072723.28479-2-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191121072723.28479-1-peter.ujfalusi@ti.com>
References: <20191121072723.28479-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_232742_137982_C55879D0 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: vkoul@kernel.org, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver no longer boots in legacy mode, only via DT. This makes the
dma_request_slave_channel_compat() redundant.
If ever the filter function would be executed it will return false as the
dma_slave is not really initialized.

Switch to use dma_request_chan() which would allow legacy boot if ever
needed again by configuring dma_slave_map for the DMA driver.

At the same time skip allocating memory for dma_slave as it is not used
anymore.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 drivers/crypto/atmel-aes.c | 50 ++++++++------------------------------
 1 file changed, 10 insertions(+), 40 deletions(-)

diff --git a/drivers/crypto/atmel-aes.c b/drivers/crypto/atmel-aes.c
index f24af212260b..363a2f3b1e9e 100644
--- a/drivers/crypto/atmel-aes.c
+++ b/drivers/crypto/atmel-aes.c
@@ -37,7 +37,6 @@
 #include <crypto/xts.h>
 #include <crypto/internal/aead.h>
 #include <linux/platform_data/crypto-atmel.h>
-#include <dt-bindings/dma/at91.h>
 #include "atmel-aes-regs.h"
 #include "atmel-authenc.h"
 
@@ -2381,39 +2380,23 @@ static void atmel_aes_buff_cleanup(struct atmel_aes_dev *dd)
 	free_page((unsigned long)dd->buf);
 }
 
-static bool atmel_aes_filter(struct dma_chan *chan, void *slave)
-{
-	struct at_dma_slave	*sl = slave;
-
-	if (sl && sl->dma_dev == chan->device->dev) {
-		chan->private = sl;
-		return true;
-	} else {
-		return false;
-	}
-}
-
 static int atmel_aes_dma_init(struct atmel_aes_dev *dd,
 			      struct crypto_platform_data *pdata)
 {
-	struct at_dma_slave *slave;
-	dma_cap_mask_t mask;
-
-	dma_cap_zero(mask);
-	dma_cap_set(DMA_SLAVE, mask);
+	int ret;
 
 	/* Try to grab 2 DMA channels */
-	slave = &pdata->dma_slave->rxdata;
-	dd->src.chan = dma_request_slave_channel_compat(mask, atmel_aes_filter,
-							slave, dd->dev, "tx");
-	if (!dd->src.chan)
+	dd->src.chan = dma_request_chan(dd->dev, "tx");
+	if (IS_ERR(dd->src.chan)) {
+		ret = PTR_ERR(dd->src.chan);
 		goto err_dma_in;
+	}
 
-	slave = &pdata->dma_slave->txdata;
-	dd->dst.chan = dma_request_slave_channel_compat(mask, atmel_aes_filter,
-							slave, dd->dev, "rx");
-	if (!dd->dst.chan)
+	dd->dst.chan = dma_request_chan(dd->dev, "rx");
+	if (IS_ERR(dd->dst.chan)) {
+		ret = PTR_ERR(dd->dst.chan);
 		goto err_dma_out;
+	}
 
 	return 0;
 
@@ -2421,7 +2404,7 @@ static int atmel_aes_dma_init(struct atmel_aes_dev *dd,
 	dma_release_channel(dd->src.chan);
 err_dma_in:
 	dev_warn(dd->dev, "no DMA channel available\n");
-	return -ENODEV;
+	return ret;
 }
 
 static void atmel_aes_dma_cleanup(struct atmel_aes_dev *dd)
@@ -2609,14 +2592,6 @@ static struct crypto_platform_data *atmel_aes_of_init(struct platform_device *pd
 	if (!pdata)
 		return ERR_PTR(-ENOMEM);
 
-	pdata->dma_slave = devm_kzalloc(&pdev->dev,
-					sizeof(*(pdata->dma_slave)),
-					GFP_KERNEL);
-	if (!pdata->dma_slave) {
-		devm_kfree(&pdev->dev, pdata);
-		return ERR_PTR(-ENOMEM);
-	}
-
 	return pdata;
 }
 #else
@@ -2643,11 +2618,6 @@ static int atmel_aes_probe(struct platform_device *pdev)
 		}
 	}
 
-	if (!pdata->dma_slave) {
-		err = -ENXIO;
-		goto aes_dd_err;
-	}
-
 	aes_dd = devm_kzalloc(&pdev->dev, sizeof(*aes_dd), GFP_KERNEL);
 	if (aes_dd == NULL) {
 		err = -ENOMEM;
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
