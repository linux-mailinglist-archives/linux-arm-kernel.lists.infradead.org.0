Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2EF7186961
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 11:48:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kajDH7Zmwd3deZb9WlapyD6Ql/TeONwiKZ0YqgfVbvA=; b=BEhS0Jko+ERkTi
	omTVU9OSpu5YyQWWZgPbegQn81xqlTQ08SgxaOOm+H2ugczYBybffMQYKG7pGeCXojghMx28uld6/
	km8d6es+o3W5oRp+XT4UH7X0wF9wx9sHq2Dcq49LVSnEEUss48Sa/tE+O/fRpKSgMbmo5ZICRvk9C
	/sMr1hNzS/xtMcfFO0PNvViyurNVgT/uuNTVjZ6MAvGnaGvvUudP6iQS/dCPkSPFsNRh92SFHdGgC
	d8dbKmemt7CvVO3qJXYM1mptgikWah9vTASBqAYT/UcojzxRGVJXBBZxm7wpTohkbEDJRuz/TmePs
	t8kLo/RqaDFKHYmOhDag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDnIV-0007ar-JU; Mon, 16 Mar 2020 10:48:39 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDnIN-0007Zd-KU; Mon, 16 Mar 2020 10:48:33 +0000
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 227A9240024;
 Mon, 16 Mar 2020 10:47:18 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Eddie Huang <eddie.huang@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [PATCH 1/2] rtc: mt2712: fix build without PM_SLEEP
Date: Mon, 16 Mar 2020 11:47:00 +0100
Message-Id: <20200316104701.209293-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_034831_807307_FFCEBB5B 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rtc@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move SIMPLE_DEV_PM_OPS out of #ifdef to fix build issues when PM_SLEEP is
not selected.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/rtc/rtc-mt2712.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/rtc/rtc-mt2712.c b/drivers/rtc/rtc-mt2712.c
index 432df9b0a3ac..c2709c1602f0 100644
--- a/drivers/rtc/rtc-mt2712.c
+++ b/drivers/rtc/rtc-mt2712.c
@@ -394,10 +394,10 @@ static int mt2712_rtc_resume(struct device *dev)
 
 	return 0;
 }
+#endif
 
 static SIMPLE_DEV_PM_OPS(mt2712_pm_ops, mt2712_rtc_suspend,
 			 mt2712_rtc_resume);
-#endif
 
 static const struct of_device_id mt2712_rtc_of_match[] = {
 	{ .compatible = "mediatek,mt2712-rtc", },
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
