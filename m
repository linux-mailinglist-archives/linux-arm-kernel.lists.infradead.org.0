Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B38E015CC3B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 21:23:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZX1Nw65jFMjZP/uGHYPm+ebwO5zN80PJcLukBuRFYwo=; b=ACFWWIxbZ3svUt
	OJuEHMZ21sYnREP1tbzUel30B0MDzSMgWLA5/ikl1PjVyeSCO7dWifu/xlvcdYnjEzl1xUC0E6XUB
	aR1FvWjBR+9rTPwVdYWPrx5yXGP6bkGrQF5IPiVhexa8Gqr2/DukPkRkCsaTAl+wFxyweIk9v2wth
	o8LSIAaGkxBpfORE0Mv7Uig2fac9vtGCRs578FYxQXzZC5NMVvXezE1zJoUbU8F7q7thWCzWW1PCq
	2MmLWcsMNkvw5HpVAMPRfbmO05DoFwBdJyefyS0dJrtawEkWxvh6lIXzNnya1HNJMOIpQM58KQB+9
	GNFPZ6jQ8714cDEeBR2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2L16-000307-75; Thu, 13 Feb 2020 20:23:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Kyg-0000Ov-Ek; Thu, 13 Feb 2020 20:20:52 +0000
Received: from ziggy.cz (unknown [37.223.145.31])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A2F68246D9;
 Thu, 13 Feb 2020 20:20:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581625250;
 bh=G2Hpu3nEAGu9X473eyFTb9QLqqSkzeDCotY2tU0X0aE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=UzJ/LQyRW/y3lG9V82EKkQ2xt6zROjga1b5OstA0JdeJXGBMEwm3XWmi1JMAN/YOO
 hu0LY5DJCMkvHMrFRgVfj9vjZYCBt+8/9daiD14xaM7d6pGZI13/vIUbVksNeAFTQ6
 ToPOyY5mW3NGkLfe2I/W8J97JIjZMcOjUcP8/g3Y=
From: matthias.bgg@kernel.org
To: robh+dt@kernel.org, mark.rutland@arm.com, ck.hu@mediatek.com,
 p.zabel@pengutronix.de, airlied@linux.ie, mturquette@baylibre.com,
 sboyd@kernel.org, ulrich.hecht+renesas@gmail.com,
 laurent.pinchart@ideasonboard.com, enric.balletbo@collabora.com
Subject: [PATCH v7 09/13] clk: mediatek: mt6779: switch mmsys to platform
 device probing
Date: Thu, 13 Feb 2020 21:19:49 +0100
Message-Id: <20200213201953.15268-10-matthias.bgg@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200213201953.15268-1-matthias.bgg@kernel.org>
References: <20200213201953.15268-1-matthias.bgg@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_122050_545598_7C897346 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, drinkcat@chromium.org,
 Weiyi Lu <weiyi.lu@mediatek.com>, frank-w@public-files.de,
 sean.wang@mediatek.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, wens@csie.org,
 Matthias Brugger <mbrugger@suse.com>, linux-mediatek@lists.infradead.org,
 rdunlap@infradead.org, matthias.bgg@kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>, mtk01761 <wendell.lin@mediatek.com>,
 hsinyi@chromium.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Matthias Brugger <mbrugger@suse.com>

Switch probing for the MMSYS to support invocation to a
plain paltform device. The driver will be probed by the DRM subsystem.

Signed-off-by: Matthias Brugger <mbrugger@suse.com>

---

Changes in v7:
- free clk_data->clks as well
- get rid of private data structure

Changes in v6: None
Changes in v5: None
Changes in v4: None
Changes in v3: None
Changes in v2: None

 drivers/clk/mediatek/clk-mt6779-mm.c | 32 ++++++++++++++++++----------
 1 file changed, 21 insertions(+), 11 deletions(-)

diff --git a/drivers/clk/mediatek/clk-mt6779-mm.c b/drivers/clk/mediatek/clk-mt6779-mm.c
index fb5fbb8e3e41..70a1f3b413ba 100644
--- a/drivers/clk/mediatek/clk-mt6779-mm.c
+++ b/drivers/clk/mediatek/clk-mt6779-mm.c
@@ -4,9 +4,11 @@
  * Author: Wendell Lin <wendell.lin@mediatek.com>
  */
 
+#include <linux/module.h>
 #include <linux/clk-provider.h>
 #include <linux/platform_device.h>
 #include <dt-bindings/clock/mt6779-clk.h>
+#include <linux/slab.h>
 
 #include "clk-mtk.h"
 #include "clk-gate.h"
@@ -84,30 +86,38 @@ static const struct mtk_gate mm_clks[] = {
 	GATE_MM1(CLK_MM_DISP_OVL_FBDC, "mm_disp_ovl_fbdc", "mm_sel", 16),
 };
 
-static const struct of_device_id of_match_clk_mt6779_mm[] = {
-	{ .compatible = "mediatek,mt6779-mmsys", },
-	{}
-};
-
 static int clk_mt6779_mm_probe(struct platform_device *pdev)
 {
 	struct clk_onecell_data *clk_data;
-	struct device_node *node = pdev->dev.of_node;
+	struct device_node *node = pdev->dev.parent->of_node;
+
+	clk_data = devm_kzalloc(&pdev->dev, sizeof(*clk_data), GFP_KERNEL);
+	if (!clk_data)
+		return -ENOMEM;
 
 	clk_data = mtk_alloc_clk_data(CLK_MM_NR_CLK);
+	platform_set_drvdata(pdev, clk_data);
 
-	mtk_clk_register_gates(node, mm_clks, ARRAY_SIZE(mm_clks),
-			       clk_data);
+	mtk_clk_register_gates(node, mm_clks, ARRAY_SIZE(mm_clks), clk_data);
 
 	return of_clk_add_provider(node, of_clk_src_onecell_get, clk_data);
 }
 
+static int clk_mt6779_mm_remove(struct platform_device *pdev)
+{
+	struct clk_onecell_data *clk_data = platform_get_drvdata(pdev);
+
+	kfree(clk_data->clks);
+	kfree(clk_data);
+
+	return 0;
+}
+
 static struct platform_driver clk_mt6779_mm_drv = {
 	.probe = clk_mt6779_mm_probe,
+	.remove = clk_mt6779_mm_remove,
 	.driver = {
 		.name = "clk-mt6779-mm",
-		.of_match_table = of_match_clk_mt6779_mm,
 	},
 };
-
-builtin_platform_driver(clk_mt6779_mm_drv);
+module_platform_driver(clk_mt6779_mm_drv);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
