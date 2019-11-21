Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DBB105039
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 11:17:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=prZe6qCGql55cDi55Y06G3G+yGmI240CP/5957mtLWI=; b=uaHAlOiBsFvt0M
	QwKsUpt1uNpwVakFc2uUh25+VtFf+4Z6n49SEh3zt/J857U6xpduBrVK2cXDtxLkGpwzmslXCzhUN
	5zkUt5TJAbiEVeEzuTG3QOxFOSErKMfFImSPTkh+PJc1ovvd4UNeOK2DMyQh9RTFB2pHwZ73kNDz+
	9QSReDqRfgXxBxZXU1q7VRzCWWJ7ofVOzFGdp1NbJY2VKleNv0ba9mi1vWm9+15XAAMphgyOeHty0
	vmw/3cocTtJ8dHGIh3hEYpPpkZAfajkga4/SoE2yg646kYUAnVD6LzNGMMoPnONDiMFpNngGdEnER
	WqrWGVaxCmgnHpKEJg1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXjWJ-00073f-S0; Thu, 21 Nov 2019 10:17:03 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXjVZ-0006mp-8E
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 10:16:18 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xALAG9EA088314;
 Thu, 21 Nov 2019 04:16:09 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1574331369;
 bh=XnVgtIGZIbTs/l5ZJ/zrcJQ2aeyG9tflJUgP5IVOAAQ=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=s3lSlrmLeVGp/iGr5GEC3Gj8QRQESu7/ZJSbhrsVlrlzNWHGxe8Gi5cfy0A9HAWjy
 +2U9596E6gyv4xQxZPGQ4oS1g2wr3cA99JDoA6zGI6R1hFy5LJXmQB/8GKEkkPMM0S
 AO/AU2CQUfVas4/08myLQmhN/y5GTKPD2N9suXe4=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xALAG81b010703
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 21 Nov 2019 04:16:09 -0600
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 21
 Nov 2019 04:16:08 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 21 Nov 2019 04:16:08 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xALAG3b5105173;
 Thu, 21 Nov 2019 04:16:06 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>
Subject: [PATCH v2 1/3] crypto: atmel-aes - Retire
 dma_request_slave_channel_compat()
Date: Thu, 21 Nov 2019 12:16:00 +0200
Message-ID: <20191121101602.21941-2-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191121101602.21941-1-peter.ujfalusi@ti.com>
References: <20191121101602.21941-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_021617_373219_A606CE6E 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
index 3c88c164c3dc..30c41598fa2a 100644
--- a/drivers/crypto/atmel-aes.c
+++ b/drivers/crypto/atmel-aes.c
@@ -38,7 +38,6 @@
 #include <crypto/internal/aead.h>
 #include <crypto/internal/skcipher.h>
 #include <linux/platform_data/crypto-atmel.h>
-#include <dt-bindings/dma/at91.h>
 #include "atmel-aes-regs.h"
 #include "atmel-authenc.h"
 
@@ -2364,39 +2363,23 @@ static void atmel_aes_buff_cleanup(struct atmel_aes_dev *dd)
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
 
@@ -2404,7 +2387,7 @@ static int atmel_aes_dma_init(struct atmel_aes_dev *dd,
 	dma_release_channel(dd->src.chan);
 err_dma_in:
 	dev_warn(dd->dev, "no DMA channel available\n");
-	return -ENODEV;
+	return ret;
 }
 
 static void atmel_aes_dma_cleanup(struct atmel_aes_dev *dd)
@@ -2592,14 +2575,6 @@ static struct crypto_platform_data *atmel_aes_of_init(struct platform_device *pd
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
@@ -2626,11 +2601,6 @@ static int atmel_aes_probe(struct platform_device *pdev)
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
