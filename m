Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B776C115F49
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 23:28:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mGCPnpbaV7jRxIvSZQp4x/P50g0gZXlHCJlsMGasIM0=; b=ktX13FwOK5x+3a
	D5MGdzBrQfVNWdw3USX91S6YmXsb1Iqz4PXC0lGSO3j6iAAKS9D+DMb1MDMmUL1haNTqllWyTgVdN
	bKgVR2haxrllzAxqU3zaLwQAc5ZB3QRsP21a+0Ck98Fzq8yceFe6c133wPTJOdPKiJq64GIHuEeBa
	aSH7vSoiA+eMalgShleKjNbgYCsOPm3qOZ1yX8b55E3sJ1944z2BD4AyRROP58gBu/P6MCsL7zN8F
	e51FF7i33LndIiro+RH2l7iCtMTJHnZG+TUNw1zf+Q4GqWPX8K7lvobUkjGiienO4BFsY22AklgyN
	DT8C079yoT5qefg58IQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idiYg-0003Yr-4z; Sat, 07 Dec 2019 22:28:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idiVq-0000xX-1T; Sat, 07 Dec 2019 22:25:19 +0000
Received: from ziggy.de (unknown [95.169.229.25])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 119172467D;
 Sat,  7 Dec 2019 22:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575757517;
 bh=q7YR4HMuFuPvR0RHWH0ycHC5MCSJKPZtTtyErowzU74=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=oHJd7SdyDsbnvS03itu1WhPFsk4qurb84v+sPFd/yCQrRsses75DkrsP4CqtSwZ4r
 h66S1OXeCi9jHDllgCSigCY1JNe0ZQTl1dTJ2O36tflUPF9hsdq+woH8SpI+Q5glTP
 0LUv3CeTPapswzJXohRsOc4+LD5TmKNERxpzgPKg=
From: matthias.bgg@kernel.org
To: robh+dt@kernel.org, mark.rutland@arm.com, ck.hu@mediatek.com,
 p.zabel@pengutronix.de, airlied@linux.ie, mturquette@baylibre.com,
 sboyd@codeaurora.org, ulrich.hecht+renesas@gmail.com,
 laurent.pinchart@ideasonboard.com, enric.balletbo@collabora.com
Subject: [PATCH v6 10/12] clk: mediatek: mt8183: switch mmsys to platform
 device probing
Date: Sat,  7 Dec 2019 23:23:47 +0100
Message-Id: <20191207222349.23161-11-matthias.bgg@kernel.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191207222349.23161-1-matthias.bgg@kernel.org>
References: <20191207222349.23161-1-matthias.bgg@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_142518_231736_5FEC65FC 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, rdunlap@infradead.org, frank-w@public-files.de,
 sean.wang@mediatek.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, sean.wang@kernel.org, wens@csie.org,
 drinkcat@chromium.org, linux-mediatek@lists.infradead.org, mbrugger@suse.com,
 hsinyi@chromium.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Matthias Brugger <mbrugger@suse.com>

Switch probing for the MMSYS to support invocation to a
plain paltform device. The driver will be probed by the DRM subsystem.

Singed-off-by: Matthias Brugger <mbrugger@suse.com>
---
 drivers/clk/mediatek/clk-mt8183-mm.c | 39 +++++++++++++++++++---------
 1 file changed, 27 insertions(+), 12 deletions(-)

diff --git a/drivers/clk/mediatek/clk-mt8183-mm.c b/drivers/clk/mediatek/clk-mt8183-mm.c
index 720c696b506d..e6dcad18d81a 100644
--- a/drivers/clk/mediatek/clk-mt8183-mm.c
+++ b/drivers/clk/mediatek/clk-mt8183-mm.c
@@ -3,14 +3,20 @@
 // Copyright (c) 2018 MediaTek Inc.
 // Author: Weiyi Lu <weiyi.lu@mediatek.com>
 
+#include <linux/module.h>
 #include <linux/clk-provider.h>
 #include <linux/platform_device.h>
+#include <linux/slab.h>
 
 #include "clk-mtk.h"
 #include "clk-gate.h"
 
 #include <dt-bindings/clock/mt8183-clk.h>
 
+struct clk_mt8183_mm_priv {
+	struct clk_onecell_data *clk_data;
+};
+
 static const struct mtk_gate_regs mm0_cg_regs = {
 	.set_ofs = 0x104,
 	.clr_ofs = 0x108,
@@ -84,28 +90,37 @@ static const struct mtk_gate mm_clks[] = {
 
 static int clk_mt8183_mm_probe(struct platform_device *pdev)
 {
-	struct clk_onecell_data *clk_data;
-	struct device_node *node = pdev->dev.of_node;
+	struct clk_mt8183_mm_priv *private;
+	struct device_node *node = pdev->dev.parent->of_node;
+
+	private = devm_kzalloc(&pdev->dev, sizeof(*private), GFP_KERNEL);
+	if (!private)
+		return -ENOMEM;
 
-	clk_data = mtk_alloc_clk_data(CLK_MM_NR_CLK);
+	private->clk_data = mtk_alloc_clk_data(CLK_MM_NR_CLK);
+	platform_set_drvdata(pdev, private);
 
 	mtk_clk_register_gates(node, mm_clks, ARRAY_SIZE(mm_clks),
-			clk_data);
+			private->clk_data);
 
-	return of_clk_add_provider(node, of_clk_src_onecell_get, clk_data);
+	return of_clk_add_provider(node, of_clk_src_onecell_get,
+			private->clk_data);
 }
 
-static const struct of_device_id of_match_clk_mt8183_mm[] = {
-	{ .compatible = "mediatek,mt8183-mmsys", },
-	{}
-};
+static int clk_mt8183_mm_remove(struct platform_device *pdev)
+{
+	struct clk_mt8183_mm_priv *private = platform_get_drvdata(pdev);
+
+	kfree(private->clk_data);
+
+	return 0;
+}
 
 static struct platform_driver clk_mt8183_mm_drv = {
 	.probe = clk_mt8183_mm_probe,
+	.remove = clk_mt8183_mm_remove,
 	.driver = {
 		.name = "clk-mt8183-mm",
-		.of_match_table = of_match_clk_mt8183_mm,
 	},
 };
-
-builtin_platform_driver(clk_mt8183_mm_drv);
+module_platform_driver(clk_mt8183_mm_drv);
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
