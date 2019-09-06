Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F579AB036
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 03:36:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6SeHDnsLsEskuL/06u0Hug0m6OGD72nzNXu/DtoBwsM=; b=bOW7/OrlstSQRuF0E8mCgqVSa7
	+I8H2hBfiWjDsob+FXgBSM4YECH7NMDIXhtHPv81V82sGJhKmEKEiO0F81gqXn8Err7sf+kNnWPU+
	1ZBRRZGr6CbH25V+G/K2cAnLBBz7NyJ/78BO77HMY3SIs7uaHnOqpmvUv3FuHLQIhvxw00/yvaD+q
	NV8bExYpEUcWe5TqGl2dJA3LcjKTLfU2est2OYSy3xZeL0RLfbRbIwKdX/0rliTi6MFW4auTkQBVU
	dKT6tEyQ+OCs9NMoYte3Sw8kN2+YczW8xAvFukz+9jE+8C6tKHsPBQzObqXpweXWAUfsNsgNTyAfr
	8w2mNJSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i63Ag-00011P-KQ; Fri, 06 Sep 2019 01:36:18 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i63AV-0000zv-VL
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 01:36:12 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 56BDA200958;
 Fri,  6 Sep 2019 03:36:06 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 4EFA1200959;
 Fri,  6 Sep 2019 03:35:09 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 408A14030B;
 Fri,  6 Sep 2019 09:34:59 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 leonard.crestez@nxp.com, abel.vesa@nxp.com, peng.fan@nxp.com,
 ping.bai@nxp.com, chen.fang@nxp.com, shengjiu.wang@nxp.com,
 aisheng.dong@nxp.com, sfr@canb.auug.org.au, l.stach@pengutronix.de,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V2 2/2] clk: imx8mn: Use common 1443X/1416X PLL clock structure
Date: Fri,  6 Sep 2019 09:34:06 -0400
Message-Id: <1567776846-6373-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567776846-6373-1-git-send-email-Anson.Huang@nxp.com>
References: <1567776846-6373-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_183610_572034_1D500869 
X-CRM114-Status: UNSURE (   9.60  )
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
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use common 1413X/1416X PLL clock structure to save a lot
of duplicated code on i.MX8MN clock driver.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V1:
	- Changes according to patch 1/2, now PLL table/structure is in pll14xx driver.
---
 drivers/clk/imx/clk-imx8mn.c  | 89 +++++--------------------------------------
 drivers/clk/imx/clk-pll14xx.c |  2 +
 2 files changed, 12 insertions(+), 79 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
index cc65c13..91b6da8 100644
--- a/drivers/clk/imx/clk-imx8mn.c
+++ b/drivers/clk/imx/clk-imx8mn.c
@@ -39,75 +39,6 @@ enum {
 	NR_PLLS,
 };
 
-static const struct imx_pll14xx_rate_table imx8mn_pll1416x_tbl[] = {
-	PLL_1416X_RATE(1800000000U, 225, 3, 0),
-	PLL_1416X_RATE(1600000000U, 200, 3, 0),
-	PLL_1416X_RATE(1500000000U, 375, 3, 1),
-	PLL_1416X_RATE(1400000000U, 350, 3, 1),
-	PLL_1416X_RATE(1200000000U, 300, 3, 1),
-	PLL_1416X_RATE(1000000000U, 250, 3, 1),
-	PLL_1416X_RATE(800000000U,  200, 3, 1),
-	PLL_1416X_RATE(750000000U,  250, 2, 2),
-	PLL_1416X_RATE(700000000U,  350, 3, 2),
-	PLL_1416X_RATE(600000000U,  300, 3, 2),
-};
-
-static const struct imx_pll14xx_rate_table imx8mn_audiopll_tbl[] = {
-	PLL_1443X_RATE(393216000U, 262, 2, 3, 9437),
-	PLL_1443X_RATE(361267200U, 361, 3, 3, 17511),
-};
-
-static const struct imx_pll14xx_rate_table imx8mn_videopll_tbl[] = {
-	PLL_1443X_RATE(650000000U, 325, 3, 2, 0),
-	PLL_1443X_RATE(594000000U, 198, 2, 2, 0),
-};
-
-static const struct imx_pll14xx_rate_table imx8mn_drampll_tbl[] = {
-	PLL_1443X_RATE(650000000U, 325, 3, 2, 0),
-};
-
-static struct imx_pll14xx_clk imx8mn_audio_pll = {
-		.type = PLL_1443X,
-		.rate_table = imx8mn_audiopll_tbl,
-		.rate_count = ARRAY_SIZE(imx8mn_audiopll_tbl),
-};
-
-static struct imx_pll14xx_clk imx8mn_video_pll = {
-		.type = PLL_1443X,
-		.rate_table = imx8mn_videopll_tbl,
-		.rate_count = ARRAY_SIZE(imx8mn_videopll_tbl),
-};
-
-static struct imx_pll14xx_clk imx8mn_dram_pll = {
-		.type = PLL_1443X,
-		.rate_table = imx8mn_drampll_tbl,
-		.rate_count = ARRAY_SIZE(imx8mn_drampll_tbl),
-};
-
-static struct imx_pll14xx_clk imx8mn_arm_pll = {
-		.type = PLL_1416X,
-		.rate_table = imx8mn_pll1416x_tbl,
-		.rate_count = ARRAY_SIZE(imx8mn_pll1416x_tbl),
-};
-
-static struct imx_pll14xx_clk imx8mn_gpu_pll = {
-		.type = PLL_1416X,
-		.rate_table = imx8mn_pll1416x_tbl,
-		.rate_count = ARRAY_SIZE(imx8mn_pll1416x_tbl),
-};
-
-static struct imx_pll14xx_clk imx8mn_vpu_pll = {
-		.type = PLL_1416X,
-		.rate_table = imx8mn_pll1416x_tbl,
-		.rate_count = ARRAY_SIZE(imx8mn_pll1416x_tbl),
-};
-
-static struct imx_pll14xx_clk imx8mn_sys_pll = {
-		.type = PLL_1416X,
-		.rate_table = imx8mn_pll1416x_tbl,
-		.rate_count = ARRAY_SIZE(imx8mn_pll1416x_tbl),
-};
-
 static const char * const pll_ref_sels[] = { "osc_24m", "dummy", "dummy", "dummy", };
 static const char * const audio_pll1_bypass_sels[] = {"audio_pll1", "audio_pll1_ref_sel", };
 static const char * const audio_pll2_bypass_sels[] = {"audio_pll2", "audio_pll2_ref_sel", };
@@ -409,16 +340,16 @@ static int imx8mn_clocks_probe(struct platform_device *pdev)
 	clks[IMX8MN_SYS_PLL2_REF_SEL] = imx_clk_mux("sys_pll2_ref_sel", base + 0x104, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
 	clks[IMX8MN_SYS_PLL3_REF_SEL] = imx_clk_mux("sys_pll3_ref_sel", base + 0x114, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
 
-	clks[IMX8MN_AUDIO_PLL1] = imx_clk_pll14xx("audio_pll1", "audio_pll1_ref_sel", base, &imx8mn_audio_pll);
-	clks[IMX8MN_AUDIO_PLL2] = imx_clk_pll14xx("audio_pll2", "audio_pll2_ref_sel", base + 0x14, &imx8mn_audio_pll);
-	clks[IMX8MN_VIDEO_PLL1] = imx_clk_pll14xx("video_pll1", "video_pll1_ref_sel", base + 0x28, &imx8mn_video_pll);
-	clks[IMX8MN_DRAM_PLL] = imx_clk_pll14xx("dram_pll", "dram_pll_ref_sel", base + 0x50, &imx8mn_dram_pll);
-	clks[IMX8MN_GPU_PLL] = imx_clk_pll14xx("gpu_pll", "gpu_pll_ref_sel", base + 0x64, &imx8mn_gpu_pll);
-	clks[IMX8MN_VPU_PLL] = imx_clk_pll14xx("vpu_pll", "vpu_pll_ref_sel", base + 0x74, &imx8mn_vpu_pll);
-	clks[IMX8MN_ARM_PLL] = imx_clk_pll14xx("arm_pll", "arm_pll_ref_sel", base + 0x84, &imx8mn_arm_pll);
-	clks[IMX8MN_SYS_PLL1] = imx_clk_pll14xx("sys_pll1", "sys_pll1_ref_sel", base + 0x94, &imx8mn_sys_pll);
-	clks[IMX8MN_SYS_PLL2] = imx_clk_pll14xx("sys_pll2", "sys_pll2_ref_sel", base + 0x104, &imx8mn_sys_pll);
-	clks[IMX8MN_SYS_PLL3] = imx_clk_pll14xx("sys_pll3", "sys_pll3_ref_sel", base + 0x114, &imx8mn_sys_pll);
+	clks[IMX8MN_AUDIO_PLL1] = imx_clk_pll14xx("audio_pll1", "audio_pll1_ref_sel", base, &imx_1443x_pll);
+	clks[IMX8MN_AUDIO_PLL2] = imx_clk_pll14xx("audio_pll2", "audio_pll2_ref_sel", base + 0x14, &imx_1443x_pll);
+	clks[IMX8MN_VIDEO_PLL1] = imx_clk_pll14xx("video_pll1", "video_pll1_ref_sel", base + 0x28, &imx_1443x_pll);
+	clks[IMX8MN_DRAM_PLL] = imx_clk_pll14xx("dram_pll", "dram_pll_ref_sel", base + 0x50, &imx_1443x_pll);
+	clks[IMX8MN_GPU_PLL] = imx_clk_pll14xx("gpu_pll", "gpu_pll_ref_sel", base + 0x64, &imx_1416x_pll);
+	clks[IMX8MN_VPU_PLL] = imx_clk_pll14xx("vpu_pll", "vpu_pll_ref_sel", base + 0x74, &imx_1416x_pll);
+	clks[IMX8MN_ARM_PLL] = imx_clk_pll14xx("arm_pll", "arm_pll_ref_sel", base + 0x84, &imx_1416x_pll);
+	clks[IMX8MN_SYS_PLL1] = imx_clk_pll14xx("sys_pll1", "sys_pll1_ref_sel", base + 0x94, &imx_1416x_pll);
+	clks[IMX8MN_SYS_PLL2] = imx_clk_pll14xx("sys_pll2", "sys_pll2_ref_sel", base + 0x104, &imx_1416x_pll);
+	clks[IMX8MN_SYS_PLL3] = imx_clk_pll14xx("sys_pll3", "sys_pll3_ref_sel", base + 0x114, &imx_1416x_pll);
 
 	/* PLL bypass out */
 	clks[IMX8MN_AUDIO_PLL1_BYPASS] = imx_clk_mux_flags("audio_pll1_bypass", base, 4, 1, audio_pll1_bypass_sels, ARRAY_SIZE(audio_pll1_bypass_sels), CLK_SET_RATE_PARENT);
diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index 4a61743..3741b01 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -44,6 +44,8 @@ struct clk_pll14xx {
 const struct imx_pll14xx_rate_table imx_pll1416x_tbl[] = {
 	PLL_1416X_RATE(1800000000U, 225, 3, 0),
 	PLL_1416X_RATE(1600000000U, 200, 3, 0),
+	PLL_1416X_RATE(1500000000U, 375, 3, 1),
+	PLL_1416X_RATE(1400000000U, 350, 3, 1),
 	PLL_1416X_RATE(1200000000U, 300, 3, 1),
 	PLL_1416X_RATE(1000000000U, 250, 3, 1),
 	PLL_1416X_RATE(800000000U,  200, 3, 1),
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
