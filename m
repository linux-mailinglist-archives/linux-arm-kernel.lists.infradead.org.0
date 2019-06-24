Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8DA45094C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 12:55:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kPXcsVM6qiN5crkMiJvlwzKYLSjCCmlGTpGdCpaYWFI=; b=QP5
	aE2rlw2uIb2xTQ5yUnUMSktTzNHoknZambEa7rFO6E5e4ETSJM+i8iTsZvfEQdDVinH7/W+AQTI0T
	h1NleFZrl8aAfgN4mGP0LP8WTRyFig1PUYLe/3PL3S9vPT+E6MmR3nggSISnx4PvuTyGfBcVa7GZe
	zAQ/9sfdI49zNlsGvp0FQxDmXWAZq+oYIczAXJqBRolYmSoIj92lApE2hcnRsscbdJcEHC3K4aBbs
	EKwU4OwtW4rvQ+OyZ3kHkxjswdmYEo6cRMd2Wh4I8PiMHgGROEiuUm36zF71LR/KK98daOl0xWbMP
	jDPRorglEg+24a29qplrK4wyux0Aagw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfMcu-0008UZ-C6; Mon, 24 Jun 2019 10:55:08 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfMcf-0008TR-H4
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 10:54:55 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6FA6B2005E1;
 Mon, 24 Jun 2019 12:54:49 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5F92B2005D9;
 Mon, 24 Jun 2019 12:54:49 +0200 (CEST)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id D2033205D1;
 Mon, 24 Jun 2019 12:54:48 +0200 (CEST)
From: Abel Vesa <abel.vesa@nxp.com>
To: Mike Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>
Subject: [PATCH] clk: imx8mm: Switch to platform driver
Date: Mon, 24 Jun 2019 13:54:32 +0300
Message-Id: <1561373672-3533-1-git-send-email-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_035453_842714_C63C2C84 
X-CRM114-Status: GOOD (  10.33  )
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to make the clock provider a platform driver
all the data and code needs to be outside of .init section.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 drivers/clk/imx/clk-imx8mm.c | 52 +++++++++++++++++++++++++++++---------------
 1 file changed, 34 insertions(+), 18 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 6b8e75d..f2516c5 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -68,43 +68,43 @@ static const struct imx_pll14xx_rate_table imx8mm_drampll_tbl[] = {
 	PLL_1443X_RATE(650000000U, 325, 3, 2, 0),
 };
 
-static struct imx_pll14xx_clk imx8mm_audio_pll __initdata = {
+static struct imx_pll14xx_clk imx8mm_audio_pll = {
 		.type = PLL_1443X,
 		.rate_table = imx8mm_audiopll_tbl,
 		.rate_count = ARRAY_SIZE(imx8mm_audiopll_tbl),
 };
 
-static struct imx_pll14xx_clk imx8mm_video_pll __initdata = {
+static struct imx_pll14xx_clk imx8mm_video_pll = {
 		.type = PLL_1443X,
 		.rate_table = imx8mm_videopll_tbl,
 		.rate_count = ARRAY_SIZE(imx8mm_videopll_tbl),
 };
 
-static struct imx_pll14xx_clk imx8mm_dram_pll __initdata = {
+static struct imx_pll14xx_clk imx8mm_dram_pll = {
 		.type = PLL_1443X,
 		.rate_table = imx8mm_drampll_tbl,
 		.rate_count = ARRAY_SIZE(imx8mm_drampll_tbl),
 };
 
-static struct imx_pll14xx_clk imx8mm_arm_pll __initdata = {
+static struct imx_pll14xx_clk imx8mm_arm_pll = {
 		.type = PLL_1416X,
 		.rate_table = imx8mm_pll1416x_tbl,
 		.rate_count = ARRAY_SIZE(imx8mm_pll1416x_tbl),
 };
 
-static struct imx_pll14xx_clk imx8mm_gpu_pll __initdata = {
+static struct imx_pll14xx_clk imx8mm_gpu_pll = {
 		.type = PLL_1416X,
 		.rate_table = imx8mm_pll1416x_tbl,
 		.rate_count = ARRAY_SIZE(imx8mm_pll1416x_tbl),
 };
 
-static struct imx_pll14xx_clk imx8mm_vpu_pll __initdata = {
+static struct imx_pll14xx_clk imx8mm_vpu_pll = {
 		.type = PLL_1416X,
 		.rate_table = imx8mm_pll1416x_tbl,
 		.rate_count = ARRAY_SIZE(imx8mm_pll1416x_tbl),
 };
 
-static struct imx_pll14xx_clk imx8mm_sys_pll __initdata = {
+static struct imx_pll14xx_clk imx8mm_sys_pll = {
 		.type = PLL_1416X,
 		.rate_table = imx8mm_pll1416x_tbl,
 		.rate_count = ARRAY_SIZE(imx8mm_pll1416x_tbl),
@@ -374,7 +374,7 @@ static const char *imx8mm_clko1_sels[] = {"osc_24m", "sys_pll1_800m", "osc_27m",
 static struct clk *clks[IMX8MM_CLK_END];
 static struct clk_onecell_data clk_data;
 
-static struct clk ** const uart_clks[] __initconst = {
+static struct clk ** const uart_clks[] = {
 	&clks[IMX8MM_CLK_UART1_ROOT],
 	&clks[IMX8MM_CLK_UART2_ROOT],
 	&clks[IMX8MM_CLK_UART3_ROOT],
@@ -382,19 +382,20 @@ static struct clk ** const uart_clks[] __initconst = {
 	NULL
 };
 
-static int __init imx8mm_clocks_init(struct device_node *ccm_node)
+static int imx8mm_clocks_probe(struct platform_device *pdev)
 {
-	struct device_node *np;
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
 	void __iomem *base;
 	int ret;
 
 	clks[IMX8MM_CLK_DUMMY] = imx_clk_fixed("dummy", 0);
-	clks[IMX8MM_CLK_24M] = of_clk_get_by_name(ccm_node, "osc_24m");
-	clks[IMX8MM_CLK_32K] = of_clk_get_by_name(ccm_node, "osc_32k");
-	clks[IMX8MM_CLK_EXT1] = of_clk_get_by_name(ccm_node, "clk_ext1");
-	clks[IMX8MM_CLK_EXT2] = of_clk_get_by_name(ccm_node, "clk_ext2");
-	clks[IMX8MM_CLK_EXT3] = of_clk_get_by_name(ccm_node, "clk_ext3");
-	clks[IMX8MM_CLK_EXT4] = of_clk_get_by_name(ccm_node, "clk_ext4");
+	clks[IMX8MM_CLK_24M] = of_clk_get_by_name(np, "osc_24m");
+	clks[IMX8MM_CLK_32K] = of_clk_get_by_name(np, "osc_32k");
+	clks[IMX8MM_CLK_EXT1] = of_clk_get_by_name(np, "clk_ext1");
+	clks[IMX8MM_CLK_EXT2] = of_clk_get_by_name(np, "clk_ext2");
+	clks[IMX8MM_CLK_EXT3] = of_clk_get_by_name(np, "clk_ext3");
+	clks[IMX8MM_CLK_EXT4] = of_clk_get_by_name(np, "clk_ext4");
 
 	np = of_find_compatible_node(NULL, NULL, "fsl,imx8mm-anatop");
 	base = of_iomap(np, 0);
@@ -480,7 +481,7 @@ static int __init imx8mm_clocks_init(struct device_node *ccm_node)
 	clks[IMX8MM_SYS_PLL2_500M] = imx_clk_fixed_factor("sys_pll2_500m", "sys_pll2_out", 1, 2);
 	clks[IMX8MM_SYS_PLL2_1000M] = imx_clk_fixed_factor("sys_pll2_1000m", "sys_pll2_out", 1, 1);
 
-	np = ccm_node;
+	np = dev->of_node;
 	base = of_iomap(np, 0);
 	if (WARN_ON(!base))
 		return -ENOMEM;
@@ -682,4 +683,19 @@ static int __init imx8mm_clocks_init(struct device_node *ccm_node)
 
 	return 0;
 }
-CLK_OF_DECLARE_DRIVER(imx8mm, "fsl,imx8mm-ccm", imx8mm_clocks_init);
+
+static const struct of_device_id imx8mm_clk_of_match[] = {
+	{ .compatible = "fsl,imx8mm-ccm" },
+	{ /* Sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, imx8mm_clk_of_match);
+
+
+static struct platform_driver imx8mm_clk_driver = {
+	.probe = imx8mm_clocks_probe,
+	.driver = {
+		.name = "imx8mm-ccm",
+		.of_match_table = of_match_ptr(imx8mm_clk_of_match),
+	},
+};
+module_platform_driver(imx8mm_clk_driver);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
