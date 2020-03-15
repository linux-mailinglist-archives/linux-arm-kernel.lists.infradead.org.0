Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 919CF185D4C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 14:53:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=v4qEGbofZXX24jLX3OOCSypV0AVnJy/ZCrE9kjHMSYU=; b=LKhnq0LVakx4KYT50qokrRnWOT
	dtg9hgvCoAeZpBxYtsYzq86UWwxjOSNT7YZVBVBIbtnE/Mh1JqqfsL0HR98Sp2MrwJog/bf2teRSH
	PsbjhdR4eKj2iPdhkCu2lXnaDZlXUM7C5CjOQFwtyLwddf66aazj66iDZ4uEBQnC9SG7IUEYHMSRl
	GfvwXkuvYUDRAgLHPUJLrlg935Ntk9Xp/PnEzydQfox205BCb6pjQVk/1qQ892w/2Zqkd5hC88pun
	QFJkOU7Ny4osA3q1VU4/WpLFXStKEDbREbfMSPfO565rVSuXRhLaBEiO8cFyvNfg8pJc2XZN3s3oM
	Fybw0gzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDTi9-0006Id-1R; Sun, 15 Mar 2020 13:53:49 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDTfH-0003us-JG
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 13:50:55 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3649E2005A7;
 Sun, 15 Mar 2020 14:50:50 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6573620058A;
 Sun, 15 Mar 2020 14:50:45 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id F34CE40302;
 Sun, 15 Mar 2020 21:50:35 +0800 (SGT)
From: Dong Aisheng <aisheng.dong@nxp.com>
To: linux-clk@vger.kernel.org
Subject: [PATCH V6 06/12] clk: imx: scu: add runtime pm support
Date: Sun, 15 Mar 2020 21:43:50 +0800
Message-Id: <1584279836-29825-7-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584279836-29825-1-git-send-email-aisheng.dong@nxp.com>
References: <1584279836-29825-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_065051_820636_A20B55E6 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, sboyd@kernel.org,
 mturquette@baylibre.com, linux-imx@nxp.com, kernel@pengutronix.de,
 fabio.estevam@nxp.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add runtime pm support

Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <kernel@pengutronix.de>
Cc: Michael Turquette <mturquette@baylibre.com>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
v4->v5: no changes
v3: new patch
---
 drivers/clk/imx/clk-scu.c | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk-scu.c b/drivers/clk/imx/clk-scu.c
index d474753712f7..7c7a839a3569 100644
--- a/drivers/clk/imx/clk-scu.c
+++ b/drivers/clk/imx/clk-scu.c
@@ -11,6 +11,7 @@
 #include <linux/of_platform.h>
 #include <linux/platform_device.h>
 #include <linux/pm_domain.h>
+#include <linux/pm_runtime.h>
 #include <linux/slab.h>
 
 #include "clk-scu.h"
@@ -450,15 +451,32 @@ static int imx_clk_scu_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct imx_scu_clk_node *clk = dev_get_platdata(dev);
 	struct clk_hw *hw;
+	int ret;
+
+	pm_runtime_set_suspended(dev);
+	pm_runtime_set_autosuspend_delay(dev, 50);
+	pm_runtime_use_autosuspend(&pdev->dev);
+	pm_runtime_enable(dev);
+
+	ret = pm_runtime_get_sync(dev);
+	if (ret) {
+		pm_runtime_disable(dev);
+		return ret;
+	}
 
-	hw = __imx_clk_scu(NULL, clk->name, clk->parents, clk->num_parents,
+	hw = __imx_clk_scu(dev, clk->name, clk->parents, clk->num_parents,
 			   clk->rsrc, clk->clk_type);
-	if (IS_ERR(hw))
+	if (IS_ERR(hw)) {
+		pm_runtime_disable(dev);
 		return PTR_ERR(hw);
+	}
 
 	clk->hw = hw;
 	list_add_tail(&clk->node, &imx_scu_clks[clk->rsrc]);
 
+	pm_runtime_mark_last_busy(&pdev->dev);
+	pm_runtime_put_autosuspend(&pdev->dev);
+
 	dev_dbg(dev, "register SCU clock rsrc:%d type:%d\n", clk->rsrc,
 		clk->clk_type);
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
