Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 582D8AFC30
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 14:07:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+yp0RzdAU/kLtji0fdbUrY3dGdgjr3v6rmkWD1Jx4iU=; b=Z7PLcmbRpbuwtl49/fMHLCdrGa
	nVoDeB5D+5eMP3euF3MES2f3T8NDLjNftjU638RI9Nqcuxt588+cilRKx5q2a3hZAb0QdTb0Z+ZUk
	KQjM/2jTlnVOR1ycSG5WxzvXKYrhsiGi2y5Ag03Od25W9ec6u9z0N8cMd6yGV8Hcu2XhqixH/oJkb
	hKDSrTgYdYjULRZLwyBStk6N327lGr0GfV5R0PiHdphY4/B2Q4fMqyWhks6u66Sw6A78pux+7ys7B
	HFhdbA9YfK9C1NUMhdvQxuHg6e2AJ+tvBXL6kDnOeNCs+BS73p33MM1C/mN2JEAOI5Ug0pY9FBUMi
	iX3f2LJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i81P2-0006tr-HN; Wed, 11 Sep 2019 12:07:16 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i81NR-00050V-6g
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 12:05:39 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 913CB2002E1;
 Wed, 11 Sep 2019 14:05:33 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 83C3D2002E0;
 Wed, 11 Sep 2019 14:05:33 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id DFE0B205DE;
 Wed, 11 Sep 2019 14:05:32 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Jacky Bai <ping.bai@nxp.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH 1/3] clk: imx8mq: Define gates for pll1/2 fixed dividers
Date: Wed, 11 Sep 2019 15:05:27 +0300
Message-Id: <f880a040c3adecbdb3870dca32083da16607e915.1568203237.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1568203237.git.leonard.crestez@nxp.com>
References: <cover.1568203237.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1568203237.git.leonard.crestez@nxp.com>
References: <cover.1568203237.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_050537_649480_266E81FB 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On imx8mq there are 9 fixed-factor dividers for SYS_PLL1 and SYS_PLL2
each with their own gate but these gates are not currently defined.

Add the other gates to the clock tree between sys1/2_pll_out and the
fixed dividers.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/clk/imx/clk-imx8mq.c             | 62 ++++++++++++++++--------
 include/dt-bindings/clock/imx8mq-clock.h | 22 ++++++++-
 2 files changed, 63 insertions(+), 21 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
index 4c90eb06a591..154c8655f29d 100644
--- a/drivers/clk/imx/clk-imx8mq.c
+++ b/drivers/clk/imx/clk-imx8mq.c
@@ -344,30 +344,52 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
 
 	clks[IMX8MQ_SYS1_PLL_OUT] = imx_clk_sccg_pll("sys1_pll_out", sys1_pll_out_sels, ARRAY_SIZE(sys1_pll_out_sels), 0, 0, 0, base + 0x30, CLK_IS_CRITICAL);
 	clks[IMX8MQ_SYS2_PLL_OUT] = imx_clk_sccg_pll("sys2_pll_out", sys2_pll_out_sels, ARRAY_SIZE(sys2_pll_out_sels), 0, 0, 1, base + 0x3c, CLK_IS_CRITICAL);
 	clks[IMX8MQ_SYS3_PLL_OUT] = imx_clk_sccg_pll("sys3_pll_out", sys3_pll_out_sels, ARRAY_SIZE(sys3_pll_out_sels), 0, 0, 1, base + 0x48, CLK_IS_CRITICAL);
 	clks[IMX8MQ_DRAM_PLL_OUT] = imx_clk_sccg_pll("dram_pll_out", dram_pll_out_sels, ARRAY_SIZE(dram_pll_out_sels), 0, 0, 0, base + 0x60, CLK_IS_CRITICAL);
-	/* SYS PLL fixed output */
-	clks[IMX8MQ_SYS1_PLL_40M] = imx_clk_fixed_factor("sys1_pll_40m", "sys1_pll_out", 1, 20);
-	clks[IMX8MQ_SYS1_PLL_80M] = imx_clk_fixed_factor("sys1_pll_80m", "sys1_pll_out", 1, 10);
-	clks[IMX8MQ_SYS1_PLL_100M] = imx_clk_fixed_factor("sys1_pll_100m", "sys1_pll_out", 1, 8);
-	clks[IMX8MQ_SYS1_PLL_133M] = imx_clk_fixed_factor("sys1_pll_133m", "sys1_pll_out", 1, 6);
-	clks[IMX8MQ_SYS1_PLL_160M] = imx_clk_fixed_factor("sys1_pll_160m", "sys1_pll_out", 1, 5);
-	clks[IMX8MQ_SYS1_PLL_200M] = imx_clk_fixed_factor("sys1_pll_200m", "sys1_pll_out", 1, 4);
-	clks[IMX8MQ_SYS1_PLL_266M] = imx_clk_fixed_factor("sys1_pll_266m", "sys1_pll_out", 1, 3);
-	clks[IMX8MQ_SYS1_PLL_400M] = imx_clk_fixed_factor("sys1_pll_400m", "sys1_pll_out", 1, 2);
-	clks[IMX8MQ_SYS1_PLL_800M] = imx_clk_fixed_factor("sys1_pll_800m", "sys1_pll_out", 1, 1);
-
-	clks[IMX8MQ_SYS2_PLL_50M] = imx_clk_fixed_factor("sys2_pll_50m", "sys2_pll_out", 1, 20);
-	clks[IMX8MQ_SYS2_PLL_100M] = imx_clk_fixed_factor("sys2_pll_100m", "sys2_pll_out", 1, 10);
-	clks[IMX8MQ_SYS2_PLL_125M] = imx_clk_fixed_factor("sys2_pll_125m", "sys2_pll_out", 1, 8);
-	clks[IMX8MQ_SYS2_PLL_166M] = imx_clk_fixed_factor("sys2_pll_166m", "sys2_pll_out", 1, 6);
-	clks[IMX8MQ_SYS2_PLL_200M] = imx_clk_fixed_factor("sys2_pll_200m", "sys2_pll_out", 1, 5);
-	clks[IMX8MQ_SYS2_PLL_250M] = imx_clk_fixed_factor("sys2_pll_250m", "sys2_pll_out", 1, 4);
-	clks[IMX8MQ_SYS2_PLL_333M] = imx_clk_fixed_factor("sys2_pll_333m", "sys2_pll_out", 1, 3);
-	clks[IMX8MQ_SYS2_PLL_500M] = imx_clk_fixed_factor("sys2_pll_500m", "sys2_pll_out", 1, 2);
-	clks[IMX8MQ_SYS2_PLL_1000M] = imx_clk_fixed_factor("sys2_pll_1000m", "sys2_pll_out", 1, 1);
+
+	/* SYS PLL1 fixed output */
+	clks[IMX8MQ_SYS1_PLL_40M_CG] = imx_clk_gate("sys1_pll_40m_cg", "sys1_pll_out", base + 0x30, 9);
+	clks[IMX8MQ_SYS1_PLL_80M_CG] = imx_clk_gate("sys1_pll_80m_cg", "sys1_pll_out", base + 0x30, 11);
+	clks[IMX8MQ_SYS1_PLL_100M_CG] = imx_clk_gate("sys1_pll_100m_cg", "sys1_pll_out", base + 0x30, 13);
+	clks[IMX8MQ_SYS1_PLL_133M_CG] = imx_clk_gate("sys1_pll_133m_cg", "sys1_pll_out", base + 0x30, 15);
+	clks[IMX8MQ_SYS1_PLL_160M_CG] = imx_clk_gate("sys1_pll_160m_cg", "sys1_pll_out", base + 0x30, 17);
+	clks[IMX8MQ_SYS1_PLL_200M_CG] = imx_clk_gate("sys1_pll_200m_cg", "sys1_pll_out", base + 0x30, 19);
+	clks[IMX8MQ_SYS1_PLL_266M_CG] = imx_clk_gate("sys1_pll_266m_cg", "sys1_pll_out", base + 0x30, 21);
+	clks[IMX8MQ_SYS1_PLL_400M_CG] = imx_clk_gate("sys1_pll_400m_cg", "sys1_pll_out", base + 0x30, 23);
+	clks[IMX8MQ_SYS1_PLL_800M_CG] = imx_clk_gate("sys1_pll_800m_cg", "sys1_pll_out", base + 0x30, 25);
+
+	clks[IMX8MQ_SYS1_PLL_40M] = imx_clk_fixed_factor("sys1_pll_40m", "sys1_pll_40m_cg", 1, 20);
+	clks[IMX8MQ_SYS1_PLL_80M] = imx_clk_fixed_factor("sys1_pll_80m", "sys1_pll_80m_cg", 1, 10);
+	clks[IMX8MQ_SYS1_PLL_100M] = imx_clk_fixed_factor("sys1_pll_100m", "sys1_pll_100m_cg", 1, 8);
+	clks[IMX8MQ_SYS1_PLL_133M] = imx_clk_fixed_factor("sys1_pll_133m", "sys1_pll_133m_cg", 1, 6);
+	clks[IMX8MQ_SYS1_PLL_160M] = imx_clk_fixed_factor("sys1_pll_160m", "sys1_pll_160m_cg", 1, 5);
+	clks[IMX8MQ_SYS1_PLL_200M] = imx_clk_fixed_factor("sys1_pll_200m", "sys1_pll_200m_cg", 1, 4);
+	clks[IMX8MQ_SYS1_PLL_266M] = imx_clk_fixed_factor("sys1_pll_266m", "sys1_pll_266m_cg", 1, 3);
+	clks[IMX8MQ_SYS1_PLL_400M] = imx_clk_fixed_factor("sys1_pll_400m", "sys1_pll_400m_cg", 1, 2);
+	clks[IMX8MQ_SYS1_PLL_800M] = imx_clk_fixed_factor("sys1_pll_800m", "sys1_pll_800m_cg", 1, 1);
+
+	/* SYS PLL2 fixed output */
+	clks[IMX8MQ_SYS2_PLL_50M_CG] = imx_clk_gate("sys2_pll_50m_cg", "sys2_pll_out", base + 0x3c, 9);
+	clks[IMX8MQ_SYS2_PLL_100M_CG] = imx_clk_gate("sys2_pll_100m_cg", "sys2_pll_out", base + 0x3c, 11);
+	clks[IMX8MQ_SYS2_PLL_125M_CG] = imx_clk_gate("sys2_pll_125m_cg", "sys2_pll_out", base + 0x3c, 13);
+	clks[IMX8MQ_SYS2_PLL_166M_CG] = imx_clk_gate("sys2_pll_166m_cg", "sys2_pll_out", base + 0x3c, 15);
+	clks[IMX8MQ_SYS2_PLL_200M_CG] = imx_clk_gate("sys2_pll_200m_cg", "sys2_pll_out", base + 0x3c, 17);
+	clks[IMX8MQ_SYS2_PLL_250M_CG] = imx_clk_gate("sys2_pll_250m_cg", "sys2_pll_out", base + 0x3c, 19);
+	clks[IMX8MQ_SYS2_PLL_333M_CG] = imx_clk_gate("sys2_pll_333m_cg", "sys2_pll_out", base + 0x3c, 21);
+	clks[IMX8MQ_SYS2_PLL_500M_CG] = imx_clk_gate("sys2_pll_500m_cg", "sys2_pll_out", base + 0x3c, 23);
+	clks[IMX8MQ_SYS2_PLL_1000M_CG] = imx_clk_gate("sys2_pll_1000m_cg", "sys2_pll_out", base + 0x3c, 25);
+
+	clks[IMX8MQ_SYS2_PLL_50M] = imx_clk_fixed_factor("sys2_pll_50m", "sys2_pll_50m_cg", 1, 20);
+	clks[IMX8MQ_SYS2_PLL_100M] = imx_clk_fixed_factor("sys2_pll_100m", "sys2_pll_100m_cg", 1, 10);
+	clks[IMX8MQ_SYS2_PLL_125M] = imx_clk_fixed_factor("sys2_pll_125m", "sys2_pll_125m_cg", 1, 8);
+	clks[IMX8MQ_SYS2_PLL_166M] = imx_clk_fixed_factor("sys2_pll_166m", "sys2_pll_166m_cg", 1, 6);
+	clks[IMX8MQ_SYS2_PLL_200M] = imx_clk_fixed_factor("sys2_pll_200m", "sys2_pll_200m_cg", 1, 5);
+	clks[IMX8MQ_SYS2_PLL_250M] = imx_clk_fixed_factor("sys2_pll_250m", "sys2_pll_250m_cg", 1, 4);
+	clks[IMX8MQ_SYS2_PLL_333M] = imx_clk_fixed_factor("sys2_pll_333m", "sys2_pll_333m_cg", 1, 3);
+	clks[IMX8MQ_SYS2_PLL_500M] = imx_clk_fixed_factor("sys2_pll_500m", "sys2_pll_500m_cg", 1, 2);
+	clks[IMX8MQ_SYS2_PLL_1000M] = imx_clk_fixed_factor("sys2_pll_1000m", "sys2_pll_1000m_cg", 1, 1);
 
 	np = dev->of_node;
 	base = devm_platform_ioremap_resource(pdev, 0);
 	if (WARN_ON(IS_ERR(base)))
 		return PTR_ERR(base);
diff --git a/include/dt-bindings/clock/imx8mq-clock.h b/include/dt-bindings/clock/imx8mq-clock.h
index 65463673d25e..9b031f93b7d1 100644
--- a/include/dt-bindings/clock/imx8mq-clock.h
+++ b/include/dt-bindings/clock/imx8mq-clock.h
@@ -401,7 +401,27 @@
 #define IMX8MQ_CLK_GPIO5_ROOT			263
 
 #define IMX8MQ_CLK_SNVS_ROOT			264
 #define IMX8MQ_CLK_GIC				265
 
-#define IMX8MQ_CLK_END				266
+#define IMX8MQ_SYS1_PLL_40M_CG			266
+#define IMX8MQ_SYS1_PLL_80M_CG			267
+#define IMX8MQ_SYS1_PLL_100M_CG			268
+#define IMX8MQ_SYS1_PLL_133M_CG			269
+#define IMX8MQ_SYS1_PLL_160M_CG			270
+#define IMX8MQ_SYS1_PLL_200M_CG			271
+#define IMX8MQ_SYS1_PLL_266M_CG			272
+#define IMX8MQ_SYS1_PLL_400M_CG			273
+#define IMX8MQ_SYS1_PLL_800M_CG			274
+#define IMX8MQ_SYS2_PLL_50M_CG			275
+#define IMX8MQ_SYS2_PLL_100M_CG			276
+#define IMX8MQ_SYS2_PLL_125M_CG			277
+#define IMX8MQ_SYS2_PLL_166M_CG			278
+#define IMX8MQ_SYS2_PLL_200M_CG			279
+#define IMX8MQ_SYS2_PLL_250M_CG			280
+#define IMX8MQ_SYS2_PLL_333M_CG			281
+#define IMX8MQ_SYS2_PLL_500M_CG			282
+#define IMX8MQ_SYS2_PLL_1000M_CG		283
+
+#define IMX8MQ_CLK_END				384
+
 #endif /* __DT_BINDINGS_CLOCK_IMX8MQ_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
