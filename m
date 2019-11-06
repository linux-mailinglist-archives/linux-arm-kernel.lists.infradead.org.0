Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E25F1A7F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 16:55:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q26pI9GsFnoZP/e6WuK6Ng/K8GR7uXqNG/vsjnMf7t8=; b=ptQt/CrDR31YsH
	5DsCCjm9ULEng1R//LU62PNHx3PICWsDYqHR3zabNSWhKswJuCJmsDG38HEM9T1iYSoxEsgopw4UJ
	DFvexj9M3T0biXjAS3ZxPrPQ8hlHUP6RFjndyDo4BoRyMOJ3JaIcXDEZBjenXAwwkdLPWQRLtLi86
	WUlUVR0P7UixcVRD9i/xLhp+QYeRu4+doK00yOAo19ruZpY7By45IvUo95QtTVzNWuuAYkX1Ep93G
	iMDWS0M8tpmXmmCQAv+9XjvwLOD0tkmSY/PTobe4fYOXwtOZk/Mpx3cL5uIFg4VjxmuPtV3uG6x1i
	yX0AyslVNk7NkeqdRgTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSNex-0006Wl-3Y; Wed, 06 Nov 2019 15:55:51 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSNeq-0006W2-PL
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 15:55:46 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id F2D87CAD2C235EAEBD2D;
 Wed,  6 Nov 2019 23:55:41 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS403-HUB.china.huawei.com (10.3.19.203) with Microsoft SMTP Server id
 14.3.439.0; Wed, 6 Nov 2019 23:55:35 +0800
From: Wei Yongjun <weiyongjun1@huawei.com>
To: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>, Michal Simek
 <michal.simek@xilinx.com>, Russell King <linux@armlinux.org.uk>, "Robert
 Hancock" <hancock@sedsystems.ca>
Subject: [PATCH net-next] net: axienet: Fix error return code in
 axienet_probe()
Date: Wed, 6 Nov 2019 15:54:49 +0000
Message-ID: <20191106155449.107672-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_075545_006275_3DE82C89 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: netdev@vger.kernel.org, kernel-janitors@vger.kernel.org,
 Wei Yongjun <weiyongjun1@huawei.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the DMA memory resource get failed case, the error is not
set and 0 will be returned. Fix it by reove redundant check
since devm_ioremap_resource() will handle it.

Fixes: 28ef9ebdb64c ("net: axienet: make use of axistream-connected attribute optional")
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 drivers/net/ethernet/xilinx/xilinx_axienet_main.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
index 867726d696e2..8f32db6d2c45 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
@@ -1788,10 +1788,6 @@ static int axienet_probe(struct platform_device *pdev)
 		/* Check for these resources directly on the Ethernet node. */
 		struct resource *res = platform_get_resource(pdev,
 							     IORESOURCE_MEM, 1);
-		if (!res) {
-			dev_err(&pdev->dev, "unable to get DMA memory resource\n");
-			goto free_netdev;
-		}
 		lp->dma_regs = devm_ioremap_resource(&pdev->dev, res);
 		lp->rx_irq = platform_get_irq(pdev, 1);
 		lp->tx_irq = platform_get_irq(pdev, 0);




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
