Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C29B104C81
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 08:28:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3guw1rCA+hEig0igqRyWOthH7NqiGbk/NCw2Wf4q6X8=; b=STuNgCm300r2rQ
	7J82l1YyEGmnHFqYh5ZVjYixvwDV+GBLp0/1+q3SIXeMiiYfitlfxyDIGKhnF8ekvU6EdOFanaKri
	PCe7Go1Y8i5E3mfZbSeFWGx/JB3DKg13+oiQLDUHdeHtErDSGbK4LWt9qqQuRoE+Us0jpjOS9Vey1
	JnXWEDX0zrB+mrrRPi2YUEByse2nSkTe45Wcii5blHTjwKg6NQgVdJnUKdMOt/iUDFzejJZlWAl2F
	NdN7rjg7rk81ImcreEqnXr+VBwz7bTslSz9SXeGInX2ZCClidwrM/LArtJhIlGi2YQXhB8vDbOh6I
	ZtEVpA0s2hobi9FlNwHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXgsp-0000wl-2g; Thu, 21 Nov 2019 07:28:07 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXgsO-0000jA-Bl
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 07:27:41 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAL7RYFr081645;
 Thu, 21 Nov 2019 01:27:34 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1574321254;
 bh=pE69mjXGRtzpdlcRpFWBhAVSwz09Tx2CA10ZtUiAstA=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=IB/u1MkiR06t8hyB7ae/x/pZ3PFrFA5LRBna9BHimQORrxNZVqwo3h7h6JBj+F/SB
 Eexs8ceoCxQ0iycEGVCJmyzT5ohJNw0MjylUFZesEoSx95A7D6B6udnQIZ2LXVVv6c
 Oxk0ynuzDakj1kBf9Vw/dYtjbXLMw4DpK1fcwOHo=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xAL7RY84100906
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 21 Nov 2019 01:27:34 -0600
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 21
 Nov 2019 01:27:31 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 21 Nov 2019 01:27:31 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAL7RNTs079857;
 Thu, 21 Nov 2019 01:27:29 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>
Subject: [PATCH 2/3] crypto: atmel-sha - Retire
 dma_request_slave_channel_compat()
Date: Thu, 21 Nov 2019 09:27:22 +0200
Message-ID: <20191121072723.28479-3-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191121072723.28479-1-peter.ujfalusi@ti.com>
References: <20191121072723.28479-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_232740_487461_3A9FC7CB 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
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
 drivers/crypto/atmel-sha.c | 39 +++++++-------------------------------
 1 file changed, 7 insertions(+), 32 deletions(-)

diff --git a/drivers/crypto/atmel-sha.c b/drivers/crypto/atmel-sha.c
index 8ea0e4bcde0d..9d392c5ff06b 100644
--- a/drivers/crypto/atmel-sha.c
+++ b/drivers/crypto/atmel-sha.c
@@ -2608,32 +2608,16 @@ static int atmel_sha_register_algs(struct atmel_sha_dev *dd)
 	return err;
 }
 
-static bool atmel_sha_filter(struct dma_chan *chan, void *slave)
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
 static int atmel_sha_dma_init(struct atmel_sha_dev *dd,
 				struct crypto_platform_data *pdata)
 {
-	dma_cap_mask_t mask_in;
+	dd->dma_lch_in.chan = dma_request_chan(dd->dev, "tx");
+	if (IS_ERR(dd->dma_lch_in.chan)) {
+		int ret = PTR_ERR(dd->dma_lch_in.chan);
 
-	/* Try to grab DMA channel */
-	dma_cap_zero(mask_in);
-	dma_cap_set(DMA_SLAVE, mask_in);
-
-	dd->dma_lch_in.chan = dma_request_slave_channel_compat(mask_in,
-			atmel_sha_filter, &pdata->dma_slave->rxdata, dd->dev, "tx");
-	if (!dd->dma_lch_in.chan) {
-		dev_warn(dd->dev, "no DMA channel available\n");
-		return -ENODEV;
+		if (ret != -EPROBE_DEFER)
+			dev_warn(dd->dev, "no DMA channel available\n");
+		return ret;
 	}
 
 	dd->dma_lch_in.dma_conf.direction = DMA_MEM_TO_DEV;
@@ -2724,12 +2708,6 @@ static struct crypto_platform_data *atmel_sha_of_init(struct platform_device *pd
 	if (!pdata)
 		return ERR_PTR(-ENOMEM);
 
-	pdata->dma_slave = devm_kzalloc(&pdev->dev,
-					sizeof(*(pdata->dma_slave)),
-					GFP_KERNEL);
-	if (!pdata->dma_slave)
-		return ERR_PTR(-ENOMEM);
-
 	return pdata;
 }
 #else /* CONFIG_OF */
@@ -2823,10 +2801,7 @@ static int atmel_sha_probe(struct platform_device *pdev)
 				goto iclk_unprepare;
 			}
 		}
-		if (!pdata->dma_slave) {
-			err = -ENXIO;
-			goto iclk_unprepare;
-		}
+
 		err = atmel_sha_dma_init(sha_dd, pdata);
 		if (err)
 			goto err_sha_dma;
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
