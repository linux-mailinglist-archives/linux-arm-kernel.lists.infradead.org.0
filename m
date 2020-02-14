Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B575915DA1E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 16:00:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gF1AguHYDOjN1SFYCgGOdcb4exNFBRFFvER2L2F45qk=; b=GnAEew7B60iMct
	7qYsM7ZVm1QfrzpsDkE2PYuZFQwXzsbAwq92cO49BWnENICtMZyXeoqM2j04j3qWz2/D40bH8Qy14
	WyTernJXxqgUEG82hUVcAbSJf5hrvucPptNUqVlwLvvFrq/DRD/Ts26XyNW4aJnTPOIRh/MX20TKM
	x90HC3l7xMBhUBZaLPgwzAw3nuetXneqVBMECMjx1OwWWiHahi+OwjKEAk/NQ76jk04tfJ0bwKIjP
	jmONDzPd34sZXCfJvLgLzpzIP1tEUIe7qEDMqOwqsr0b1UBt4Hmundb1wCFS1NoYBXyONEoho9Xu9
	PDfMrihSrQUmDU+xxYsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2cSO-0007ex-V9; Fri, 14 Feb 2020 15:00:40 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2cSI-0007eq-C3
 for linux-arm-kernel@bombadil.infradead.org; Fri, 14 Feb 2020 15:00:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=ATWmrg08HrgVzp6nFn4PcR19CVsFXwgJLEkpXjniyWA=; b=s/696B7lmH167zpqNirM4gTKsm
 qpABHYZnpwi9VomzeSa1a/YPQoPn0tKZk5yMlLSQis+vU3mIsvGTpXcuaEwAqg2tt44KlJglGHoDL
 3KOz3CFCiN+1o2tvFaGwrf94ppP+mcveyIYFADLlRSYPiwLiivehgbaSKY7HNmG8cPtMF7/QSi5D7
 sV2eO53ks6DvU9jVPfXucAkgME6xsqdl7qOOZGGz8rLX2XwjaKLtPYh34ky789qRqw6mxh7BujLS7
 /Ry1wY1toY7tYVdgxrw+JEr/ZmaTDXgNrCNJ2rxkRZWGowhg0fxXeWyQl91P/lZqkrV4rF1vSJkuS
 yxdMkk/g==;
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2cSE-0008Rt-8Q
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 15:00:33 +0000
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 789F524000E;
 Fri, 14 Feb 2020 14:59:52 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>
Subject: [PATCH] clk: at91: add at91rm9200 pmc driver
Date: Fri, 14 Feb 2020 15:59:33 +0100
Message-Id: <20200214145934.53648-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_150030_457606_E839F985 
X-CRM114-Status: GOOD (  19.50  )
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-2.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a driver for the PMC clocks of the at91rm9200.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/clk/at91/Makefile     |   1 +
 drivers/clk/at91/at91rm9200.c | 199 ++++++++++++++++++++++++++++++++++
 2 files changed, 200 insertions(+)
 create mode 100644 drivers/clk/at91/at91rm9200.c

diff --git a/drivers/clk/at91/Makefile b/drivers/clk/at91/Makefile
index 3732241352ce..08fa7930c8fd 100644
--- a/drivers/clk/at91/Makefile
+++ b/drivers/clk/at91/Makefile
@@ -15,6 +15,7 @@ obj-$(CONFIG_HAVE_AT91_H32MX)		+= clk-h32mx.o
 obj-$(CONFIG_HAVE_AT91_GENERATED_CLK)	+= clk-generated.o
 obj-$(CONFIG_HAVE_AT91_I2S_MUX_CLK)	+= clk-i2s-mux.o
 obj-$(CONFIG_HAVE_AT91_SAM9X60_PLL)	+= clk-sam9x60-pll.o
+obj-$(CONFIG_SOC_AT91RM9200) += at91rm9200.o
 obj-$(CONFIG_SOC_AT91SAM9) += at91sam9260.o at91sam9rl.o at91sam9x5.o
 obj-$(CONFIG_SOC_SAM9X60) += sam9x60.o
 obj-$(CONFIG_SOC_SAMA5D4) += sama5d4.o
diff --git a/drivers/clk/at91/at91rm9200.c b/drivers/clk/at91/at91rm9200.c
new file mode 100644
index 000000000000..90b2ace7f7bd
--- /dev/null
+++ b/drivers/clk/at91/at91rm9200.c
@@ -0,0 +1,199 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <linux/clk-provider.h>
+#include <linux/mfd/syscon.h>
+#include <linux/slab.h>
+
+#include <dt-bindings/clock/at91.h>
+
+#include "pmc.h"
+
+struct sck {
+	char *n;
+	char *p;
+	u8 id;
+};
+
+struct pck {
+	char *n;
+	u8 id;
+};
+
+static const struct clk_master_characteristics rm9200_mck_characteristics = {
+	.output = { .min = 0, .max = 80000000 },
+	.divisors = { 1, 2, 3, 4 },
+};
+
+static u8 rm9200_pll_out[] = { 0, 2 };
+
+static const struct clk_range rm9200_pll_outputs[] = {
+	{ .min = 80000000, .max = 160000000 },
+	{ .min = 150000000, .max = 180000000 },
+};
+
+static const struct clk_pll_characteristics rm9200_pll_characteristics = {
+	.input = { .min = 1000000, .max = 32000000 },
+	.num_output = ARRAY_SIZE(rm9200_pll_outputs),
+	.output = rm9200_pll_outputs,
+	.out = rm9200_pll_out,
+};
+
+static const struct sck at91rm9200_systemck[] = {
+	{ .n = "udpck", .p = "usbck",    .id = 2 },
+	{ .n = "uhpck", .p = "usbck",    .id = 4 },
+	{ .n = "pck0",  .p = "prog0",    .id = 8 },
+	{ .n = "pck1",  .p = "prog1",    .id = 9 },
+	{ .n = "pck2",  .p = "prog2",    .id = 10 },
+	{ .n = "pck3",  .p = "prog3",    .id = 11 },
+};
+
+static const struct pck at91rm9200_periphck[] = {
+	{ .n = "pioA_clk",   .id = 2 },
+	{ .n = "pioB_clk",   .id = 3 },
+	{ .n = "pioC_clk",   .id = 4 },
+	{ .n = "pioD_clk",   .id = 5 },
+	{ .n = "usart0_clk", .id = 6 },
+	{ .n = "usart1_clk", .id = 7 },
+	{ .n = "usart2_clk", .id = 8 },
+	{ .n = "usart3_clk", .id = 9 },
+	{ .n = "mci0_clk",   .id = 10 },
+	{ .n = "udc_clk",    .id = 11 },
+	{ .n = "twi0_clk",   .id = 12 },
+	{ .n = "spi0_clk",   .id = 13 },
+	{ .n = "ssc0_clk",   .id = 14 },
+	{ .n = "ssc1_clk",   .id = 15 },
+	{ .n = "ssc2_clk",   .id = 16 },
+	{ .n = "tc0_clk",    .id = 17 },
+	{ .n = "tc1_clk",    .id = 18 },
+	{ .n = "tc2_clk",    .id = 19 },
+	{ .n = "tc3_clk",    .id = 20 },
+	{ .n = "tc4_clk",    .id = 21 },
+	{ .n = "tc5_clk",    .id = 22 },
+	{ .n = "ohci_clk",   .id = 23 },
+	{ .n = "macb0_clk",  .id = 24 },
+};
+
+static void __init at91rm9200_pmc_setup(struct device_node *np)
+{
+	const char *slowxtal_name, *mainxtal_name;
+	struct pmc_data *at91rm9200_pmc;
+	u32 usb_div[] = { 1, 2, 0, 0 };
+	const char *parent_names[6];
+	struct regmap *regmap;
+	struct clk_hw *hw;
+	int i;
+	bool bypass;
+
+	i = of_property_match_string(np, "clock-names", "slow_xtal");
+	if (i < 0)
+		return;
+
+	slowxtal_name = of_clk_get_parent_name(np, i);
+
+	i = of_property_match_string(np, "clock-names", "main_xtal");
+	if (i < 0)
+		return;
+	mainxtal_name = of_clk_get_parent_name(np, i);
+
+	regmap = device_node_to_regmap(np);
+	if (IS_ERR(regmap))
+		return;
+
+	at91rm9200_pmc = pmc_data_allocate(PMC_MAIN + 1,
+					    nck(at91rm9200_systemck),
+					    nck(at91rm9200_periphck), 0);
+	if (!at91rm9200_pmc)
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
+	at91rm9200_pmc->chws[PMC_MAIN] = hw;
+
+	hw = at91_clk_register_pll(regmap, "pllack", "mainck", 0,
+				   &at91rm9200_pll_layout,
+				   &rm9200_pll_characteristics);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	hw = at91_clk_register_pll(regmap, "pllbck", "mainck", 1,
+				   &at91rm9200_pll_layout,
+				   &rm9200_pll_characteristics);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	parent_names[0] = slowxtal_name;
+	parent_names[1] = "mainck";
+	parent_names[2] = "pllack";
+	parent_names[3] = "pllbck";
+	hw = at91_clk_register_master(regmap, "masterck", 4, parent_names,
+				      &at91rm9200_master_layout,
+				      &rm9200_mck_characteristics);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	at91rm9200_pmc->chws[PMC_MCK] = hw;
+
+	hw = at91rm9200_clk_register_usb(regmap, "usbck", "pllbck", usb_div);
+	if (IS_ERR(hw))
+		goto err_free;
+
+	parent_names[0] = slowxtal_name;
+	parent_names[1] = "mainck";
+	parent_names[2] = "pllack";
+	parent_names[3] = "pllbck";
+	for (i = 0; i < 4; i++) {
+		char name[6];
+
+		snprintf(name, sizeof(name), "prog%d", i);
+
+		hw = at91_clk_register_programmable(regmap, name,
+						    parent_names, 4, i,
+						    &at91rm9200_programmable_layout);
+		if (IS_ERR(hw))
+			goto err_free;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(at91rm9200_systemck); i++) {
+		hw = at91_clk_register_system(regmap, at91rm9200_systemck[i].n,
+					      at91rm9200_systemck[i].p,
+					      at91rm9200_systemck[i].id);
+		if (IS_ERR(hw))
+			goto err_free;
+
+		at91rm9200_pmc->shws[at91rm9200_systemck[i].id] = hw;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(at91rm9200_periphck); i++) {
+		hw = at91_clk_register_peripheral(regmap,
+						  at91rm9200_periphck[i].n,
+						  "masterck",
+						  at91rm9200_periphck[i].id);
+		if (IS_ERR(hw))
+			goto err_free;
+
+		at91rm9200_pmc->phws[at91rm9200_periphck[i].id] = hw;
+	}
+
+	of_clk_add_hw_provider(np, of_clk_hw_pmc_get, at91rm9200_pmc);
+
+	return;
+
+err_free:
+	pmc_data_free(at91rm9200_pmc);
+}
+/* 
+ * While the TCB can be used as the clocksource, the system timer is most likely
+ * to be used instead. However, the pinctrl driver doesn't support probe
+ * deferring properly. Once this is fixed, this can be switched to a platform
+ * driver.
+ */
+CLK_OF_DECLARE_DRIVER(at91rm9200_pmc, "atmel,at91rm9200-pmc",
+		      at91rm9200_pmc_setup);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
