Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 539FCF5B20
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 23:40:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4BkOIXOE+ZMG6r3OT3hcKaWsvYKp/a+SB7d6v9b/bZE=; b=VSSqijsCf5PRKrJNG+DviODWD4
	1bGHHfLgz0MOO/IZRwGajndzvB0TzStRe9QflseIJzuYsBQpqDMYDHshFKRs2F61FtG+dLZL6y6Ef
	zjD1dwK/PXl9mB+JZsGko7PhprRwxA6HVS4WzkQVnS2ud9zDnZH//kys85oEhCMXu38vh8B+SO4Hh
	8R4aTASVLCkyQEwLf34O82Rcb29+uD+5yCFjks+5d6oP2/cxbaDJhktqbyiQWKeSvpIIxGSMtePx8
	SBJx0edw4qlIe0LYKw5q510RcJpOd2LToEM5ELax+P2ZulOl0wvub6k8y0mWLf7+2C3SxP1wgVGIA
	8az0p6zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTCvu-0000cE-7S; Fri, 08 Nov 2019 22:40:46 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTCvO-0000Ne-BB
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 22:40:16 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 7FA55200405;
 Fri,  8 Nov 2019 23:40:10 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 681CA2003E9;
 Fri,  8 Nov 2019 23:40:10 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 595A0205CD;
 Fri,  8 Nov 2019 23:40:09 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 1/6] clk: imx8m: Set CLK_GET_RATE_NOCACHE on dram clocks
Date: Sat,  9 Nov 2019 00:39:51 +0200
Message-Id: <0e0eeeee546a3bb664935184d66866f1c66458ce.1573252696.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1573252696.git.leonard.crestez@nxp.com>
References: <cover.1573252696.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1573252696.git.leonard.crestez@nxp.com>
References: <cover.1573252696.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_144014_663082_A14C1585 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, linux-clk@vger.kernel.org,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>, linux-arm-kernel@lists.infradead.org,
 Dong Aisheng <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These clocks are only modified as part of DRAM frequency switches during
which DRAM itself is briefly inaccessible. The switch is performed with
a SMC call to by TF-A which runs from a SRAM area; upon returning to
linux several clocks bits are modified and we need to update them.

For rate bits an easy solution is to just mark with
CLK_GET_RATE_NOCACHE so that new rates are always read back from
registers.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/clk/imx/clk-imx8mm.c | 11 +++++++++--
 drivers/clk/imx/clk-imx8mn.c | 12 ++++++++++--
 drivers/clk/imx/clk-imx8mq.c | 15 +++++++++++----
 3 files changed, 30 insertions(+), 8 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 030b15d7c0ce..c58f988191a5 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -440,13 +440,20 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 
 	/* IPG */
 	clks[IMX8MM_CLK_IPG_ROOT] = imx_clk_divider2("ipg_root", "ahb", base + 0x9080, 0, 1);
 	clks[IMX8MM_CLK_IPG_AUDIO_ROOT] = imx_clk_divider2("ipg_audio_root", "audio_ahb", base + 0x9180, 0, 1);
 
+	/*
+	 * DRAM clocks are manipulated from TF-A outside clock framework.
+	 * Mark with GET_RATE_NOCACHE to always read div value from hardware
+	 */
+	clks[IMX8MM_CLK_DRAM_ALT] = __imx8m_clk_composite("dram_alt", imx8mm_dram_alt_sels, base + 0xa000,
+			CLK_GET_RATE_NOCACHE);
+	clks[IMX8MM_CLK_DRAM_APB] = __imx8m_clk_composite("dram_apb", imx8mm_dram_apb_sels, base + 0xa080,
+			CLK_IS_CRITICAL | CLK_GET_RATE_NOCACHE);
+
 	/* IP */
-	clks[IMX8MM_CLK_DRAM_ALT] = imx8m_clk_composite("dram_alt", imx8mm_dram_alt_sels, base + 0xa000);
-	clks[IMX8MM_CLK_DRAM_APB] = imx8m_clk_composite_critical("dram_apb", imx8mm_dram_apb_sels, base + 0xa080);
 	clks[IMX8MM_CLK_VPU_G1] = imx8m_clk_composite("vpu_g1", imx8mm_vpu_g1_sels, base + 0xa100);
 	clks[IMX8MM_CLK_VPU_G2] = imx8m_clk_composite("vpu_g2", imx8mm_vpu_g2_sels, base + 0xa180);
 	clks[IMX8MM_CLK_DISP_DTRC] = imx8m_clk_composite("disp_dtrc", imx8mm_disp_dtrc_sels, base + 0xa200);
 	clks[IMX8MM_CLK_DISP_DC8000] = imx8m_clk_composite("disp_dc8000", imx8mm_disp_dc8000_sels, base + 0xa280);
 	clks[IMX8MM_CLK_PCIE1_CTRL] = imx8m_clk_composite("pcie1_ctrl", imx8mm_pcie1_ctrl_sels, base + 0xa300);
diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
index 9f5a5a56b45e..ca78cb1249a7 100644
--- a/drivers/clk/imx/clk-imx8mn.c
+++ b/drivers/clk/imx/clk-imx8mn.c
@@ -428,12 +428,20 @@ static int imx8mn_clocks_probe(struct platform_device *pdev)
 	clks[IMX8MN_CLK_AHB] = imx8m_clk_composite_critical("ahb", imx8mn_ahb_sels, base + 0x9000);
 	clks[IMX8MN_CLK_AUDIO_AHB] = imx8m_clk_composite("audio_ahb", imx8mn_audio_ahb_sels, base + 0x9100);
 	clks[IMX8MN_CLK_IPG_ROOT] = imx_clk_divider2("ipg_root", "ahb", base + 0x9080, 0, 1);
 	clks[IMX8MN_CLK_IPG_AUDIO_ROOT] = imx_clk_divider2("ipg_audio_root", "audio_ahb", base + 0x9180, 0, 1);
 	clks[IMX8MN_CLK_DRAM_CORE] = imx_clk_mux2_flags("dram_core_clk", base + 0x9800, 24, 1, imx8mn_dram_core_sels, ARRAY_SIZE(imx8mn_dram_core_sels), CLK_IS_CRITICAL);
-	clks[IMX8MN_CLK_DRAM_ALT] = imx8m_clk_composite("dram_alt", imx8mn_dram_alt_sels, base + 0xa000);
-	clks[IMX8MN_CLK_DRAM_APB] = imx8m_clk_composite_critical("dram_apb", imx8mn_dram_apb_sels, base + 0xa080);
+
+	/*
+	 * DRAM clocks are manipulated from TF-A outside clock framework.
+	 * Mark with GET_RATE_NOCACHE to always read div value from hardware
+	 */
+	clks[IMX8MN_CLK_DRAM_ALT] = __imx8m_clk_composite("dram_alt", imx8mn_dram_alt_sels, base + 0xa000,
+			CLK_GET_RATE_NOCACHE);
+	clks[IMX8MN_CLK_DRAM_APB] = __imx8m_clk_composite("dram_apb", imx8mn_dram_apb_sels, base + 0xa080,
+			CLK_IS_CRITICAL | CLK_GET_RATE_NOCACHE);
+
 	clks[IMX8MN_CLK_DISP_PIXEL] = imx8m_clk_composite("disp_pixel", imx8mn_disp_pixel_sels, base + 0xa500);
 	clks[IMX8MN_CLK_SAI2] = imx8m_clk_composite("sai2", imx8mn_sai2_sels, base + 0xa600);
 	clks[IMX8MN_CLK_SAI3] = imx8m_clk_composite("sai3", imx8mn_sai3_sels, base + 0xa680);
 	clks[IMX8MN_CLK_SAI5] = imx8m_clk_composite("sai5", imx8mn_sai5_sels, base + 0xa780);
 	clks[IMX8MN_CLK_SAI6] = imx8m_clk_composite("sai6", imx8mn_sai6_sels, base + 0xa800);
diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
index 5f10a606d836..3e2ccc17dc66 100644
--- a/drivers/clk/imx/clk-imx8mq.c
+++ b/drivers/clk/imx/clk-imx8mq.c
@@ -341,11 +341,12 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
 	clks[IMX8MQ_VIDEO_PLL1_OUT] = imx_clk_gate("video_pll1_out", "video_pll1_bypass", base + 0x10, 21);
 
 	clks[IMX8MQ_SYS1_PLL_OUT] = imx_clk_fixed("sys1_pll_out", 800000000);
 	clks[IMX8MQ_SYS2_PLL_OUT] = imx_clk_fixed("sys2_pll_out", 1000000000);
 	clks[IMX8MQ_SYS3_PLL_OUT] = imx_clk_sccg_pll("sys3_pll_out", sys3_pll_out_sels, ARRAY_SIZE(sys3_pll_out_sels), 0, 0, 0, base + 0x48, CLK_IS_CRITICAL);
-	clks[IMX8MQ_DRAM_PLL_OUT] = imx_clk_sccg_pll("dram_pll_out", dram_pll_out_sels, ARRAY_SIZE(dram_pll_out_sels), 0, 0, 0, base + 0x60, CLK_IS_CRITICAL);
+	clks[IMX8MQ_DRAM_PLL_OUT] = imx_clk_sccg_pll("dram_pll_out", dram_pll_out_sels, ARRAY_SIZE(dram_pll_out_sels), 0, 0, 0, base + 0x60,
+			CLK_IS_CRITICAL | CLK_GET_RATE_NOCACHE);
 	clks[IMX8MQ_VIDEO2_PLL_OUT] = imx_clk_sccg_pll("video2_pll_out", video2_pll_out_sels, ARRAY_SIZE(video2_pll_out_sels), 0, 0, 0, base + 0x54, 0);
 
 	/* SYS PLL1 fixed output */
 	clks[IMX8MQ_SYS1_PLL_40M_CG] = imx_clk_gate("sys1_pll_40m_cg", "sys1_pll_out", base + 0x30, 9);
 	clks[IMX8MQ_SYS1_PLL_80M_CG] = imx_clk_gate("sys1_pll_80m_cg", "sys1_pll_out", base + 0x30, 11);
@@ -433,15 +434,21 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
 
 	/* IPG */
 	clks[IMX8MQ_CLK_IPG_ROOT] = imx_clk_divider2("ipg_root", "ahb", base + 0x9080, 0, 1);
 	clks[IMX8MQ_CLK_IPG_AUDIO_ROOT] = imx_clk_divider2("ipg_audio_root", "audio_ahb", base + 0x9180, 0, 1);
 
-	/* IP */
+	/*
+	 * DRAM clocks are manipulated from TF-A outside clock framework.
+	 * Mark with GET_RATE_NOCACHE to always read div value from hardware
+	 */
 	clks[IMX8MQ_CLK_DRAM_CORE] = imx_clk_mux2_flags("dram_core_clk", base + 0x9800, 24, 1, imx8mq_dram_core_sels, ARRAY_SIZE(imx8mq_dram_core_sels), CLK_IS_CRITICAL);
+	clks[IMX8MQ_CLK_DRAM_ALT] = __imx8m_clk_composite("dram_alt", imx8mq_dram_alt_sels, base + 0xa000,
+			CLK_GET_RATE_NOCACHE);
+	clks[IMX8MQ_CLK_DRAM_APB] = __imx8m_clk_composite("dram_apb", imx8mq_dram_apb_sels, base + 0xa080,
+			CLK_IS_CRITICAL | CLK_GET_RATE_NOCACHE);
 
-	clks[IMX8MQ_CLK_DRAM_ALT] = imx8m_clk_composite("dram_alt", imx8mq_dram_alt_sels, base + 0xa000);
-	clks[IMX8MQ_CLK_DRAM_APB] = imx8m_clk_composite_critical("dram_apb", imx8mq_dram_apb_sels, base + 0xa080);
+	/* IP */
 	clks[IMX8MQ_CLK_VPU_G1] = imx8m_clk_composite("vpu_g1", imx8mq_vpu_g1_sels, base + 0xa100);
 	clks[IMX8MQ_CLK_VPU_G2] = imx8m_clk_composite("vpu_g2", imx8mq_vpu_g2_sels, base + 0xa180);
 	clks[IMX8MQ_CLK_DISP_DTRC] = imx8m_clk_composite("disp_dtrc", imx8mq_disp_dtrc_sels, base + 0xa200);
 	clks[IMX8MQ_CLK_DISP_DC8000] = imx8m_clk_composite("disp_dc8000", imx8mq_disp_dc8000_sels, base + 0xa280);
 	clks[IMX8MQ_CLK_PCIE1_CTRL] = imx8m_clk_composite("pcie1_ctrl", imx8mq_pcie1_ctrl_sels, base + 0xa300);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
