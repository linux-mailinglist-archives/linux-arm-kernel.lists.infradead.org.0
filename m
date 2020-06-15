Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC031F9912
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 15:38:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZEm+2wcHLcRzcaX4/f58+EaNfYpuWRL5QlFFx1vkLSs=; b=J3YTc1xal4VU5Z
	PmV2W+Bq8J7swfu8Z0g9a9FdC7ufsXiS08l3qDgzlscL24TWkKK+IJooxOuhyFjSk6sIbZ4DjBiDk
	bcKjgXdF8uP1udRqX+CD2kO4TLWyv/FMcjJwYndsi3arixBRCTFtfQ50bEyjsGwOvnquPGbLzBum5
	4r87abvq7WfaT2zivlKPLp+lQEXQp7yQ0cdS6pNY/5azPqdSkClvEZ/5N6f5ivxg/6TybN3jenUKa
	1Nmu1T3fxaCM1qaoBGyxLSCq1fgGojswx2VXGHKfCU8G3trIQCgIFFJ2SVec451NkN46o9xtuZJ2U
	zhZuqGc/CB/zpS8RHc2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkpJG-0004pT-Q0; Mon, 15 Jun 2020 13:37:58 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkpEs-0007gq-RR
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 13:33:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592228007; x=1623764007;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PlGFyq8svdSYU3/J9GBx20Uos9sZx6kCHVGZBs4VueM=;
 b=ryIzruoxdvo4LxfSPIsVsyBdwLUWcbaqY6iL0REX6eJbkx+xT5XQtdyu
 lglQxAnD9F5uV/YcBKKjNYjEWok7JCXgq7ZdBD8criOySB8tBXxkRjlLi
 AD2K0AXf6G5j2UTCmKgDF48gZEtx+eDtpLjARTlXfaYsdAV3COHiEgr3y
 hXpCi0k8fFBfoqj5X0+prTpkxLOPXHOpFr+7GJm83qpFqdrT5baDn9thg
 G2WBspa1rWU3h+BTLiH67fs+VglQvyAWblLbSv+00MSEBvkmzLzMGUswl
 wu/yi/AfMwILp1xLUpCeA/KWoor0sFbkqZziFFWw7qdq+XX0CuvKqgHmB A==;
IronPort-SDR: kaHDv3vv/0hAZgV/lk/lK69WoEhZXNxanltD4raO1dtLWB4igQx2ohjw5opO8uz2uAOrPsa76f
 VRHt8a49Ce9Y3juyfXoFFqT/fSwKR398aQU2svkiyvxVxkHmIz8b5AD/7+C5zDnwCxPF4gQM6T
 0xAqLr6kXkMcNH7z18xb59k2qJOwGVMO9INNN/jGeOp8hV9frYW6i1wwHSCRHwfOfblkthrixF
 LPaGTh9UEOALgR7LEqfXH238x0zNVlE0JVIrmM3Ent6rKPK0doZBNn/vZ2ry7sroRK0DrZcex9
 Ajs=
X-IronPort-AV: E=Sophos;i="5.73,514,1583218800"; d="scan'208";a="79480529"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Jun 2020 06:33:26 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 15 Jun 2020 06:33:25 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Mon, 15 Jun 2020 06:33:22 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: SoC Team <soc@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Stephen Boyd
 <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v3 08/10] clk: sparx5: Add Sparx5 SoC DPLL clock driver
Date: Mon, 15 Jun 2020 15:32:40 +0200
Message-ID: <20200615133242.24911-9-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200615133242.24911-1-lars.povlsen@microchip.com>
References: <20200615133242.24911-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_063326_994787_75D7D54E 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.71.150.166 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 drivers/clk/Makefile     |   1 +
 drivers/clk/clk-sparx5.c | 312 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 313 insertions(+)
 create mode 100644 drivers/clk/clk-sparx5.c

diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index ca9af11d33913..da8fcf147eb13 100644
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
index 0000000000000..c2e7aa0214ebd
--- /dev/null
+++ b/drivers/clk/clk-sparx5.c
@@ -0,0 +1,312 @@
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
+#include <linux/module.h>
+#include <linux/clk-provider.h>
+#include <linux/bitfield.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/slab.h>
+#include <linux/platform_device.h>
+#include <dt-bindings/clock/microchip,sparx5.h>
+
+#define PLL_DIV		GENMASK(7, 0)
+#define PLL_PRE_DIV	GENMASK(10, 8)
+#define PLL_ROT_DIR	BIT(11)
+#define PLL_ROT_SEL	GENMASK(13, 12)
+#define PLL_ROT_ENA	BIT(14)
+#define PLL_CLK_ENA	BIT(15)
+
+#define MAX_SEL 4
+#define MAX_PRE BIT(3)
+
+static const u8 sel_rates[MAX_SEL] = { 0, 2*8, 2*4, 2*2 };
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
+struct s5_pll_conf {
+	int freq;
+	u8 div;
+	bool rot_ena;
+	u8 rot_sel;
+	u8 rot_dir;
+	u8 pre_div;
+};
+
+#define to_s5_pll(hw) container_of(hw, struct s5_hw_clk, hw)
+
+static unsigned long s5_calc_freq(unsigned long parent_rate,
+				  const struct s5_pll_conf *conf)
+{
+	unsigned long rate = parent_rate / conf->div;
+
+	if (conf->rot_ena) {
+		int sign = conf->rot_dir ? -1 : 1;
+		int divt = sel_rates[conf->rot_sel] * (1 + conf->pre_div);
+		int divb = divt + sign;
+
+		rate = mult_frac(rate, divt, divb);
+		rate = roundup(rate, 1000);
+	}
+
+	return rate;
+}
+
+static void s5_search_fractional(unsigned long rate,
+				 unsigned long parent_rate,
+				 int div,
+				 struct s5_pll_conf *conf)
+{
+	struct s5_pll_conf best;
+	ulong cur_offset, best_offset = rate;
+	int d, i, j;
+
+	memset(conf, 0, sizeof(*conf));
+	conf->div = div;
+	conf->rot_ena = 1;	/* Fractional rate */
+
+	for (d = 0; best_offset > 0 && d <= 1 ; d++) {
+		conf->rot_dir = !!d;
+		for (i = 0; best_offset > 0 && i < MAX_PRE; i++) {
+			conf->pre_div = i;
+			for (j = 1; best_offset > 0 && j < MAX_SEL; j++) {
+				conf->rot_sel = j;
+				conf->freq = s5_calc_freq(parent_rate, conf);
+				cur_offset = abs(rate - conf->freq);
+				if (cur_offset < best_offset) {
+					best_offset = cur_offset;
+					best = *conf;
+				}
+			}
+		}
+	}
+
+	/* Best match */
+	*conf = best;
+}
+
+static unsigned long s5_calc_params(unsigned long rate,
+				    unsigned long parent_rate,
+				    struct s5_pll_conf *conf)
+{
+	if (parent_rate % rate) {
+		struct s5_pll_conf alt1, alt2;
+		int div;
+
+		div = DIV_ROUND_CLOSEST_ULL(parent_rate, rate);
+		s5_search_fractional(rate, parent_rate, div, &alt1);
+
+		/* Straight match? */
+		if (alt1.freq == rate) {
+			*conf = alt1;
+		} else {
+			/* Try without rounding divider */
+			div = parent_rate / rate;
+			if (div != alt1.div) {
+				s5_search_fractional(rate, parent_rate, div,
+						     &alt2);
+				/* Select the better match */
+				if (abs(rate - alt1.freq) <
+				    abs(rate - alt2.freq))
+					*conf = alt1;
+				else
+					*conf = alt2;
+			}
+		}
+	} else {
+		/* Straight fit */
+		memset(conf, 0, sizeof(*conf));
+		conf->div = parent_rate / rate;
+	}
+
+	return conf->freq;
+}
+
+static int s5_pll_enable(struct clk_hw *hw)
+{
+	struct s5_hw_clk *pll = to_s5_pll(hw);
+	u32 val = readl(pll->reg);
+
+	val |= PLL_CLK_ENA;
+	writel(val, pll->reg);
+
+	return 0;
+}
+
+static void s5_pll_disable(struct clk_hw *hw)
+{
+	struct s5_hw_clk *pll = to_s5_pll(hw);
+	u32 val = readl(pll->reg);
+
+	val &= ~PLL_CLK_ENA;
+	writel(val, pll->reg);
+}
+
+static int s5_pll_set_rate(struct clk_hw *hw,
+			   unsigned long rate,
+			   unsigned long parent_rate)
+{
+	struct s5_hw_clk *pll = to_s5_pll(hw);
+	struct s5_pll_conf conf;
+	unsigned long eff_rate;
+	u32 val;
+
+	eff_rate = s5_calc_params(rate, parent_rate, &conf);
+	if (eff_rate != rate)
+		return -EOPNOTSUPP;
+
+	val = readl(pll->reg) & PLL_CLK_ENA;
+	val |= FIELD_PREP(PLL_DIV, conf.div);
+	if (conf.rot_ena) {
+		val |= PLL_ROT_ENA;
+		val |= FIELD_PREP(PLL_ROT_SEL, conf.rot_sel);
+		val |= FIELD_PREP(PLL_PRE_DIV, conf.pre_div);
+		if (conf.rot_dir)
+			val |= PLL_ROT_DIR;
+	}
+	writel(val, pll->reg);
+
+	return 0;
+}
+
+static unsigned long s5_pll_recalc_rate(struct clk_hw *hw,
+					unsigned long parent_rate)
+{
+	struct s5_hw_clk *pll = to_s5_pll(hw);
+	struct s5_pll_conf conf;
+	u32 val;
+
+	val = readl(pll->reg);
+
+	if (val & PLL_CLK_ENA) {
+		conf.div     = FIELD_GET(PLL_DIV, val);
+		conf.pre_div = FIELD_GET(PLL_PRE_DIV, val);
+		conf.rot_ena = FIELD_GET(PLL_ROT_ENA, val);
+		conf.rot_dir = FIELD_GET(PLL_ROT_DIR, val);
+		conf.rot_sel = FIELD_GET(PLL_ROT_SEL, val);
+
+		conf.freq = s5_calc_freq(parent_rate, &conf);
+	} else
+		conf.freq = 0;
+
+	return conf.freq;
+}
+
+static long s5_pll_round_rate(struct clk_hw *hw, unsigned long rate,
+			      unsigned long *parent_rate)
+{
+	struct s5_pll_conf conf;
+
+	return s5_calc_params(rate, *parent_rate, &conf);
+}
+
+static const struct clk_ops s5_pll_ops = {
+	.enable		= s5_pll_enable,
+	.disable	= s5_pll_disable,
+	.set_rate	= s5_pll_set_rate,
+	.round_rate	= s5_pll_round_rate,
+	.recalc_rate	= s5_pll_recalc_rate,
+};
+
+static struct clk_hw *s5_clk_hw_get(struct of_phandle_args *clkspec, void *data)
+{
+	struct s5_clk_data *s5_clk = data;
+	unsigned int idx = clkspec->args[0];
+
+	if (idx >= N_CLOCKS) {
+		pr_err("%s: invalid index %u\n", __func__, idx);
+		return ERR_PTR(-EINVAL);
+	}
+
+	return &s5_clk->s5_hw[idx].hw;
+}
+
+static int s5_clk_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+	int i, ret;
+	struct s5_clk_data *s5_clk;
+	const char *parent_name;
+	struct clk_init_data init = {
+		.ops = &s5_pll_ops,
+		.parent_names = &parent_name,
+		.num_parents = 1,
+	};
+
+	s5_clk = devm_kzalloc(dev, sizeof(*s5_clk), GFP_KERNEL);
+	if (!s5_clk)
+		return -ENOMEM;
+
+	s5_clk->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(s5_clk->base))
+		return PTR_ERR(s5_clk->base);
+
+	parent_name = of_clk_get_parent_name(np, 0);
+	if (!parent_name) {
+		dev_err(dev, "%pOFn: missing parent clock\n", np);
+		return -EINVAL;
+	}
+
+	for (i = 0; i < N_CLOCKS; i++) {
+		struct s5_hw_clk *s5_hw = &s5_clk->s5_hw[i];
+
+		init.name = clk_names[i];
+		s5_hw->index = i;
+		s5_hw->reg = s5_clk->base + (i * sizeof(u32));
+		s5_hw->hw.init = &init;
+		ret = devm_clk_hw_register(dev, &s5_hw->hw);
+		if (ret) {
+			dev_err(dev, "failed to register %s clock\n",
+				init.name);
+			return ret;
+		}
+	}
+
+	return of_clk_add_hw_provider(np, s5_clk_hw_get, s5_clk);
+}
+
+static int s5_clk_remove(struct platform_device *pdev)
+{
+	of_clk_del_provider(pdev->dev.of_node);
+
+	return 0;
+}
+
+static const struct of_device_id s5_clk_dt_ids[] = {
+	{ .compatible = "microchip,sparx5-dpll", },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, s5_clk_dt_ids);
+
+static struct platform_driver s5_clk_driver = {
+	.probe  = s5_clk_probe,
+	.remove = s5_clk_remove,
+	.driver = {
+		.name = "sparx5-clk",
+		.of_match_table = s5_clk_dt_ids,
+	},
+};
+builtin_platform_driver(s5_clk_driver);
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
