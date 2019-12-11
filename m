Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3482311A713
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 10:29:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zvDfkqVGrT4LMBym79i81Wz4Pn6gnC+cX2q9lzpds/A=; b=Zpv1ChrC3r+0ApQGDX3AtYbUtm
	1xEa9XjQC8/hvnM2/OjfRz9f74ofzNUfrL1tVmiTyVDSO2KkydtXca0lC3bL3Mt3Bb8lGKHL3GgNN
	jrkNMFz8CuZMIefc+XFZJAPRKOoMWqfCk8/tHwa8Wxfk79BAvi7T0KhgzvGZ4RU4locXYUoeslHxP
	DO7oDyFWrR3dZj76ao8YGmi0dhJXuyNYaZTuFlU/gWN1rvfPYZAL02halz/fqG+EagBRIcQjejbxq
	xsWSq6JPlzwJQeLDKPk6CeGRL4VIP61DfPErAHAF2xaos7NKapjBWHGjbaPAwHy+fJ2cOkwznuysA
	pCyKakEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieyJ2-0001XN-G1; Wed, 11 Dec 2019 09:29:16 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieyG2-0007HU-VE
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 09:26:16 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3C2952008DD;
 Wed, 11 Dec 2019 10:26:08 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 2E21B20026A;
 Wed, 11 Dec 2019 10:26:08 +0100 (CET)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id AAF5420568;
 Wed, 11 Dec 2019 10:26:07 +0100 (CET)
From: Abel Vesa <abel.vesa@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>
Subject: [RESEND v2 11/11] clk: imx7up: Rename the clks to hws
Date: Wed, 11 Dec 2019 11:25:50 +0200
Message-Id: <1576056350-20715-12-git-send-email-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576056350-20715-1-git-send-email-abel.vesa@nxp.com>
References: <1576056350-20715-1-git-send-email-abel.vesa@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_012611_472771_6F7738C0 
X-CRM114-Status: GOOD (  10.02  )
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Abel Vesa <abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is just to keep in line with the other i.MX clock drivers that are
clk_hw based. Plus, it makes more sense to be called hws since its type is
clk_hw not clk.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
Reviewed-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx7ulp.c | 182 +++++++++++++++++++++---------------------
 1 file changed, 91 insertions(+), 91 deletions(-)

diff --git a/drivers/clk/imx/clk-imx7ulp.c b/drivers/clk/imx/clk-imx7ulp.c
index efd9a42..1ad1092 100644
--- a/drivers/clk/imx/clk-imx7ulp.c
+++ b/drivers/clk/imx/clk-imx7ulp.c
@@ -58,7 +58,7 @@ static struct clk **pcc3_uart_clks[ARRAY_SIZE(pcc3_uart_clk_ids) + 1] __initdata
 static void __init imx7ulp_clk_scg1_init(struct device_node *np)
 {
 	struct clk_hw_onecell_data *clk_data;
-	struct clk_hw **clks;
+	struct clk_hw **hws;
 	void __iomem *base;
 
 	clk_data = kzalloc(struct_size(clk_data, hws, IMX7ULP_CLK_SCG1_END),
@@ -67,76 +67,76 @@ static void __init imx7ulp_clk_scg1_init(struct device_node *np)
 		return;
 
 	clk_data->num = IMX7ULP_CLK_SCG1_END;
-	clks = clk_data->hws;
+	hws = clk_data->hws;
 
-	clks[IMX7ULP_CLK_DUMMY]		= imx_clk_hw_fixed("dummy", 0);
+	hws[IMX7ULP_CLK_DUMMY]		= imx_clk_hw_fixed("dummy", 0);
 
-	clks[IMX7ULP_CLK_ROSC]		= imx_obtain_fixed_clk_hw(np, "rosc");
-	clks[IMX7ULP_CLK_SOSC]		= imx_obtain_fixed_clk_hw(np, "sosc");
-	clks[IMX7ULP_CLK_SIRC]		= imx_obtain_fixed_clk_hw(np, "sirc");
-	clks[IMX7ULP_CLK_FIRC]		= imx_obtain_fixed_clk_hw(np, "firc");
-	clks[IMX7ULP_CLK_UPLL]		= imx_obtain_fixed_clk_hw(np, "upll");
+	hws[IMX7ULP_CLK_ROSC]		= imx_obtain_fixed_clk_hw(np, "rosc");
+	hws[IMX7ULP_CLK_SOSC]		= imx_obtain_fixed_clk_hw(np, "sosc");
+	hws[IMX7ULP_CLK_SIRC]		= imx_obtain_fixed_clk_hw(np, "sirc");
+	hws[IMX7ULP_CLK_FIRC]		= imx_obtain_fixed_clk_hw(np, "firc");
+	hws[IMX7ULP_CLK_UPLL]		= imx_obtain_fixed_clk_hw(np, "upll");
 
 	/* SCG1 */
 	base = of_iomap(np, 0);
 	WARN_ON(!base);
 
 	/* NOTE: xPLL config can't be changed when xPLL is enabled */
-	clks[IMX7ULP_CLK_APLL_PRE_SEL]	= imx_clk_hw_mux_flags("apll_pre_sel", base + 0x508, 0, 1, pll_pre_sels, ARRAY_SIZE(pll_pre_sels), CLK_SET_PARENT_GATE);
-	clks[IMX7ULP_CLK_SPLL_PRE_SEL]	= imx_clk_hw_mux_flags("spll_pre_sel", base + 0x608, 0, 1, pll_pre_sels, ARRAY_SIZE(pll_pre_sels), CLK_SET_PARENT_GATE);
+	hws[IMX7ULP_CLK_APLL_PRE_SEL]	= imx_clk_hw_mux_flags("apll_pre_sel", base + 0x508, 0, 1, pll_pre_sels, ARRAY_SIZE(pll_pre_sels), CLK_SET_PARENT_GATE);
+	hws[IMX7ULP_CLK_SPLL_PRE_SEL]	= imx_clk_hw_mux_flags("spll_pre_sel", base + 0x608, 0, 1, pll_pre_sels, ARRAY_SIZE(pll_pre_sels), CLK_SET_PARENT_GATE);
 
 	/*							   name		    parent_name	   reg			shift	width	flags */
-	clks[IMX7ULP_CLK_APLL_PRE_DIV]	= imx_clk_hw_divider_flags("apll_pre_div", "apll_pre_sel", base + 0x508,	8,	3,	CLK_SET_RATE_GATE);
-	clks[IMX7ULP_CLK_SPLL_PRE_DIV]	= imx_clk_hw_divider_flags("spll_pre_div", "spll_pre_sel", base + 0x608,	8,	3,	CLK_SET_RATE_GATE);
+	hws[IMX7ULP_CLK_APLL_PRE_DIV]	= imx_clk_hw_divider_flags("apll_pre_div", "apll_pre_sel", base + 0x508,	8,	3,	CLK_SET_RATE_GATE);
+	hws[IMX7ULP_CLK_SPLL_PRE_DIV]	= imx_clk_hw_divider_flags("spll_pre_div", "spll_pre_sel", base + 0x608,	8,	3,	CLK_SET_RATE_GATE);
 
 	/*						name	 parent_name	 base */
-	clks[IMX7ULP_CLK_APLL]		= imx_clk_hw_pllv4("apll",  "apll_pre_div", base + 0x500);
-	clks[IMX7ULP_CLK_SPLL]		= imx_clk_hw_pllv4("spll",  "spll_pre_div", base + 0x600);
+	hws[IMX7ULP_CLK_APLL]		= imx_clk_hw_pllv4("apll",  "apll_pre_div", base + 0x500);
+	hws[IMX7ULP_CLK_SPLL]		= imx_clk_hw_pllv4("spll",  "spll_pre_div", base + 0x600);
 
 	/* APLL PFDs */
-	clks[IMX7ULP_CLK_APLL_PFD0]	= imx_clk_hw_pfdv2("apll_pfd0", "apll", base + 0x50c, 0);
-	clks[IMX7ULP_CLK_APLL_PFD1]	= imx_clk_hw_pfdv2("apll_pfd1", "apll", base + 0x50c, 1);
-	clks[IMX7ULP_CLK_APLL_PFD2]	= imx_clk_hw_pfdv2("apll_pfd2", "apll", base + 0x50c, 2);
-	clks[IMX7ULP_CLK_APLL_PFD3]	= imx_clk_hw_pfdv2("apll_pfd3", "apll", base + 0x50c, 3);
+	hws[IMX7ULP_CLK_APLL_PFD0]	= imx_clk_hw_pfdv2("apll_pfd0", "apll", base + 0x50c, 0);
+	hws[IMX7ULP_CLK_APLL_PFD1]	= imx_clk_hw_pfdv2("apll_pfd1", "apll", base + 0x50c, 1);
+	hws[IMX7ULP_CLK_APLL_PFD2]	= imx_clk_hw_pfdv2("apll_pfd2", "apll", base + 0x50c, 2);
+	hws[IMX7ULP_CLK_APLL_PFD3]	= imx_clk_hw_pfdv2("apll_pfd3", "apll", base + 0x50c, 3);
 
 	/* SPLL PFDs */
-	clks[IMX7ULP_CLK_SPLL_PFD0]	= imx_clk_hw_pfdv2("spll_pfd0", "spll", base + 0x60C, 0);
-	clks[IMX7ULP_CLK_SPLL_PFD1]	= imx_clk_hw_pfdv2("spll_pfd1", "spll", base + 0x60C, 1);
-	clks[IMX7ULP_CLK_SPLL_PFD2]	= imx_clk_hw_pfdv2("spll_pfd2", "spll", base + 0x60C, 2);
-	clks[IMX7ULP_CLK_SPLL_PFD3]	= imx_clk_hw_pfdv2("spll_pfd3", "spll", base + 0x60C, 3);
+	hws[IMX7ULP_CLK_SPLL_PFD0]	= imx_clk_hw_pfdv2("spll_pfd0", "spll", base + 0x60C, 0);
+	hws[IMX7ULP_CLK_SPLL_PFD1]	= imx_clk_hw_pfdv2("spll_pfd1", "spll", base + 0x60C, 1);
+	hws[IMX7ULP_CLK_SPLL_PFD2]	= imx_clk_hw_pfdv2("spll_pfd2", "spll", base + 0x60C, 2);
+	hws[IMX7ULP_CLK_SPLL_PFD3]	= imx_clk_hw_pfdv2("spll_pfd3", "spll", base + 0x60C, 3);
 
 	/* PLL Mux */
-	clks[IMX7ULP_CLK_APLL_PFD_SEL]	= imx_clk_hw_mux_flags("apll_pfd_sel", base + 0x508, 14, 2, apll_pfd_sels, ARRAY_SIZE(apll_pfd_sels), CLK_SET_RATE_PARENT | CLK_SET_PARENT_GATE);
-	clks[IMX7ULP_CLK_SPLL_PFD_SEL]	= imx_clk_hw_mux_flags("spll_pfd_sel", base + 0x608, 14, 2, spll_pfd_sels, ARRAY_SIZE(spll_pfd_sels), CLK_SET_RATE_PARENT | CLK_SET_PARENT_GATE);
-	clks[IMX7ULP_CLK_APLL_SEL]	= imx_clk_hw_mux_flags("apll_sel", base + 0x508, 1, 1, apll_sels, ARRAY_SIZE(apll_sels), CLK_SET_RATE_PARENT | CLK_SET_PARENT_GATE);
-	clks[IMX7ULP_CLK_SPLL_SEL]	= imx_clk_hw_mux_flags("spll_sel", base + 0x608, 1, 1, spll_sels, ARRAY_SIZE(spll_sels), CLK_SET_RATE_PARENT | CLK_SET_PARENT_GATE);
+	hws[IMX7ULP_CLK_APLL_PFD_SEL]	= imx_clk_hw_mux_flags("apll_pfd_sel", base + 0x508, 14, 2, apll_pfd_sels, ARRAY_SIZE(apll_pfd_sels), CLK_SET_RATE_PARENT | CLK_SET_PARENT_GATE);
+	hws[IMX7ULP_CLK_SPLL_PFD_SEL]	= imx_clk_hw_mux_flags("spll_pfd_sel", base + 0x608, 14, 2, spll_pfd_sels, ARRAY_SIZE(spll_pfd_sels), CLK_SET_RATE_PARENT | CLK_SET_PARENT_GATE);
+	hws[IMX7ULP_CLK_APLL_SEL]	= imx_clk_hw_mux_flags("apll_sel", base + 0x508, 1, 1, apll_sels, ARRAY_SIZE(apll_sels), CLK_SET_RATE_PARENT | CLK_SET_PARENT_GATE);
+	hws[IMX7ULP_CLK_SPLL_SEL]	= imx_clk_hw_mux_flags("spll_sel", base + 0x608, 1, 1, spll_sels, ARRAY_SIZE(spll_sels), CLK_SET_RATE_PARENT | CLK_SET_PARENT_GATE);
 
-	clks[IMX7ULP_CLK_SPLL_BUS_CLK]	= imx_clk_hw_divider_gate("spll_bus_clk", "spll_sel", CLK_SET_RATE_GATE, base + 0x604, 8, 3, 0, ulp_div_table, &imx_ccm_lock);
+	hws[IMX7ULP_CLK_SPLL_BUS_CLK]	= imx_clk_hw_divider_gate("spll_bus_clk", "spll_sel", CLK_SET_RATE_GATE, base + 0x604, 8, 3, 0, ulp_div_table, &imx_ccm_lock);
 
 	/* scs/ddr/nic select different clock source requires that clock to be enabled first */
-	clks[IMX7ULP_CLK_SYS_SEL]	= imx_clk_hw_mux2("scs_sel", base + 0x14, 24, 4, scs_sels, ARRAY_SIZE(scs_sels));
-	clks[IMX7ULP_CLK_HSRUN_SYS_SEL] = imx_clk_hw_mux2("hsrun_scs_sel", base + 0x1c, 24, 4, scs_sels, ARRAY_SIZE(scs_sels));
-	clks[IMX7ULP_CLK_NIC_SEL]	= imx_clk_hw_mux2("nic_sel", base + 0x40, 28, 1, nic_sels, ARRAY_SIZE(nic_sels));
-	clks[IMX7ULP_CLK_DDR_SEL]	= imx_clk_hw_mux_flags("ddr_sel", base + 0x30, 24, 2, ddr_sels, ARRAY_SIZE(ddr_sels), CLK_SET_RATE_PARENT | CLK_OPS_PARENT_ENABLE);
+	hws[IMX7ULP_CLK_SYS_SEL]	= imx_clk_hw_mux2("scs_sel", base + 0x14, 24, 4, scs_sels, ARRAY_SIZE(scs_sels));
+	hws[IMX7ULP_CLK_HSRUN_SYS_SEL] = imx_clk_hw_mux2("hsrun_scs_sel", base + 0x1c, 24, 4, scs_sels, ARRAY_SIZE(scs_sels));
+	hws[IMX7ULP_CLK_NIC_SEL]	= imx_clk_hw_mux2("nic_sel", base + 0x40, 28, 1, nic_sels, ARRAY_SIZE(nic_sels));
+	hws[IMX7ULP_CLK_DDR_SEL]	= imx_clk_hw_mux_flags("ddr_sel", base + 0x30, 24, 2, ddr_sels, ARRAY_SIZE(ddr_sels), CLK_SET_RATE_PARENT | CLK_OPS_PARENT_ENABLE);
 
-	clks[IMX7ULP_CLK_CORE_DIV]	= imx_clk_hw_divider_flags("divcore",	"scs_sel",  base + 0x14, 16, 4, CLK_SET_RATE_PARENT);
-	clks[IMX7ULP_CLK_HSRUN_CORE_DIV] = imx_clk_hw_divider_flags("hsrun_divcore", "hsrun_scs_sel", base + 0x1c, 16, 4, CLK_SET_RATE_PARENT);
+	hws[IMX7ULP_CLK_CORE_DIV]	= imx_clk_hw_divider_flags("divcore",	"scs_sel",  base + 0x14, 16, 4, CLK_SET_RATE_PARENT);
+	hws[IMX7ULP_CLK_HSRUN_CORE_DIV] = imx_clk_hw_divider_flags("hsrun_divcore", "hsrun_scs_sel", base + 0x1c, 16, 4, CLK_SET_RATE_PARENT);
 
-	clks[IMX7ULP_CLK_DDR_DIV]	= imx_clk_hw_divider_gate("ddr_clk", "ddr_sel", CLK_SET_RATE_PARENT | CLK_IS_CRITICAL, base + 0x30, 0, 3,
+	hws[IMX7ULP_CLK_DDR_DIV]	= imx_clk_hw_divider_gate("ddr_clk", "ddr_sel", CLK_SET_RATE_PARENT | CLK_IS_CRITICAL, base + 0x30, 0, 3,
 							       0, ulp_div_table, &imx_ccm_lock);
 
-	clks[IMX7ULP_CLK_NIC0_DIV]	= imx_clk_hw_divider_flags("nic0_clk",		"nic_sel",  base + 0x40, 24, 4, CLK_SET_RATE_PARENT | CLK_IS_CRITICAL);
-	clks[IMX7ULP_CLK_NIC1_DIV]	= imx_clk_hw_divider_flags("nic1_clk",		"nic0_clk", base + 0x40, 16, 4, CLK_SET_RATE_PARENT | CLK_IS_CRITICAL);
-	clks[IMX7ULP_CLK_NIC1_BUS_DIV]	= imx_clk_hw_divider_flags("nic1_bus_clk",	"nic0_clk", base + 0x40, 4,  4, CLK_SET_RATE_PARENT | CLK_IS_CRITICAL);
+	hws[IMX7ULP_CLK_NIC0_DIV]	= imx_clk_hw_divider_flags("nic0_clk",		"nic_sel",  base + 0x40, 24, 4, CLK_SET_RATE_PARENT | CLK_IS_CRITICAL);
+	hws[IMX7ULP_CLK_NIC1_DIV]	= imx_clk_hw_divider_flags("nic1_clk",		"nic0_clk", base + 0x40, 16, 4, CLK_SET_RATE_PARENT | CLK_IS_CRITICAL);
+	hws[IMX7ULP_CLK_NIC1_BUS_DIV]	= imx_clk_hw_divider_flags("nic1_bus_clk",	"nic0_clk", base + 0x40, 4,  4, CLK_SET_RATE_PARENT | CLK_IS_CRITICAL);
 
-	clks[IMX7ULP_CLK_GPU_DIV]	= imx_clk_hw_divider("gpu_clk", "nic0_clk", base + 0x40, 20, 4);
+	hws[IMX7ULP_CLK_GPU_DIV]	= imx_clk_hw_divider("gpu_clk", "nic0_clk", base + 0x40, 20, 4);
 
-	clks[IMX7ULP_CLK_SOSC_BUS_CLK]	= imx_clk_hw_divider_gate("sosc_bus_clk", "sosc", 0, base + 0x104, 8, 3,
+	hws[IMX7ULP_CLK_SOSC_BUS_CLK]	= imx_clk_hw_divider_gate("sosc_bus_clk", "sosc", 0, base + 0x104, 8, 3,
 							       CLK_DIVIDER_READ_ONLY, ulp_div_table, &imx_ccm_lock);
-	clks[IMX7ULP_CLK_FIRC_BUS_CLK]	= imx_clk_hw_divider_gate("firc_bus_clk", "firc", 0, base + 0x304, 8, 3,
+	hws[IMX7ULP_CLK_FIRC_BUS_CLK]	= imx_clk_hw_divider_gate("firc_bus_clk", "firc", 0, base + 0x304, 8, 3,
 							       CLK_DIVIDER_READ_ONLY, ulp_div_table, &imx_ccm_lock);
 
-	imx_check_clk_hws(clks, clk_data->num);
+	imx_check_clk_hws(hws, clk_data->num);
 
 	of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_data);
 }
@@ -145,7 +145,7 @@ CLK_OF_DECLARE(imx7ulp_clk_scg1, "fsl,imx7ulp-scg1", imx7ulp_clk_scg1_init);
 static void __init imx7ulp_clk_pcc2_init(struct device_node *np)
 {
 	struct clk_hw_onecell_data *clk_data;
-	struct clk_hw **clks;
+	struct clk_hw **hws;
 	void __iomem *base;
 	int i;
 
@@ -155,42 +155,42 @@ static void __init imx7ulp_clk_pcc2_init(struct device_node *np)
 		return;
 
 	clk_data->num = IMX7ULP_CLK_PCC2_END;
-	clks = clk_data->hws;
+	hws = clk_data->hws;
 
 	/* PCC2 */
 	base = of_iomap(np, 0);
 	WARN_ON(!base);
 
-	clks[IMX7ULP_CLK_DMA1]		= imx_clk_hw_gate("dma1", "nic1_clk", base + 0x20, 30);
-	clks[IMX7ULP_CLK_RGPIO2P1]	= imx_clk_hw_gate("rgpio2p1", "nic1_bus_clk", base + 0x3c, 30);
-	clks[IMX7ULP_CLK_DMA_MUX1]	= imx_clk_hw_gate("dma_mux1", "nic1_bus_clk", base + 0x84, 30);
-	clks[IMX7ULP_CLK_CAAM]		= imx_clk_hw_gate("caam", "nic1_clk", base + 0x90, 30);
-	clks[IMX7ULP_CLK_LPTPM4]	= imx7ulp_clk_hw_composite("lptpm4",  periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, false, true, base + 0x94);
-	clks[IMX7ULP_CLK_LPTPM5]	= imx7ulp_clk_hw_composite("lptpm5",  periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, false, true, base + 0x98);
-	clks[IMX7ULP_CLK_LPIT1]		= imx7ulp_clk_hw_composite("lpit1",   periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, false, true, base + 0x9c);
-	clks[IMX7ULP_CLK_LPSPI2]	= imx7ulp_clk_hw_composite("lpspi2",  periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, false, true, base + 0xa4);
-	clks[IMX7ULP_CLK_LPSPI3]	= imx7ulp_clk_hw_composite("lpspi3",  periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, false, true, base + 0xa8);
-	clks[IMX7ULP_CLK_LPI2C4]	= imx7ulp_clk_hw_composite("lpi2c4",  periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, false, true, base + 0xac);
-	clks[IMX7ULP_CLK_LPI2C5]	= imx7ulp_clk_hw_composite("lpi2c5",  periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, false, true, base + 0xb0);
-	clks[IMX7ULP_CLK_LPUART4]	= imx7ulp_clk_hw_composite("lpuart4", periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, false, true, base + 0xb4);
-	clks[IMX7ULP_CLK_LPUART5]	= imx7ulp_clk_hw_composite("lpuart5", periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, false, true, base + 0xb8);
-	clks[IMX7ULP_CLK_FLEXIO1]	= imx7ulp_clk_hw_composite("flexio1", periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, false, true, base + 0xc4);
-	clks[IMX7ULP_CLK_USB0]		= imx7ulp_clk_hw_composite("usb0",    periph_plat_sels, ARRAY_SIZE(periph_plat_sels), true, true,  true, base + 0xcc);
-	clks[IMX7ULP_CLK_USB1]		= imx7ulp_clk_hw_composite("usb1",    periph_plat_sels, ARRAY_SIZE(periph_plat_sels), true, true,  true, base + 0xd0);
-	clks[IMX7ULP_CLK_USB_PHY]	= imx_clk_hw_gate("usb_phy", "nic1_bus_clk", base + 0xd4, 30);
-	clks[IMX7ULP_CLK_USDHC0]	= imx7ulp_clk_hw_composite("usdhc0",  periph_plat_sels, ARRAY_SIZE(periph_plat_sels), true, true,  true, base + 0xdc);
-	clks[IMX7ULP_CLK_USDHC1]	= imx7ulp_clk_hw_composite("usdhc1",  periph_plat_sels, ARRAY_SIZE(periph_plat_sels), true, true,  true, base + 0xe0);
-	clks[IMX7ULP_CLK_WDG1]		= imx7ulp_clk_hw_composite("wdg1",    periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, true,  true, base + 0xf4);
-	clks[IMX7ULP_CLK_WDG2]		= imx7ulp_clk_hw_composite("wdg2",    periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, true,  true, base + 0x10c);
-
-	imx_check_clk_hws(clks, clk_data->num);
+	hws[IMX7ULP_CLK_DMA1]		= imx_clk_hw_gate("dma1", "nic1_clk", base + 0x20, 30);
+	hws[IMX7ULP_CLK_RGPIO2P1]	= imx_clk_hw_gate("rgpio2p1", "nic1_bus_clk", base + 0x3c, 30);
+	hws[IMX7ULP_CLK_DMA_MUX1]	= imx_clk_hw_gate("dma_mux1", "nic1_bus_clk", base + 0x84, 30);
+	hws[IMX7ULP_CLK_CAAM]		= imx_clk_hw_gate("caam", "nic1_clk", base + 0x90, 30);
+	hws[IMX7ULP_CLK_LPTPM4]		= imx7ulp_clk_hw_composite("lptpm4",  periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, false, true, base + 0x94);
+	hws[IMX7ULP_CLK_LPTPM5]		= imx7ulp_clk_hw_composite("lptpm5",  periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, false, true, base + 0x98);
+	hws[IMX7ULP_CLK_LPIT1]		= imx7ulp_clk_hw_composite("lpit1",   periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, false, true, base + 0x9c);
+	hws[IMX7ULP_CLK_LPSPI2]		= imx7ulp_clk_hw_composite("lpspi2",  periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, false, true, base + 0xa4);
+	hws[IMX7ULP_CLK_LPSPI3]		= imx7ulp_clk_hw_composite("lpspi3",  periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, false, true, base + 0xa8);
+	hws[IMX7ULP_CLK_LPI2C4]		= imx7ulp_clk_hw_composite("lpi2c4",  periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, false, true, base + 0xac);
+	hws[IMX7ULP_CLK_LPI2C5]		= imx7ulp_clk_hw_composite("lpi2c5",  periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, false, true, base + 0xb0);
+	hws[IMX7ULP_CLK_LPUART4]	= imx7ulp_clk_hw_composite("lpuart4", periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, false, true, base + 0xb4);
+	hws[IMX7ULP_CLK_LPUART5]	= imx7ulp_clk_hw_composite("lpuart5", periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, false, true, base + 0xb8);
+	hws[IMX7ULP_CLK_FLEXIO1]	= imx7ulp_clk_hw_composite("flexio1", periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, false, true, base + 0xc4);
+	hws[IMX7ULP_CLK_USB0]		= imx7ulp_clk_hw_composite("usb0",    periph_plat_sels, ARRAY_SIZE(periph_plat_sels), true, true,  true, base + 0xcc);
+	hws[IMX7ULP_CLK_USB1]		= imx7ulp_clk_hw_composite("usb1",    periph_plat_sels, ARRAY_SIZE(periph_plat_sels), true, true,  true, base + 0xd0);
+	hws[IMX7ULP_CLK_USB_PHY]	= imx_clk_hw_gate("usb_phy", "nic1_bus_clk", base + 0xd4, 30);
+	hws[IMX7ULP_CLK_USDHC0]		= imx7ulp_clk_hw_composite("usdhc0",  periph_plat_sels, ARRAY_SIZE(periph_plat_sels), true, true,  true, base + 0xdc);
+	hws[IMX7ULP_CLK_USDHC1]		= imx7ulp_clk_hw_composite("usdhc1",  periph_plat_sels, ARRAY_SIZE(periph_plat_sels), true, true,  true, base + 0xe0);
+	hws[IMX7ULP_CLK_WDG1]		= imx7ulp_clk_hw_composite("wdg1",    periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, true,  true, base + 0xf4);
+	hws[IMX7ULP_CLK_WDG2]		= imx7ulp_clk_hw_composite("wdg2",    periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, true,  true, base + 0x10c);
+
+	imx_check_clk_hws(hws, clk_data->num);
 
 	of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_data);
 
 	for (i = 0; i < ARRAY_SIZE(pcc2_uart_clk_ids); i++) {
 		int index = pcc2_uart_clk_ids[i];
 
-		pcc2_uart_clks[i] = &clks[index]->clk;
+		pcc2_uart_clks[i] = &hws[index]->clk;
 	}
 
 	imx_register_uart_clocks(pcc2_uart_clks);
@@ -200,7 +200,7 @@ CLK_OF_DECLARE(imx7ulp_clk_pcc2, "fsl,imx7ulp-pcc2", imx7ulp_clk_pcc2_init);
 static void __init imx7ulp_clk_pcc3_init(struct device_node *np)
 {
 	struct clk_hw_onecell_data *clk_data;
-	struct clk_hw **clks;
+	struct clk_hw **hws;
 	void __iomem *base;
 	int i;
 
@@ -210,41 +210,41 @@ static void __init imx7ulp_clk_pcc3_init(struct device_node *np)
 		return;
 
 	clk_data->num = IMX7ULP_CLK_PCC3_END;
-	clks = clk_data->hws;
+	hws = clk_data->hws;
 
 	/* PCC3 */
 	base = of_iomap(np, 0);
 	WARN_ON(!base);
 
-	clks[IMX7ULP_CLK_LPTPM6]	= imx7ulp_clk_hw_composite("lptpm6",  periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, false, true, base + 0x84);
-	clks[IMX7ULP_CLK_LPTPM7]	= imx7ulp_clk_hw_composite("lptpm7",  periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, false, true, base + 0x88);
+	hws[IMX7ULP_CLK_LPTPM6]	= imx7ulp_clk_hw_composite("lptpm6",  periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, false, true, base + 0x84);
+	hws[IMX7ULP_CLK_LPTPM7]	= imx7ulp_clk_hw_composite("lptpm7",  periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, false, true, base + 0x88);
 
-	clks[IMX7ULP_CLK_MMDC]		= clk_hw_register_gate(NULL, "mmdc", "nic1_clk", CLK_SET_RATE_PARENT | CLK_IS_CRITICAL,
+	hws[IMX7ULP_CLK_MMDC]		= clk_hw_register_gate(NULL, "mmdc", "nic1_clk", CLK_SET_RATE_PARENT | CLK_IS_CRITICAL,
 							       base + 0xac, 30, 0, &imx_ccm_lock);
-	clks[IMX7ULP_CLK_LPI2C6]	= imx7ulp_clk_hw_composite("lpi2c6",  periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, false, true, base + 0x90);
-	clks[IMX7ULP_CLK_LPI2C7]	= imx7ulp_clk_hw_composite("lpi2c7",  periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, false, true, base + 0x94);
-	clks[IMX7ULP_CLK_LPUART6]	= imx7ulp_clk_hw_composite("lpuart6", periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, false, true, base + 0x98);
-	clks[IMX7ULP_CLK_LPUART7]	= imx7ulp_clk_hw_composite("lpuart7", periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, false, true, base + 0x9c);
-	clks[IMX7ULP_CLK_DSI]		= imx7ulp_clk_hw_composite("dsi",     periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, true,  true, base + 0xa4);
-	clks[IMX7ULP_CLK_LCDIF]		= imx7ulp_clk_hw_composite("lcdif",   periph_plat_sels, ARRAY_SIZE(periph_plat_sels), true, true,  true, base + 0xa8);
+	hws[IMX7ULP_CLK_LPI2C6]	= imx7ulp_clk_hw_composite("lpi2c6",  periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, false, true, base + 0x90);
+	hws[IMX7ULP_CLK_LPI2C7]	= imx7ulp_clk_hw_composite("lpi2c7",  periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, false, true, base + 0x94);
+	hws[IMX7ULP_CLK_LPUART6]	= imx7ulp_clk_hw_composite("lpuart6", periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, false, true, base + 0x98);
+	hws[IMX7ULP_CLK_LPUART7]	= imx7ulp_clk_hw_composite("lpuart7", periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, false, true, base + 0x9c);
+	hws[IMX7ULP_CLK_DSI]		= imx7ulp_clk_hw_composite("dsi",     periph_bus_sels, ARRAY_SIZE(periph_bus_sels), true, true,  true, base + 0xa4);
+	hws[IMX7ULP_CLK_LCDIF]		= imx7ulp_clk_hw_composite("lcdif",   periph_plat_sels, ARRAY_SIZE(periph_plat_sels), true, true,  true, base + 0xa8);
 
-	clks[IMX7ULP_CLK_VIU]		= imx_clk_hw_gate("viu",   "nic1_clk",	   base + 0xa0, 30);
-	clks[IMX7ULP_CLK_PCTLC]		= imx_clk_hw_gate("pctlc", "nic1_bus_clk", base + 0xb8, 30);
-	clks[IMX7ULP_CLK_PCTLD]		= imx_clk_hw_gate("pctld", "nic1_bus_clk", base + 0xbc, 30);
-	clks[IMX7ULP_CLK_PCTLE]		= imx_clk_hw_gate("pctle", "nic1_bus_clk", base + 0xc0, 30);
-	clks[IMX7ULP_CLK_PCTLF]		= imx_clk_hw_gate("pctlf", "nic1_bus_clk", base + 0xc4, 30);
+	hws[IMX7ULP_CLK_VIU]		= imx_clk_hw_gate("viu",   "nic1_clk",	   base + 0xa0, 30);
+	hws[IMX7ULP_CLK_PCTLC]		= imx_clk_hw_gate("pctlc", "nic1_bus_clk", base + 0xb8, 30);
+	hws[IMX7ULP_CLK_PCTLD]		= imx_clk_hw_gate("pctld", "nic1_bus_clk", base + 0xbc, 30);
+	hws[IMX7ULP_CLK_PCTLE]		= imx_clk_hw_gate("pctle", "nic1_bus_clk", base + 0xc0, 30);
+	hws[IMX7ULP_CLK_PCTLF]		= imx_clk_hw_gate("pctlf", "nic1_bus_clk", base + 0xc4, 30);
 
-	clks[IMX7ULP_CLK_GPU3D]		= imx7ulp_clk_hw_composite("gpu3d",   periph_plat_sels, ARRAY_SIZE(periph_plat_sels), true, false, true, base + 0x140);
-	clks[IMX7ULP_CLK_GPU2D]		= imx7ulp_clk_hw_composite("gpu2d",   periph_plat_sels, ARRAY_SIZE(periph_plat_sels), true, false, true, base + 0x144);
+	hws[IMX7ULP_CLK_GPU3D]		= imx7ulp_clk_hw_composite("gpu3d",   periph_plat_sels, ARRAY_SIZE(periph_plat_sels), true, false, true, base + 0x140);
+	hws[IMX7ULP_CLK_GPU2D]		= imx7ulp_clk_hw_composite("gpu2d",   periph_plat_sels, ARRAY_SIZE(periph_plat_sels), true, false, true, base + 0x144);
 
-	imx_check_clk_hws(clks, clk_data->num);
+	imx_check_clk_hws(hws, clk_data->num);
 
 	of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_data);
 
 	for (i = 0; i < ARRAY_SIZE(pcc3_uart_clk_ids); i++) {
 		int index = pcc3_uart_clk_ids[i];
 
-		pcc3_uart_clks[i] = &clks[index]->clk;
+		pcc3_uart_clks[i] = &hws[index]->clk;
 	}
 
 	imx_register_uart_clocks(pcc3_uart_clks);
@@ -254,7 +254,7 @@ CLK_OF_DECLARE(imx7ulp_clk_pcc3, "fsl,imx7ulp-pcc3", imx7ulp_clk_pcc3_init);
 static void __init imx7ulp_clk_smc1_init(struct device_node *np)
 {
 	struct clk_hw_onecell_data *clk_data;
-	struct clk_hw **clks;
+	struct clk_hw **hws;
 	void __iomem *base;
 
 	clk_data = kzalloc(struct_size(clk_data, hws, IMX7ULP_CLK_SMC1_END),
@@ -263,15 +263,15 @@ static void __init imx7ulp_clk_smc1_init(struct device_node *np)
 		return;
 
 	clk_data->num = IMX7ULP_CLK_SMC1_END;
-	clks = clk_data->hws;
+	hws = clk_data->hws;
 
 	/* SMC1 */
 	base = of_iomap(np, 0);
 	WARN_ON(!base);
 
-	clks[IMX7ULP_CLK_ARM] = imx_clk_hw_mux_flags("arm", base + 0x10, 8, 2, arm_sels, ARRAY_SIZE(arm_sels), CLK_IS_CRITICAL);
+	hws[IMX7ULP_CLK_ARM] = imx_clk_hw_mux_flags("arm", base + 0x10, 8, 2, arm_sels, ARRAY_SIZE(arm_sels), CLK_IS_CRITICAL);
 
-	imx_check_clk_hws(clks, clk_data->num);
+	imx_check_clk_hws(hws, clk_data->num);
 
 	of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_data);
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
