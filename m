Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ABE811A711
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 10:29:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eLD00/GWEHPpQq6wR0qQomYqyBtL3hkWRcvEM8bFiFM=; b=bx5NFzOtmEnknwYjKmkVll3FJE
	QmkWKCuzJ0ntvGAsWvf4nowBx6NuG9jJrQ2YR0C+VTZpeIFHeQaq083LSEOzwF4V8zLDbbVMcqj/T
	y2urYxocTqcP4x6Rgu7lh3H/B7zK1LxXZwAMeF/80CskfZW9iuR0db1XrDTRRslF6gLitQyjIgXYZ
	/0wGLfI4K9TqMxrmhNCXfhxGUZHLVWzpx2EShSOKafF2GAc1c43tJThgOQKIYhzCJq9xBLgHd3qOa
	M07OMdIwRKn8Lpc8sy8ZtqNE1fIl8HgVKRyQP/NTo7uL+xok5JuQf9XuM/PN4aIZy+UzJZYXr6/8i
	kBvpyUOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieyIm-0001Ij-Ak; Wed, 11 Dec 2019 09:29:00 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieyFz-0007Ds-0h
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 09:26:14 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 48DD520098A;
 Wed, 11 Dec 2019 10:26:03 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 390E62002FE;
 Wed, 11 Dec 2019 10:26:03 +0100 (CET)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id B190220568;
 Wed, 11 Dec 2019 10:26:02 +0100 (CET)
From: Abel Vesa <abel.vesa@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>
Subject: [RESEND v2 02/11] clk: imx: Rename the SCCG to SSCG
Date: Wed, 11 Dec 2019 11:25:41 +0200
Message-Id: <1576056350-20715-3-git-send-email-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576056350-20715-1-git-send-email-abel.vesa@nxp.com>
References: <1576056350-20715-1-git-send-email-abel.vesa@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_012607_477976_F8A816EE 
X-CRM114-Status: GOOD (  15.16  )
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

According to the manual the acronym stands for
Spread Sprectum Clock Generator.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 drivers/clk/imx/Makefile       |   2 +-
 drivers/clk/imx/clk-imx8mq.c   |   6 +-
 drivers/clk/imx/clk-sccg-pll.c | 549 -----------------------------------------
 drivers/clk/imx/clk-sscg-pll.c | 549 +++++++++++++++++++++++++++++++++++++++++
 drivers/clk/imx/clk.h          |   4 +-
 5 files changed, 555 insertions(+), 555 deletions(-)
 delete mode 100644 drivers/clk/imx/clk-sccg-pll.c
 create mode 100644 drivers/clk/imx/clk-sscg-pll.c

diff --git a/drivers/clk/imx/Makefile b/drivers/clk/imx/Makefile
index 77a3d71..3724ba7 100644
--- a/drivers/clk/imx/Makefile
+++ b/drivers/clk/imx/Makefile
@@ -18,7 +18,7 @@ obj-$(CONFIG_MXC_CLK) += \
 	clk-pllv2.o \
 	clk-pllv3.o \
 	clk-pllv4.o \
-	clk-sccg-pll.o \
+	clk-sscg-pll.o \
 	clk-pll14xx.o
 
 obj-$(CONFIG_MXC_CLK_SCU) += \
diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
index 14a1483..d4da5b9 100644
--- a/drivers/clk/imx/clk-imx8mq.c
+++ b/drivers/clk/imx/clk-imx8mq.c
@@ -342,9 +342,9 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
 
 	clks[IMX8MQ_SYS1_PLL_OUT] = imx_clk_fixed("sys1_pll_out", 800000000);
 	clks[IMX8MQ_SYS2_PLL_OUT] = imx_clk_fixed("sys2_pll_out", 1000000000);
-	clks[IMX8MQ_SYS3_PLL_OUT] = imx_clk_sccg_pll("sys3_pll_out", sys3_pll_out_sels, ARRAY_SIZE(sys3_pll_out_sels), 0, 0, 0, base + 0x48, CLK_IS_CRITICAL);
-	clks[IMX8MQ_DRAM_PLL_OUT] = imx_clk_sccg_pll("dram_pll_out", dram_pll_out_sels, ARRAY_SIZE(dram_pll_out_sels), 0, 0, 0, base + 0x60, CLK_IS_CRITICAL | CLK_GET_RATE_NOCACHE);
-	clks[IMX8MQ_VIDEO2_PLL_OUT] = imx_clk_sccg_pll("video2_pll_out", video2_pll_out_sels, ARRAY_SIZE(video2_pll_out_sels), 0, 0, 0, base + 0x54, 0);
+	clks[IMX8MQ_SYS3_PLL_OUT] = imx_clk_sscg_pll("sys3_pll_out", sys3_pll_out_sels, ARRAY_SIZE(sys3_pll_out_sels), 0, 0, 0, base + 0x48, CLK_IS_CRITICAL);
+	clks[IMX8MQ_DRAM_PLL_OUT] = imx_clk_sscg_pll("dram_pll_out", dram_pll_out_sels, ARRAY_SIZE(dram_pll_out_sels), 0, 0, 0, base + 0x60, CLK_IS_CRITICAL | CLK_GET_RATE_NOCACHE);
+	clks[IMX8MQ_VIDEO2_PLL_OUT] = imx_clk_sscg_pll("video2_pll_out", video2_pll_out_sels, ARRAY_SIZE(video2_pll_out_sels), 0, 0, 0, base + 0x54, 0);
 
 	/* SYS PLL1 fixed output */
 	clks[IMX8MQ_SYS1_PLL_40M_CG] = imx_clk_gate("sys1_pll_40m_cg", "sys1_pll_out", base + 0x30, 9);
diff --git a/drivers/clk/imx/clk-sccg-pll.c b/drivers/clk/imx/clk-sccg-pll.c
deleted file mode 100644
index 5d65f65..00000000
--- a/drivers/clk/imx/clk-sccg-pll.c
+++ /dev/null
@@ -1,549 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0 OR MIT)
-/*
- * Copyright 2018 NXP.
- *
- * This driver supports the SCCG plls found in the imx8m SOCs
- *
- * Documentation for this SCCG pll can be found at:
- *   https://www.nxp.com/docs/en/reference-manual/IMX8MDQLQRM.pdf#page=834
- */
-
-#include <linux/clk-provider.h>
-#include <linux/err.h>
-#include <linux/io.h>
-#include <linux/iopoll.h>
-#include <linux/slab.h>
-#include <linux/bitfield.h>
-
-#include "clk.h"
-
-/* PLL CFGs */
-#define PLL_CFG0		0x0
-#define PLL_CFG1		0x4
-#define PLL_CFG2		0x8
-
-#define PLL_DIVF1_MASK		GENMASK(18, 13)
-#define PLL_DIVF2_MASK		GENMASK(12, 7)
-#define PLL_DIVR1_MASK		GENMASK(27, 25)
-#define PLL_DIVR2_MASK		GENMASK(24, 19)
-#define PLL_DIVQ_MASK           GENMASK(6, 1)
-#define PLL_REF_MASK		GENMASK(2, 0)
-
-#define PLL_LOCK_MASK		BIT(31)
-#define PLL_PD_MASK		BIT(7)
-
-/* These are the specification limits for the SSCG PLL */
-#define PLL_REF_MIN_FREQ		25000000UL
-#define PLL_REF_MAX_FREQ		235000000UL
-
-#define PLL_STAGE1_MIN_FREQ		1600000000UL
-#define PLL_STAGE1_MAX_FREQ		2400000000UL
-
-#define PLL_STAGE1_REF_MIN_FREQ		25000000UL
-#define PLL_STAGE1_REF_MAX_FREQ		54000000UL
-
-#define PLL_STAGE2_MIN_FREQ		1200000000UL
-#define PLL_STAGE2_MAX_FREQ		2400000000UL
-
-#define PLL_STAGE2_REF_MIN_FREQ		54000000UL
-#define PLL_STAGE2_REF_MAX_FREQ		75000000UL
-
-#define PLL_OUT_MIN_FREQ		20000000UL
-#define PLL_OUT_MAX_FREQ		1200000000UL
-
-#define PLL_DIVR1_MAX			7
-#define PLL_DIVR2_MAX			63
-#define PLL_DIVF1_MAX			63
-#define PLL_DIVF2_MAX			63
-#define PLL_DIVQ_MAX			63
-
-#define PLL_BYPASS_NONE			0x0
-#define PLL_BYPASS1			0x2
-#define PLL_BYPASS2			0x1
-
-#define SSCG_PLL_BYPASS1_MASK           BIT(5)
-#define SSCG_PLL_BYPASS2_MASK           BIT(4)
-#define SSCG_PLL_BYPASS_MASK		GENMASK(5, 4)
-
-#define PLL_SCCG_LOCK_TIMEOUT		70
-
-struct clk_sccg_pll_setup {
-	int divr1, divf1;
-	int divr2, divf2;
-	int divq;
-	int bypass;
-
-	uint64_t vco1;
-	uint64_t vco2;
-	uint64_t fout;
-	uint64_t ref;
-	uint64_t ref_div1;
-	uint64_t ref_div2;
-	uint64_t fout_request;
-	int fout_error;
-};
-
-struct clk_sccg_pll {
-	struct clk_hw	hw;
-	const struct clk_ops  ops;
-
-	void __iomem *base;
-
-	struct clk_sccg_pll_setup setup;
-
-	u8 parent;
-	u8 bypass1;
-	u8 bypass2;
-};
-
-#define to_clk_sccg_pll(_hw) container_of(_hw, struct clk_sccg_pll, hw)
-
-static int clk_sccg_pll_wait_lock(struct clk_sccg_pll *pll)
-{
-	u32 val;
-
-	val = readl_relaxed(pll->base + PLL_CFG0);
-
-	/* don't wait for lock if all plls are bypassed */
-	if (!(val & SSCG_PLL_BYPASS2_MASK))
-		return readl_poll_timeout(pll->base, val, val & PLL_LOCK_MASK,
-						0, PLL_SCCG_LOCK_TIMEOUT);
-
-	return 0;
-}
-
-static int clk_sccg_pll2_check_match(struct clk_sccg_pll_setup *setup,
-					struct clk_sccg_pll_setup *temp_setup)
-{
-	int new_diff = temp_setup->fout - temp_setup->fout_request;
-	int diff = temp_setup->fout_error;
-
-	if (abs(diff) > abs(new_diff)) {
-		temp_setup->fout_error = new_diff;
-		memcpy(setup, temp_setup, sizeof(struct clk_sccg_pll_setup));
-
-		if (temp_setup->fout_request == temp_setup->fout)
-			return 0;
-	}
-	return -1;
-}
-
-static int clk_sccg_divq_lookup(struct clk_sccg_pll_setup *setup,
-				struct clk_sccg_pll_setup *temp_setup)
-{
-	int ret = -EINVAL;
-
-	for (temp_setup->divq = 0; temp_setup->divq <= PLL_DIVQ_MAX;
-	     temp_setup->divq++) {
-		temp_setup->vco2 = temp_setup->vco1;
-		do_div(temp_setup->vco2, temp_setup->divr2 + 1);
-		temp_setup->vco2 *= 2;
-		temp_setup->vco2 *= temp_setup->divf2 + 1;
-		if (temp_setup->vco2 >= PLL_STAGE2_MIN_FREQ &&
-				temp_setup->vco2 <= PLL_STAGE2_MAX_FREQ) {
-			temp_setup->fout = temp_setup->vco2;
-			do_div(temp_setup->fout, 2 * (temp_setup->divq + 1));
-
-			ret = clk_sccg_pll2_check_match(setup, temp_setup);
-			if (!ret) {
-				temp_setup->bypass = PLL_BYPASS1;
-				return ret;
-			}
-		}
-	}
-
-	return ret;
-}
-
-static int clk_sccg_divf2_lookup(struct clk_sccg_pll_setup *setup,
-					struct clk_sccg_pll_setup *temp_setup)
-{
-	int ret = -EINVAL;
-
-	for (temp_setup->divf2 = 0; temp_setup->divf2 <= PLL_DIVF2_MAX;
-	     temp_setup->divf2++) {
-		ret = clk_sccg_divq_lookup(setup, temp_setup);
-		if (!ret)
-			return ret;
-	}
-
-	return ret;
-}
-
-static int clk_sccg_divr2_lookup(struct clk_sccg_pll_setup *setup,
-				struct clk_sccg_pll_setup *temp_setup)
-{
-	int ret = -EINVAL;
-
-	for (temp_setup->divr2 = 0; temp_setup->divr2 <= PLL_DIVR2_MAX;
-	     temp_setup->divr2++) {
-		temp_setup->ref_div2 = temp_setup->vco1;
-		do_div(temp_setup->ref_div2, temp_setup->divr2 + 1);
-		if (temp_setup->ref_div2 >= PLL_STAGE2_REF_MIN_FREQ &&
-		    temp_setup->ref_div2 <= PLL_STAGE2_REF_MAX_FREQ) {
-			ret = clk_sccg_divf2_lookup(setup, temp_setup);
-			if (!ret)
-				return ret;
-		}
-	}
-
-	return ret;
-}
-
-static int clk_sccg_pll2_find_setup(struct clk_sccg_pll_setup *setup,
-					struct clk_sccg_pll_setup *temp_setup,
-					uint64_t ref)
-{
-
-	int ret = -EINVAL;
-
-	if (ref < PLL_STAGE1_MIN_FREQ || ref > PLL_STAGE1_MAX_FREQ)
-		return ret;
-
-	temp_setup->vco1 = ref;
-
-	ret = clk_sccg_divr2_lookup(setup, temp_setup);
-	return ret;
-}
-
-static int clk_sccg_divf1_lookup(struct clk_sccg_pll_setup *setup,
-				struct clk_sccg_pll_setup *temp_setup)
-{
-	int ret = -EINVAL;
-
-	for (temp_setup->divf1 = 0; temp_setup->divf1 <= PLL_DIVF1_MAX;
-	     temp_setup->divf1++) {
-		uint64_t vco1 = temp_setup->ref;
-
-		do_div(vco1, temp_setup->divr1 + 1);
-		vco1 *= 2;
-		vco1 *= temp_setup->divf1 + 1;
-
-		ret = clk_sccg_pll2_find_setup(setup, temp_setup, vco1);
-		if (!ret) {
-			temp_setup->bypass = PLL_BYPASS_NONE;
-			return ret;
-		}
-	}
-
-	return ret;
-}
-
-static int clk_sccg_divr1_lookup(struct clk_sccg_pll_setup *setup,
-				struct clk_sccg_pll_setup *temp_setup)
-{
-	int ret = -EINVAL;
-
-	for (temp_setup->divr1 = 0; temp_setup->divr1 <= PLL_DIVR1_MAX;
-	     temp_setup->divr1++) {
-		temp_setup->ref_div1 = temp_setup->ref;
-		do_div(temp_setup->ref_div1, temp_setup->divr1 + 1);
-		if (temp_setup->ref_div1 >= PLL_STAGE1_REF_MIN_FREQ &&
-		    temp_setup->ref_div1 <= PLL_STAGE1_REF_MAX_FREQ) {
-			ret = clk_sccg_divf1_lookup(setup, temp_setup);
-			if (!ret)
-				return ret;
-		}
-	}
-
-	return ret;
-}
-
-static int clk_sccg_pll1_find_setup(struct clk_sccg_pll_setup *setup,
-					struct clk_sccg_pll_setup *temp_setup,
-					uint64_t ref)
-{
-
-	int ret = -EINVAL;
-
-	if (ref < PLL_REF_MIN_FREQ || ref > PLL_REF_MAX_FREQ)
-		return ret;
-
-	temp_setup->ref = ref;
-
-	ret = clk_sccg_divr1_lookup(setup, temp_setup);
-
-	return ret;
-}
-
-static int clk_sccg_pll_find_setup(struct clk_sccg_pll_setup *setup,
-					uint64_t prate,
-					uint64_t rate, int try_bypass)
-{
-	struct clk_sccg_pll_setup temp_setup;
-	int ret = -EINVAL;
-
-	memset(&temp_setup, 0, sizeof(struct clk_sccg_pll_setup));
-	memset(setup, 0, sizeof(struct clk_sccg_pll_setup));
-
-	temp_setup.fout_error = PLL_OUT_MAX_FREQ;
-	temp_setup.fout_request = rate;
-
-	switch (try_bypass) {
-
-	case PLL_BYPASS2:
-		if (prate == rate) {
-			setup->bypass = PLL_BYPASS2;
-			setup->fout = rate;
-			ret = 0;
-		}
-		break;
-
-	case PLL_BYPASS1:
-		ret = clk_sccg_pll2_find_setup(setup, &temp_setup, prate);
-		break;
-
-	case PLL_BYPASS_NONE:
-		ret = clk_sccg_pll1_find_setup(setup, &temp_setup, prate);
-		break;
-	}
-
-	return ret;
-}
-
-
-static int clk_sccg_pll_is_prepared(struct clk_hw *hw)
-{
-	struct clk_sccg_pll *pll = to_clk_sccg_pll(hw);
-
-	u32 val = readl_relaxed(pll->base + PLL_CFG0);
-
-	return (val & PLL_PD_MASK) ? 0 : 1;
-}
-
-static int clk_sccg_pll_prepare(struct clk_hw *hw)
-{
-	struct clk_sccg_pll *pll = to_clk_sccg_pll(hw);
-	u32 val;
-
-	val = readl_relaxed(pll->base + PLL_CFG0);
-	val &= ~PLL_PD_MASK;
-	writel_relaxed(val, pll->base + PLL_CFG0);
-
-	return clk_sccg_pll_wait_lock(pll);
-}
-
-static void clk_sccg_pll_unprepare(struct clk_hw *hw)
-{
-	struct clk_sccg_pll *pll = to_clk_sccg_pll(hw);
-	u32 val;
-
-	val = readl_relaxed(pll->base + PLL_CFG0);
-	val |= PLL_PD_MASK;
-	writel_relaxed(val, pll->base + PLL_CFG0);
-}
-
-static unsigned long clk_sccg_pll_recalc_rate(struct clk_hw *hw,
-					 unsigned long parent_rate)
-{
-	struct clk_sccg_pll *pll = to_clk_sccg_pll(hw);
-	u32 val, divr1, divf1, divr2, divf2, divq;
-	u64 temp64;
-
-	val = readl_relaxed(pll->base + PLL_CFG2);
-	divr1 = FIELD_GET(PLL_DIVR1_MASK, val);
-	divr2 = FIELD_GET(PLL_DIVR2_MASK, val);
-	divf1 = FIELD_GET(PLL_DIVF1_MASK, val);
-	divf2 = FIELD_GET(PLL_DIVF2_MASK, val);
-	divq = FIELD_GET(PLL_DIVQ_MASK, val);
-
-	temp64 = parent_rate;
-
-	val = readl(pll->base + PLL_CFG0);
-	if (val & SSCG_PLL_BYPASS2_MASK) {
-		temp64 = parent_rate;
-	} else if (val & SSCG_PLL_BYPASS1_MASK) {
-		temp64 *= divf2;
-		do_div(temp64, (divr2 + 1) * (divq + 1));
-	} else {
-		temp64 *= 2;
-		temp64 *= (divf1 + 1) * (divf2 + 1);
-		do_div(temp64, (divr1 + 1) * (divr2 + 1) * (divq + 1));
-	}
-
-	return temp64;
-}
-
-static int clk_sccg_pll_set_rate(struct clk_hw *hw, unsigned long rate,
-			    unsigned long parent_rate)
-{
-	struct clk_sccg_pll *pll = to_clk_sccg_pll(hw);
-	struct clk_sccg_pll_setup *setup = &pll->setup;
-	u32 val;
-
-	/* set bypass here too since the parent might be the same */
-	val = readl(pll->base + PLL_CFG0);
-	val &= ~SSCG_PLL_BYPASS_MASK;
-	val |= FIELD_PREP(SSCG_PLL_BYPASS_MASK, setup->bypass);
-	writel(val, pll->base + PLL_CFG0);
-
-	val = readl_relaxed(pll->base + PLL_CFG2);
-	val &= ~(PLL_DIVF1_MASK | PLL_DIVF2_MASK);
-	val &= ~(PLL_DIVR1_MASK | PLL_DIVR2_MASK | PLL_DIVQ_MASK);
-	val |= FIELD_PREP(PLL_DIVF1_MASK, setup->divf1);
-	val |= FIELD_PREP(PLL_DIVF2_MASK, setup->divf2);
-	val |= FIELD_PREP(PLL_DIVR1_MASK, setup->divr1);
-	val |= FIELD_PREP(PLL_DIVR2_MASK, setup->divr2);
-	val |= FIELD_PREP(PLL_DIVQ_MASK, setup->divq);
-	writel_relaxed(val, pll->base + PLL_CFG2);
-
-	return clk_sccg_pll_wait_lock(pll);
-}
-
-static u8 clk_sccg_pll_get_parent(struct clk_hw *hw)
-{
-	struct clk_sccg_pll *pll = to_clk_sccg_pll(hw);
-	u32 val;
-	u8 ret = pll->parent;
-
-	val = readl(pll->base + PLL_CFG0);
-	if (val & SSCG_PLL_BYPASS2_MASK)
-		ret = pll->bypass2;
-	else if (val & SSCG_PLL_BYPASS1_MASK)
-		ret = pll->bypass1;
-	return ret;
-}
-
-static int clk_sccg_pll_set_parent(struct clk_hw *hw, u8 index)
-{
-	struct clk_sccg_pll *pll = to_clk_sccg_pll(hw);
-	u32 val;
-
-	val = readl(pll->base + PLL_CFG0);
-	val &= ~SSCG_PLL_BYPASS_MASK;
-	val |= FIELD_PREP(SSCG_PLL_BYPASS_MASK, pll->setup.bypass);
-	writel(val, pll->base + PLL_CFG0);
-
-	return clk_sccg_pll_wait_lock(pll);
-}
-
-static int __clk_sccg_pll_determine_rate(struct clk_hw *hw,
-					struct clk_rate_request *req,
-					uint64_t min,
-					uint64_t max,
-					uint64_t rate,
-					int bypass)
-{
-	struct clk_sccg_pll *pll = to_clk_sccg_pll(hw);
-	struct clk_sccg_pll_setup *setup = &pll->setup;
-	struct clk_hw *parent_hw = NULL;
-	int bypass_parent_index;
-	int ret = -EINVAL;
-
-	req->max_rate = max;
-	req->min_rate = min;
-
-	switch (bypass) {
-	case PLL_BYPASS2:
-		bypass_parent_index = pll->bypass2;
-		break;
-	case PLL_BYPASS1:
-		bypass_parent_index = pll->bypass1;
-		break;
-	default:
-		bypass_parent_index = pll->parent;
-		break;
-	}
-
-	parent_hw = clk_hw_get_parent_by_index(hw, bypass_parent_index);
-	ret = __clk_determine_rate(parent_hw, req);
-	if (!ret) {
-		ret = clk_sccg_pll_find_setup(setup, req->rate,
-						rate, bypass);
-	}
-
-	req->best_parent_hw = parent_hw;
-	req->best_parent_rate = req->rate;
-	req->rate = setup->fout;
-
-	return ret;
-}
-
-static int clk_sccg_pll_determine_rate(struct clk_hw *hw,
-				       struct clk_rate_request *req)
-{
-	struct clk_sccg_pll *pll = to_clk_sccg_pll(hw);
-	struct clk_sccg_pll_setup *setup = &pll->setup;
-	uint64_t rate = req->rate;
-	uint64_t min = req->min_rate;
-	uint64_t max = req->max_rate;
-	int ret = -EINVAL;
-
-	if (rate < PLL_OUT_MIN_FREQ || rate > PLL_OUT_MAX_FREQ)
-		return ret;
-
-	ret = __clk_sccg_pll_determine_rate(hw, req, req->rate, req->rate,
-						rate, PLL_BYPASS2);
-	if (!ret)
-		return ret;
-
-	ret = __clk_sccg_pll_determine_rate(hw, req, PLL_STAGE1_REF_MIN_FREQ,
-						PLL_STAGE1_REF_MAX_FREQ, rate,
-						PLL_BYPASS1);
-	if (!ret)
-		return ret;
-
-	ret = __clk_sccg_pll_determine_rate(hw, req, PLL_REF_MIN_FREQ,
-						PLL_REF_MAX_FREQ, rate,
-						PLL_BYPASS_NONE);
-	if (!ret)
-		return ret;
-
-	if (setup->fout >= min && setup->fout <= max)
-		ret = 0;
-
-	return ret;
-}
-
-static const struct clk_ops clk_sccg_pll_ops = {
-	.prepare	= clk_sccg_pll_prepare,
-	.unprepare	= clk_sccg_pll_unprepare,
-	.is_prepared	= clk_sccg_pll_is_prepared,
-	.recalc_rate	= clk_sccg_pll_recalc_rate,
-	.set_rate	= clk_sccg_pll_set_rate,
-	.set_parent	= clk_sccg_pll_set_parent,
-	.get_parent	= clk_sccg_pll_get_parent,
-	.determine_rate	= clk_sccg_pll_determine_rate,
-};
-
-struct clk *imx_clk_sccg_pll(const char *name,
-				const char * const *parent_names,
-				u8 num_parents,
-				u8 parent, u8 bypass1, u8 bypass2,
-				void __iomem *base,
-				unsigned long flags)
-{
-	struct clk_sccg_pll *pll;
-	struct clk_init_data init;
-	struct clk_hw *hw;
-	int ret;
-
-	pll = kzalloc(sizeof(*pll), GFP_KERNEL);
-	if (!pll)
-		return ERR_PTR(-ENOMEM);
-
-	pll->parent = parent;
-	pll->bypass1 = bypass1;
-	pll->bypass2 = bypass2;
-
-	pll->base = base;
-	init.name = name;
-	init.ops = &clk_sccg_pll_ops;
-
-	init.flags = flags;
-	init.parent_names = parent_names;
-	init.num_parents = num_parents;
-
-	pll->base = base;
-	pll->hw.init = &init;
-
-	hw = &pll->hw;
-
-	ret = clk_hw_register(NULL, hw);
-	if (ret) {
-		kfree(pll);
-		return ERR_PTR(ret);
-	}
-
-	return hw->clk;
-}
diff --git a/drivers/clk/imx/clk-sscg-pll.c b/drivers/clk/imx/clk-sscg-pll.c
new file mode 100644
index 00000000..0669e17
--- /dev/null
+++ b/drivers/clk/imx/clk-sscg-pll.c
@@ -0,0 +1,549 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2018 NXP.
+ *
+ * This driver supports the SCCG plls found in the imx8m SOCs
+ *
+ * Documentation for this SCCG pll can be found at:
+ *   https://www.nxp.com/docs/en/reference-manual/IMX8MDQLQRM.pdf#page=834
+ */
+
+#include <linux/clk-provider.h>
+#include <linux/err.h>
+#include <linux/io.h>
+#include <linux/iopoll.h>
+#include <linux/slab.h>
+#include <linux/bitfield.h>
+
+#include "clk.h"
+
+/* PLL CFGs */
+#define PLL_CFG0		0x0
+#define PLL_CFG1		0x4
+#define PLL_CFG2		0x8
+
+#define PLL_DIVF1_MASK		GENMASK(18, 13)
+#define PLL_DIVF2_MASK		GENMASK(12, 7)
+#define PLL_DIVR1_MASK		GENMASK(27, 25)
+#define PLL_DIVR2_MASK		GENMASK(24, 19)
+#define PLL_DIVQ_MASK           GENMASK(6, 1)
+#define PLL_REF_MASK		GENMASK(2, 0)
+
+#define PLL_LOCK_MASK		BIT(31)
+#define PLL_PD_MASK		BIT(7)
+
+/* These are the specification limits for the SSCG PLL */
+#define PLL_REF_MIN_FREQ		25000000UL
+#define PLL_REF_MAX_FREQ		235000000UL
+
+#define PLL_STAGE1_MIN_FREQ		1600000000UL
+#define PLL_STAGE1_MAX_FREQ		2400000000UL
+
+#define PLL_STAGE1_REF_MIN_FREQ		25000000UL
+#define PLL_STAGE1_REF_MAX_FREQ		54000000UL
+
+#define PLL_STAGE2_MIN_FREQ		1200000000UL
+#define PLL_STAGE2_MAX_FREQ		2400000000UL
+
+#define PLL_STAGE2_REF_MIN_FREQ		54000000UL
+#define PLL_STAGE2_REF_MAX_FREQ		75000000UL
+
+#define PLL_OUT_MIN_FREQ		20000000UL
+#define PLL_OUT_MAX_FREQ		1200000000UL
+
+#define PLL_DIVR1_MAX			7
+#define PLL_DIVR2_MAX			63
+#define PLL_DIVF1_MAX			63
+#define PLL_DIVF2_MAX			63
+#define PLL_DIVQ_MAX			63
+
+#define PLL_BYPASS_NONE			0x0
+#define PLL_BYPASS1			0x2
+#define PLL_BYPASS2			0x1
+
+#define SSCG_PLL_BYPASS1_MASK           BIT(5)
+#define SSCG_PLL_BYPASS2_MASK           BIT(4)
+#define SSCG_PLL_BYPASS_MASK		GENMASK(5, 4)
+
+#define PLL_SCCG_LOCK_TIMEOUT		70
+
+struct clk_sscg_pll_setup {
+	int divr1, divf1;
+	int divr2, divf2;
+	int divq;
+	int bypass;
+
+	uint64_t vco1;
+	uint64_t vco2;
+	uint64_t fout;
+	uint64_t ref;
+	uint64_t ref_div1;
+	uint64_t ref_div2;
+	uint64_t fout_request;
+	int fout_error;
+};
+
+struct clk_sscg_pll {
+	struct clk_hw	hw;
+	const struct clk_ops  ops;
+
+	void __iomem *base;
+
+	struct clk_sscg_pll_setup setup;
+
+	u8 parent;
+	u8 bypass1;
+	u8 bypass2;
+};
+
+#define to_clk_sscg_pll(_hw) container_of(_hw, struct clk_sscg_pll, hw)
+
+static int clk_sscg_pll_wait_lock(struct clk_sscg_pll *pll)
+{
+	u32 val;
+
+	val = readl_relaxed(pll->base + PLL_CFG0);
+
+	/* don't wait for lock if all plls are bypassed */
+	if (!(val & SSCG_PLL_BYPASS2_MASK))
+		return readl_poll_timeout(pll->base, val, val & PLL_LOCK_MASK,
+						0, PLL_SCCG_LOCK_TIMEOUT);
+
+	return 0;
+}
+
+static int clk_sscg_pll2_check_match(struct clk_sscg_pll_setup *setup,
+					struct clk_sscg_pll_setup *temp_setup)
+{
+	int new_diff = temp_setup->fout - temp_setup->fout_request;
+	int diff = temp_setup->fout_error;
+
+	if (abs(diff) > abs(new_diff)) {
+		temp_setup->fout_error = new_diff;
+		memcpy(setup, temp_setup, sizeof(struct clk_sscg_pll_setup));
+
+		if (temp_setup->fout_request == temp_setup->fout)
+			return 0;
+	}
+	return -1;
+}
+
+static int clk_sscg_divq_lookup(struct clk_sscg_pll_setup *setup,
+				struct clk_sscg_pll_setup *temp_setup)
+{
+	int ret = -EINVAL;
+
+	for (temp_setup->divq = 0; temp_setup->divq <= PLL_DIVQ_MAX;
+	     temp_setup->divq++) {
+		temp_setup->vco2 = temp_setup->vco1;
+		do_div(temp_setup->vco2, temp_setup->divr2 + 1);
+		temp_setup->vco2 *= 2;
+		temp_setup->vco2 *= temp_setup->divf2 + 1;
+		if (temp_setup->vco2 >= PLL_STAGE2_MIN_FREQ &&
+				temp_setup->vco2 <= PLL_STAGE2_MAX_FREQ) {
+			temp_setup->fout = temp_setup->vco2;
+			do_div(temp_setup->fout, 2 * (temp_setup->divq + 1));
+
+			ret = clk_sscg_pll2_check_match(setup, temp_setup);
+			if (!ret) {
+				temp_setup->bypass = PLL_BYPASS1;
+				return ret;
+			}
+		}
+	}
+
+	return ret;
+}
+
+static int clk_sscg_divf2_lookup(struct clk_sscg_pll_setup *setup,
+					struct clk_sscg_pll_setup *temp_setup)
+{
+	int ret = -EINVAL;
+
+	for (temp_setup->divf2 = 0; temp_setup->divf2 <= PLL_DIVF2_MAX;
+	     temp_setup->divf2++) {
+		ret = clk_sscg_divq_lookup(setup, temp_setup);
+		if (!ret)
+			return ret;
+	}
+
+	return ret;
+}
+
+static int clk_sscg_divr2_lookup(struct clk_sscg_pll_setup *setup,
+				struct clk_sscg_pll_setup *temp_setup)
+{
+	int ret = -EINVAL;
+
+	for (temp_setup->divr2 = 0; temp_setup->divr2 <= PLL_DIVR2_MAX;
+	     temp_setup->divr2++) {
+		temp_setup->ref_div2 = temp_setup->vco1;
+		do_div(temp_setup->ref_div2, temp_setup->divr2 + 1);
+		if (temp_setup->ref_div2 >= PLL_STAGE2_REF_MIN_FREQ &&
+		    temp_setup->ref_div2 <= PLL_STAGE2_REF_MAX_FREQ) {
+			ret = clk_sscg_divf2_lookup(setup, temp_setup);
+			if (!ret)
+				return ret;
+		}
+	}
+
+	return ret;
+}
+
+static int clk_sscg_pll2_find_setup(struct clk_sscg_pll_setup *setup,
+					struct clk_sscg_pll_setup *temp_setup,
+					uint64_t ref)
+{
+
+	int ret = -EINVAL;
+
+	if (ref < PLL_STAGE1_MIN_FREQ || ref > PLL_STAGE1_MAX_FREQ)
+		return ret;
+
+	temp_setup->vco1 = ref;
+
+	ret = clk_sscg_divr2_lookup(setup, temp_setup);
+	return ret;
+}
+
+static int clk_sscg_divf1_lookup(struct clk_sscg_pll_setup *setup,
+				struct clk_sscg_pll_setup *temp_setup)
+{
+	int ret = -EINVAL;
+
+	for (temp_setup->divf1 = 0; temp_setup->divf1 <= PLL_DIVF1_MAX;
+	     temp_setup->divf1++) {
+		uint64_t vco1 = temp_setup->ref;
+
+		do_div(vco1, temp_setup->divr1 + 1);
+		vco1 *= 2;
+		vco1 *= temp_setup->divf1 + 1;
+
+		ret = clk_sscg_pll2_find_setup(setup, temp_setup, vco1);
+		if (!ret) {
+			temp_setup->bypass = PLL_BYPASS_NONE;
+			return ret;
+		}
+	}
+
+	return ret;
+}
+
+static int clk_sscg_divr1_lookup(struct clk_sscg_pll_setup *setup,
+				struct clk_sscg_pll_setup *temp_setup)
+{
+	int ret = -EINVAL;
+
+	for (temp_setup->divr1 = 0; temp_setup->divr1 <= PLL_DIVR1_MAX;
+	     temp_setup->divr1++) {
+		temp_setup->ref_div1 = temp_setup->ref;
+		do_div(temp_setup->ref_div1, temp_setup->divr1 + 1);
+		if (temp_setup->ref_div1 >= PLL_STAGE1_REF_MIN_FREQ &&
+		    temp_setup->ref_div1 <= PLL_STAGE1_REF_MAX_FREQ) {
+			ret = clk_sscg_divf1_lookup(setup, temp_setup);
+			if (!ret)
+				return ret;
+		}
+	}
+
+	return ret;
+}
+
+static int clk_sscg_pll1_find_setup(struct clk_sscg_pll_setup *setup,
+					struct clk_sscg_pll_setup *temp_setup,
+					uint64_t ref)
+{
+
+	int ret = -EINVAL;
+
+	if (ref < PLL_REF_MIN_FREQ || ref > PLL_REF_MAX_FREQ)
+		return ret;
+
+	temp_setup->ref = ref;
+
+	ret = clk_sscg_divr1_lookup(setup, temp_setup);
+
+	return ret;
+}
+
+static int clk_sscg_pll_find_setup(struct clk_sscg_pll_setup *setup,
+					uint64_t prate,
+					uint64_t rate, int try_bypass)
+{
+	struct clk_sscg_pll_setup temp_setup;
+	int ret = -EINVAL;
+
+	memset(&temp_setup, 0, sizeof(struct clk_sscg_pll_setup));
+	memset(setup, 0, sizeof(struct clk_sscg_pll_setup));
+
+	temp_setup.fout_error = PLL_OUT_MAX_FREQ;
+	temp_setup.fout_request = rate;
+
+	switch (try_bypass) {
+
+	case PLL_BYPASS2:
+		if (prate == rate) {
+			setup->bypass = PLL_BYPASS2;
+			setup->fout = rate;
+			ret = 0;
+		}
+		break;
+
+	case PLL_BYPASS1:
+		ret = clk_sscg_pll2_find_setup(setup, &temp_setup, prate);
+		break;
+
+	case PLL_BYPASS_NONE:
+		ret = clk_sscg_pll1_find_setup(setup, &temp_setup, prate);
+		break;
+	}
+
+	return ret;
+}
+
+
+static int clk_sscg_pll_is_prepared(struct clk_hw *hw)
+{
+	struct clk_sscg_pll *pll = to_clk_sscg_pll(hw);
+
+	u32 val = readl_relaxed(pll->base + PLL_CFG0);
+
+	return (val & PLL_PD_MASK) ? 0 : 1;
+}
+
+static int clk_sscg_pll_prepare(struct clk_hw *hw)
+{
+	struct clk_sscg_pll *pll = to_clk_sscg_pll(hw);
+	u32 val;
+
+	val = readl_relaxed(pll->base + PLL_CFG0);
+	val &= ~PLL_PD_MASK;
+	writel_relaxed(val, pll->base + PLL_CFG0);
+
+	return clk_sscg_pll_wait_lock(pll);
+}
+
+static void clk_sscg_pll_unprepare(struct clk_hw *hw)
+{
+	struct clk_sscg_pll *pll = to_clk_sscg_pll(hw);
+	u32 val;
+
+	val = readl_relaxed(pll->base + PLL_CFG0);
+	val |= PLL_PD_MASK;
+	writel_relaxed(val, pll->base + PLL_CFG0);
+}
+
+static unsigned long clk_sscg_pll_recalc_rate(struct clk_hw *hw,
+					 unsigned long parent_rate)
+{
+	struct clk_sscg_pll *pll = to_clk_sscg_pll(hw);
+	u32 val, divr1, divf1, divr2, divf2, divq;
+	u64 temp64;
+
+	val = readl_relaxed(pll->base + PLL_CFG2);
+	divr1 = FIELD_GET(PLL_DIVR1_MASK, val);
+	divr2 = FIELD_GET(PLL_DIVR2_MASK, val);
+	divf1 = FIELD_GET(PLL_DIVF1_MASK, val);
+	divf2 = FIELD_GET(PLL_DIVF2_MASK, val);
+	divq = FIELD_GET(PLL_DIVQ_MASK, val);
+
+	temp64 = parent_rate;
+
+	val = readl(pll->base + PLL_CFG0);
+	if (val & SSCG_PLL_BYPASS2_MASK) {
+		temp64 = parent_rate;
+	} else if (val & SSCG_PLL_BYPASS1_MASK) {
+		temp64 *= divf2;
+		do_div(temp64, (divr2 + 1) * (divq + 1));
+	} else {
+		temp64 *= 2;
+		temp64 *= (divf1 + 1) * (divf2 + 1);
+		do_div(temp64, (divr1 + 1) * (divr2 + 1) * (divq + 1));
+	}
+
+	return temp64;
+}
+
+static int clk_sscg_pll_set_rate(struct clk_hw *hw, unsigned long rate,
+			    unsigned long parent_rate)
+{
+	struct clk_sscg_pll *pll = to_clk_sscg_pll(hw);
+	struct clk_sscg_pll_setup *setup = &pll->setup;
+	u32 val;
+
+	/* set bypass here too since the parent might be the same */
+	val = readl(pll->base + PLL_CFG0);
+	val &= ~SSCG_PLL_BYPASS_MASK;
+	val |= FIELD_PREP(SSCG_PLL_BYPASS_MASK, setup->bypass);
+	writel(val, pll->base + PLL_CFG0);
+
+	val = readl_relaxed(pll->base + PLL_CFG2);
+	val &= ~(PLL_DIVF1_MASK | PLL_DIVF2_MASK);
+	val &= ~(PLL_DIVR1_MASK | PLL_DIVR2_MASK | PLL_DIVQ_MASK);
+	val |= FIELD_PREP(PLL_DIVF1_MASK, setup->divf1);
+	val |= FIELD_PREP(PLL_DIVF2_MASK, setup->divf2);
+	val |= FIELD_PREP(PLL_DIVR1_MASK, setup->divr1);
+	val |= FIELD_PREP(PLL_DIVR2_MASK, setup->divr2);
+	val |= FIELD_PREP(PLL_DIVQ_MASK, setup->divq);
+	writel_relaxed(val, pll->base + PLL_CFG2);
+
+	return clk_sscg_pll_wait_lock(pll);
+}
+
+static u8 clk_sscg_pll_get_parent(struct clk_hw *hw)
+{
+	struct clk_sscg_pll *pll = to_clk_sscg_pll(hw);
+	u32 val;
+	u8 ret = pll->parent;
+
+	val = readl(pll->base + PLL_CFG0);
+	if (val & SSCG_PLL_BYPASS2_MASK)
+		ret = pll->bypass2;
+	else if (val & SSCG_PLL_BYPASS1_MASK)
+		ret = pll->bypass1;
+	return ret;
+}
+
+static int clk_sscg_pll_set_parent(struct clk_hw *hw, u8 index)
+{
+	struct clk_sscg_pll *pll = to_clk_sscg_pll(hw);
+	u32 val;
+
+	val = readl(pll->base + PLL_CFG0);
+	val &= ~SSCG_PLL_BYPASS_MASK;
+	val |= FIELD_PREP(SSCG_PLL_BYPASS_MASK, pll->setup.bypass);
+	writel(val, pll->base + PLL_CFG0);
+
+	return clk_sscg_pll_wait_lock(pll);
+}
+
+static int __clk_sscg_pll_determine_rate(struct clk_hw *hw,
+					struct clk_rate_request *req,
+					uint64_t min,
+					uint64_t max,
+					uint64_t rate,
+					int bypass)
+{
+	struct clk_sscg_pll *pll = to_clk_sscg_pll(hw);
+	struct clk_sscg_pll_setup *setup = &pll->setup;
+	struct clk_hw *parent_hw = NULL;
+	int bypass_parent_index;
+	int ret = -EINVAL;
+
+	req->max_rate = max;
+	req->min_rate = min;
+
+	switch (bypass) {
+	case PLL_BYPASS2:
+		bypass_parent_index = pll->bypass2;
+		break;
+	case PLL_BYPASS1:
+		bypass_parent_index = pll->bypass1;
+		break;
+	default:
+		bypass_parent_index = pll->parent;
+		break;
+	}
+
+	parent_hw = clk_hw_get_parent_by_index(hw, bypass_parent_index);
+	ret = __clk_determine_rate(parent_hw, req);
+	if (!ret) {
+		ret = clk_sscg_pll_find_setup(setup, req->rate,
+						rate, bypass);
+	}
+
+	req->best_parent_hw = parent_hw;
+	req->best_parent_rate = req->rate;
+	req->rate = setup->fout;
+
+	return ret;
+}
+
+static int clk_sscg_pll_determine_rate(struct clk_hw *hw,
+				       struct clk_rate_request *req)
+{
+	struct clk_sscg_pll *pll = to_clk_sscg_pll(hw);
+	struct clk_sscg_pll_setup *setup = &pll->setup;
+	uint64_t rate = req->rate;
+	uint64_t min = req->min_rate;
+	uint64_t max = req->max_rate;
+	int ret = -EINVAL;
+
+	if (rate < PLL_OUT_MIN_FREQ || rate > PLL_OUT_MAX_FREQ)
+		return ret;
+
+	ret = __clk_sscg_pll_determine_rate(hw, req, req->rate, req->rate,
+						rate, PLL_BYPASS2);
+	if (!ret)
+		return ret;
+
+	ret = __clk_sscg_pll_determine_rate(hw, req, PLL_STAGE1_REF_MIN_FREQ,
+						PLL_STAGE1_REF_MAX_FREQ, rate,
+						PLL_BYPASS1);
+	if (!ret)
+		return ret;
+
+	ret = __clk_sscg_pll_determine_rate(hw, req, PLL_REF_MIN_FREQ,
+						PLL_REF_MAX_FREQ, rate,
+						PLL_BYPASS_NONE);
+	if (!ret)
+		return ret;
+
+	if (setup->fout >= min && setup->fout <= max)
+		ret = 0;
+
+	return ret;
+}
+
+static const struct clk_ops clk_sscg_pll_ops = {
+	.prepare	= clk_sscg_pll_prepare,
+	.unprepare	= clk_sscg_pll_unprepare,
+	.is_prepared	= clk_sscg_pll_is_prepared,
+	.recalc_rate	= clk_sscg_pll_recalc_rate,
+	.set_rate	= clk_sscg_pll_set_rate,
+	.set_parent	= clk_sscg_pll_set_parent,
+	.get_parent	= clk_sscg_pll_get_parent,
+	.determine_rate	= clk_sscg_pll_determine_rate,
+};
+
+struct clk *imx_clk_sscg_pll(const char *name,
+				const char * const *parent_names,
+				u8 num_parents,
+				u8 parent, u8 bypass1, u8 bypass2,
+				void __iomem *base,
+				unsigned long flags)
+{
+	struct clk_sscg_pll *pll;
+	struct clk_init_data init;
+	struct clk_hw *hw;
+	int ret;
+
+	pll = kzalloc(sizeof(*pll), GFP_KERNEL);
+	if (!pll)
+		return ERR_PTR(-ENOMEM);
+
+	pll->parent = parent;
+	pll->bypass1 = bypass1;
+	pll->bypass2 = bypass2;
+
+	pll->base = base;
+	init.name = name;
+	init.ops = &clk_sscg_pll_ops;
+
+	init.flags = flags;
+	init.parent_names = parent_names;
+	init.num_parents = num_parents;
+
+	pll->base = base;
+	pll->hw.init = &init;
+
+	hw = &pll->hw;
+
+	ret = clk_hw_register(NULL, hw);
+	if (ret) {
+		kfree(pll);
+		return ERR_PTR(ret);
+	}
+
+	return hw->clk;
+}
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 00ec481..4770a03 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -24,7 +24,7 @@ enum imx_pllv1_type {
 	IMX_PLLV1_IMX35,
 };
 
-enum imx_sccg_pll_type {
+enum imx_sscg_pll_type {
 	SCCG_PLL1,
 	SCCG_PLL2,
 };
@@ -110,7 +110,7 @@ struct clk *imx_clk_pllv2(const char *name, const char *parent,
 struct clk *imx_clk_frac_pll(const char *name, const char *parent_name,
 			     void __iomem *base);
 
-struct clk *imx_clk_sccg_pll(const char *name,
+struct clk *imx_clk_sscg_pll(const char *name,
 				const char * const *parent_names,
 				u8 num_parents,
 				u8 parent, u8 bypass1, u8 bypass2,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
