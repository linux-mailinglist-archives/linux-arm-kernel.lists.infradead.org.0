Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3411379B1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 23:31:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H+djRiKCvFtLsqYB8O3kLQcKvtqIGsrKeEO30rv3RKY=; b=bqcBj00Lv2L5iq
	bJA3fBAfJ4a8ZVSvq7LkSTq21Aeob76ncJLCOekMJkyVjbPtdNcK7nls9REirho+c2OqkuzNZ3Tr5
	lgC5mIYEBpZ+d9qznkUx7Fkf2VMLrdXDB03GS5uby9+dfKWwpy1Hfv0oRxOYZCuuyctOjAt47I6e4
	Do/0Ym+4dudojQmRyqYUzgw5fPhQf2ZiJHJmpR1LezI9zoJz1xKWoZ2z+Gu8ccz0x6Kv6I8bi0f51
	2E/uhH+AST1OGmyM3fOsJ/91L/T4HGyxhEctpGoZ82+fo64OkyQolTfu+wH7O1uOgsgMj9H/VHEMb
	4kxVB+wKsPtR34NHrgEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq2o4-0001Yi-2D; Fri, 10 Jan 2020 22:31:04 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq2nw-0001YD-3g
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 22:30:58 +0000
X-Originating-IP: 90.65.92.102
Received: from localhost (lfbn-lyo-1-1913-102.w90-65.abo.wanadoo.fr
 [90.65.92.102]) (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id F1A4360003;
 Fri, 10 Jan 2020 22:30:40 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH v2] clk: at91: add sama5d3 pmc driver
Date: Fri, 10 Jan 2020 23:30:33 +0100
Message-Id: <20200110223033.1261791-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_143056_423278_F15CE789 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 =?UTF-8?q?Karl=20Rudb=C3=A6k=20Olsen?= <karl@micro-technic.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a driver for the PMC clocks of the sama5d3.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
Changes in v2:
 - fixed the output range for the paripheral clocks
 - added a comment why the PMC driver can't be a platform driver

 drivers/clk/at91/Makefile  |   1 +
 drivers/clk/at91/sama5d3.c | 240 +++++++++++++++++++++++++++++++++++++
 2 files changed, 241 insertions(+)
 create mode 100644 drivers/clk/at91/sama5d3.c

diff --git a/drivers/clk/at91/Makefile b/drivers/clk/at91/Makefile
index 3732241352ce..e3be7f40f79e 100644
--- a/drivers/clk/at91/Makefile
+++ b/drivers/clk/at91/Makefile
@@ -17,5 +17,6 @@ obj-$(CONFIG_HAVE_AT91_I2S_MUX_CLK)	+= clk-i2s-mux.o
 obj-$(CONFIG_HAVE_AT91_SAM9X60_PLL)	+= clk-sam9x60-pll.o
 obj-$(CONFIG_SOC_AT91SAM9) += at91sam9260.o at91sam9rl.o at91sam9x5.o
 obj-$(CONFIG_SOC_SAM9X60) += sam9x60.o
+obj-$(CONFIG_SOC_SAMA5D3) += sama5d3.o
 obj-$(CONFIG_SOC_SAMA5D4) += sama5d4.o
 obj-$(CONFIG_SOC_SAMA5D2) += sama5d2.o
diff --git a/drivers/clk/at91/sama5d3.c b/drivers/clk/at91/sama5d3.c
new file mode 100644
index 000000000000..88506f909c08
--- /dev/null
+++ b/drivers/clk/at91/sama5d3.c
@@ -0,0 +1,240 @@
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
+	.output = { .min = 0, .max = 166000000 },
+	.divisors = { 1, 2, 4, 3 },
+};
+
+static u8 plla_out[] = { 0 };
+
+static u16 plla_icpll[] = { 0 };
+
+static const struct clk_range plla_outputs[] = {
+	{ .min = 400000000, .max = 1000000000 },
+};
+
+static const struct clk_pll_characteristics plla_characteristics = {
+	.input = { .min = 8000000, .max = 50000000 },
+	.num_output = ARRAY_SIZE(plla_outputs),
+	.output = plla_outputs,
+	.icpll = plla_icpll,
+	.out = plla_out,
+};
+
+static const struct clk_pcr_layout sama5d3_pcr_layout = {
+	.offset = 0x10c,
+	.cmd = BIT(12),
+	.pid_mask = GENMASK(6, 0),
+	.div_mask = GENMASK(17, 16),
+};
+
+static const struct {
+	char *n;
+	char *p;
+	u8 id;
+} sama5d3_systemck[] = {
+	{ .n = "ddrck", .p = "masterck", .id = 2 },
+	{ .n = "lcdck", .p = "masterck", .id = 3 },
+	{ .n = "smdck", .p = "smdclk",   .id = 4 },
+	{ .n = "uhpck", .p = "usbck",    .id = 6 },
+	{ .n = "udpck", .p = "usbck",    .id = 7 },
+	{ .n = "pck0",  .p = "prog0",    .id = 8 },
+	{ .n = "pck1",  .p = "prog1",    .id = 9 },
+	{ .n = "pck2",  .p = "prog2",    .id = 10 },
+};
+
+static const struct {
+	char *n;
+	u8 id;
+	struct clk_range r;
+} sama5d3_periphck[] = {
+	{ .n = "dbgu_clk", .id = 2, },
+	{ .n = "hsmc_clk", .id = 5, },
+	{ .n = "pioA_clk", .id = 6, },
+	{ .n = "pioB_clk", .id = 7, },
+	{ .n = "pioC_clk", .id = 8, },
+	{ .n = "pioD_clk", .id = 9, },
+	{ .n = "pioE_clk", .id = 10, },
+	{ .n = "usart0_clk", .id = 12, .r = { .min = 0, .max = 83000000 }, },
+	{ .n = "usart1_clk", .id = 13, .r = { .min = 0, .max = 83000000 }, },
+	{ .n = "usart2_clk", .id = 14, .r = { .min = 0, .max = 83000000 }, },
+	{ .n = "usart3_clk", .id = 15, .r = { .min = 0, .max = 83000000 }, },
+	{ .n = "uart0_clk", .id = 16, .r = { .min = 0, .max = 83000000 }, },
+	{ .n = "uart1_clk", .id = 17, .r = { .min = 0, .max = 83000000 }, },
+	{ .n = "twi0_clk", .id = 18, .r = { .min = 0, .max = 41500000 }, },
+	{ .n = "twi1_clk", .id = 19, .r = { .min = 0, .max = 41500000 }, },
+	{ .n = "twi2_clk", .id = 20, .r = { .min = 0, .max = 41500000 }, },
+	{ .n = "mci0_clk", .id = 21, },
+	{ .n = "mci1_clk", .id = 22, },
+	{ .n = "mci2_clk", .id = 23, },
+	{ .n = "spi0_clk", .id = 24, .r = { .min = 0, .max = 166000000 }, },
+	{ .n = "spi1_clk", .id = 25, .r = { .min = 0, .max = 166000000 }, },
+	{ .n = "tcb0_clk", .id = 26, .r = { .min = 0, .max = 166000000 }, },
+	{ .n = "tcb1_clk", .id = 27, .r = { .min = 0, .max = 166000000 }, },
+	{ .n = "pwm_clk", .id = 28, },
+	{ .n = "adc_clk", .id = 29, .r = { .min = 0, .max = 83000000 }, },
+	{ .n = "dma0_clk", .id = 30, },
+	{ .n = "dma1_clk", .id = 31, },
+	{ .n = "uhphs_clk", .id = 32, },
+	{ .n = "udphs_clk", .id = 33, },
+	{ .n = "macb0_clk", .id = 34, },
+	{ .n = "macb1_clk", .id = 35, },
+	{ .n = "lcdc_clk", .id = 36, },
+	{ .n = "isi_clk", .id = 37, },
+	{ .n = "ssc0_clk", .id = 38, .r = { .min = 0, .max = 83000000 }, },
+	{ .n = "ssc1_clk", .id = 39, .r = { .min = 0, .max = 83000000 }, },
+	{ .n = "can0_clk", .id = 40, .r = { .min = 0, .max = 83000000 }, },
+	{ .n = "can1_clk", .id = 41, .r = { .min = 0, .max = 83000000 }, },
+	{ .n = "sha_clk", .id = 42, },
+	{ .n = "aes_clk", .id = 43, },
+	{ .n = "tdes_clk", .id = 44, },
+	{ .n = "trng_clk", .id = 45, },
+	{ .n = "fuse_clk", .id = 48, },
+	{ .n = "mpddr_clk", .id = 49, },
+};
+
+static void __init sama5d3_pmc_setup(struct device_node *np)
+{
+	const char *slck_name, *mainxtal_name;
+	struct pmc_data *sama5d3_pmc;
+	const char *parent_names[5];
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
+	sama5d3_pmc = pmc_data_allocate(PMC_MAIN + 1,
+					nck(sama5d3_systemck),
+					nck(sama5d3_periphck), 0);
+	if (!sama5d3_pmc)
+		return;
+
+	hw = at91_clk_register_main_rc_osc(regmap, "main_rc_osc", 12000000,
+					   50000000);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	bypass = of_property_read_bool(np, "atmel,osc-bypass");
+
+	hw = at91_clk_register_main_osc(regmap, "main_osc", mainxtal_name,
+					bypass);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	parent_names[0] = "main_rc_osc";
+	parent_names[1] = "main_osc";
+	hw = at91_clk_register_sam9x5_main(regmap, "mainck", parent_names, 2);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	hw = at91_clk_register_pll(regmap, "pllack", "mainck", 0,
+				   &sama5d3_pll_layout, &plla_characteristics);
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
+	sama5d3_pmc->chws[PMC_UTMI] = hw;
+
+	parent_names[0] = slck_name;
+	parent_names[1] = "mainck";
+	parent_names[2] = "plladivck";
+	parent_names[3] = "utmick";
+	hw = at91_clk_register_master(regmap, "masterck", 4, parent_names,
+				      &at91sam9x5_master_layout,
+				      &mck_characteristics);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	sama5d3_pmc->chws[PMC_MCK] = hw;
+
+	parent_names[0] = "plladivck";
+	parent_names[1] = "utmick";
+	hw = at91sam9x5_clk_register_usb(regmap, "usbck", parent_names, 2);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	hw = at91sam9x5_clk_register_smd(regmap, "smdclk", parent_names, 2);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	parent_names[0] = slck_name;
+	parent_names[1] = "mainck";
+	parent_names[2] = "plladivck";
+	parent_names[3] = "utmick";
+	parent_names[4] = "masterck";
+	for (i = 0; i < 3; i++) {
+		char name[6];
+
+		snprintf(name, sizeof(name), "prog%d", i);
+
+		hw = at91_clk_register_programmable(regmap, name,
+						    parent_names, 5, i,
+						    &at91sam9x5_programmable_layout);
+		if (IS_ERR(hw))
+			goto err_free;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(sama5d3_systemck); i++) {
+		hw = at91_clk_register_system(regmap, sama5d3_systemck[i].n,
+					      sama5d3_systemck[i].p,
+					      sama5d3_systemck[i].id);
+		if (IS_ERR(hw))
+			goto err_free;
+
+		sama5d3_pmc->shws[sama5d3_systemck[i].id] = hw;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(sama5d3_periphck); i++) {
+		hw = at91_clk_register_sam9x5_peripheral(regmap, &pmc_pcr_lock,
+							 &sama5d3_pcr_layout,
+							 sama5d3_periphck[i].n,
+							 "masterck",
+							 sama5d3_periphck[i].id,
+							 &sama5d3_periphck[i].r);
+		if (IS_ERR(hw))
+			goto err_free;
+
+		sama5d3_pmc->phws[sama5d3_periphck[i].id] = hw;
+	}
+
+	of_clk_add_hw_provider(np, of_clk_hw_pmc_get, sama5d3_pmc);
+
+	return;
+
+err_free:
+	pmc_data_free(sama5d3_pmc);
+}
+/*
+ * The TCB is used as the clocksource so its clock is needed early. This means
+ * this can't be a platform driver.
+ */
+CLK_OF_DECLARE_DRIVER(sama5d3_pmc, "atmel,sama5d3-pmc", sama5d3_pmc_setup);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
