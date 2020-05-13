Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C441D13B2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:00:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5uFVOob2czqLgJx5E6j3BrxlbKk1c22hv2uClpmFye4=; b=AcPqUrZhjbO4w3
	JGm61vUAPs7uFAZfOctx+hFdiFxUadzfFWm4NQOofAIkr5PJZLcW9SQrIlV2HX65eL7O57dIhBWkI
	zFTx/Lux01UACc66Y7qE+i5F7rx/JdXx6GwUDIMIeNFl8uLg3pHHakyeiTiDnZpmJMFctEdrJ+PLF
	BGPLOTcGttb0V01/KWRJXny6JrtEB7M2r4CYHJcgI8nnRqFu2O7U+1Y7kYg3u0naP2vESQ0kAqnaW
	6tyUeR28jaj1H9jVCpqmmtlL9iGNjvaXjmqOVOygqAtn0DEhLjAV47n6LbDb+sL7qp0lui+jfpgUF
	3j3swMbW+66vdsC/ElNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYqzQ-0004Vw-ON; Wed, 13 May 2020 13:00:00 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYqwg-0002Lx-04
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 12:57:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589374629; x=1620910629;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tWX49PxHY1FHfz7Y567qk5pJ2z/xgyylC7uI4FTvRcY=;
 b=mfGR7wnxBPr4uFY/HPvc3l2nk8xgXyGl+eisV6B1i8rv6xl+z4g40Inf
 CImPNw7yWqyiU3wzndqaiWxDXZ5Y7AQSFIAxPDxn1CiAYNlWZk/5idzD/
 Nyn0YG02thcsSUm2lexwOa6EQepyym2uLRpagqY7isexeTo7J+8hIcKQX
 lKGzQ/F6EEwDRH+jCD0nATRqMH3gGJOjqYDb3/5pOVikoZ7bP+oOXzTNo
 Gob6X+KDPXB2TCk0GebSiOjXZXmoTbtZ1M5ZwMLDglY+EM2Q81KPJJ1SJ
 m7/ExA1sUG7bHHZ343Nr+Cs5BU/OVEDllQYq6ionKOKjBC60PLT4rYZX8 g==;
IronPort-SDR: 0T/1mF9VhtLi2S+VHmfucuR37o7EA5agqvmbSVyqN3NEUpfwFkXVg/IA2X+idUdpRvKfup6HpU
 aSjB8pW1bpRy8H6UNhmZfvQJ3dD4tsmpQxPAoSWQdFDf18lx2T0kRu4Ngzl+QY/TFqyeLpea0y
 qkYFZKpiPYGfOZHW6Lwq2/nWmT60ptvkzVrigvvkxL3utXwCLnalNLf195D0W0xzY/6WYmO8sf
 O1EHOJBOoMBSHoehQfXjqXO0WJ/2ZF02wf+wZm+pvMcIEiI98RvfK5AFYw+rBpNB2tQsN8GQwX
 rVw=
X-IronPort-AV: E=Sophos;i="5.73,387,1583218800"; d="scan'208";a="75132853"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 05:57:09 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 05:57:08 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 05:57:05 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: SoC Team <soc@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Stephen Boyd
 <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 12/14] clk: sparx5: Add Sparx5 SoC DPLL clock driver
Date: Wed, 13 May 2020 14:55:30 +0200
Message-ID: <20200513125532.24585-13-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513125532.24585-1-lars.povlsen@microchip.com>
References: <20200513125532.24585-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_055710_205499_722FE518 
X-CRM114-Status: GOOD (  18.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Steen Hegelund <Steen.Hegelund@microchip.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Olof Johansson <olof@lixom.net>, Michael
 Turquette <mturquette@baylibre.com>, Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds a device driver for the Sparx5 SoC DPLL clock

Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 drivers/clk/Makefile     |   1 +
 drivers/clk/clk-sparx5.c | 269 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 270 insertions(+)
 create mode 100644 drivers/clk/clk-sparx5.c

diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index f4169cc2fd318..9332e32667527 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -28,6 +28,7 @@ obj-$(CONFIG_COMMON_CLK_CDCE925)	+= clk-cdce925.o
 obj-$(CONFIG_ARCH_CLPS711X)		+= clk-clps711x.o
 obj-$(CONFIG_COMMON_CLK_CS2000_CP)	+= clk-cs2000-cp.o
 obj-$(CONFIG_ARCH_EFM32)		+= clk-efm32gg.o
+obj-$(CONFIG_ARCH_SPARX5)		+= clk-sparx5.o
 obj-$(CONFIG_COMMON_CLK_FIXED_MMIO)	+= clk-fixed-mmio.o
 obj-$(CONFIG_COMMON_CLK_FSL_SAI)	+= clk-fsl-sai.o
 obj-$(CONFIG_COMMON_CLK_GEMINI)		+= clk-gemini.o
diff --git a/drivers/clk/clk-sparx5.c b/drivers/clk/clk-sparx5.c
new file mode 100644
index 0000000000000..685b3028a7071
--- /dev/null
+++ b/drivers/clk/clk-sparx5.c
@@ -0,0 +1,269 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Microchip Sparx5 SoC Clock driver.
+ *
+ * Copyright (c) 2019 Microchip Inc.
+ *
+ * Author: Lars Povlsen <lars.povlsen@microchip.com>
+ */
+
+#include <linux/io.h>
+#include <linux/clk-provider.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/slab.h>
+#include <linux/platform_device.h>
+#include <dt-bindings/clock/microchip,sparx5.h>
+
+#define PLL_DIV_MASK		GENMASK(7, 0)
+#define PLL_PRE_DIV_MASK	GENMASK(10, 8)
+#define PLL_PRE_DIV_SHIFT	8
+#define PLL_ROT_DIR		BIT(11)
+#define PLL_ROT_SEL_MASK	GENMASK(13, 12)
+#define PLL_ROT_SEL_SHIFT	12
+#define PLL_ROT_ENA		BIT(14)
+#define PLL_CLK_ENA		BIT(15)
+
+#define MAX_SEL 4
+#define MAX_PRE BIT(3)
+
+#define KHZ 1000
+#define MHZ (KHZ*KHZ)
+
+#define BASE_CLOCK (2500UL*MHZ)
+
+static u8 sel_rates[MAX_SEL] = { 0, 2*8, 2*4, 2*2 };
+
+static const char *clk_names[N_CLOCKS] = {
+	"core", "ddr", "cpu2", "arm2",
+	"aux1", "aux2", "aux3", "aux4",
+	"synce",
+};
+
+struct s5_hw_clk {
+	struct clk_hw hw;
+	void __iomem *reg;
+	int index;
+};
+
+struct s5_clk_data {
+	void __iomem *base;
+	struct s5_hw_clk s5_hw[N_CLOCKS];
+};
+
+struct pll_conf {
+	int freq;
+	u8 div;
+	bool rot_ena;
+	u8 rot_sel;
+	u8 rot_dir;
+	u8 pre_div;
+};
+
+#define to_clk_pll(hw) container_of(hw, struct s5_hw_clk, hw)
+
+unsigned long calc_freq(const struct pll_conf *pdata)
+{
+	unsigned long rate = BASE_CLOCK / pdata->div;
+
+	if (pdata->rot_ena) {
+		unsigned long base = BASE_CLOCK / pdata->div;
+		int sign = pdata->rot_dir ? -1 : 1;
+		int divt = sel_rates[pdata->rot_sel] * (1 + pdata->pre_div);
+		int divb = divt + sign;
+
+		rate = mult_frac(base, divt, divb);
+		rate = roundup(rate, 1000);
+	}
+
+	return rate;
+}
+
+static unsigned long clk_calc_params(unsigned long rate,
+				     struct pll_conf *conf)
+{
+	memset(conf, 0, sizeof(*conf));
+
+	conf->div = DIV_ROUND_CLOSEST_ULL(BASE_CLOCK, rate);
+
+	if (BASE_CLOCK % rate) {
+		struct pll_conf best;
+		ulong cur_offset, best_offset = rate;
+		int i, j;
+
+		/* Enable fractional rotation */
+		conf->rot_ena = true;
+
+		if ((BASE_CLOCK / rate) != conf->div) {
+			/* Overshoot, adjust other direction */
+			conf->rot_dir = 1;
+		}
+
+		/* Brute force search over MAX_PRE * (MAX_SEL - 1) = 24 */
+		for (i = 0; i < MAX_PRE; i++) {
+			conf->pre_div = i;
+			for (j = 1; j < MAX_SEL; j++) {
+				conf->rot_sel = j;
+				conf->freq = calc_freq(conf);
+				cur_offset = abs(rate - conf->freq);
+				if (cur_offset == 0)
+					/* Perfect fit */
+					goto done;
+				if (cur_offset < best_offset) {
+					/* Better fit found */
+					best_offset = cur_offset;
+					best = *conf;
+				}
+			}
+		}
+		/* Best match */
+		*conf = best;
+	}
+
+done:
+	return conf->freq;
+}
+
+static int clk_pll_enable(struct clk_hw *hw)
+{
+	struct s5_hw_clk *pll = to_clk_pll(hw);
+	u32 val = readl(pll->reg);
+
+	val |= PLL_CLK_ENA;
+	writel(val, pll->reg);
+	pr_debug("%s: Enable val %04x\n", clk_names[pll->index], val);
+	return 0;
+}
+
+static void clk_pll_disable(struct clk_hw *hw)
+{
+	struct s5_hw_clk *pll = to_clk_pll(hw);
+	u32 val = readl(pll->reg);
+
+	val &= ~PLL_CLK_ENA;
+	writel(val, pll->reg);
+	pr_debug("%s: Disable val %04x\n", clk_names[pll->index], val);
+}
+
+static int clk_pll_set_rate(struct clk_hw *hw,
+			    unsigned long rate,
+			    unsigned long parent_rate)
+{
+	struct s5_hw_clk *pll = to_clk_pll(hw);
+	struct pll_conf conf;
+	unsigned long eff_rate;
+	int ret = 0;
+
+	eff_rate = clk_calc_params(rate, &conf);
+	if (eff_rate == rate) {
+		u32 val;
+
+		val = readl(pll->reg) & PLL_CLK_ENA;
+		val |= PLL_DIV_MASK & conf.div;
+		if (conf.rot_ena) {
+			val |= (PLL_ROT_ENA |
+				(PLL_ROT_SEL_MASK &
+				 (conf.rot_sel << PLL_ROT_SEL_SHIFT)) |
+				(PLL_PRE_DIV_MASK &
+				 (conf.pre_div << PLL_PRE_DIV_SHIFT)));
+			if (conf.rot_dir)
+				val |= PLL_ROT_DIR;
+		}
+		pr_debug("%s: Rate %ld >= 0x%04x\n",
+			 clk_names[pll->index], rate, val);
+		writel(val, pll->reg);
+	} else {
+		pr_err("%s: freq unsupported: %ld paren %ld\n",
+		       clk_names[pll->index], rate, parent_rate);
+		ret = -ENOTSUPP;
+	}
+
+	return ret;
+}
+
+static unsigned long clk_pll_recalc_rate(struct clk_hw *hw,
+					 unsigned long parent_rate)
+{
+	/* Don't care */
+	return 0;
+}
+
+static long clk_pll_round_rate(struct clk_hw *hw, unsigned long rate,
+			       unsigned long *parent_rate)
+{
+	struct pll_conf conf;
+	unsigned long eff_rate;
+
+	eff_rate = clk_calc_params(rate, &conf);
+	pr_debug("%s: Rate %ld rounded to %ld\n", __func__, rate, eff_rate);
+
+	return eff_rate;
+}
+
+static const struct clk_ops s5_pll_ops = {
+	.enable		= clk_pll_enable,
+	.disable	= clk_pll_disable,
+	.set_rate	= clk_pll_set_rate,
+	.round_rate	= clk_pll_round_rate,
+	.recalc_rate	= clk_pll_recalc_rate,
+};
+
+static struct s5_clk_data *s5_clk_alloc(struct device_node *np)
+{
+	struct s5_clk_data *clk_data;
+
+	clk_data = kzalloc(sizeof(*clk_data), GFP_KERNEL);
+	if (WARN_ON(!clk_data))
+		return NULL;
+
+	clk_data->base = of_iomap(np, 0);
+	if (WARN_ON(!clk_data->base))
+		return NULL;
+
+	return clk_data;
+}
+
+static struct clk_hw *s5_clk_hw_get(struct of_phandle_args *clkspec, void *data)
+{
+	struct s5_clk_data *pll_clk = data;
+	unsigned int idx = clkspec->args[0];
+
+	if (idx >= N_CLOCKS) {
+		pr_err("%s: invalid index %u\n", __func__, idx);
+		return ERR_PTR(-EINVAL);
+	}
+
+	return &pll_clk->s5_hw[idx].hw;
+}
+
+static void __init s5_pll_init(struct device_node *np)
+{
+	int i, ret;
+	struct s5_clk_data *pll_clk;
+	struct clk_init_data init = { 0 };
+
+	pll_clk = s5_clk_alloc(np);
+	if (!pll_clk)
+		return;
+
+	init.ops = &s5_pll_ops;
+	init.parent_names = NULL;
+	init.num_parents = 0;
+
+	for (i = 0; i < N_CLOCKS; i++) {
+		struct s5_hw_clk *s5_hw = &pll_clk->s5_hw[i];
+
+		init.name = clk_names[i];
+		s5_hw->index = i;
+		s5_hw->reg = pll_clk->base + (i * sizeof(u32));
+		s5_hw->hw.init = &init;
+		ret = of_clk_hw_register(np, &s5_hw->hw);
+		if (ret) {
+			pr_err("failed to register %s clock\n", init.name);
+			return;
+		}
+	}
+
+	of_clk_add_hw_provider(np, s5_clk_hw_get, pll_clk);
+}
+CLK_OF_DECLARE_DRIVER(microchip_s5, "microchip,sparx5-dpll", s5_pll_init);
--
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
