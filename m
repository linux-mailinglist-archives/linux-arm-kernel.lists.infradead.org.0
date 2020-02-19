Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0B5163DD5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 08:38:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cxG8b9smCMQrHSVtlJIuDmfJ6HJI2ZlQtJoPwqMcI2M=; b=DfbKYgTnjPZwGK
	BgMOl7OVC+6hEYW99b+m/eclxNvp2nbZ7pSD7utZa+zkwpX+fYaOCq5Km8JBx4wAgM+A7ZMq0SHyd
	dDMMkxQnb+ysjXQohXnW9CtLJuysNuxQY2nl+mnfczcBm52JsHtrVPpj7AJbwwFdQlHLGukDo6z+y
	QfTTizkonXALI3L+JvPKjd/gY/aO6jjW9vE+8hHE8vjHDqLtWw3h+n//IDHbxl9zurnBvLit5YXpY
	NntlH2Xho+mCl7U/kyGz/C4iTpXxbMmNGCnlitrtZ0WO6cLTZxh7l+i+gp4YpQuKOPaAr39Uad8eT
	rw0jQQBKphIKRFPht8qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4JwU-0004Bn-Q0; Wed, 19 Feb 2020 07:38:46 +0000
Received: from [167.172.186.51] (helo=shell.v3.sk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Js2-0007Uy-E0
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 07:34:13 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 83E06E0052;
 Wed, 19 Feb 2020 07:34:23 +0000 (UTC)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id ZuSmbimCh_wH; Wed, 19 Feb 2020 07:34:15 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 42E7CE0078;
 Wed, 19 Feb 2020 07:34:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id O_pnKxru6GZZ; Wed, 19 Feb 2020 07:34:14 +0000 (UTC)
Received: from furthur.lan (unknown [109.183.109.54])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 22A6DDFCA2;
 Wed, 19 Feb 2020 07:34:14 +0000 (UTC)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 04/10] clk: mmp2: Add support for PLL clock sources
Date: Wed, 19 Feb 2020 08:33:47 +0100
Message-Id: <20200219073353.184336-5-lkundrak@v3.sk>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219073353.184336-1-lkundrak@v3.sk>
References: <20200219073353.184336-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_233410_825435_204A0CF9 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The clk-of-mmp2 driver pretends that the clock outputs from the PLLs are
constant, but in fact they are configurable.

Add logic for obtaining the actual clock rates on MMP2 as well as MMP3.
There is no documentation for either SoC, but the "systemsetting" drivers
from Marvell GPL code dump provide some clue as far as MPMU registers on
MMP2 [1] and MMP3 [2] go.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/lkundrak/linux-mmp3-dell-ariel.git/tree/drivers/char/mmp2_systemsetting.c
[2] https://git.kernel.org/pub/scm/linux/kernel/git/lkundrak/linux-mmp3-dell-ariel.git/tree/drivers/char/mmp3_systemsetting.c

A separate commit will adjust the clk-of-mmp2 driver.

Tested on a MMP3-based Dell Wyse 3020 as well as MMP2-based OLPC
XO-1.75 laptop.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 drivers/clk/mmp/Makefile  |   2 +-
 drivers/clk/mmp/clk-pll.c | 139 ++++++++++++++++++++++++++++++++++++++
 drivers/clk/mmp/clk.c     |  31 +++++++++
 drivers/clk/mmp/clk.h     |  24 +++++++
 4 files changed, 195 insertions(+), 1 deletion(-)
 create mode 100644 drivers/clk/mmp/clk-pll.c

diff --git a/drivers/clk/mmp/Makefile b/drivers/clk/mmp/Makefile
index acc141adf087c..14dc8a8a9d087 100644
--- a/drivers/clk/mmp/Makefile
+++ b/drivers/clk/mmp/Makefile
@@ -8,7 +8,7 @@ obj-y += clk-apbc.o clk-apmu.o clk-frac.o clk-mix.o clk-gate.o clk.o
 obj-$(CONFIG_RESET_CONTROLLER) += reset.o
 
 obj-$(CONFIG_MACH_MMP_DT) += clk-of-pxa168.o clk-of-pxa910.o
-obj-$(CONFIG_COMMON_CLK_MMP2) += clk-of-mmp2.o
+obj-$(CONFIG_COMMON_CLK_MMP2) += clk-of-mmp2.o clk-pll.o
 
 obj-$(CONFIG_CPU_PXA168) += clk-pxa168.o
 obj-$(CONFIG_CPU_PXA910) += clk-pxa910.o
diff --git a/drivers/clk/mmp/clk-pll.c b/drivers/clk/mmp/clk-pll.c
new file mode 100644
index 0000000000000..7077be2938711
--- /dev/null
+++ b/drivers/clk/mmp/clk-pll.c
@@ -0,0 +1,139 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * MMP PLL clock rate calculation
+ *
+ * Copyright (C) 2020 Lubomir Rintel <lkundrak@v3.sk>
+ */
+
+#include <linux/clk-provider.h>
+#include <linux/slab.h>
+#include <linux/io.h>
+
+#include "clk.h"
+
+#define to_clk_mmp_pll(hw)	container_of(hw, struct mmp_clk_pll, hw)
+
+struct mmp_clk_pll {
+	struct clk_hw hw;
+	unsigned long default_rate;
+	void __iomem *enable_reg;
+	u32 enable;
+	void __iomem *reg;
+	u8 shift;
+
+	unsigned long input_rate;
+	void __iomem *postdiv_reg;
+	u8 postdiv_shift;
+};
+
+static int mmp_clk_pll_is_enabled(struct clk_hw *hw)
+{
+	struct mmp_clk_pll *pll = to_clk_mmp_pll(hw);
+	u32 val;
+
+	val = readl_relaxed(pll->enable_reg);
+	if ((val & pll->enable) == pll->enable)
+		return 1;
+
+	/* Some PLLs, if not software controlled, output default clock. */
+	if (pll->default_rate > 0)
+		return 1;
+
+	return 0;
+}
+
+static unsigned long mmp_clk_pll_recalc_rate(struct clk_hw *hw,
+					unsigned long parent_rate)
+{
+	struct mmp_clk_pll *pll = to_clk_mmp_pll(hw);
+	u32 fbdiv, refdiv, postdiv;
+	u64 rate;
+	u32 val;
+
+	val = readl_relaxed(pll->enable_reg);
+	if ((val & pll->enable) != pll->enable)
+		return pll->default_rate;
+
+	if (pll->reg) {
+		val = readl_relaxed(pll->reg);
+		fbdiv = (val >> pll->shift) & 0x1ff;
+		refdiv = (val >> (pll->shift + 9)) & 0x1f;
+	} else {
+		fbdiv = 2;
+		refdiv = 1;
+	}
+
+	if (pll->postdiv_reg) {
+		/* MMP3 clock rate calculation */
+		static const u8 postdivs[] = {2, 3, 4, 5, 6, 8, 10, 12, 16};
+
+		val = readl_relaxed(pll->postdiv_reg);
+		postdiv = (val >> pll->postdiv_shift) & 0x7;
+
+		rate = pll->input_rate;
+		rate *= 2 * fbdiv;
+		do_div(rate, refdiv);
+		do_div(rate, postdivs[postdiv]);
+	} else {
+		/* MMP2 clock rate calculation */
+		if (refdiv == 3) {
+			rate = 19200000;
+		} else if (refdiv == 4) {
+			rate = 26000000;
+		} else {
+			pr_err("bad refdiv: %d (0x%08x)\n", refdiv, val);
+			return 0;
+		}
+
+		rate *= fbdiv + 2;
+		do_div(rate, refdiv + 2);
+	}
+
+	return (unsigned long)rate;
+}
+
+static const struct clk_ops mmp_clk_pll_ops = {
+	.is_enabled = mmp_clk_pll_is_enabled,
+	.recalc_rate = mmp_clk_pll_recalc_rate,
+};
+
+struct clk *mmp_clk_register_pll(char *name,
+			unsigned long default_rate,
+			void __iomem *enable_reg, u32 enable,
+			void __iomem *reg, u8 shift,
+			unsigned long input_rate,
+			void __iomem *postdiv_reg, u8 postdiv_shift)
+{
+	struct mmp_clk_pll *pll;
+	struct clk *clk;
+	struct clk_init_data init;
+
+	pll = kzalloc(sizeof(*pll), GFP_KERNEL);
+	if (!pll)
+		return ERR_PTR(-ENOMEM);
+
+	init.name = name;
+	init.ops = &mmp_clk_pll_ops;
+	init.flags = 0;
+	init.parent_names = NULL;
+	init.num_parents = 0;
+
+	pll->default_rate = default_rate;
+	pll->enable_reg = enable_reg;
+	pll->enable = enable;
+	pll->reg = reg;
+	pll->shift = shift;
+
+	pll->input_rate = input_rate;
+	pll->postdiv_reg = postdiv_reg;
+	pll->postdiv_shift = postdiv_shift;
+
+	pll->hw.init = &init;
+
+	clk = clk_register(NULL, &pll->hw);
+
+	if (IS_ERR(clk))
+		kfree(pll);
+
+	return clk;
+}
diff --git a/drivers/clk/mmp/clk.c b/drivers/clk/mmp/clk.c
index ca7d37e2c7be6..317123641d1ed 100644
--- a/drivers/clk/mmp/clk.c
+++ b/drivers/clk/mmp/clk.c
@@ -176,6 +176,37 @@ void mmp_register_div_clks(struct mmp_clk_unit *unit,
 	}
 }
 
+void mmp_register_pll_clks(struct mmp_clk_unit *unit,
+			struct mmp_param_pll_clk *clks,
+			void __iomem *base, int size)
+{
+	struct clk *clk;
+	int i;
+
+	for (i = 0; i < size; i++) {
+		void __iomem *reg = NULL;
+
+		if (clks[i].offset)
+			reg = base + clks[i].offset;
+
+		clk = mmp_clk_register_pll(clks[i].name,
+					clks[i].default_rate,
+					base + clks[i].enable_offset,
+					clks[i].enable,
+					reg, clks[i].shift,
+					clks[i].input_rate,
+					base + clks[i].postdiv_offset,
+					clks[i].postdiv_shift);
+		if (IS_ERR(clk)) {
+			pr_err("%s: failed to register clock %s\n",
+			       __func__, clks[i].name);
+			continue;
+		}
+		if (clks[i].id)
+			unit->clk_table[clks[i].id] = clk;
+	}
+}
+
 void mmp_clk_add(struct mmp_clk_unit *unit, unsigned int id,
 			struct clk *clk)
 {
diff --git a/drivers/clk/mmp/clk.h b/drivers/clk/mmp/clk.h
index 37d1e1d7b664c..971b4d6d992fb 100644
--- a/drivers/clk/mmp/clk.h
+++ b/drivers/clk/mmp/clk.h
@@ -221,6 +221,30 @@ void mmp_register_div_clks(struct mmp_clk_unit *unit,
 			struct mmp_param_div_clk *clks,
 			void __iomem *base, int size);
 
+struct mmp_param_pll_clk {
+	unsigned int id;
+	char *name;
+	unsigned long default_rate;
+	unsigned long enable_offset;
+	u32 enable;
+	unsigned long offset;
+	u8 shift;
+	/* MMP3 specific: */
+	unsigned long input_rate;
+	unsigned long postdiv_offset;
+	unsigned long postdiv_shift;
+};
+void mmp_register_pll_clks(struct mmp_clk_unit *unit,
+			struct mmp_param_pll_clk *clks,
+			void __iomem *base, int size);
+
+extern struct clk *mmp_clk_register_pll(char *name,
+			unsigned long default_rate,
+			void __iomem *enable_reg, u32 enable,
+			void __iomem *reg, u8 shift,
+			unsigned long input_rate,
+			void __iomem *postdiv_reg, u8 postdiv_shift);
+
 #define DEFINE_MIX_REG_INFO(w_d, s_d, w_m, s_m, fc)	\
 {							\
 	.width_div = (w_d),				\
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
