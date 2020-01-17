Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA453141298
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 22:06:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nCy3JpdSHAOLi7SRcc/5HvahQLJebewbTM/hzw9JZGQ=; b=mo1LzHkHpf7mYd
	oI1oJzjz9cmj5Y+nVP9EpyvxVmr/14S43yb05SfE3CXTylIrqhFPN5/fiUZ6yX+r+H4jjydJwAOcY
	M+mwIJupbXcJzeR/c4kDxC4Wb0kSVYDQh2OMtn+2vLVZ+D5PMhVAIQtdP7Lk4eyXdX1k1i+L33Z19
	hBx6UZxX3OrH9NQNCgm4He/8LWppK64cWrx7jCqK6hznGkUVyu6BZdCy6MPl1K6Sb1urduAQQ4MX6
	s9e7HxCAP0zrWLSokSsPJnezJLGN2LUpE1KqwVp0UUYtjVqvl+pcwtFdJhTvkxLBWb7Gwaifh3r7e
	Y4ERu3cmuMx2fHpi1IDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isYoy-0000h9-Ub; Fri, 17 Jan 2020 21:06:24 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isYos-0000h1-M8
 for linux-arm-kernel@bombadil.infradead.org; Fri, 17 Jan 2020 21:06:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ISa7CUr/zEWUZ0eml7hPG2WfvJMVbIa2gHA8TZc3TG0=; b=NOdTXj2w1Myrk7t8K8u0q2HCBt
 ldukjOsw/deILVDRgr/YjCBz7tKbs293qt/NYTqQr5YmrnYSeiZVTI2zu3E1xvYvzLsy1XN8GVZRh
 GMYB8v/CG8d/4dK1tPnkyrnq5QKx0ea9vz5PYHsfQcKoOi+EwgbLYG6Jojn+kQLV/X4i+ka9rrQBI
 FQAUbvns+Ja5Qm2Of71xA0IrjFzL73ELJA7nrvKNBweLvDEXGQWtFRZkfsUydat/5+X4FyD91JV0J
 lGmINRsxcsGmSH16els6F5B+RwpKkQy2zdbFbbV8euRkIvNcfdvHAUd1rTWV+fosIwXoofHC/n3ls
 AzXhrGYw==;
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isYpB-0003Fb-27
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 21:06:42 +0000
X-Originating-IP: 90.65.92.102
Received: from localhost (lfbn-lyo-1-1913-102.w90-65.abo.wanadoo.fr
 [90.65.92.102]) (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 92A5E40002;
 Fri, 17 Jan 2020 21:05:33 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH] clk: at91: add at91sam9g45 pmc driver
Date: Fri, 17 Jan 2020 22:05:29 +0100
Message-Id: <20200117210529.17490-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_210637_139676_5B0090D1 
X-CRM114-Status: GOOD (  19.10  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a driver for the PMC clocks of the at91sam9g45 family.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/clk/at91/Makefile      |   1 +
 drivers/clk/at91/at91sam9g45.c | 220 +++++++++++++++++++++++++++++++++
 2 files changed, 221 insertions(+)
 create mode 100644 drivers/clk/at91/at91sam9g45.c

diff --git a/drivers/clk/at91/Makefile b/drivers/clk/at91/Makefile
index 3732241352ce..c02c53a0e02e 100644
--- a/drivers/clk/at91/Makefile
+++ b/drivers/clk/at91/Makefile
@@ -16,6 +16,7 @@ obj-$(CONFIG_HAVE_AT91_GENERATED_CLK)	+= clk-generated.o
 obj-$(CONFIG_HAVE_AT91_I2S_MUX_CLK)	+= clk-i2s-mux.o
 obj-$(CONFIG_HAVE_AT91_SAM9X60_PLL)	+= clk-sam9x60-pll.o
 obj-$(CONFIG_SOC_AT91SAM9) += at91sam9260.o at91sam9rl.o at91sam9x5.o
+obj-$(CONFIG_SOC_AT91SAM9) += at91sam9g45.o
 obj-$(CONFIG_SOC_SAM9X60) += sam9x60.o
 obj-$(CONFIG_SOC_SAMA5D4) += sama5d4.o
 obj-$(CONFIG_SOC_SAMA5D2) += sama5d2.o
diff --git a/drivers/clk/at91/at91sam9g45.c b/drivers/clk/at91/at91sam9g45.c
new file mode 100644
index 000000000000..38a7d2d2df0c
--- /dev/null
+++ b/drivers/clk/at91/at91sam9g45.c
@@ -0,0 +1,220 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <linux/clk-provider.h>
+#include <linux/mfd/syscon.h>
+#include <linux/slab.h>
+
+#include <dt-bindings/clock/at91.h>
+
+#include "pmc.h"
+
+static const struct clk_master_characteristics mck_characteristics = {
+	.output = { .min = 0, .max = 133333333 },
+	.divisors = { 1, 2, 4, 3 },
+};
+
+static u8 plla_out[] = { 0, 1, 2, 3, 0, 1, 2, 3 };
+
+static u16 plla_icpll[] = { 0, 0, 0, 0, 1, 1, 1, 1 };
+
+static const struct clk_range plla_outputs[] = {
+	{ .min = 745000000, .max = 800000000 },
+	{ .min = 695000000, .max = 750000000 },
+	{ .min = 645000000, .max = 700000000 },
+	{ .min = 595000000, .max = 650000000 },
+	{ .min = 545000000, .max = 600000000 },
+	{ .min = 495000000, .max = 555000000 },
+	{ .min = 445000000, .max = 500000000 },
+	{ .min = 400000000, .max = 450000000 },
+};
+
+static const struct clk_pll_characteristics plla_characteristics = {
+	.input = { .min = 2000000, .max = 32000000 },
+	.num_output = ARRAY_SIZE(plla_outputs),
+	.output = plla_outputs,
+	.icpll = plla_icpll,
+	.out = plla_out,
+};
+
+static const struct {
+	char *n;
+	char *p;
+	u8 id;
+} at91sam9g45_systemck[] = {
+	{ .n = "ddrck", .p = "masterck", .id = 2 },
+	{ .n = "uhpck", .p = "usbck",    .id = 6 },
+	{ .n = "pck0",  .p = "prog0",    .id = 8 },
+	{ .n = "pck1",  .p = "prog1",    .id = 9 },
+};
+
+static const struct clk_pcr_layout at91sam9g45_pcr_layout = {
+	.offset = 0x10c,
+	.cmd = BIT(12),
+	.pid_mask = GENMASK(5, 0),
+	.div_mask = GENMASK(17, 16),
+};
+
+struct pck {
+	char *n;
+	u8 id;
+};
+
+static const struct pck at91sam9g45_periphck[] = {
+	{ .n = "pioA_clk",       .id = 2, },
+	{ .n = "pioB_clk",       .id = 3, },
+	{ .n = "pioC_clk",       .id = 4, },
+	{ .n = "pioDE_clk",      .id = 5, },
+	{ .n = "trng_clk",       .id = 6, },
+	{ .n = "usart0_clk",     .id = 7, },
+	{ .n = "usart1_clk",     .id = 8, },
+	{ .n = "usart2_clk",     .id = 9, },
+	{ .n = "usart3_clk",     .id = 10, },
+	{ .n = "mci0_clk",       .id = 11, },
+	{ .n = "twi0_clk",       .id = 12, },
+	{ .n = "twi1_clk",       .id = 13, },
+	{ .n = "spi0_clk",       .id = 14, },
+	{ .n = "spi1_clk",       .id = 15, },
+	{ .n = "ssc0_clk",       .id = 16, },
+	{ .n = "ssc1_clk",       .id = 17, },
+	{ .n = "tcb0_clk",       .id = 18, },
+	{ .n = "pwm_clk",        .id = 19, },
+	{ .n = "adc_clk",        .id = 20, },
+	{ .n = "dma0_clk",       .id = 21, },
+	{ .n = "uhphs_clk",      .id = 22, },
+	{ .n = "lcd_clk",        .id = 23, },
+	{ .n = "ac97_clk",       .id = 24, },
+	{ .n = "macb0_clk",      .id = 25, },
+	{ .n = "isi_clk",        .id = 26, },
+	{ .n = "udphs_clk",      .id = 27, },
+	{ .n = "aestdessha_clk", .id = 28, },
+	{ .n = "mci1_clk",       .id = 29, },
+	{ .n = "vdec_clk",       .id = 30, },
+};
+
+static void __init at91sam9g45_pmc_setup(struct device_node *np)
+{
+	const char *slck_name, *mainxtal_name;
+	struct pmc_data *at91sam9g45_pmc;
+	const char *parent_names[6];
+	struct regmap *regmap;
+	struct clk_hw *hw;
+	int i;
+	bool bypass;
+
+	i = of_property_match_string(np, "clock-names", "slow_clk");
+	if (i < 0)
+		return;
+
+	slck_name = of_clk_get_parent_name(np, i);
+
+	i = of_property_match_string(np, "clock-names", "main_xtal");
+	if (i < 0)
+		return;
+	mainxtal_name = of_clk_get_parent_name(np, i);
+
+	regmap = syscon_node_to_regmap(np);
+	if (IS_ERR(regmap))
+		return;
+
+	at91sam9g45_pmc = pmc_data_allocate(PMC_MAIN + 1,
+					    nck(at91sam9g45_systemck),
+					    nck(at91sam9g45_periphck), 0);
+	if (!at91sam9g45_pmc)
+		return;
+
+	bypass = of_property_read_bool(np, "atmel,osc-bypass");
+
+	hw = at91_clk_register_main_osc(regmap, "main_osc", mainxtal_name,
+					bypass);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	hw = at91_clk_register_rm9200_main(regmap, "mainck", "main_osc");
+	if (IS_ERR(hw))
+		goto err_free;
+
+	at91sam9g45_pmc->chws[PMC_MAIN] = hw;
+
+	hw = at91_clk_register_pll(regmap, "pllack", "mainck", 0,
+				   &at91rm9200_pll_layout, &plla_characteristics);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	hw = at91_clk_register_plldiv(regmap, "plladivck", "pllack");
+	if (IS_ERR(hw))
+		goto err_free;
+
+	hw = at91_clk_register_utmi(regmap, NULL, "utmick", "mainck");
+	if (IS_ERR(hw))
+		goto err_free;
+
+	at91sam9g45_pmc->chws[PMC_UTMI] = hw;
+
+	parent_names[0] = slck_name;
+	parent_names[1] = "mainck";
+	parent_names[2] = "plladivck";
+	parent_names[3] = "utmick";
+	hw = at91_clk_register_master(regmap, "masterck", 4, parent_names,
+				      &at91rm9200_master_layout,
+				      &mck_characteristics);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	at91sam9g45_pmc->chws[PMC_MCK] = hw;
+
+	parent_names[0] = "plladivck";
+	parent_names[1] = "utmick";
+	hw = at91sam9x5_clk_register_usb(regmap, "usbck", parent_names, 2);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	parent_names[0] = slck_name;
+	parent_names[1] = "mainck";
+	parent_names[2] = "plladivck";
+	parent_names[3] = "utmick";
+	parent_names[4] = "masterck";
+	for (i = 0; i < 2; i++) {
+		char name[6];
+
+		snprintf(name, sizeof(name), "prog%d", i);
+
+		hw = at91_clk_register_programmable(regmap, name,
+						    parent_names, 5, i,
+						    &at91sam9g45_programmable_layout);
+		if (IS_ERR(hw))
+			goto err_free;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(at91sam9g45_systemck); i++) {
+		hw = at91_clk_register_system(regmap, at91sam9g45_systemck[i].n,
+					      at91sam9g45_systemck[i].p,
+					      at91sam9g45_systemck[i].id);
+		if (IS_ERR(hw))
+			goto err_free;
+
+		at91sam9g45_pmc->shws[at91sam9g45_systemck[i].id] = hw;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(at91sam9g45_periphck); i++) {
+		hw = at91_clk_register_peripheral(regmap,
+						  at91sam9g45_periphck[i].n,
+						  "masterck",
+						  at91sam9g45_periphck[i].id);
+		if (IS_ERR(hw))
+			goto err_free;
+
+		at91sam9g45_pmc->phws[at91sam9g45_periphck[i].id] = hw;
+	}
+
+	of_clk_add_hw_provider(np, of_clk_hw_pmc_get, at91sam9g45_pmc);
+
+	return;
+
+err_free:
+	pmc_data_free(at91sam9g45_pmc);
+}
+/*
+ * The TCB is used as the clocksource so its clock is needed early. This means
+ * this can't be a platform driver.
+ */
+CLK_OF_DECLARE_DRIVER(at91sam9g45_pmc, "atmel,at91sam9g45-pmc",
+		      at91sam9g45_pmc_setup);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
