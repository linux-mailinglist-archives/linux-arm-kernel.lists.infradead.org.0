Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E00104C86
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 08:28:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1m3XfK3ZTDo5upptKKp/ZWAb9FKU8BzZlEueXMRnMR8=; b=bDAnAQVRMwUtTU
	BT97GgFf72gUmym0fc7p+3gXtpax2BXALnWrwQS0xDmas7XEef6XJZzh0WihkdLA8KSlPidBJxT0T
	5ZmQjSoq97snB6n7aCNtER2N8uKp3ksYPhddlzs1p9LD6Wrxp0IuhIx/flgU/7ztZQ/6bIHDCPcFt
	uhgxex3tKGm7/Se0r6MjWgvTe0haBPbowfKrSwW6tGsL8yaI7/XOA/9ivir1AuvRafBTwDQKRgdeL
	d7bXH4ZRJd+Cg6Y5WYkz4ZtagzqVUfl7EGUnOPBklsyuFj3Eo5VpApu9GvmZJ4ebURyiDidUTxDd/
	i2QLjpTIh+ZWaN2w++iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXgtI-0001Oq-FS; Thu, 21 Nov 2019 07:28:36 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXgsQ-0000jd-3J
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 07:27:45 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAL7RYMn081649;
 Thu, 21 Nov 2019 01:27:34 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1574321254;
 bh=RcakxV3bAZDzJDpxzPCwkMvlEl/J6Nybe5yk/wSebPw=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=LyrJZ7l5EFx4+cBCDrc/0Y9TB6hzkinL+YsqSDleFRTXSO0RH/YA8xbG3okajL2y8
 WOddJlxOJfvTcUKwv9QKnH2lttt81nuzCmxLXFZfL/9nDYxk4oLduo1S/jqB0vdPtm
 rKO0gouc0UrNrjIHDq99JRUANZF3ruYCyCNqOK1o=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xAL7RYGN013855
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 21 Nov 2019 01:27:34 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 21
 Nov 2019 01:27:34 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 21 Nov 2019 01:27:34 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAL7RNTt079857;
 Thu, 21 Nov 2019 01:27:31 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>
Subject: [PATCH 3/3] crypto: atmel-tdes - Retire
 dma_request_slave_channel_compat()
Date: Thu, 21 Nov 2019 09:27:23 +0200
Message-ID: <20191121072723.28479-4-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191121072723.28479-1-peter.ujfalusi@ti.com>
References: <20191121072723.28479-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_232742_268924_A8ECFCFB 
X-CRM114-Status: GOOD (  15.52  )
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
 drivers/crypto/atmel-tdes.c | 47 ++++++++++---------------------------
 1 file changed, 13 insertions(+), 34 deletions(-)

diff --git a/drivers/crypto/atmel-tdes.c b/drivers/crypto/atmel-tdes.c
index 1a6c86ae6148..44fdc7456769 100644
--- a/drivers/crypto/atmel-tdes.c
+++ b/drivers/crypto/atmel-tdes.c
@@ -702,31 +702,17 @@ static int atmel_tdes_crypt(struct ablkcipher_request *req, unsigned long mode)
 	return atmel_tdes_handle_queue(ctx->dd, req);
 }
 
-static bool atmel_tdes_filter(struct dma_chan *chan, void *slave)
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
 static int atmel_tdes_dma_init(struct atmel_tdes_dev *dd,
 			struct crypto_platform_data *pdata)
 {
-	dma_cap_mask_t mask;
-
-	dma_cap_zero(mask);
-	dma_cap_set(DMA_SLAVE, mask);
+	int ret;
 
 	/* Try to grab 2 DMA channels */
-	dd->dma_lch_in.chan = dma_request_slave_channel_compat(mask,
-			atmel_tdes_filter, &pdata->dma_slave->rxdata, dd->dev, "tx");
-	if (!dd->dma_lch_in.chan)
+	dd->dma_lch_in.chan = dma_request_chan(dd->dev, "tx");
+	if (IS_ERR(dd->dma_lch_in.chan)) {
+		ret = PTR_ERR(dd->dma_lch_in.chan);
 		goto err_dma_in;
+	}
 
 	dd->dma_lch_in.dma_conf.direction = DMA_MEM_TO_DEV;
 	dd->dma_lch_in.dma_conf.dst_addr = dd->phys_base +
@@ -739,10 +725,11 @@ static int atmel_tdes_dma_init(struct atmel_tdes_dev *dd,
 		DMA_SLAVE_BUSWIDTH_4_BYTES;
 	dd->dma_lch_in.dma_conf.device_fc = false;
 
-	dd->dma_lch_out.chan = dma_request_slave_channel_compat(mask,
-			atmel_tdes_filter, &pdata->dma_slave->txdata, dd->dev, "rx");
-	if (!dd->dma_lch_out.chan)
+	dd->dma_lch_out.chan = dma_request_chan(dd->dev, "rx");
+	if (IS_ERR(dd->dma_lch_out.chan)) {
+		ret = PTR_ERR(dd->dma_lch_out.chan);
 		goto err_dma_out;
+	}
 
 	dd->dma_lch_out.dma_conf.direction = DMA_DEV_TO_MEM;
 	dd->dma_lch_out.dma_conf.src_addr = dd->phys_base +
@@ -760,8 +747,9 @@ static int atmel_tdes_dma_init(struct atmel_tdes_dev *dd,
 err_dma_out:
 	dma_release_channel(dd->dma_lch_in.chan);
 err_dma_in:
-	dev_warn(dd->dev, "no DMA channel available\n");
-	return -ENODEV;
+	if (ret != -EPROBE_DEFER)
+		dev_warn(dd->dev, "no DMA channel available\n");
+	return ret;
 }
 
 static void atmel_tdes_dma_cleanup(struct atmel_tdes_dev *dd)
@@ -1212,12 +1200,6 @@ static struct crypto_platform_data *atmel_tdes_of_init(struct platform_device *p
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
@@ -1311,10 +1293,7 @@ static int atmel_tdes_probe(struct platform_device *pdev)
 				goto err_pdata;
 			}
 		}
-		if (!pdata->dma_slave) {
-			err = -ENXIO;
-			goto err_pdata;
-		}
+
 		err = atmel_tdes_dma_init(tdes_dd, pdata);
 		if (err)
 			goto err_tdes_dma;
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
