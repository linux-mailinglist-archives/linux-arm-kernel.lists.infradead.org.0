Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EED68AB033
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 03:35:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=URGj60q4ItKzIQtwpohbxuoFayf75op8LbTEzezJp10=; b=H6e
	mXfR+AuelDhprQoQF9orZBd48KqqZQ8R4JjmzANiTd+FosRh5UTl28Ew0g7d2trBrSwOE7BvscfF5
	wEYip5whbN7eVKLan87HgUZRmQr1+x8fxAxxuHmXUcEmeKpsB1fW/fxsSVInSm4LKJhOeSkA/iJgt
	fucQ88PxsnxiK8ThfPFJPrOOvlndFb7b21/JIVkZglXvSB6rY78fFYkNdJz0YImfb7SHcCkWsENsk
	Vw2IHaRFq8J6fNEyymv2Zh0seF23z9blZY25/+TeIhaVeq4kDHrcSfQGx5bPChn53iGt4FyHTjh24
	09bIwr6HO1Mt9begWhW3lD+vYN5qZMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i639x-0000ja-8M; Fri, 06 Sep 2019 01:35:33 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i639p-0000hk-Lb
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 01:35:27 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 009C51A050C;
 Fri,  6 Sep 2019 03:35:16 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A52BD1A0B7A;
 Fri,  6 Sep 2019 03:35:07 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 947C440296;
 Fri,  6 Sep 2019 09:34:57 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 leonard.crestez@nxp.com, abel.vesa@nxp.com, peng.fan@nxp.com,
 ping.bai@nxp.com, chen.fang@nxp.com, shengjiu.wang@nxp.com,
 aisheng.dong@nxp.com, sfr@canb.auug.org.au, l.stach@pengutronix.de,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V2 1/2] clk: imx8mm: Move 1443X/1416X PLL clock structure to
 common place
Date: Fri,  6 Sep 2019 09:34:05 -0400
Message-Id: <1567776846-6373-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_183525_994592_6370BF85 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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

Many i.MX8M SoCs use same 1443X/1416X PLL, such as i.MX8MM,
i.MX8MN and later i.MX8M SoCs, moving these PLL definitions
to pll14xx driver can save a lot of duplicated code on each
platform.

Meanwhile, no need to define PLL clock structure for every
module which uses same type of PLL, e.g., audio/video/dram use
1443X PLL, arm/gpu/vpu/sys use 1416X PLL, define 2 PLL clock
structure for each group is enough.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V1:
	- Move 1443X/1416X PLL clock table/structure to pll14xx driver.
---
 drivers/clk/imx/clk-imx8mm.c  | 87 +++++--------------------------------------
 drivers/clk/imx/clk-pll14xx.c | 30 +++++++++++++++
 drivers/clk/imx/clk.h         |  3 ++
 3 files changed, 43 insertions(+), 77 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 2758e3f..9649250 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -26,73 +26,6 @@ static u32 share_count_disp;
 static u32 share_count_pdm;
 static u32 share_count_nand;
 
-static const struct imx_pll14xx_rate_table imx8mm_pll1416x_tbl[] = {
-	PLL_1416X_RATE(1800000000U, 225, 3, 0),
-	PLL_1416X_RATE(1600000000U, 200, 3, 0),
-	PLL_1416X_RATE(1200000000U, 300, 3, 1),
-	PLL_1416X_RATE(1000000000U, 250, 3, 1),
-	PLL_1416X_RATE(800000000U,  200, 3, 1),
-	PLL_1416X_RATE(750000000U,  250, 2, 2),
-	PLL_1416X_RATE(700000000U,  350, 3, 2),
-	PLL_1416X_RATE(600000000U,  300, 3, 2),
-};
-
-static const struct imx_pll14xx_rate_table imx8mm_audiopll_tbl[] = {
-	PLL_1443X_RATE(393216000U, 262, 2, 3, 9437),
-	PLL_1443X_RATE(361267200U, 361, 3, 3, 17511),
-};
-
-static const struct imx_pll14xx_rate_table imx8mm_videopll_tbl[] = {
-	PLL_1443X_RATE(650000000U, 325, 3, 2, 0),
-	PLL_1443X_RATE(594000000U, 198, 2, 2, 0),
-};
-
-static const struct imx_pll14xx_rate_table imx8mm_drampll_tbl[] = {
-	PLL_1443X_RATE(650000000U, 325, 3, 2, 0),
-};
-
-static struct imx_pll14xx_clk imx8mm_audio_pll = {
-		.type = PLL_1443X,
-		.rate_table = imx8mm_audiopll_tbl,
-		.rate_count = ARRAY_SIZE(imx8mm_audiopll_tbl),
-};
-
-static struct imx_pll14xx_clk imx8mm_video_pll = {
-		.type = PLL_1443X,
-		.rate_table = imx8mm_videopll_tbl,
-		.rate_count = ARRAY_SIZE(imx8mm_videopll_tbl),
-};
-
-static struct imx_pll14xx_clk imx8mm_dram_pll = {
-		.type = PLL_1443X,
-		.rate_table = imx8mm_drampll_tbl,
-		.rate_count = ARRAY_SIZE(imx8mm_drampll_tbl),
-};
-
-static struct imx_pll14xx_clk imx8mm_arm_pll = {
-		.type = PLL_1416X,
-		.rate_table = imx8mm_pll1416x_tbl,
-		.rate_count = ARRAY_SIZE(imx8mm_pll1416x_tbl),
-};
-
-static struct imx_pll14xx_clk imx8mm_gpu_pll = {
-		.type = PLL_1416X,
-		.rate_table = imx8mm_pll1416x_tbl,
-		.rate_count = ARRAY_SIZE(imx8mm_pll1416x_tbl),
-};
-
-static struct imx_pll14xx_clk imx8mm_vpu_pll = {
-		.type = PLL_1416X,
-		.rate_table = imx8mm_pll1416x_tbl,
-		.rate_count = ARRAY_SIZE(imx8mm_pll1416x_tbl),
-};
-
-static struct imx_pll14xx_clk imx8mm_sys_pll = {
-		.type = PLL_1416X,
-		.rate_table = imx8mm_pll1416x_tbl,
-		.rate_count = ARRAY_SIZE(imx8mm_pll1416x_tbl),
-};
-
 static const char *pll_ref_sels[] = { "osc_24m", "dummy", "dummy", "dummy", };
 static const char *audio_pll1_bypass_sels[] = {"audio_pll1", "audio_pll1_ref_sel", };
 static const char *audio_pll2_bypass_sels[] = {"audio_pll2", "audio_pll2_ref_sel", };
@@ -396,16 +329,16 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 	clks[IMX8MM_SYS_PLL2_REF_SEL] = imx_clk_mux("sys_pll2_ref_sel", base + 0x104, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
 	clks[IMX8MM_SYS_PLL3_REF_SEL] = imx_clk_mux("sys_pll3_ref_sel", base + 0x114, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
 
-	clks[IMX8MM_AUDIO_PLL1] = imx_clk_pll14xx("audio_pll1", "audio_pll1_ref_sel", base, &imx8mm_audio_pll);
-	clks[IMX8MM_AUDIO_PLL2] = imx_clk_pll14xx("audio_pll2", "audio_pll2_ref_sel", base + 0x14, &imx8mm_audio_pll);
-	clks[IMX8MM_VIDEO_PLL1] = imx_clk_pll14xx("video_pll1", "video_pll1_ref_sel", base + 0x28, &imx8mm_video_pll);
-	clks[IMX8MM_DRAM_PLL] = imx_clk_pll14xx("dram_pll", "dram_pll_ref_sel", base + 0x50, &imx8mm_dram_pll);
-	clks[IMX8MM_GPU_PLL] = imx_clk_pll14xx("gpu_pll", "gpu_pll_ref_sel", base + 0x64, &imx8mm_gpu_pll);
-	clks[IMX8MM_VPU_PLL] = imx_clk_pll14xx("vpu_pll", "vpu_pll_ref_sel", base + 0x74, &imx8mm_vpu_pll);
-	clks[IMX8MM_ARM_PLL] = imx_clk_pll14xx("arm_pll", "arm_pll_ref_sel", base + 0x84, &imx8mm_arm_pll);
-	clks[IMX8MM_SYS_PLL1] = imx_clk_pll14xx("sys_pll1", "sys_pll1_ref_sel", base + 0x94, &imx8mm_sys_pll);
-	clks[IMX8MM_SYS_PLL2] = imx_clk_pll14xx("sys_pll2", "sys_pll2_ref_sel", base + 0x104, &imx8mm_sys_pll);
-	clks[IMX8MM_SYS_PLL3] = imx_clk_pll14xx("sys_pll3", "sys_pll3_ref_sel", base + 0x114, &imx8mm_sys_pll);
+	clks[IMX8MM_AUDIO_PLL1] = imx_clk_pll14xx("audio_pll1", "audio_pll1_ref_sel", base, &imx_1443x_pll);
+	clks[IMX8MM_AUDIO_PLL2] = imx_clk_pll14xx("audio_pll2", "audio_pll2_ref_sel", base + 0x14, &imx_1443x_pll);
+	clks[IMX8MM_VIDEO_PLL1] = imx_clk_pll14xx("video_pll1", "video_pll1_ref_sel", base + 0x28, &imx_1443x_pll);
+	clks[IMX8MM_DRAM_PLL] = imx_clk_pll14xx("dram_pll", "dram_pll_ref_sel", base + 0x50, &imx_1443x_pll);
+	clks[IMX8MM_GPU_PLL] = imx_clk_pll14xx("gpu_pll", "gpu_pll_ref_sel", base + 0x64, &imx_1416x_pll);
+	clks[IMX8MM_VPU_PLL] = imx_clk_pll14xx("vpu_pll", "vpu_pll_ref_sel", base + 0x74, &imx_1416x_pll);
+	clks[IMX8MM_ARM_PLL] = imx_clk_pll14xx("arm_pll", "arm_pll_ref_sel", base + 0x84, &imx_1416x_pll);
+	clks[IMX8MM_SYS_PLL1] = imx_clk_pll14xx("sys_pll1", "sys_pll1_ref_sel", base + 0x94, &imx_1416x_pll);
+	clks[IMX8MM_SYS_PLL2] = imx_clk_pll14xx("sys_pll2", "sys_pll2_ref_sel", base + 0x104, &imx_1416x_pll);
+	clks[IMX8MM_SYS_PLL3] = imx_clk_pll14xx("sys_pll3", "sys_pll3_ref_sel", base + 0x114, &imx_1416x_pll);
 
 	/* PLL bypass out */
 	clks[IMX8MM_AUDIO_PLL1_BYPASS] = imx_clk_mux_flags("audio_pll1_bypass", base, 4, 1, audio_pll1_bypass_sels, ARRAY_SIZE(audio_pll1_bypass_sels), CLK_SET_RATE_PARENT);
diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index b721302..4a61743 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -41,6 +41,36 @@ struct clk_pll14xx {
 
 #define to_clk_pll14xx(_hw) container_of(_hw, struct clk_pll14xx, hw)
 
+const struct imx_pll14xx_rate_table imx_pll1416x_tbl[] = {
+	PLL_1416X_RATE(1800000000U, 225, 3, 0),
+	PLL_1416X_RATE(1600000000U, 200, 3, 0),
+	PLL_1416X_RATE(1200000000U, 300, 3, 1),
+	PLL_1416X_RATE(1000000000U, 250, 3, 1),
+	PLL_1416X_RATE(800000000U,  200, 3, 1),
+	PLL_1416X_RATE(750000000U,  250, 2, 2),
+	PLL_1416X_RATE(700000000U,  350, 3, 2),
+	PLL_1416X_RATE(600000000U,  300, 3, 2),
+};
+
+const struct imx_pll14xx_rate_table imx_pll1443x_tbl[] = {
+	PLL_1443X_RATE(650000000U, 325, 3, 2, 0),
+	PLL_1443X_RATE(594000000U, 198, 2, 2, 0),
+	PLL_1443X_RATE(393216000U, 262, 2, 3, 9437),
+	PLL_1443X_RATE(361267200U, 361, 3, 3, 17511),
+};
+
+struct imx_pll14xx_clk imx_1443x_pll = {
+	.type = PLL_1443X,
+	.rate_table = imx_pll1443x_tbl,
+	.rate_count = ARRAY_SIZE(imx_pll1443x_tbl),
+};
+
+struct imx_pll14xx_clk imx_1416x_pll = {
+	.type = PLL_1416X,
+	.rate_table = imx_pll1416x_tbl,
+	.rate_count = ARRAY_SIZE(imx_pll1416x_tbl),
+};
+
 static const struct imx_pll14xx_rate_table *imx_get_pll_settings(
 		struct clk_pll14xx *pll, unsigned long rate)
 {
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index f7a389a..bc5bb6a 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -50,6 +50,9 @@ struct imx_pll14xx_clk {
 	int flags;
 };
 
+extern struct imx_pll14xx_clk imx_1416x_pll;
+extern struct imx_pll14xx_clk imx_1443x_pll;
+
 #define imx_clk_cpu(name, parent_name, div, mux, pll, step) \
 	imx_clk_hw_cpu(name, parent_name, div, mux, pll, step)->clk
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
