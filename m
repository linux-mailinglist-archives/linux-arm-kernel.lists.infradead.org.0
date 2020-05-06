Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD761C70D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 14:52:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TdXFswANSlM7rNnFH9hUJnvgO9KQK0E9yPDosepBzD0=; b=IqoCo0DLhL0Dp2
	tCJscDl6rWv/KRQHnAO9lKx28zDRpfePdCyj31KO7IzcLdwSyXkkYJacrr93yTuDFG5wPSqHdG9Tf
	8POZpuss40nWnmJojLdlOdDkD3yCOgiw1XkeKZMOD4OCfZHs7IccnkraTrpAP3FcYprfUSye1Tqzn
	IlclgUCmb8j8vLs/Pf6gWiUo8kID63XGmVlJFIYXN11vjEx6+Mtpp54d6AuhPak8AAq1p0m4wGi3v
	RpisbamN9u9b+vm1uLrjkhANdgxQyweyvifMR1vxiiZ4BesbEWTwRWkd1BSBenlzrgeHRRrAxS9WT
	RFmavtWQzR8IAzmAaXmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWJXJ-0006Xs-JB; Wed, 06 May 2020 12:52:29 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWJX9-0006XQ-BD; Wed, 06 May 2020 12:52:21 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 4E7E35DC6618286ED034;
 Wed,  6 May 2020 20:52:13 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS405-HUB.china.huawei.com (10.3.19.205) with Microsoft SMTP Server id
 14.3.487.0; Wed, 6 May 2020 20:52:03 +0800
From: Wei Yongjun <weiyongjun1@huawei.com>
To: Mark Brown <broonie@kernel.org>, Nicolas Saenz Julienne
 <nsaenzjulienne@suse.de>, Florian Fainelli <f.fainelli@gmail.com>, Ray Jui
 <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Subject: [PATCH -next] spi: bcm2835: Fix error return code in
 bcm2835_dma_init()
Date: Wed, 6 May 2020 12:56:07 +0000
Message-ID: <20200506125607.90952-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_055219_956268_1269739E 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kernel-janitors@vger.kernel.org, linux-spi@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Wei Yongjun <weiyongjun1@huawei.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix to return negative error code -ENOMEM from the dma mapping error
handling case instead of 0, as done elsewhere in this function.

Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 drivers/spi/spi-bcm2835.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/spi/spi-bcm2835.c b/drivers/spi/spi-bcm2835.c
index 11c235879bb7..c4f4bd135279 100644
--- a/drivers/spi/spi-bcm2835.c
+++ b/drivers/spi/spi-bcm2835.c
@@ -940,6 +940,7 @@ static int bcm2835_dma_init(struct spi_controller *ctlr, struct device *dev,
 	if (dma_mapping_error(ctlr->dma_tx->device->dev, bs->fill_tx_addr)) {
 		dev_err(dev, "cannot map zero page - not using DMA mode\n");
 		bs->fill_tx_addr = 0;
+		ret = -ENOMEM;
 		goto err_release;
 	}
 
@@ -949,6 +950,7 @@ static int bcm2835_dma_init(struct spi_controller *ctlr, struct device *dev,
 						     DMA_MEM_TO_DEV, 0);
 	if (!bs->fill_tx_desc) {
 		dev_err(dev, "cannot prepare fill_tx_desc - not using DMA mode\n");
+		ret = -ENOMEM;
 		goto err_release;
 	}
 
@@ -979,6 +981,7 @@ static int bcm2835_dma_init(struct spi_controller *ctlr, struct device *dev,
 	if (dma_mapping_error(ctlr->dma_rx->device->dev, bs->clear_rx_addr)) {
 		dev_err(dev, "cannot map clear_rx_cs - not using DMA mode\n");
 		bs->clear_rx_addr = 0;
+		ret = -ENOMEM;
 		goto err_release;
 	}
 
@@ -989,6 +992,7 @@ static int bcm2835_dma_init(struct spi_controller *ctlr, struct device *dev,
 					   DMA_MEM_TO_DEV, 0);
 		if (!bs->clear_rx_desc[i]) {
 			dev_err(dev, "cannot prepare clear_rx_desc - not using DMA mode\n");
+			ret = -ENOMEM;
 			goto err_release;
 		}




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
