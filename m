Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 056316ABB2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 17:26:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uDJiFWnQdxs7PLvSMiH1Eh3L65yd3tRQMgTcYZOaR4I=; b=TPmLiRpkG9zU0yR5A8UIDcMVS7
	AzkEHliOU01UxvOzPknSKIty71HtKj+2FNKzNzcPJkprWY58NkTOv5QbXNXLMlzKK90DNG9HfLoSK
	UixyO66hROu2yl3GcsXcJShL6Jn5OlUR4Sw+G80pLZE3AIc4E85MFaehpsBVwpo6Xc5opaTxYc7QN
	xrLhjaZJ4q608u4/mz+xMz/m3I7O+Qt9Azh4OD0+qG2E/rdK278s1aq+Xiy3pdDfZNf/y6FYk/VyI
	k5EzabFp77FvsiMohiprG6MZdsc7rmnvl9YOQ6RlPJRPr2nDiMqd5ox2lCYN4Puny5w4xytOBNW5p
	++Qa0PMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnPLt-0000WY-KN; Tue, 16 Jul 2019 15:26:49 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnPIZ-0005DL-TZ
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 15:23:25 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 77A881A004C;
 Tue, 16 Jul 2019 17:23:22 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A224B1A0177;
 Tue, 16 Jul 2019 17:23:17 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 11D2F40326;
 Tue, 16 Jul 2019 23:23:08 +0800 (SGT)
From: Dong Aisheng <aisheng.dong@nxp.com>
To: linux-clk@vger.kernel.org
Subject: [PATCH v3 10/11] clk: imx: clk-imx8qxp-lpcg: add runtime pm support
Date: Tue, 16 Jul 2019 23:01:04 +0800
Message-Id: <1563289265-10977-11-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563289265-10977-1-git-send-email-aisheng.dong@nxp.com>
References: <1563289265-10977-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_082324_418343_EA494F61 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
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
v3: new patch
---
 drivers/clk/imx/clk-imx8qxp-lpcg.c | 22 +++++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8qxp-lpcg.c b/drivers/clk/imx/clk-imx8qxp-lpcg.c
index dbb8960..0043639 100644
--- a/drivers/clk/imx/clk-imx8qxp-lpcg.c
+++ b/drivers/clk/imx/clk-imx8qxp-lpcg.c
@@ -12,6 +12,7 @@
 #include <linux/of_address.h>
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
 #include <linux/slab.h>
 
 #include "clk-scu.h"
@@ -214,6 +215,12 @@ static int imx_lpcg_parse_clks_from_dt(struct platform_device *pdev,
 
 	autogate = of_property_read_bool(np, "hw-autogate");
 
+	pm_runtime_get_noresume(&pdev->dev);
+	pm_runtime_set_active(&pdev->dev);
+	pm_runtime_set_autosuspend_delay(&pdev->dev, 500);
+	pm_runtime_use_autosuspend(&pdev->dev);
+	pm_runtime_enable(&pdev->dev);
+
 	for (i = 0; i < clk_data->num; i++) {
 		if (bit_offset[i] > 31) {
 			dev_warn(&pdev->dev, "invalid bit offset of clock %d\n",
@@ -221,9 +228,9 @@ static int imx_lpcg_parse_clks_from_dt(struct platform_device *pdev,
 			return -EINVAL;
 		}
 
-		clk_hws[i] = imx_clk_lpcg_scu(output_names[i],
-					      parent_names[i], 0, base,
-					      bit_offset[i], autogate);
+		clk_hws[i] = imx_clk_lpcg_scu_dev(&pdev->dev, output_names[i],
+						  parent_names[i], 0, base,
+						  bit_offset[i], autogate);
 		if (IS_ERR(clk_hws[i])) {
 			dev_warn(&pdev->dev, "failed to register clock %d\n",
 				 i);
@@ -231,8 +238,13 @@ static int imx_lpcg_parse_clks_from_dt(struct platform_device *pdev,
 		}
 	}
 
-	return devm_of_clk_add_hw_provider(&pdev->dev, of_clk_hw_onecell_get,
-					   clk_data);
+	ret = devm_of_clk_add_hw_provider(&pdev->dev, of_clk_hw_onecell_get,
+					  clk_data);
+
+	pm_runtime_mark_last_busy(&pdev->dev);
+	pm_runtime_put_autosuspend(&pdev->dev);
+
+	return ret;
 }
 
 static int imx8qxp_lpcg_clk_probe(struct platform_device *pdev)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
