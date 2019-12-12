Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD2611CEEE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 14:56:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xBvzxE5t2A83LjGoHWzz23v3KlXKFQaiawmZ7epr1vA=; b=WvULQn7E/06IAj
	jMaWmJdr6m0VFev8vpXLLALYI1hG1GhKxg7iXhdAUk6uylMntER6c77lqQbCDToZrMeqX7iI06m5F
	P37TNc6rG0U3CJh+Lk7wR7e43qKx/FZxlsc4UiDpJ52csk2+/3wRoDESkK0apZUz8EGJA5W9slVGH
	setY9Qb73i/1Cl0tWE3x2XFzmnoteqCDq7cnub8H84xSxD3wAShLpHonrWQatCx0ruRHUE1AMLUwH
	N/YEjoS+PK0g31L1QOZuXOhFqMVSO4G79dkK1Cjx4OzmriJoBxiEGOkjEMkNm78QUOeCCYyqDkfyr
	Q97E5pUX/p0PscO/2q1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifOx8-0004Xp-AF; Thu, 12 Dec 2019 13:56:26 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifOwZ-0004K4-3L; Thu, 12 Dec 2019 13:55:52 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBCDtmCj130390;
 Thu, 12 Dec 2019 07:55:48 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576158948;
 bh=3gLGICxAzTQwTc/DkihTZhEXH6qumJS8Bb6FHHUYzCY=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=ZqyfX6ql8GX4aJtV6oPEPl3Z5XmrYLPR/tKcuub+H+f5XcD2+sZbfxPHww3j1HtAk
 UROBweX/WDXlNJKJoN8bU5Z4BCYDe4KZ9OrtdyGsse4nIIYOLRKNhAnGBjkpdIA3Nv
 D1UWa6yx/NB7bmQPQT3EbftiiJt8c1PA2SU/k1RY=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBCDtmVE116297;
 Thu, 12 Dec 2019 07:55:48 -0600
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 12
 Dec 2019 07:55:47 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 12 Dec 2019 07:55:47 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBCDtdqR048444;
 Thu, 12 Dec 2019 07:55:44 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <broonie@kernel.org>, <nsaenzjulienne@suse.de>, <f.fainelli@gmail.com>,
 <rjui@broadcom.com>, <sbranden@broadcom.com>, <shawnguo@kernel.org>,
 <s.hauer@pengutronix.de>, <baohua@kernel.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
Subject: [PATCH 1/9] spi: atmel: Use dma_request_chan() instead
 dma_request_slave_channel()
Date: Thu, 12 Dec 2019 15:55:42 +0200
Message-ID: <20191212135550.4634-2-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191212135550.4634-1-peter.ujfalusi@ti.com>
References: <20191212135550.4634-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_055551_218952_F4CCDA09 
X-CRM114-Status: GOOD (  14.01  )
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
 drivers/spi/spi-atmel.c | 29 +++++++++++------------------
 1 file changed, 11 insertions(+), 18 deletions(-)

diff --git a/drivers/spi/spi-atmel.c b/drivers/spi/spi-atmel.c
index 56f0ca361deb..013458cabe3c 100644
--- a/drivers/spi/spi-atmel.c
+++ b/drivers/spi/spi-atmel.c
@@ -514,26 +514,19 @@ static int atmel_spi_configure_dma(struct spi_master *master,
 	master->dma_tx = dma_request_chan(dev, "tx");
 	if (IS_ERR(master->dma_tx)) {
 		err = PTR_ERR(master->dma_tx);
-		if (err == -EPROBE_DEFER) {
-			dev_warn(dev, "no DMA channel available at the moment\n");
-			goto error_clear;
-		}
-		dev_err(dev,
-			"DMA TX channel not available, SPI unable to use DMA\n");
-		err = -EBUSY;
+		if (err != -EPROBE_DEFER)
+			dev_err(dev, "No TX DMA channel, DMA is disabled\n");
 		goto error_clear;
 	}
 
-	/*
-	 * No reason to check EPROBE_DEFER here since we have already requested
-	 * tx channel. If it fails here, it's for another reason.
-	 */
-	master->dma_rx = dma_request_slave_channel(dev, "rx");
-
-	if (!master->dma_rx) {
-		dev_err(dev,
-			"DMA RX channel not available, SPI unable to use DMA\n");
-		err = -EBUSY;
+	master->dma_rx = dma_request_chan(dev, "rx");
+	if (IS_ERR(master->dma_rx)) {
+		err = PTR_ERR(master->dma_rx);
+		/*
+		 * No reason to check EPROBE_DEFER here since we have already
+		 * requested tx channel.
+		 */
+		dev_err(dev, "No RX DMA channel, DMA is disabled\n");
 		goto error;
 	}
 
@@ -548,7 +541,7 @@ static int atmel_spi_configure_dma(struct spi_master *master,
 
 	return 0;
 error:
-	if (master->dma_rx)
+	if (!IS_ERR(master->dma_rx))
 		dma_release_channel(master->dma_rx);
 	if (!IS_ERR(master->dma_tx))
 		dma_release_channel(master->dma_tx);
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
