Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D70CFAD50
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 10:43:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tiuleYg844YMvRRDfvrR0Vu9/HVCo19aUlPg9P6NkBw=; b=lH/0y+UYIxWBps
	4GEVnajj9hlxj+ksFep6YDqtnb8gyj9mjPWgNa1aWW3niDwqIWdwbUxjGIEV2T/Qm85FdVU7icKzm
	d5wF8DZXr8izVkENTn36hCmgnHLIxsT7EKYUk4KR/VFhL7A3zNM00+wP5A8xcsT3KGufZYXhJuLPs
	LSh4kpkTJWqeQti0NL27MhChaQhhqABuITKtQHKR5CuS8A6QchB/i2RdNzA2bOSOxktsy2mKLuDIt
	t13KjIszH1tRyA3IOXoh6OkOWss4jL6pbjjfufeIzDESGxl0vrffWfxUq+J7uU+OpfMpboB4fZI69
	zHCZgPe+YSJVZy5kBqKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUpAv-0008Pw-P5; Wed, 13 Nov 2019 09:42:57 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUpAB-0007un-Sz
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 09:42:13 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAD9fxZo063758;
 Wed, 13 Nov 2019 03:41:59 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573638119;
 bh=of9+YUnlenzcOQnPEXYg3kP/q5s7kswFH3PKUJ8PaDE=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=R2P1fiX/UUTrDgFWBml9TN0Mmdqz0wV7lnggRWwBAN0HRnw8UHp5YmfY7xZ326KM8
 fnPl0BL1P3R+kg6VWIf9wtbcjEsbn7yfxiGvPg5ryElI54AUjU92Z3FpWcYBGtrIPq
 mFrBUkhC07xXwJ/s345+QgYm44axoPwwP0to8lq4=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xAD9fxDt080913
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 13 Nov 2019 03:41:59 -0600
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 13
 Nov 2019 03:41:41 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 13 Nov 2019 03:41:41 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAD9feM3072663;
 Wed, 13 Nov 2019 03:41:54 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <broonie@kernel.org>, <radu_nicolae.pirea@upb.ro>, <shawnguo@kernel.org>, 
 <s.hauer@pengutronix.de>, <linus.walleij@linaro.org>,
 <agross@kernel.org>, <bjorn.andersson@linaro.org>, <andi@etezian.org>,
 <ldewangan@nvidia.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>
Subject: [PATCH 3/9] spi: fsl-lpspi: Use dma_request_chan() directly for
 channel request
Date: Wed, 13 Nov 2019 11:42:50 +0200
Message-ID: <20191113094256.1108-4-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191113094256.1108-1-peter.ujfalusi@ti.com>
References: <20191113094256.1108-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_014212_058186_760ECC1A 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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
 drivers/spi/spi-fsl-lpspi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-fsl-lpspi.c b/drivers/spi/spi-fsl-lpspi.c
index 6f4769a53f8a..2cc0ddb4a988 100644
--- a/drivers/spi/spi-fsl-lpspi.c
+++ b/drivers/spi/spi-fsl-lpspi.c
@@ -675,7 +675,7 @@ static int fsl_lpspi_dma_init(struct device *dev,
 	int ret;
 
 	/* Prepare for TX DMA: */
-	controller->dma_tx = dma_request_slave_channel_reason(dev, "tx");
+	controller->dma_tx = dma_request_chan(dev, "tx");
 	if (IS_ERR(controller->dma_tx)) {
 		ret = PTR_ERR(controller->dma_tx);
 		dev_dbg(dev, "can't get the TX DMA channel, error %d!\n", ret);
@@ -684,7 +684,7 @@ static int fsl_lpspi_dma_init(struct device *dev,
 	}
 
 	/* Prepare for RX DMA: */
-	controller->dma_rx = dma_request_slave_channel_reason(dev, "rx");
+	controller->dma_rx = dma_request_chan(dev, "rx");
 	if (IS_ERR(controller->dma_rx)) {
 		ret = PTR_ERR(controller->dma_rx);
 		dev_dbg(dev, "can't get the RX DMA channel, error %d\n", ret);
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
