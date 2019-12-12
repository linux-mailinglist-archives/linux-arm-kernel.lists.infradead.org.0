Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E5F11CEFE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 14:58:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GDVDLmPfexqclNRKnnAtjvjyoKGnHjJHT5rT8NZtus0=; b=U+GkuS9FUC+jET
	Bb4Z6jtrQtEkB+SO17ENBiXh0quwKD4AUKXgX4eQSVZaxguTl9RjxguxVLghUQRD5dq3N0yYEjYtp
	noGyXWg4WO9lhjHZ/y3ZCqUSVf9hlp1aEklw+5SzFTUrVpQF+UjA9BqQeiP39bhWgMVmehnZkyM74
	tq7UOJ587im8zI3qnes7Tg9tdh8mLTKfqlB/tkGtfb9H06X0qbt7lX28+OSkz0FfcRjKxQXpCtupH
	MRDWRdss6pVDa9v6IaxOOlvWW7E2auxZHv/SzR0+gR9l1kDNfZkj/DbjcjFJwDGKlsarIclrlGKp5
	0NgscUAcCq9LnE7cRMQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifOz4-0006rV-G7; Thu, 12 Dec 2019 13:58:26 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifOx3-0004pu-V8; Thu, 12 Dec 2019 13:56:23 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBCDuJC3130575;
 Thu, 12 Dec 2019 07:56:19 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576158979;
 bh=sT2GTlfLRw0eUXbETF9GVVQ6WAg3uD6MtSWiMfyqi+M=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=RsOFgEThAZihJpqCZMapImij1AG0ZEd06hlyMRl5+UDp6U3N7xHaJORSvQZSyZayi
 vZH5625luHJSMUF9zXBaNVuWFpANZE6VQH0Wk4oJKqDWerLRmUQ2ShLOlWfYnFM/7m
 7/lAV2rm7YGPF653rxtp+GRYimudAe4wCXKsNIrE=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBCDuJM0045145
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 12 Dec 2019 07:56:19 -0600
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 12
 Dec 2019 07:56:19 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 12 Dec 2019 07:56:19 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBCDtdqZ048444;
 Thu, 12 Dec 2019 07:56:15 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <broonie@kernel.org>, <nsaenzjulienne@suse.de>, <f.fainelli@gmail.com>,
 <rjui@broadcom.com>, <sbranden@broadcom.com>, <shawnguo@kernel.org>,
 <s.hauer@pengutronix.de>, <baohua@kernel.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
Subject: [PATCH 9/9] spi: stm32: Use dma_request_chan() instead
 dma_request_slave_channel()
Date: Thu, 12 Dec 2019 15:55:50 +0200
Message-ID: <20191212135550.4634-10-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191212135550.4634-1-peter.ujfalusi@ti.com>
References: <20191212135550.4634-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_055622_137672_C61F5408 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, vkoul@kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dma_request_slave_channel() is a wrapper on top of dma_request_chan()
eating up the error code.

By using dma_request_chan() directly the driver can support deferred
probing against DMA.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 drivers/spi/spi-stm32.c | 32 ++++++++++++++++++++++----------
 1 file changed, 22 insertions(+), 10 deletions(-)

diff --git a/drivers/spi/spi-stm32.c b/drivers/spi/spi-stm32.c
index 7d75632c4151..e041f9c4ec47 100644
--- a/drivers/spi/spi-stm32.c
+++ b/drivers/spi/spi-stm32.c
@@ -1879,17 +1879,29 @@ static int stm32_spi_probe(struct platform_device *pdev)
 	master->transfer_one = stm32_spi_transfer_one;
 	master->unprepare_message = stm32_spi_unprepare_msg;
 
-	spi->dma_tx = dma_request_slave_channel(spi->dev, "tx");
-	if (!spi->dma_tx)
+	spi->dma_tx = dma_request_chan(spi->dev, "tx");
+	if (IS_ERR(spi->dma_tx)) {
+		ret = PTR_ERR(spi->dma_tx);
+		spi->dma_tx = NULL;
+		if (ret == -EPROBE_DEFER)
+			goto err_clk_disable;
+
 		dev_warn(&pdev->dev, "failed to request tx dma channel\n");
-	else
+	} else {
 		master->dma_tx = spi->dma_tx;
+	}
+
+	spi->dma_rx = dma_request_chan(spi->dev, "rx");
+	if (IS_ERR(spi->dma_rx)) {
+		ret = PTR_ERR(spi->dma_rx);
+		spi->dma_rx = NULL;
+		if (ret == -EPROBE_DEFER)
+			goto err_dma_release;
 
-	spi->dma_rx = dma_request_slave_channel(spi->dev, "rx");
-	if (!spi->dma_rx)
 		dev_warn(&pdev->dev, "failed to request rx dma channel\n");
-	else
+	} else {
 		master->dma_rx = spi->dma_rx;
+	}
 
 	if (spi->dma_tx || spi->dma_rx)
 		master->can_dma = stm32_spi_can_dma;
@@ -1901,26 +1913,26 @@ static int stm32_spi_probe(struct platform_device *pdev)
 	if (ret) {
 		dev_err(&pdev->dev, "spi master registration failed: %d\n",
 			ret);
-		goto err_dma_release;
+		goto err_pm_disable;
 	}
 
 	if (!master->cs_gpiods) {
 		dev_err(&pdev->dev, "no CS gpios available\n");
 		ret = -EINVAL;
-		goto err_dma_release;
+		goto err_pm_disable;
 	}
 
 	dev_info(&pdev->dev, "driver initialized\n");
 
 	return 0;
 
+err_pm_disable:
+	pm_runtime_disable(&pdev->dev);
 err_dma_release:
 	if (spi->dma_tx)
 		dma_release_channel(spi->dma_tx);
 	if (spi->dma_rx)
 		dma_release_channel(spi->dma_rx);
-
-	pm_runtime_disable(&pdev->dev);
 err_clk_disable:
 	clk_disable_unprepare(spi->clk);
 err_master_put:
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
