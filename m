Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7193595D75
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 13:34:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EEMBKMN49xEcODMHl7f80MuYiaajj/ThlUnuHrR9zV0=; b=MbEu3Qq/XxF39PvPmeDw50g6sm
	eq0sY6K57AkMiyjc+/cq5Y/Wvq/eLC8x0H1AOaz6hhZkQ4v705gaJ6/g++AtfzMT7Qs50qfi4r5Y/
	8FkDy6SUxYbrv9rTW9Y59Zg2NUAoxyGH/YV3JXnzbCYWvNa/OdI2aaUx7nDBSjpuadrzW9x3pCnJe
	SSfEORyroCMrp+bT7a9mvHUbUPVvoY2sCBsnmb+cbMxJ+U4SoIQFBtX13ppH58XsWbeSIYEe1aroi
	s2tRej5NwOmlPuhgp26m7/o9rfTOp6KCRa4lGebbU/s/A6HMYlIn30A/9BMDvPYeTKLBN6yGi8K6c
	TbUjO6LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i02P4-0003h5-Sk; Tue, 20 Aug 2019 11:34:19 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i02N3-0002B4-S7
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 11:32:15 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9D77E1A0186;
 Tue, 20 Aug 2019 13:32:12 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5851E1A01C0;
 Tue, 20 Aug 2019 13:32:08 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 47681402B7;
 Tue, 20 Aug 2019 19:32:00 +0800 (SGT)
From: Dong Aisheng <aisheng.dong@nxp.com>
To: linux-clk@vger.kernel.org
Subject: [PATCH V4 10/11] clk: imx: clk-imx8qxp-lpcg: add runtime pm support
Date: Tue, 20 Aug 2019 07:13:24 -0400
Message-Id: <1566299605-15641-11-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566299605-15641-1-git-send-email-aisheng.dong@nxp.com>
References: <1566299605-15641-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_043214_088409_07D77D66 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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

add runtime pm support

Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
v3->v4:
 * disable rpm when error out
v3: new patch
---
 drivers/clk/imx/clk-imx8qxp-lpcg.c | 34 +++++++++++++++++++++++++++-------
 1 file changed, 27 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8qxp-lpcg.c b/drivers/clk/imx/clk-imx8qxp-lpcg.c
index 90326e5..ca9bd58 100644
--- a/drivers/clk/imx/clk-imx8qxp-lpcg.c
+++ b/drivers/clk/imx/clk-imx8qxp-lpcg.c
@@ -12,6 +12,7 @@
 #include <linux/of_address.h>
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
 #include <linux/slab.h>
 
 #include "clk-scu.h"
@@ -231,26 +232,45 @@ static int imx_lpcg_parse_clks_from_dt(struct platform_device *pdev,
 		return -EINVAL;
 	}
 
+	pm_runtime_get_noresume(&pdev->dev);
+	pm_runtime_set_active(&pdev->dev);
+	pm_runtime_set_autosuspend_delay(&pdev->dev, 500);
+	pm_runtime_use_autosuspend(&pdev->dev);
+	pm_runtime_enable(&pdev->dev);
+
 	for (i = 0; i < count; i++) {
 		idx = bit_offset[i] / 4;
 		if (idx > IMX_LPCG_MAX_CLKS) {
 			dev_warn(&pdev->dev, "invalid bit offset of clock %d\n",
 				 i);
-			return -EINVAL;
+			ret = -EINVAL;
+			goto out;
 		}
 
-		clk_hws[idx] = imx_clk_lpcg_scu(output_names[i],
-						parent_names[i], 0, base,
-						bit_offset[i], false);
+		clk_hws[idx] = imx_clk_lpcg_scu_dev(&pdev->dev, output_names[i],
+						    parent_names[i], 0, base,
+						    bit_offset[i], false);
 		if (IS_ERR(clk_hws[idx])) {
 			dev_warn(&pdev->dev, "failed to register clock %d\n",
 				 idx);
-			return -EINVAL;
+			ret = -EINVAL;
+			goto out;
 		}
 	}
 
-	return devm_of_clk_add_hw_provider(&pdev->dev, imx_lpcg_of_clk_src_get,
-					   clk_data);
+	ret = devm_of_clk_add_hw_provider(&pdev->dev, imx_lpcg_of_clk_src_get,
+					  clk_data);
+	if (ret)
+		goto out;
+
+	pm_runtime_mark_last_busy(&pdev->dev);
+	pm_runtime_put_autosuspend(&pdev->dev);
+
+	return 0;
+
+out:
+	pm_runtime_disable(&pdev->dev);
+	return ret;
 }
 
 static int imx8qxp_lpcg_clk_probe(struct platform_device *pdev)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
