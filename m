Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D77618A698
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 20:50:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5qXgLmA0VE8kgEVy44lOV7Ng9yIjl7GDyTmG0MXsSuQ=; b=Frrq+Jr32Zd1K7tDICZNyNdcqu
	awMjBsyFMnrHxXe1ATuuhs5ookgWkq8X2Ugw/PUrD93pzKfG3vxxaHGOy8rVyqzHTdEenltHnMkbf
	afHS2mFxRRBlA5FAk6Kp+tuCDZ4vJ+3WQ7AU4/aG0B5D2KKUztomHs+EhiEEQ2LLbYWa5o/Nicj1u
	LOXKaIGJmWxsXzTWwZGFC8HG8ZYPMuchAADvP5mkJm18jXjQGBRNfapnTiZB4Iw9CKMBGWHdQBmMq
	QMQaavT6s2CjWKeJkGiHHH+xXM692TfgTUDegbE/z19+eUVlNbmydPahsIUUKnKXfaDpr0uHO8U8W
	VthOqIxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxFPF-0005kA-G9; Mon, 12 Aug 2019 18:50:57 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxFOK-00040M-72
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 18:50:01 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5B7F81A06BD;
 Mon, 12 Aug 2019 20:49:56 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4358D1A0029;
 Mon, 12 Aug 2019 20:49:56 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 41D5E205ED;
 Mon, 12 Aug 2019 20:49:55 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 1/7] clk: imx8m: Set CLK_GET_RATE_NOCACHE on dram_alt/apb
Date: Mon, 12 Aug 2019 21:49:45 +0300
Message-Id: <23bb855a4782924b498b8b44add207ed66a3d93b.1565633880.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1565633880.git.leonard.crestez@nxp.com>
References: <cover.1565633880.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1565633880.git.leonard.crestez@nxp.com>
References: <cover.1565633880.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_115000_534321_F3D124D7 
X-CRM114-Status: UNSURE (   8.56  )
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Anson Huang <Anson.Huang@nxp.com>, linux-arm-kernel@lists.infradead.org,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-pm@vger.kernel.org,
 linux-imx@nxp.com, Krzysztof Kozlowski <krzk@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, Will Deacon <will@kernel.org>,
 Alexandre Bailon <abailon@baylibre.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Georgi Djakov <georgi.djakov@linaro.org>,
 devicetree@vger.kernel.org, Jacky Bai <ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dram frequency changes required modifying these clocks outside the
control of clk framework. Mark them as CLK_GET_RATE_NOCACHE so that
rates are always read back from registers.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/clk/imx/clk-imx8mm.c | 6 ++++--
 drivers/clk/imx/clk-imx8mn.c | 6 ++++--
 drivers/clk/imx/clk-imx8mq.c | 7 ++++---
 3 files changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 1a944837f638..0417fa3c8e71 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -526,12 +526,14 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 	/* IPG */
 	clks[IMX8MM_CLK_IPG_ROOT] = imx_clk_divider2("ipg_root", "ahb", base + 0x9080, 0, 1);
 	clks[IMX8MM_CLK_IPG_AUDIO_ROOT] = imx_clk_divider2("ipg_audio_root", "audio_ahb", base + 0x9180, 0, 1);
 
 	/* IP */
-	clks[IMX8MM_CLK_DRAM_ALT] = imx8m_clk_composite("dram_alt", imx8mm_dram_alt_sels, base + 0xa000);
-	clks[IMX8MM_CLK_DRAM_APB] = imx8m_clk_composite_critical("dram_apb", imx8mm_dram_apb_sels, base + 0xa080);
+	clks[IMX8MM_CLK_DRAM_ALT] = __imx8m_clk_composite("dram_alt", imx8mm_dram_alt_sels, base + 0xa000,
+			CLK_GET_RATE_NOCACHE);
+	clks[IMX8MM_CLK_DRAM_APB] = __imx8m_clk_composite("dram_apb", imx8mm_dram_apb_sels, base + 0xa080,
+			CLK_IS_CRITICAL | CLK_GET_RATE_NOCACHE);
 	clks[IMX8MM_CLK_VPU_G1] = imx8m_clk_composite("vpu_g1", imx8mm_vpu_g1_sels, base + 0xa100);
 	clks[IMX8MM_CLK_VPU_G2] = imx8m_clk_composite("vpu_g2", imx8mm_vpu_g2_sels, base + 0xa180);
 	clks[IMX8MM_CLK_DISP_DTRC] = imx8m_clk_composite("disp_dtrc", imx8mm_disp_dtrc_sels, base + 0xa200);
 	clks[IMX8MM_CLK_DISP_DC8000] = imx8m_clk_composite("disp_dc8000", imx8mm_disp_dc8000_sels, base + 0xa280);
 	clks[IMX8MM_CLK_PCIE1_CTRL] = imx8m_clk_composite("pcie1_ctrl", imx8mm_pcie1_ctrl_sels, base + 0xa300);
diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
index ecd1062f6847..1dda3e6c3019 100644
--- a/drivers/clk/imx/clk-imx8mn.c
+++ b/drivers/clk/imx/clk-imx8mn.c
@@ -497,12 +497,14 @@ static int imx8mn_clocks_probe(struct platform_device *pdev)
 	clks[IMX8MN_CLK_AHB] = imx8m_clk_composite_critical("ahb", imx8mn_ahb_sels, base + 0x9000);
 	clks[IMX8MN_CLK_AUDIO_AHB] = imx8m_clk_composite("audio_ahb", imx8mn_audio_ahb_sels, base + 0x9100);
 	clks[IMX8MN_CLK_IPG_ROOT] = imx_clk_divider2("ipg_root", "ahb", base + 0x9080, 0, 1);
 	clks[IMX8MN_CLK_IPG_AUDIO_ROOT] = imx_clk_divider2("ipg_audio_root", "audio_ahb", base + 0x9180, 0, 1);
 	clks[IMX8MN_CLK_DRAM_CORE] = imx_clk_mux2_flags("dram_core_clk", base + 0x9800, 24, 1, imx8mn_dram_core_sels, ARRAY_SIZE(imx8mn_dram_core_sels), CLK_IS_CRITICAL);
-	clks[IMX8MN_CLK_DRAM_ALT] = imx8m_clk_composite("dram_alt", imx8mn_dram_alt_sels, base + 0xa000);
-	clks[IMX8MN_CLK_DRAM_APB] = imx8m_clk_composite_critical("dram_apb", imx8mn_dram_apb_sels, base + 0xa080);
+	clks[IMX8MN_CLK_DRAM_ALT] = __imx8m_clk_composite("dram_alt", imx8mn_dram_alt_sels, base + 0xa000,
+			CLK_GET_RATE_NOCACHE);
+	clks[IMX8MN_CLK_DRAM_APB] = __imx8m_clk_composite("dram_apb", imx8mn_dram_apb_sels, base + 0xa080,
+			CLK_IS_CRITICAL | CLK_GET_RATE_NOCACHE);
 	clks[IMX8MN_CLK_DISP_PIXEL] = imx8m_clk_composite("disp_pixel", imx8mn_disp_pixel_sels, base + 0xa500);
 	clks[IMX8MN_CLK_SAI2] = imx8m_clk_composite("sai2", imx8mn_sai2_sels, base + 0xa600);
 	clks[IMX8MN_CLK_SAI3] = imx8m_clk_composite("sai3", imx8mn_sai3_sels, base + 0xa680);
 	clks[IMX8MN_CLK_SAI5] = imx8m_clk_composite("sai5", imx8mn_sai5_sels, base + 0xa780);
 	clks[IMX8MN_CLK_SAI6] = imx8m_clk_composite("sai6", imx8mn_sai6_sels, base + 0xa800);
diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
index e451e68eaa84..f18206d57020 100644
--- a/drivers/clk/imx/clk-imx8mq.c
+++ b/drivers/clk/imx/clk-imx8mq.c
@@ -436,13 +436,14 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
 	clks[IMX8MQ_CLK_IPG_ROOT] = imx_clk_divider2("ipg_root", "ahb", base + 0x9080, 0, 1);
 	clks[IMX8MQ_CLK_IPG_AUDIO_ROOT] = imx_clk_divider2("ipg_audio_root", "audio_ahb", base + 0x9180, 0, 1);
 
 	/* IP */
 	clks[IMX8MQ_CLK_DRAM_CORE] = imx_clk_mux2_flags("dram_core_clk", base + 0x9800, 24, 1, imx8mq_dram_core_sels, ARRAY_SIZE(imx8mq_dram_core_sels), CLK_IS_CRITICAL);
-
-	clks[IMX8MQ_CLK_DRAM_ALT] = imx8m_clk_composite("dram_alt", imx8mq_dram_alt_sels, base + 0xa000);
-	clks[IMX8MQ_CLK_DRAM_APB] = imx8m_clk_composite_critical("dram_apb", imx8mq_dram_apb_sels, base + 0xa080);
+	clks[IMX8MQ_CLK_DRAM_ALT] = __imx8m_clk_composite("dram_alt", imx8mq_dram_alt_sels, base + 0xa000,
+			CLK_GET_RATE_NOCACHE);
+	clks[IMX8MQ_CLK_DRAM_APB] = __imx8m_clk_composite("dram_apb", imx8mq_dram_apb_sels, base + 0xa080,
+			CLK_IS_CRITICAL | CLK_GET_RATE_NOCACHE);
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
