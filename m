Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26307AFC31
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 14:07:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cQW3KPfhwRn9zkXD/lSYSVNKKtJ4O7YYasauFna0oq4=; b=tfJwqGZ680rEn3EIu3FCSUw3cB
	czjvBfCdTkdn62nPsjfMVwM51GpjylevFGbDUtmouDZva1RDxQnllS0QLiBMmuwCpJ89ValjN3Ih9
	nPcYDcIsW1aR4LCYFVX9BQGcQtKGrlG/pUEf8GLAp4RIZIqV6Fc4Rk2vswDtzv6ipNFGWQ5n8nny1
	9WiLylY9HBRchBnLAetKsIpekc2CvuSKATYvh/1U6NboDe4pmpR1et+GomMNpTRK+8VB8cQhlt5So
	8L4Yyl22O6tdfhFg60khA+stYRxNBDkN2XKchL7GWoLfWWCD/0NiEk1DoIzIMcq2Ukx+SMz5c+xTA
	VvikUYxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i81PT-000801-Eu; Wed, 11 Sep 2019 12:07:44 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i81NR-00051P-3c
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 12:05:40 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 492B82005D6;
 Wed, 11 Sep 2019 14:05:34 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 39B682002E0;
 Wed, 11 Sep 2019 14:05:34 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 96E31205DE;
 Wed, 11 Sep 2019 14:05:33 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Jacky Bai <ping.bai@nxp.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH 2/3] clk: imx8mm: Define gates for pll1/2 fixed dividers
Date: Wed, 11 Sep 2019 15:05:28 +0300
Message-Id: <9998f6ae6aed899214f84b15ae60fe0e62603998.1568203237.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1568203237.git.leonard.crestez@nxp.com>
References: <cover.1568203237.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1568203237.git.leonard.crestez@nxp.com>
References: <cover.1568203237.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_050537_652620_174BA15B 
X-CRM114-Status: UNSURE (   8.63  )
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

On imx8mm there are 9 fixed-factor dividers for SYS_PLL1 and SYS_PLL2
each with their own gate. Only one of these gates (the one "dividing" by
one) is currently defined and it's incorrectly set as the parent of all
the fixed-factor dividers.

Add the other 8 gates to the clock tree between sys_pll1/2_bypass and
the fixed dividers.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/clk/imx/clk-imx8mm.c             | 57 ++++++++++++++++--------
 include/dt-bindings/clock/imx8mm-clock.h | 19 +++++++-
 2 files changed, 56 insertions(+), 20 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 2758e3f0d15d..4ead3ea2713c 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -437,33 +437,52 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 	clks[IMX8MM_VIDEO_PLL1_OUT] = imx_clk_gate("video_pll1_out", "video_pll1_bypass", base + 0x28, 13);
 	clks[IMX8MM_DRAM_PLL_OUT] = imx_clk_gate("dram_pll_out", "dram_pll_bypass", base + 0x50, 13);
 	clks[IMX8MM_GPU_PLL_OUT] = imx_clk_gate("gpu_pll_out", "gpu_pll_bypass", base + 0x64, 11);
 	clks[IMX8MM_VPU_PLL_OUT] = imx_clk_gate("vpu_pll_out", "vpu_pll_bypass", base + 0x74, 11);
 	clks[IMX8MM_ARM_PLL_OUT] = imx_clk_gate("arm_pll_out", "arm_pll_bypass", base + 0x84, 11);
-	clks[IMX8MM_SYS_PLL1_OUT] = imx_clk_gate("sys_pll1_out", "sys_pll1_bypass", base + 0x94, 11);
-	clks[IMX8MM_SYS_PLL2_OUT] = imx_clk_gate("sys_pll2_out", "sys_pll2_bypass", base + 0x104, 11);
 	clks[IMX8MM_SYS_PLL3_OUT] = imx_clk_gate("sys_pll3_out", "sys_pll3_bypass", base + 0x114, 11);
 
-	/* SYS PLL fixed output */
-	clks[IMX8MM_SYS_PLL1_40M] = imx_clk_fixed_factor("sys_pll1_40m", "sys_pll1_out", 1, 20);
-	clks[IMX8MM_SYS_PLL1_80M] = imx_clk_fixed_factor("sys_pll1_80m", "sys_pll1_out", 1, 10);
-	clks[IMX8MM_SYS_PLL1_100M] = imx_clk_fixed_factor("sys_pll1_100m", "sys_pll1_out", 1, 8);
-	clks[IMX8MM_SYS_PLL1_133M] = imx_clk_fixed_factor("sys_pll1_133m", "sys_pll1_out", 1, 6);
-	clks[IMX8MM_SYS_PLL1_160M] = imx_clk_fixed_factor("sys_pll1_160m", "sys_pll1_out", 1, 5);
-	clks[IMX8MM_SYS_PLL1_200M] = imx_clk_fixed_factor("sys_pll1_200m", "sys_pll1_out", 1, 4);
-	clks[IMX8MM_SYS_PLL1_266M] = imx_clk_fixed_factor("sys_pll1_266m", "sys_pll1_out", 1, 3);
-	clks[IMX8MM_SYS_PLL1_400M] = imx_clk_fixed_factor("sys_pll1_400m", "sys_pll1_out", 1, 2);
+	/* SYS PLL1 fixed output */
+	clks[IMX8MM_SYS_PLL1_40M_CG] = imx_clk_gate("sys_pll1_40m_cg", "sys_pll1_bypass", base + 0x94, 27);
+	clks[IMX8MM_SYS_PLL1_80M_CG] = imx_clk_gate("sys_pll1_80m_cg", "sys_pll1_bypass", base + 0x94, 25);
+	clks[IMX8MM_SYS_PLL1_100M_CG] = imx_clk_gate("sys_pll1_100m_cg", "sys_pll1_bypass", base + 0x94, 23);
+	clks[IMX8MM_SYS_PLL1_133M_CG] = imx_clk_gate("sys_pll1_133m_cg", "sys_pll1_bypass", base + 0x94, 21);
+	clks[IMX8MM_SYS_PLL1_160M_CG] = imx_clk_gate("sys_pll1_160m_cg", "sys_pll1_bypass", base + 0x94, 19);
+	clks[IMX8MM_SYS_PLL1_200M_CG] = imx_clk_gate("sys_pll1_200m_cg", "sys_pll1_bypass", base + 0x94, 17);
+	clks[IMX8MM_SYS_PLL1_266M_CG] = imx_clk_gate("sys_pll1_266m_cg", "sys_pll1_bypass", base + 0x94, 15);
+	clks[IMX8MM_SYS_PLL1_400M_CG] = imx_clk_gate("sys_pll1_400m_cg", "sys_pll1_bypass", base + 0x94, 13);
+	clks[IMX8MM_SYS_PLL1_OUT] = imx_clk_gate("sys_pll1_out", "sys_pll1_bypass", base + 0x94, 11);
+
+	clks[IMX8MM_SYS_PLL1_40M] = imx_clk_fixed_factor("sys_pll1_40m", "sys_pll1_40m_cg", 1, 20);
+	clks[IMX8MM_SYS_PLL1_80M] = imx_clk_fixed_factor("sys_pll1_80m", "sys_pll1_80m_cg", 1, 10);
+	clks[IMX8MM_SYS_PLL1_100M] = imx_clk_fixed_factor("sys_pll1_100m", "sys_pll1_100m_cg", 1, 8);
+	clks[IMX8MM_SYS_PLL1_133M] = imx_clk_fixed_factor("sys_pll1_133m", "sys_pll1_133m_cg", 1, 6);
+	clks[IMX8MM_SYS_PLL1_160M] = imx_clk_fixed_factor("sys_pll1_160m", "sys_pll1_160m_cg", 1, 5);
+	clks[IMX8MM_SYS_PLL1_200M] = imx_clk_fixed_factor("sys_pll1_200m", "sys_pll1_200m_cg", 1, 4);
+	clks[IMX8MM_SYS_PLL1_266M] = imx_clk_fixed_factor("sys_pll1_266m", "sys_pll1_266m_cg", 1, 3);
+	clks[IMX8MM_SYS_PLL1_400M] = imx_clk_fixed_factor("sys_pll1_400m", "sys_pll1_400m_cg", 1, 2);
 	clks[IMX8MM_SYS_PLL1_800M] = imx_clk_fixed_factor("sys_pll1_800m", "sys_pll1_out", 1, 1);
 
-	clks[IMX8MM_SYS_PLL2_50M] = imx_clk_fixed_factor("sys_pll2_50m", "sys_pll2_out", 1, 20);
-	clks[IMX8MM_SYS_PLL2_100M] = imx_clk_fixed_factor("sys_pll2_100m", "sys_pll2_out", 1, 10);
-	clks[IMX8MM_SYS_PLL2_125M] = imx_clk_fixed_factor("sys_pll2_125m", "sys_pll2_out", 1, 8);
-	clks[IMX8MM_SYS_PLL2_166M] = imx_clk_fixed_factor("sys_pll2_166m", "sys_pll2_out", 1, 6);
-	clks[IMX8MM_SYS_PLL2_200M] = imx_clk_fixed_factor("sys_pll2_200m", "sys_pll2_out", 1, 5);
-	clks[IMX8MM_SYS_PLL2_250M] = imx_clk_fixed_factor("sys_pll2_250m", "sys_pll2_out", 1, 4);
-	clks[IMX8MM_SYS_PLL2_333M] = imx_clk_fixed_factor("sys_pll2_333m", "sys_pll2_out", 1, 3);
-	clks[IMX8MM_SYS_PLL2_500M] = imx_clk_fixed_factor("sys_pll2_500m", "sys_pll2_out", 1, 2);
+	/* SYS PLL2 fixed output */
+	clks[IMX8MM_SYS_PLL2_50M_CG] = imx_clk_gate("sys_pll2_50m_cg", "sys_pll2_bypass", base + 0x104, 27);
+	clks[IMX8MM_SYS_PLL2_100M_CG] = imx_clk_gate("sys_pll2_100m_cg", "sys_pll2_bypass", base + 0x104, 25);
+	clks[IMX8MM_SYS_PLL2_125M_CG] = imx_clk_gate("sys_pll2_125m_cg", "sys_pll2_bypass", base + 0x104, 23);
+	clks[IMX8MM_SYS_PLL2_166M_CG] = imx_clk_gate("sys_pll2_166m_cg", "sys_pll2_bypass", base + 0x104, 21);
+	clks[IMX8MM_SYS_PLL2_200M_CG] = imx_clk_gate("sys_pll2_200m_cg", "sys_pll2_bypass", base + 0x104, 19);
+	clks[IMX8MM_SYS_PLL2_250M_CG] = imx_clk_gate("sys_pll2_250m_cg", "sys_pll2_bypass", base + 0x104, 17);
+	clks[IMX8MM_SYS_PLL2_333M_CG] = imx_clk_gate("sys_pll2_333m_cg", "sys_pll2_bypass", base + 0x104, 15);
+	clks[IMX8MM_SYS_PLL2_500M_CG] = imx_clk_gate("sys_pll2_500m_cg", "sys_pll2_bypass", base + 0x104, 13);
+	clks[IMX8MM_SYS_PLL2_OUT] = imx_clk_gate("sys_pll2_out", "sys_pll2_bypass", base + 0x104, 11);
+
+	clks[IMX8MM_SYS_PLL2_50M] = imx_clk_fixed_factor("sys_pll2_50m", "sys_pll2_50m_cg", 1, 20);
+	clks[IMX8MM_SYS_PLL2_100M] = imx_clk_fixed_factor("sys_pll2_100m", "sys_pll2_100m_cg", 1, 10);
+	clks[IMX8MM_SYS_PLL2_125M] = imx_clk_fixed_factor("sys_pll2_125m", "sys_pll2_125m_cg", 1, 8);
+	clks[IMX8MM_SYS_PLL2_166M] = imx_clk_fixed_factor("sys_pll2_166m", "sys_pll2_166m_cg", 1, 6);
+	clks[IMX8MM_SYS_PLL2_200M] = imx_clk_fixed_factor("sys_pll2_200m", "sys_pll2_200m_cg", 1, 5);
+	clks[IMX8MM_SYS_PLL2_250M] = imx_clk_fixed_factor("sys_pll2_250m", "sys_pll2_250m_cg", 1, 4);
+	clks[IMX8MM_SYS_PLL2_333M] = imx_clk_fixed_factor("sys_pll2_333m", "sys_pll2_333m_cg", 1, 3);
+	clks[IMX8MM_SYS_PLL2_500M] = imx_clk_fixed_factor("sys_pll2_500m", "sys_pll2_500m_cg", 1, 2);
 	clks[IMX8MM_SYS_PLL2_1000M] = imx_clk_fixed_factor("sys_pll2_1000m", "sys_pll2_out", 1, 1);
 
 	np = dev->of_node;
 	base = devm_platform_ioremap_resource(pdev, 0);
 	if (WARN_ON(IS_ERR(base)))
diff --git a/include/dt-bindings/clock/imx8mm-clock.h b/include/dt-bindings/clock/imx8mm-clock.h
index 07e6c686f3ef..8cf994043bcd 100644
--- a/include/dt-bindings/clock/imx8mm-clock.h
+++ b/include/dt-bindings/clock/imx8mm-clock.h
@@ -246,8 +246,25 @@
 #define IMX8MM_CLK_GPIO5_ROOT			227
 
 #define IMX8MM_CLK_SNVS_ROOT			228
 #define IMX8MM_CLK_GIC				229
 
-#define IMX8MM_CLK_END				230
+#define IMX8MM_SYS_PLL1_40M_CG			230
+#define IMX8MM_SYS_PLL1_80M_CG			231
+#define IMX8MM_SYS_PLL1_100M_CG			232
+#define IMX8MM_SYS_PLL1_133M_CG			233
+#define IMX8MM_SYS_PLL1_160M_CG			234
+#define IMX8MM_SYS_PLL1_200M_CG			235
+#define IMX8MM_SYS_PLL1_266M_CG			236
+#define IMX8MM_SYS_PLL1_400M_CG			237
+#define IMX8MM_SYS_PLL2_50M_CG			239
+#define IMX8MM_SYS_PLL2_100M_CG			240
+#define IMX8MM_SYS_PLL2_125M_CG			241
+#define IMX8MM_SYS_PLL2_166M_CG			242
+#define IMX8MM_SYS_PLL2_200M_CG			243
+#define IMX8MM_SYS_PLL2_250M_CG			244
+#define IMX8MM_SYS_PLL2_333M_CG			245
+#define IMX8MM_SYS_PLL2_500M_CG			246
+
+#define IMX8MM_CLK_END				248
 
 #endif
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
