Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B688A60E9F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jul 2019 05:41:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=pySn5poAJRIx+I6gzgPh7LqsqN0Enom2K/ZnusH2xCc=; b=WMK
	W3zU/0vvSpbWfW/KpyezTmZBMEuL1IV+VDvAiHPix3LBAdDs6FmkvVALmSiCLSTyCCqWGVdPfmLGC
	1/Z3JUb/0A9LPz86szRomqJQlylS8qE4oyLNrDpaP7mrtvrJPsZABjOhyiSUR38OtQoxMlHsSAS8D
	wHbVz73UBBiydvnyibmvtSGjL8UQcQUMnzfb4UBFWEZq9Ja3vHzg0YcZiOSf/GsKEBy55hXGas8Jw
	YEnxbyzXf1OBaAMMC8iofOGzqkEHDzBCInZuF7dAAAker6d0MdHUacRQS7VwL1iYXanAaU9hx4dKA
	4cNAurusiRh5DG96Z/ObpPykQl42XAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjbZr-0003fC-P1; Sat, 06 Jul 2019 03:41:31 +0000
Received: from mxhk.zte.com.cn ([63.217.80.70])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjbZS-0003dV-0w
 for linux-arm-kernel@lists.infradead.org; Sat, 06 Jul 2019 03:41:08 +0000
Received: from mse-fl2.zte.com.cn (unknown [10.30.14.239])
 by Forcepoint Email with ESMTPS id 3FCEE1E2C435B7DB376A;
 Sat,  6 Jul 2019 11:40:49 +0800 (CST)
Received: from notes_smtp.zte.com.cn ([10.30.1.239])
 by mse-fl2.zte.com.cn with ESMTP id x663eTXS033818;
 Sat, 6 Jul 2019 11:40:29 +0800 (GMT-8)
 (envelope-from wen.yang99@zte.com.cn)
Received: from fox-host8.localdomain ([10.74.120.8])
 by szsmtp06.zte.com.cn (Lotus Domino Release 8.5.3FP6)
 with ESMTP id 2019070611411255-2124361 ;
 Sat, 6 Jul 2019 11:41:12 +0800 
From: Wen Yang <wen.yang99@zte.com.cn>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] net: axienet: fix a potential double free in axienet_probe()
Date: Sat, 6 Jul 2019 11:38:41 +0800
Message-Id: <1562384321-46727-1-git-send-email-wen.yang99@zte.com.cn>
X-Mailer: git-send-email 1.8.3.1
X-MIMETrack: Itemize by SMTP Server on SZSMTP06/server/zte_ltd(Release
 8.5.3FP6|November 21, 2013) at 2019-07-06 11:41:12,
 Serialize by Router on notes_smtp/zte_ltd(Release 9.0.1FP7|August  17, 2016) at
 2019-07-06 11:40:35, Serialize complete at 2019-07-06 11:40:35
X-MAIL: mse-fl2.zte.com.cn x663eTXS033818
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_204106_221153_35795323 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [63.217.80.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: wang.yi59@zte.com.cn, xue.zhihong@zte.com.cn,
 "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
 Michal Simek <michal.simek@xilinx.com>, Wen Yang <wen.yang99@zte.com.cn>,
 Robert Hancock <hancock@sedsystems.ca>, Anirudha Sarangi <anirudh@xilinx.com>,
 cheng.shengyu@zte.com.cn, John Linn <John.Linn@xilinx.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is a possible use-after-free issue in the axienet_probe():

1701:	np = of_parse_phandle(pdev->dev.of_node, "axistream-connected", 0);
1702:   if (np) {
...
1787:		of_node_put(np); ---> released here
1788:		lp->eth_irq = platform_get_irq(pdev, 0);
1789:	} else {
...
1801:	}
1802:	if (IS_ERR(lp->dma_regs)) {
...
1805:		of_node_put(np); ---> double released here
1806:		goto free_netdev;
1807:	}

We solve this problem by removing the unnecessary of_node_put().

Fixes: 28ef9ebdb64c ("net: axienet: make use of axistream-connected attribute optional")
Signed-off-by: Wen Yang <wen.yang99@zte.com.cn>
Cc: Anirudha Sarangi <anirudh@xilinx.com>
Cc: John Linn <John.Linn@xilinx.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Michal Simek <michal.simek@xilinx.com>
Cc: Robert Hancock <hancock@sedsystems.ca>
Cc: netdev@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/net/ethernet/xilinx/xilinx_axienet_main.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
index 561e28a..4fc627f 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
@@ -1802,7 +1802,6 @@ static int axienet_probe(struct platform_device *pdev)
 	if (IS_ERR(lp->dma_regs)) {
 		dev_err(&pdev->dev, "could not map DMA regs\n");
 		ret = PTR_ERR(lp->dma_regs);
-		of_node_put(np);
 		goto free_netdev;
 	}
 	if ((lp->rx_irq <= 0) || (lp->tx_irq <= 0)) {
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
