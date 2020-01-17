Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9DF1412BF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 22:20:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zC2sRUHLAsbRyywL3l1iJXYZ93x9dS4+PHwjfCp/Ijs=; b=SUVOjPxrMR1Sse
	DWAhOzFdI4BES/fBHthafBKDtwcC6r43O1h8gCxMgild+0MI3iQFGDUpm6AVH/lHTJTmdq4X/jQRE
	1RuCQtjsBXkkOePo3FpE+pvBqvVsL6+WqMXXhDE5EhPQ75JZp11EKyOQEE3yXLwzlEoGe/VpkxP+I
	IV+SjH3lYFGq8ePIHgJWpuKchipV+V8JU6eq0kOdx1XgU7GvAD8rkJUCJCPrHhHH+9zqQaCtOGZg0
	qJp1rHzVKaXf4JSYJVwaWMsM020qhloYLcGaheDFaEGlttl7IXFmpEYD61B52bYtOWeHTcLSIs0CR
	u3CPGFWcipjYTvH+0nFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isZ2h-0006u1-U9; Fri, 17 Jan 2020 21:20:35 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isZ2Z-0006tE-Kj
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 21:20:29 +0000
X-Originating-IP: 90.65.92.102
Received: from localhost (lfbn-lyo-1-1913-102.w90-65.abo.wanadoo.fr
 [90.65.92.102]) (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id A4B4760002;
 Fri, 17 Jan 2020 21:20:19 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] clk: at91: add at91sam9n12 pmc driver
Date: Fri, 17 Jan 2020 22:20:17 +0100
Message-Id: <20200117212017.20278-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_132027_952620_46FF238B 
X-CRM114-Status: GOOD (  14.10  )
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a driver for the PMC clocks of the at91sam9n12 family.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
Changes in v2:
 - use nck for the number of peripheral clocks
 - correct alignment

 drivers/clk/at91/Makefile      |   3 +-
 drivers/clk/at91/at91sam9n12.c | 239 +++++++++++++++++++++++++++++++++
 2 files changed, 241 insertions(+), 1 deletion(-)
 create mode 100644 drivers/clk/at91/at91sam9n12.c

diff --git a/drivers/clk/at91/Makefile b/drivers/clk/at91/Makefile
index 3732241352ce..d467c6f8650a 100644
--- a/drivers/clk/at91/Makefile
+++ b/drivers/clk/at91/Makefile
@@ -15,7 +15,8 @@ obj-$(CONFIG_HAVE_AT91_H32MX)		+= clk-h32mx.o
 obj-$(CONFIG_HAVE_AT91_GENERATED_CLK)	+= clk-generated.o
 obj-$(CONFIG_HAVE_AT91_I2S_MUX_CLK)	+= clk-i2s-mux.o
 obj-$(CONFIG_HAVE_AT91_SAM9X60_PLL)	+= clk-sam9x60-pll.o
-obj-$(CONFIG_SOC_AT91SAM9) += at91sam9260.o at91sam9rl.o at91sam9x5.o
+obj-$(CONFIG_SOC_AT91SAM9) += at91sam9260.o at91sam9rl.o
+obj-$(CONFIG_SOC_AT91SAM9) += at91sam9n12.o at91sam9x5.o
 obj-$(CONFIG_SOC_SAM9X60) += sam9x60.o
 obj-$(CONFIG_SOC_SAMA5D4) += sama5d4.o
 obj-$(CONFIG_SOC_SAMA5D2) += sama5d2.o
diff --git a/drivers/clk/at91/at91sam9n12.c b/drivers/clk/at91/at91sam9n12.c
new file mode 100644
index 000000000000..844b2125d7cb
--- /dev/null
+++ b/drivers/clk/at91/at91sam9n12.c
@@ -0,0 +1,239 @@
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
+	.have_div3_pres = 1,
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
+static u8 pllb_out[] = { 0 };
+
+static const struct clk_range pllb_outputs[] = {
+	{ .min = 30000000, .max = 100000000 },
+};
+
+static const struct clk_pll_characteristics pllb_characteristics = {
+	.input = { .min = 2000000, .max = 32000000 },
+	.num_output = ARRAY_SIZE(pllb_outputs),
+	.output = pllb_outputs,
+	.out = pllb_out,
+};
+
+static const struct {
+	char *n;
+	char *p;
+	u8 id;
+} at91sam9n12_systemck[] = {
+	{ .n = "ddrck", .p = "masterck", .id = 2 },
+	{ .n = "lcdck", .p = "masterck", .id = 3 },
+	{ .n = "uhpck", .p = "usbck",    .id = 6 },
+	{ .n = "udpck", .p = "usbck",    .id = 7 },
+	{ .n = "pck0",  .p = "prog0",    .id = 8 },
+	{ .n = "pck1",  .p = "prog1",    .id = 9 },
+};
+
+static const struct clk_pcr_layout at91sam9n12_pcr_layout = {
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
+static const struct pck at91sam9n12_periphck[] = {
+	{ .n = "pioAB_clk",  .id = 2, },
+	{ .n = "pioCD_clk",  .id = 3, },
+	{ .n = "fuse_clk",   .id = 4, },
+	{ .n = "usart0_clk", .id = 5, },
+	{ .n = "usart1_clk", .id = 6, },
+	{ .n = "usart2_clk", .id = 7, },
+	{ .n = "usart3_clk", .id = 8, },
+	{ .n = "twi0_clk",   .id = 9, },
+	{ .n = "twi1_clk",   .id = 10, },
+	{ .n = "mci0_clk",   .id = 12, },
+	{ .n = "spi0_clk",   .id = 13, },
+	{ .n = "spi1_clk",   .id = 14, },
+	{ .n = "uart0_clk",  .id = 15, },
+	{ .n = "uart1_clk",  .id = 16, },
+	{ .n = "tcb_clk",    .id = 17, },
+	{ .n = "pwm_clk",    .id = 18, },
+	{ .n = "adc_clk",    .id = 19, },
+	{ .n = "dma0_clk",   .id = 20, },
+	{ .n = "uhphs_clk",  .id = 22, },
+	{ .n = "udphs_clk",  .id = 23, },
+	{ .n = "lcdc_clk",   .id = 25, },
+	{ .n = "sha_clk",    .id = 27, },
+	{ .n = "ssc0_clk",   .id = 28, },
+	{ .n = "aes_clk",    .id = 29, },
+	{ .n = "trng_clk",   .id = 30, },
+};
+
+static void __init at91sam9n12_pmc_setup(struct device_node *np)
+{
+	struct clk_range range = CLK_RANGE(0, 0);
+	const char *slck_name, *mainxtal_name;
+	struct pmc_data *at91sam9n12_pmc;
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
+	at91sam9n12_pmc = pmc_data_allocate(PMC_MAIN + 1,
+					    nck(at91sam9n12_systemck),
+					    nck(at91sam9n12_periphck), 0);
+	if (!at91sam9n12_pmc)
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
+	at91sam9n12_pmc->chws[PMC_MAIN] = hw;
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
+	hw = at91_clk_register_pll(regmap, "pllbck", "mainck", 1,
+				   &at91rm9200_pll_layout, &pllb_characteristics);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	parent_names[0] = slck_name;
+	parent_names[1] = "mainck";
+	parent_names[2] = "plladivck";
+	parent_names[3] = "pllbck";
+	hw = at91_clk_register_master(regmap, "masterck", 4, parent_names,
+				      &at91sam9x5_master_layout,
+				      &mck_characteristics);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	at91sam9n12_pmc->chws[PMC_MCK] = hw;
+
+	hw = at91sam9n12_clk_register_usb(regmap, "usbck", "pllbck");
+	if (IS_ERR(hw))
+		goto err_free;
+
+	parent_names[0] = slck_name;
+	parent_names[1] = "mainck";
+	parent_names[2] = "plladivck";
+	parent_names[3] = "pllbck";
+	parent_names[4] = "masterck";
+	for (i = 0; i < 2; i++) {
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
+	for (i = 0; i < ARRAY_SIZE(at91sam9n12_systemck); i++) {
+		hw = at91_clk_register_system(regmap, at91sam9n12_systemck[i].n,
+					      at91sam9n12_systemck[i].p,
+					      at91sam9n12_systemck[i].id);
+		if (IS_ERR(hw))
+			goto err_free;
+
+		at91sam9n12_pmc->shws[at91sam9n12_systemck[i].id] = hw;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(at91sam9n12_periphck); i++) {
+		hw = at91_clk_register_sam9x5_peripheral(regmap, &pmc_pcr_lock,
+							 &at91sam9n12_pcr_layout,
+							 at91sam9n12_periphck[i].n,
+							 "masterck",
+							 at91sam9n12_periphck[i].id,
+							 &range);
+		if (IS_ERR(hw))
+			goto err_free;
+
+		at91sam9n12_pmc->phws[at91sam9n12_periphck[i].id] = hw;
+	}
+
+	of_clk_add_hw_provider(np, of_clk_hw_pmc_get, at91sam9n12_pmc);
+
+	return;
+
+err_free:
+	pmc_data_free(at91sam9n12_pmc);
+}
+/*
+ * The TCB is used as the clocksource so its clock is needed early. This means
+ * this can't be a platform driver.
+ */
+CLK_OF_DECLARE_DRIVER(at91sam9n12_pmc, "atmel,at91sam9n12-pmc",
+		      at91sam9n12_pmc_setup);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
