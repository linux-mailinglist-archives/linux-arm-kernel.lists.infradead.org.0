Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CDE11CEF6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 14:57:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tmC3Cwn+Hw994HvI3LlUPgD41aWCowB6pNnCNKF9CTw=; b=lzUp71vMGlSg+V
	vn+rTjzZcMmqYx32F4Z9SbeLLfBgj6HBSwOWcvGYatK8InDx8DDYYOcZlsHAgSass1fCCjw6/BDTV
	kp0rJW02QzzlKJ4pAP2WVzCDrhZai98jrnmdRmmpXDskqaX7AO1OVAYuP550eG71IwuxnPuYsiolH
	4ZCS71Ft1Gj+daQCdjHfKuKjr4PvRajct0UXrVepQNq+EDSWpV24IVU7XsqQFY8DmPvXRP7egR9Kj
	gjKb6cQ2qe19UHUNwvb2XI9YAevorme0kXwvJoCgq5gVhXofmMEGOuWyt7f7rIRt2XDoillW5zSWg
	HCpUU7A+CIyuJHHLOjcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifOxc-0005FC-Rn; Thu, 12 Dec 2019 13:56:56 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifOwg-0004QW-LY; Thu, 12 Dec 2019 13:56:00 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBCDtuq9122218;
 Thu, 12 Dec 2019 07:55:56 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576158956;
 bh=IBaNIEvB7cLy+PukAGb/PB35woOhPXfCWf9nooovf4U=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=hvJhHLwWXHgDXi8I2PKoplyV4NlRhLSYaKZSD5ecFI12PY000rSxd80+xnDLjX3/j
 R76TQfyc7cdegWYRwFYOAWUCOnEnWnBP5KHIgtJijGpSU54xAzMIbJ2KUNyDSJnZ5u
 2WCe2sL51i1kmpO1+tkP9wImu9aiKsxfFq4A8Y38=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBCDtu6s044382
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 12 Dec 2019 07:55:56 -0600
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 12
 Dec 2019 07:55:55 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 12 Dec 2019 07:55:55 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBCDtdqT048444;
 Thu, 12 Dec 2019 07:55:52 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <broonie@kernel.org>, <nsaenzjulienne@suse.de>, <f.fainelli@gmail.com>,
 <rjui@broadcom.com>, <sbranden@broadcom.com>, <shawnguo@kernel.org>,
 <s.hauer@pengutronix.de>, <baohua@kernel.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
Subject: [PATCH 3/9] spi: bcm2835: Use dma_request_chan() instead
 dma_request_slave_channel()
Date: Thu, 12 Dec 2019 15:55:44 +0200
Message-ID: <20191212135550.4634-4-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191212135550.4634-1-peter.ujfalusi@ti.com>
References: <20191212135550.4634-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_055558_807396_2004E931 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
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
 drivers/spi/spi-bcm2835.c | 34 ++++++++++++++++++++++++----------
 1 file changed, 24 insertions(+), 10 deletions(-)

diff --git a/drivers/spi/spi-bcm2835.c b/drivers/spi/spi-bcm2835.c
index 662d55e9f21d..69df79914504 100644
--- a/drivers/spi/spi-bcm2835.c
+++ b/drivers/spi/spi-bcm2835.c
@@ -888,8 +888,8 @@ static void bcm2835_dma_release(struct spi_controller *ctlr,
 	}
 }
 
-static void bcm2835_dma_init(struct spi_controller *ctlr, struct device *dev,
-			     struct bcm2835_spi *bs)
+static int bcm2835_dma_init(struct spi_controller *ctlr, struct device *dev,
+			    struct bcm2835_spi *bs)
 {
 	struct dma_slave_config slave_config;
 	const __be32 *addr;
@@ -900,19 +900,24 @@ static void bcm2835_dma_init(struct spi_controller *ctlr, struct device *dev,
 	addr = of_get_address(ctlr->dev.of_node, 0, NULL, NULL);
 	if (!addr) {
 		dev_err(dev, "could not get DMA-register address - not using dma mode\n");
-		goto err;
+		/* Fall back to interrupt mode */
+		return 0;
 	}
 	dma_reg_base = be32_to_cpup(addr);
 
 	/* get tx/rx dma */
-	ctlr->dma_tx = dma_request_slave_channel(dev, "tx");
-	if (!ctlr->dma_tx) {
+	ctlr->dma_tx = dma_request_chan(dev, "tx");
+	if (IS_ERR(ctlr->dma_tx)) {
 		dev_err(dev, "no tx-dma configuration found - not using dma mode\n");
+		ret = PTR_ERR(ctlr->dma_tx);
+		ctlr->dma_tx = NULL;
 		goto err;
 	}
-	ctlr->dma_rx = dma_request_slave_channel(dev, "rx");
-	if (!ctlr->dma_rx) {
+	ctlr->dma_rx = dma_request_chan(dev, "rx");
+	if (IS_ERR(ctlr->dma_rx)) {
 		dev_err(dev, "no rx-dma configuration found - not using dma mode\n");
+		ret = PTR_ERR(ctlr->dma_rx);
+		ctlr->dma_rx = NULL;
 		goto err_release;
 	}
 
@@ -997,7 +1002,7 @@ static void bcm2835_dma_init(struct spi_controller *ctlr, struct device *dev,
 	/* all went well, so set can_dma */
 	ctlr->can_dma = bcm2835_spi_can_dma;
 
-	return;
+	return 0;
 
 err_config:
 	dev_err(dev, "issue configuring dma: %d - not using DMA mode\n",
@@ -1005,7 +1010,14 @@ static void bcm2835_dma_init(struct spi_controller *ctlr, struct device *dev,
 err_release:
 	bcm2835_dma_release(ctlr, bs);
 err:
-	return;
+	/*
+	 * Only report error for deferred probing, otherwise fall back to
+	 * interrupt mode
+	 */
+	if (ret != -EPROBE_DEFER)
+		ret = 0;
+
+	return ret;
 }
 
 static int bcm2835_spi_transfer_one_poll(struct spi_controller *ctlr,
@@ -1317,7 +1329,9 @@ static int bcm2835_spi_probe(struct platform_device *pdev)
 
 	clk_prepare_enable(bs->clk);
 
-	bcm2835_dma_init(ctlr, &pdev->dev, bs);
+	err = bcm2835_dma_init(ctlr, &pdev->dev, bs);
+	if (err)
+		goto out_clk_disable;
 
 	/* initialise the hardware with the default polarities */
 	bcm2835_wr(bs, BCM2835_SPI_CS,
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
