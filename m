Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67416FAD62
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 10:44:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n52CjDeTxQaSRa18DFAYlHIMkmYVrk28cuvyCwJnnfI=; b=YqetGupfXDqPOK
	cgkX/UJxOvq8wPGSJYiOZpugv/rqk2oKI1ERy+JbbXctvWNMAlVN9TWYVZkj8mjc2dSGfqp7zJlrP
	XO+eN45zeTApM4QqPOhYACi4uVi28Y99GmQjrgzYCQyYfOsyPb4hetEugIf5DJUyPOXq+RhUDYSkp
	lnYsq0prZ+7xgpLNDci6fAVuKO3AZkBqCoVifmdHiehgzYPRg4uRDiS1pBdJ4pTaqyOJwoYLjmepk
	JByhCplSAupEhnLQGILRpa6KxhPQ8Sa6/NWUYYoopvWKHoZwV+8XhGvaOvlVgw6K/6FhNywxI2dO6
	gXzGsGWQvut7lEwVFH5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUpC7-000109-Ag; Wed, 13 Nov 2019 09:44:11 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUpAX-0008Gi-7X
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 09:42:38 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAD9gIlW086657;
 Wed, 13 Nov 2019 03:42:18 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573638139;
 bh=uYKBuyLdetSTRxbmHbnWaKxFuaOEFcU7Tdum2JoyQs0=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=jIx3HQzN3FYZVi6o7k9ISO2e5Jdsg1n1nn4A27PdbaIEBNcx6yiIEQkiocDZMsdp7
 vNEKObFNzuEgDowoQf4mHn6PX/X293mjHC9x54EwL8/FRBp/GGqCjIa48cqbBDHMPc
 Y7XYuFbkX6HduYKWXytB0NkNYxWV54W81wqSqX58=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xAD9gIa0084580
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 13 Nov 2019 03:42:18 -0600
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 13
 Nov 2019 03:41:59 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 13 Nov 2019 03:41:59 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAD9feM7072663;
 Wed, 13 Nov 2019 03:42:12 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <broonie@kernel.org>, <radu_nicolae.pirea@upb.ro>, <shawnguo@kernel.org>, 
 <s.hauer@pengutronix.de>, <linus.walleij@linaro.org>,
 <agross@kernel.org>, <bjorn.andersson@linaro.org>, <andi@etezian.org>,
 <ldewangan@nvidia.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>
Subject: [PATCH 7/9] spi: s3c64xx: Use dma_request_chan() directly for channel
 request
Date: Wed, 13 Nov 2019 11:42:54 +0200
Message-ID: <20191113094256.1108-8-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191113094256.1108-1-peter.ujfalusi@ti.com>
References: <20191113094256.1108-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_014233_369218_116001FA 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alexandre.belloni@bootlin.com, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, krzk@kernel.org, linux-spi@vger.kernel.org,
 vkoul@kernel.org, kgene@kernel.org, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dma_request_slave_channel_reason() is:
#define dma_request_slave_channel_reason(dev, name) \
	dma_request_chan(dev, name)

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 drivers/spi/spi-s3c64xx.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
index 7b7151ec14c8..cf67ea60dc0e 100644
--- a/drivers/spi/spi-s3c64xx.c
+++ b/drivers/spi/spi-s3c64xx.c
@@ -1154,15 +1154,13 @@ static int s3c64xx_spi_probe(struct platform_device *pdev)
 
 	if (!is_polling(sdd)) {
 		/* Acquire DMA channels */
-		sdd->rx_dma.ch = dma_request_slave_channel_reason(&pdev->dev,
-								  "rx");
+		sdd->rx_dma.ch = dma_request_chan(&pdev->dev, "rx");
 		if (IS_ERR(sdd->rx_dma.ch)) {
 			dev_err(&pdev->dev, "Failed to get RX DMA channel\n");
 			ret = PTR_ERR(sdd->rx_dma.ch);
 			goto err_disable_io_clk;
 		}
-		sdd->tx_dma.ch = dma_request_slave_channel_reason(&pdev->dev,
-								  "tx");
+		sdd->tx_dma.ch = dma_request_chan(&pdev->dev, "tx");
 		if (IS_ERR(sdd->tx_dma.ch)) {
 			dev_err(&pdev->dev, "Failed to get TX DMA channel\n");
 			ret = PTR_ERR(sdd->tx_dma.ch);
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
