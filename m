Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5209F11A70E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 10:28:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ita4/R3V9tVX7SPaXZyWZjR6qu9oIrowyoTcnA6iA2Q=; b=rFeeFLr8uGxO9omhdF878Ag375
	+bF4qubRB1CsPGISsIwFpY55/AOqCtKxdOT3itK47cidTG7LNdvHxTtCc1GRkwm12Z4Ukt5Tas/Rx
	HhkbU8m0iN43pzMfPx/Z7xWiouVct29rdVNfGReU4976lQtaagNuArUiGAll5DPRqTtkPzBY0CuNT
	WWbIe+79G0nndezoGALAobK6A6p0VVFZWmkwbIsftn7I/AU6hNNNPYMgAkqlwo973fQ3clG4vpc82
	WRgS2aak2DWBk48ffVWJtk8ajp5yAojR5aPP2YmRsc7mFKEBXebYOr5E6MxcXMsnkLUMNRsHnQbGc
	FPawpjBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieyI4-0000cf-QP; Wed, 11 Dec 2019 09:28:16 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieyG0-0007Fo-SU
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 09:26:13 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A6E391A0C29;
 Wed, 11 Dec 2019 10:26:07 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9AB831A1914;
 Wed, 11 Dec 2019 10:26:07 +0100 (CET)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 241E820568;
 Wed, 11 Dec 2019 10:26:07 +0100 (CET)
From: Abel Vesa <abel.vesa@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>
Subject: [RESEND v2 10/11] clk: imx: Rename the imx_clk_divider_gate to imply
 it's clk_hw based
Date: Wed, 11 Dec 2019 11:25:49 +0200
Message-Id: <1576056350-20715-11-git-send-email-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576056350-20715-1-git-send-email-abel.vesa@nxp.com>
References: <1576056350-20715-1-git-send-email-abel.vesa@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_012609_216491_2214049C 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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

Renaming the imx_clk_divider_gate register function to imx_clk_hw_divider_gate
to be more obvious it is clk_hw based.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
Reviewed-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-divider-gate.c | 2 +-
 drivers/clk/imx/clk-imx7ulp.c      | 8 ++++----
 drivers/clk/imx/clk.h              | 2 +-
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/imx/clk-divider-gate.c b/drivers/clk/imx/clk-divider-gate.c
index 4145594..0322a84 100644
--- a/drivers/clk/imx/clk-divider-gate.c
+++ b/drivers/clk/imx/clk-divider-gate.c
@@ -173,7 +173,7 @@ static const struct clk_ops clk_divider_gate_ops = {
  * default as our HW is. Besides that it supports only CLK_DIVIDER_READ_ONLY
  * flag which can be specified by user flexibly.
  */
-struct clk_hw *imx_clk_divider_gate(const char *name, const char *parent_name,
+struct clk_hw *imx_clk_hw_divider_gate(const char *name, const char *parent_name,
 				    unsigned long flags, void __iomem *reg,
 				    u8 shift, u8 width, u8 clk_divider_flags,
 				    const struct clk_div_table *table,
diff --git a/drivers/clk/imx/clk-imx7ulp.c b/drivers/clk/imx/clk-imx7ulp.c
index 88510f3..efd9a42 100644
--- a/drivers/clk/imx/clk-imx7ulp.c
+++ b/drivers/clk/imx/clk-imx7ulp.c
@@ -111,7 +111,7 @@ static void __init imx7ulp_clk_scg1_init(struct device_node *np)
 	clks[IMX7ULP_CLK_APLL_SEL]	= imx_clk_hw_mux_flags("apll_sel", base + 0x508, 1, 1, apll_sels, ARRAY_SIZE(apll_sels), CLK_SET_RATE_PARENT | CLK_SET_PARENT_GATE);
 	clks[IMX7ULP_CLK_SPLL_SEL]	= imx_clk_hw_mux_flags("spll_sel", base + 0x608, 1, 1, spll_sels, ARRAY_SIZE(spll_sels), CLK_SET_RATE_PARENT | CLK_SET_PARENT_GATE);
 
-	clks[IMX7ULP_CLK_SPLL_BUS_CLK]	= imx_clk_divider_gate("spll_bus_clk", "spll_sel", CLK_SET_RATE_GATE, base + 0x604, 8, 3, 0, ulp_div_table, &imx_ccm_lock);
+	clks[IMX7ULP_CLK_SPLL_BUS_CLK]	= imx_clk_hw_divider_gate("spll_bus_clk", "spll_sel", CLK_SET_RATE_GATE, base + 0x604, 8, 3, 0, ulp_div_table, &imx_ccm_lock);
 
 	/* scs/ddr/nic select different clock source requires that clock to be enabled first */
 	clks[IMX7ULP_CLK_SYS_SEL]	= imx_clk_hw_mux2("scs_sel", base + 0x14, 24, 4, scs_sels, ARRAY_SIZE(scs_sels));
@@ -122,7 +122,7 @@ static void __init imx7ulp_clk_scg1_init(struct device_node *np)
 	clks[IMX7ULP_CLK_CORE_DIV]	= imx_clk_hw_divider_flags("divcore",	"scs_sel",  base + 0x14, 16, 4, CLK_SET_RATE_PARENT);
 	clks[IMX7ULP_CLK_HSRUN_CORE_DIV] = imx_clk_hw_divider_flags("hsrun_divcore", "hsrun_scs_sel", base + 0x1c, 16, 4, CLK_SET_RATE_PARENT);
 
-	clks[IMX7ULP_CLK_DDR_DIV]	= imx_clk_divider_gate("ddr_clk", "ddr_sel", CLK_SET_RATE_PARENT | CLK_IS_CRITICAL, base + 0x30, 0, 3,
+	clks[IMX7ULP_CLK_DDR_DIV]	= imx_clk_hw_divider_gate("ddr_clk", "ddr_sel", CLK_SET_RATE_PARENT | CLK_IS_CRITICAL, base + 0x30, 0, 3,
 							       0, ulp_div_table, &imx_ccm_lock);
 
 	clks[IMX7ULP_CLK_NIC0_DIV]	= imx_clk_hw_divider_flags("nic0_clk",		"nic_sel",  base + 0x40, 24, 4, CLK_SET_RATE_PARENT | CLK_IS_CRITICAL);
@@ -131,9 +131,9 @@ static void __init imx7ulp_clk_scg1_init(struct device_node *np)
 
 	clks[IMX7ULP_CLK_GPU_DIV]	= imx_clk_hw_divider("gpu_clk", "nic0_clk", base + 0x40, 20, 4);
 
-	clks[IMX7ULP_CLK_SOSC_BUS_CLK]	= imx_clk_divider_gate("sosc_bus_clk", "sosc", 0, base + 0x104, 8, 3,
+	clks[IMX7ULP_CLK_SOSC_BUS_CLK]	= imx_clk_hw_divider_gate("sosc_bus_clk", "sosc", 0, base + 0x104, 8, 3,
 							       CLK_DIVIDER_READ_ONLY, ulp_div_table, &imx_ccm_lock);
-	clks[IMX7ULP_CLK_FIRC_BUS_CLK]	= imx_clk_divider_gate("firc_bus_clk", "firc", 0, base + 0x304, 8, 3,
+	clks[IMX7ULP_CLK_FIRC_BUS_CLK]	= imx_clk_hw_divider_gate("firc_bus_clk", "firc", 0, base + 0x304, 8, 3,
 							       CLK_DIVIDER_READ_ONLY, ulp_div_table, &imx_ccm_lock);
 
 	imx_check_clk_hws(clks, clk_data->num);
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index c7285db..afc7947 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -469,7 +469,7 @@ struct clk *imx8m_clk_composite_flags(const char *name,
 #define imx8m_clk_composite_critical(name, parent_names, reg) \
 	__imx8m_clk_composite(name, parent_names, reg, CLK_IS_CRITICAL)
 
-struct clk_hw *imx_clk_divider_gate(const char *name, const char *parent_name,
+struct clk_hw *imx_clk_hw_divider_gate(const char *name, const char *parent_name,
 		unsigned long flags, void __iomem *reg, u8 shift, u8 width,
 		u8 clk_divider_flags, const struct clk_div_table *table,
 		spinlock_t *lock);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
