Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6756D456
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 21:06:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OYzSEufZOl1WlOa6RbrED5kBp/+wB4HT4r+2ls26DHk=; b=rpn
	2E6CdljNi2TklL71MyenyUibmaUUg4voRSjhiYVNTHzJD1ZZPZZwAp4wWoZG/LN13Tu1+g0eg61X/
	JYTaJ7NoMh7vcZC0+8ARNFFWxSKawpE9ixUAs5+hBRTH6Mw8oL3RUg4wPXP7d8AgV5dUTIWuovSq5
	fdu71N5ZbTSNF21jHiP/SUvB8BtSOAPXqummLTlEpTxUvx2eJv32dAukB51vbJhPaS62kY2pumtwH
	rnOPi0UTaMfB9nyCsxRpZXhWWK0RulS/dQI9vUbF5lpYhEqIgfLU9brv+CbxCmaL5AV0LcQTKen/4
	T6PZGPF2m7EKyrUZYooHcQzCeiJUQlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoBjO-0004j6-Nz; Thu, 18 Jul 2019 19:06:18 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoBjB-0004hw-UO
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 19:06:08 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id EFDD62003A4;
 Thu, 18 Jul 2019 21:06:02 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E163320011C;
 Thu, 18 Jul 2019 21:06:02 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 560B3205C7;
 Thu, 18 Jul 2019 21:06:02 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
Subject: [RFC v3] clk: imx8mm: Add dram freq switch support
Date: Thu, 18 Jul 2019 22:06:00 +0300
Message-Id: <d2ff5121bced3e5632ff246a51e1f56ee3fe03f9.1563476560.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_120606_265364_1C738F83 
X-CRM114-Status: GOOD (  18.78  )
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, linux-imx@nxp.com,
 Alexandre Bailon <abailon@baylibre.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jacky Bai <ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a compound clock encapsulating dram frequency switch support for
imx8m chips. This allows higher-level DVFS code to manipulate dram
frequency using standard clock framework APIs.

Only some preparation is done inside the kernel, the actual freq switch
is performed from TF-A code which runs from an SRAM area. After the freq
is changed the rates and parents are refreshed on linux side.

A "clk_hw_reinit_parent" function is added to deal with external
reparenting. It's similar to CLK_GET_RATE_NOCACHE but for muxes (and
needs to be called explicitly).

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

---
Objections were raised to earlier hacky versions that this doesn't
really belong inside clk, however if we need to "refresh" clk tree after
a complex frequency switch then it makes sense to do it inside a clk
provider rather than some other random driver.

There are other clk implementations which internally wrap multiple
clocks or deal with DDR or are implemented via SMC: imx_clk_cpu,
tegra/clk-emc and rockchip/clk-ddr.

Out-of-tree ATF patches are required, this branch can be used for
testing: https://github.com/cdleonard/arm-trusted-firmware/commits/imx_2.0.y_caf_busfreq

Firmware API could be adjusted to make this more palatable for
inclusion; for example maybe info about new parents could be provided so
that CLK can enable them in advance? In pratice they're always on.

Also a linux branch with extra patches for testing:
https://github.com/cdleonard/linux/commits/next_imx8mm_busfreq

Changes since v2:
* Remove IRQ handling (thanks Jacky for ATF patch)
* Fetch supported rates from firmware instead of hardcoding imx8mm-evk.
Should now work for all imx8m chips/board/ddr types
* Add clk_hw_reinit_parent instead of explicit set_parent
* Use fewer consumer APIs in provider
* Explicitly mark dram_alt/apb with GET_RATE_NOCACHE
Link to v2: https://patchwork.kernel.org/patch/11021565/

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index b1c79a58d734..be9663b1e254 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -2388,10 +2388,35 @@ void clk_hw_reparent(struct clk_hw *hw, struct clk_hw *new_parent)
 		return;
 
 	clk_core_reparent(hw->core, !new_parent ? NULL : new_parent->core);
 }
 
+/**
+ * clk_hw_reinit_parent - update clock tree after reparent outside framework
+ * @clk: clock source
+ * @parent: parent clock source
+ *
+ * This function should be used after a clock is reparented externally (for
+ * example with a firmware call or some ASM sequence).
+ *
+ * It will call clk_ops.get_parent again and reassign parents.
+ */
+void clk_hw_reinit_parent(struct clk_hw *hw)
+{
+	struct clk_core *new_parent, *old_parent;
+
+	lockdep_assert_held(&prepare_lock);
+	if (!hw)
+		return;
+
+	new_parent = __clk_init_parent(hw->core);
+	old_parent = __clk_set_parent_before(hw->core, new_parent);
+	clk_core_reparent(hw->core, new_parent);
+	__clk_set_parent_after(hw->core, new_parent, old_parent);
+}
+EXPORT_SYMBOL_GPL(clk_hw_reinit_parent);
+
 /**
  * clk_has_parent - check if a clock is a possible parent for another
  * @clk: clock source
  * @parent: parent clock source
  *
diff --git a/drivers/clk/imx/Makefile b/drivers/clk/imx/Makefile
index 05641c64b317..0fc7195d6d3a 100644
--- a/drivers/clk/imx/Makefile
+++ b/drivers/clk/imx/Makefile
@@ -10,10 +10,11 @@ obj-$(CONFIG_MXC_CLK) += \
 	clk-fixup-div.o \
 	clk-fixup-mux.o \
 	clk-frac-pll.o \
 	clk-gate-exclusive.o \
 	clk-gate2.o \
+	clk-imx8m-dram.o \
 	clk-pfd.o \
 	clk-pfdv2.o \
 	clk-pllv1.o \
 	clk-pllv2.o \
 	clk-pllv3.o \
diff --git a/drivers/clk/imx/clk-imx8m-dram.c b/drivers/clk/imx/clk-imx8m-dram.c
new file mode 100644
index 000000000000..d6971fe72cbe
--- /dev/null
+++ b/drivers/clk/imx/clk-imx8m-dram.c
@@ -0,0 +1,242 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 NXP
+ */
+
+#include <linux/arm-smccc.h>
+#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <linux/device.h>
+#include <linux/interrupt.h>
+#include <linux/slab.h>
+#include "clk.h"
+
+#define IMX_SIP_DDR_DVFS                	0xc2000004
+
+/* Values starting from 0 switch to specific frequency */
+#define IMX_SIP_DDR_FREQ_SET_HIGH		0x00
+
+/* Deprecated after moving IRQ handling to ATF */
+#define IMX_SIP_DDR_DVFS_WAIT_CHANGE		0x0F
+
+/* Query available frequencies. */
+#define IMX_SIP_DDR_DVFS_GET_FREQ_COUNT		0x10
+#define IMX_SIP_DDR_DVFS_GET_FREQ_INFO		0x11
+
+/* Hardware limitation */
+#define IMX8M_DRAM_MAX_OPP			4
+
+struct imx8m_dram_opp {
+	unsigned long	rate;
+	unsigned int	smcarg;
+};
+
+/*
+ * This clk wraps the following structure (abridged):
+ *
+ * +----------+       |\            +------+
+ * | dram_pll |-------|M| dram_core |      |
+ * +----------+       |U|---------->| D    |
+ *                 /--|X|           |  D   |
+ *   dram_alt_root |  |/            |   R  |
+ *                 |                |    C |
+ *            +---------+           |      |
+ *            |FIX DIV/4|           |      |
+ *            +---------+           |      |
+ *  composite:     |                |      |
+ * +----------+    |                |      |
+ * | dram_alt |----/                |      |
+ * +----------+                     |      |
+ * | dram_apb |-------------------->|      |
+ * +----------+                     +------+
+ *
+ * The DDR data rate is 4x dram_core
+ *
+ * The APB interface is only used for control registers and can otherwise
+ * be shut off.
+ *
+ * The dram_pll is used for higher rates and dram_alt is used for lower rates.
+ */
+struct dram_clk {
+	struct clk_hw	hw;
+	struct clk_hw	*dram_core;
+	struct clk_hw	*dram_apb;
+	struct clk_hw	*dram_pll;
+	struct clk_hw	*dram_alt;
+	struct clk_hw	*dram_alt_root;
+
+	unsigned int		opp_count;
+	struct imx8m_dram_opp	table[IMX8M_DRAM_MAX_OPP];
+};
+
+static inline struct dram_clk *to_dram_clk(struct clk_hw *hw)
+{
+	return container_of(hw, struct dram_clk, hw);
+}
+
+static int update_bus_freq(int target_freq)
+{
+	struct arm_smccc_res res;
+	u32 online_cpus = 0;
+	int cpu = 0;
+
+	local_irq_disable();
+
+	for_each_online_cpu(cpu)
+		online_cpus |= (1 << (cpu * 8));
+
+	/* change the ddr freqency */
+	arm_smccc_smc(IMX_SIP_DDR_DVFS, target_freq, online_cpus,
+		0, 0, 0, 0, 0, &res);
+
+	local_irq_enable();
+
+	return 0;
+}
+
+/* Round UP */
+static struct imx8m_dram_opp *dram_clk_find_rate(
+		struct dram_clk *priv,
+		unsigned long rate)
+{
+	int i;
+
+	for (i = priv->opp_count - 1; i >= 0; --i)
+		if (priv->table[i].rate >= rate)
+			return &priv->table[i];
+
+	return &priv->table[0];
+}
+
+/* Round UP taking min and max into account */
+static int dram_clk_determine_rate(
+		struct clk_hw *hw,
+		struct clk_rate_request *req)
+{
+	struct dram_clk *priv = to_dram_clk(hw);
+	unsigned long tab_rate;
+	int i;
+
+	for (i = priv->opp_count - 1; i >= 0; --i) {
+		tab_rate = priv->table[i].rate;
+		if (tab_rate >= req->rate &&
+		    tab_rate >= req->min_rate &&
+		    tab_rate <= req->max_rate)
+		{
+			req->rate = tab_rate;
+			return 0;
+		}
+	}
+
+	return -EINVAL;
+}
+
+static int dram_clk_set_rate(
+		struct clk_hw *hw,
+		unsigned long rate,
+		unsigned long parent_rate)
+{
+	struct dram_clk *priv = to_dram_clk(hw);
+	struct imx8m_dram_opp *opp = dram_clk_find_rate(priv, rate);
+	int ret;
+
+	/*
+	 * The actual switch is done inside ATF, here just reload parents.
+	 * all we do here is reload parents
+	 */
+	clk_prepare_enable(priv->dram_alt_root->clk);
+	clk_prepare_enable(priv->dram_pll->clk);
+	ret = update_bus_freq(opp->smcarg);
+	clk_hw_reinit_parent(priv->dram_alt);
+	clk_hw_reinit_parent(priv->dram_apb);
+	clk_hw_reinit_parent(priv->dram_core);
+	clk_disable_unprepare(priv->dram_alt_root->clk);
+	clk_disable_unprepare(priv->dram_pll->clk);
+
+	if (ret == 0)
+		pr_debug("%s freq set to %lu\n", clk_hw_get_name(hw), opp->rate);
+	else
+		pr_err("%s freq set fail: %d\n", clk_hw_get_name(hw), ret);
+
+	return ret;
+}
+
+static unsigned long dram_clk_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
+{
+	struct dram_clk *priv = to_dram_clk(hw);
+
+	return clk_hw_get_rate(priv->dram_core);
+}
+
+static const struct clk_ops dram_clk_ops = {
+	.determine_rate	= dram_clk_determine_rate,
+	.recalc_rate	= dram_clk_recalc_rate,
+	.set_rate	= dram_clk_set_rate,
+};
+
+struct clk* imx8m_dram_clk(
+		const char *name, const char* parent_name,
+		struct clk_hw* dram_core,
+		struct clk_hw* dram_apb,
+		struct clk_hw* dram_pll,
+		struct clk_hw* dram_alt,
+		struct clk_hw* dram_alt_root)
+{
+	struct arm_smccc_res res;
+	struct dram_clk *priv;
+	struct clk *clk;
+	struct clk_init_data init;
+	int opp_count, index;
+	int err;
+
+	/*
+	 * Count available frequencies
+	 * An error here means DDR DVFS not supported by firmware
+	 */
+	arm_smccc_smc(IMX_SIP_DDR_DVFS, IMX_SIP_DDR_DVFS_GET_FREQ_COUNT,
+			0, 0, 0, 0, 0, 0, &res);
+	opp_count = res.a0;
+	if (opp_count <= 0 || opp_count > IMX8M_DRAM_MAX_OPP)
+		return ERR_PTR(-ENOSYS);
+
+	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return ERR_PTR(-ENOMEM);
+
+	priv->dram_apb = dram_apb;
+	priv->dram_core = dram_core;
+	priv->dram_pll = dram_pll;
+	priv->dram_alt = dram_alt;
+	priv->dram_alt_root = dram_alt_root;
+
+	priv->opp_count = opp_count;
+	for (index = 0; index < opp_count; ++index) {
+		arm_smccc_smc(IMX_SIP_DDR_DVFS, IMX_SIP_DDR_DVFS_GET_FREQ_INFO,
+				index, 0, 0, 0, 0, 0, &res);
+		/* Results should be strictly positive */
+		if ((long)res.a0 <= 0) {
+			err = -ENOSYS;
+			goto err_free_priv;
+		}
+		priv->table[index].smcarg = index;
+		priv->table[index].rate = res.a0 * 250000;
+	}
+
+	init.name = name;
+	init.ops = &dram_clk_ops;
+	init.flags = CLK_IS_CRITICAL;
+	init.parent_names = &parent_name;
+	init.num_parents = 1;
+
+	priv->hw.init = &init;
+	clk = clk_register(NULL, &priv->hw);
+	if (IS_ERR(clk)) {
+		err = PTR_ERR(clk);
+		goto err_free_priv;
+	}
+	return clk;
+
+err_free_priv:
+	kfree(priv);
+	return ERR_PTR(err);
+}
diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 6b8e75df994d..e37442a12fed 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -523,12 +523,14 @@ static int __init imx8mm_clocks_init(struct device_node *ccm_node)
 	/* IPG */
 	clks[IMX8MM_CLK_IPG_ROOT] = imx_clk_divider2("ipg_root", "ahb", base + 0x9080, 0, 1);
 	clks[IMX8MM_CLK_IPG_AUDIO_ROOT] = imx_clk_divider2("ipg_audio_root", "audio_ahb", base + 0x9180, 0, 1);
 
 	/* IP */
-	clks[IMX8MM_CLK_DRAM_ALT] = imx8m_clk_composite("dram_alt", imx8mm_dram_alt_sels, base + 0xa000);
-	clks[IMX8MM_CLK_DRAM_APB] = imx8m_clk_composite_critical("dram_apb", imx8mm_dram_apb_sels, base + 0xa080);
+	clks[IMX8MM_CLK_DRAM_ALT] = __imx8m_clk_composite("dram_alt", imx8mm_dram_alt_sels, base + 0xa000,
+			CLK_GET_RATE_NOCACHE);
+	clks[IMX8MM_CLK_DRAM_APB] = __imx8m_clk_composite("dram_apb", imx8mm_dram_apb_sels, base + 0xa080,
+			CLK_GET_RATE_NOCACHE | CLK_IS_CRITICAL);
 	clks[IMX8MM_CLK_VPU_G1] = imx8m_clk_composite("vpu_g1", imx8mm_vpu_g1_sels, base + 0xa100);
 	clks[IMX8MM_CLK_VPU_G2] = imx8m_clk_composite("vpu_g2", imx8mm_vpu_g2_sels, base + 0xa180);
 	clks[IMX8MM_CLK_DISP_DTRC] = imx8m_clk_composite("disp_dtrc", imx8mm_disp_dtrc_sels, base + 0xa200);
 	clks[IMX8MM_CLK_DISP_DC8000] = imx8m_clk_composite("disp_dc8000", imx8mm_disp_dc8000_sels, base + 0xa280);
 	clks[IMX8MM_CLK_PCIE1_CTRL] = imx8m_clk_composite("pcie1_ctrl", imx8mm_pcie1_ctrl_sels, base + 0xa300);
@@ -660,10 +662,18 @@ static int __init imx8mm_clocks_init(struct device_node *ccm_node)
 	clks[IMX8MM_CLK_GPT_3M] = imx_clk_fixed_factor("gpt_3m", "osc_24m", 1, 8);
 
 	clks[IMX8MM_CLK_DRAM_ALT_ROOT] = imx_clk_fixed_factor("dram_alt_root", "dram_alt", 1, 4);
 	clks[IMX8MM_CLK_DRAM_CORE] = imx_clk_mux2_flags("dram_core_clk", base + 0x9800, 24, 1, imx8mm_dram_core_sels, ARRAY_SIZE(imx8mm_dram_core_sels), CLK_IS_CRITICAL);
 
+	clks[IMX8MM_CLK_DRAM] = imx8m_dram_clk(
+			"dram", "dram_core_clk",
+			__clk_get_hw(clks[IMX8MM_CLK_DRAM_CORE]),
+			__clk_get_hw(clks[IMX8MM_CLK_DRAM_APB]),
+			__clk_get_hw(clks[IMX8MM_DRAM_PLL_OUT]),
+			__clk_get_hw(clks[IMX8MM_CLK_DRAM_ALT]),
+			__clk_get_hw(clks[IMX8MM_CLK_DRAM_ALT_ROOT]));
+
 	clks[IMX8MM_CLK_ARM] = imx_clk_cpu("arm", "arm_a53_div",
 					   clks[IMX8MM_CLK_A53_DIV],
 					   clks[IMX8MM_CLK_A53_SRC],
 					   clks[IMX8MM_ARM_PLL_OUT],
 					   clks[IMX8MM_CLK_24M]);
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index d94d9cb079d3..f0f42b3a5d8d 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -468,6 +468,15 @@ struct clk *imx8m_clk_composite_flags(const char *name,
 
 struct clk_hw *imx_clk_divider_gate(const char *name, const char *parent_name,
 		unsigned long flags, void __iomem *reg, u8 shift, u8 width,
 		u8 clk_divider_flags, const struct clk_div_table *table,
 		spinlock_t *lock);
+
+struct clk* imx8m_dram_clk(
+		const char *name, const char* parent_name,
+		struct clk_hw* dram_core,
+		struct clk_hw* dram_apb,
+		struct clk_hw* dram_pll,
+		struct clk_hw* dram_alt,
+		struct clk_hw* dram_alt_root);
+
 #endif
diff --git a/include/dt-bindings/clock/imx8mm-clock.h b/include/dt-bindings/clock/imx8mm-clock.h
index 07e6c686f3ef..dde146b923a8 100644
--- a/include/dt-bindings/clock/imx8mm-clock.h
+++ b/include/dt-bindings/clock/imx8mm-clock.h
@@ -246,8 +246,10 @@
 #define IMX8MM_CLK_GPIO5_ROOT			227
 
 #define IMX8MM_CLK_SNVS_ROOT			228
 #define IMX8MM_CLK_GIC				229
 
-#define IMX8MM_CLK_END				230
+#define IMX8MM_CLK_DRAM				230
+
+#define IMX8MM_CLK_END				231
 
 #endif
diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
index 2ae7604783dd..f85f1fb8621b 100644
--- a/include/linux/clk-provider.h
+++ b/include/linux/clk-provider.h
@@ -836,10 +836,11 @@ int __clk_mux_determine_rate_closest(struct clk_hw *hw,
 				     struct clk_rate_request *req);
 int clk_mux_determine_rate_flags(struct clk_hw *hw,
 				 struct clk_rate_request *req,
 				 unsigned long flags);
 void clk_hw_reparent(struct clk_hw *hw, struct clk_hw *new_parent);
+void clk_hw_reinit_parent(struct clk_hw *hw);
 void clk_hw_set_rate_range(struct clk_hw *hw, unsigned long min_rate,
 			   unsigned long max_rate);
 
 static inline void __clk_hw_set_clk(struct clk_hw *dst, struct clk_hw *src)
 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
