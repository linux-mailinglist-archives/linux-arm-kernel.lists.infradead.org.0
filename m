Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C72D3162C4D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 18:15:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O6jg5HID/zWyThwlFzmRVYblsTF1ArK5bBZo2KhZ3CM=; b=EZYNo0yjdHjrDw
	ycwIJua2X0vD07yhW8u94aa91/dLPLK427BaUvU7TyLvH8nDjCmn2TpSkLiIH7uUnOffx3sBSQPv0
	yaLM5MBfIyEae/Eq5RU6GP/+LgKhdq705NxojDlVmvGnnk6hXrH4pOpoRy6daanwBFHZmKPDST6pJ
	TOQ7vMLV1kyVE3hgekawHRIZnwtks37p/pwW+y4J20qiBJdxZvt5GLgyHV8lBzeUZ9ImM3dQYWIwK
	QHCiXMOq107nR0dMTP5Yp5nNO913SAX9/TocA+pREhmRUHKL6guPE69EadZpTfu6vpDlHJ0DMSbtT
	v/LX33EuLCNPvc0zg9bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j46TN-00050j-RR; Tue, 18 Feb 2020 17:15:49 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j46RF-00021w-U2
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 17:13:40 +0000
Received: by mail-ot1-f68.google.com with SMTP id r27so20206239otc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 09:13:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=u8D2FPtNZ0VMBn5UkeqSg7CSDs/wZAjBSTTCQDmiSkY=;
 b=YZB53JpbWWjuRhFDAeeaLvAzK/nuJ4EMUR0s7MrcxegTvg8ALjI6lvmt+Kx5ZfO0zK
 hGY2C6XxzKC7gh/94w8GbmdUbHKgSxcMOWITmgD3ZZrCGc/dms5u/HiVsSBHLuyEDf2h
 R61BPgimfciudEAHMSz5XAAys4RQxvgNaAMUO93VxSqFx0xUaNX1SFVJgX4pEcN09Ilp
 IWHJvqhasxjqcNOgXBBqtAbg47haRBfcmzVFdSmCL3+TSMT5xRY25IpGlaWAJzh9tUbY
 ttCq/M+REcLRVWKYA9GRh4zRxngCbnnND82Po1thcPPGUvrao7oTl2idBbjTYdfrHfk0
 +8fw==
X-Gm-Message-State: APjAAAXZHCeFL0Ika2e+pG3dx29VEP8qPzK+JC3X/m3GTtYcSNGy3cUk
 RDodiuZKVZLSN2tSSKSnp5gxWWw=
X-Google-Smtp-Source: APXvYqw6TNQhn8784qV+7u3WFCDSuqFfYxpVsfN96SobcjyzzV4x9MxcI5ZxKLnqYBrEuZO3mSlkJg==
X-Received: by 2002:a9d:7386:: with SMTP id j6mr16115366otk.336.1582046016817; 
 Tue, 18 Feb 2020 09:13:36 -0800 (PST)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id y25sm1545755oto.27.2020.02.18.09.13.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 09:13:36 -0800 (PST)
From: Rob Herring <robh@kernel.org>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 soc@kernel.org, Andre Przywara <andre.przywara@arm.com>,
 Robert Richter <rrichter@marvell.com>, Jon Loeliger <jdl@jdl.com>,
 Alexander Graf <graf@amazon.com>, Matthias Brugger <mbrugger@suse.com>,
 Mark Langsdorf <mlangsdo@redhat.com>
Subject: [RFC PATCH 08/11] clk: Remove Calxeda driver
Date: Tue, 18 Feb 2020 11:13:18 -0600
Message-Id: <20200218171321.30990-9-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200218171321.30990-1-robh@kernel.org>
References: <20200218171321.30990-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_091338_046924_94DA562C 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: kvm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 linux-ide@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-clk@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Eric Auger <eric.auger@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-edac@vger.kernel.org,
 Jens Axboe <axboe@kernel.dk>, Tony Luck <tony.luck@intel.com>,
 Stephen Boyd <sboyd@kernel.org>, netdev@vger.kernel.org,
 Cornelia Huck <cohuck@redhat.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 iommu@lists.linux-foundation.org, James Morse <james.morse@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
Do not apply yet.

 drivers/clk/Makefile       |   1 -
 drivers/clk/clk-highbank.c | 329 -------------------------------------
 2 files changed, 330 deletions(-)
 delete mode 100644 drivers/clk/clk-highbank.c

diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index f4169cc2fd31..cb71dfaf1ac7 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -33,7 +33,6 @@ obj-$(CONFIG_COMMON_CLK_FSL_SAI)	+= clk-fsl-sai.o
 obj-$(CONFIG_COMMON_CLK_GEMINI)		+= clk-gemini.o
 obj-$(CONFIG_COMMON_CLK_ASPEED)		+= clk-aspeed.o
 obj-$(CONFIG_MACH_ASPEED_G6)		+= clk-ast2600.o
-obj-$(CONFIG_ARCH_HIGHBANK)		+= clk-highbank.o
 obj-$(CONFIG_CLK_HSDK)			+= clk-hsdk-pll.o
 obj-$(CONFIG_COMMON_CLK_LOCHNAGAR)	+= clk-lochnagar.o
 obj-$(CONFIG_COMMON_CLK_MAX77686)	+= clk-max77686.o
diff --git a/drivers/clk/clk-highbank.c b/drivers/clk/clk-highbank.c
deleted file mode 100644
index 2a0cea2946f9..000000000000
--- a/drivers/clk/clk-highbank.c
+++ /dev/null
@@ -1,329 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Copyright 2011-2012 Calxeda, Inc.
- */
-
-#include <linux/kernel.h>
-#include <linux/slab.h>
-#include <linux/err.h>
-#include <linux/clk-provider.h>
-#include <linux/io.h>
-#include <linux/of.h>
-#include <linux/of_address.h>
-
-#define HB_PLL_LOCK_500		0x20000000
-#define HB_PLL_LOCK		0x10000000
-#define HB_PLL_DIVF_SHIFT	20
-#define HB_PLL_DIVF_MASK	0x0ff00000
-#define HB_PLL_DIVQ_SHIFT	16
-#define HB_PLL_DIVQ_MASK	0x00070000
-#define HB_PLL_DIVR_SHIFT	8
-#define HB_PLL_DIVR_MASK	0x00001f00
-#define HB_PLL_RANGE_SHIFT	4
-#define HB_PLL_RANGE_MASK	0x00000070
-#define HB_PLL_BYPASS		0x00000008
-#define HB_PLL_RESET		0x00000004
-#define HB_PLL_EXT_BYPASS	0x00000002
-#define HB_PLL_EXT_ENA		0x00000001
-
-#define HB_PLL_VCO_MIN_FREQ	2133000000
-#define HB_PLL_MAX_FREQ		HB_PLL_VCO_MIN_FREQ
-#define HB_PLL_MIN_FREQ		(HB_PLL_VCO_MIN_FREQ / 64)
-
-#define HB_A9_BCLK_DIV_MASK	0x00000006
-#define HB_A9_BCLK_DIV_SHIFT	1
-#define HB_A9_PCLK_DIV		0x00000001
-
-struct hb_clk {
-        struct clk_hw	hw;
-	void __iomem	*reg;
-	char *parent_name;
-};
-#define to_hb_clk(p) container_of(p, struct hb_clk, hw)
-
-static int clk_pll_prepare(struct clk_hw *hwclk)
-	{
-	struct hb_clk *hbclk = to_hb_clk(hwclk);
-	u32 reg;
-
-	reg = readl(hbclk->reg);
-	reg &= ~HB_PLL_RESET;
-	writel(reg, hbclk->reg);
-
-	while ((readl(hbclk->reg) & HB_PLL_LOCK) == 0)
-		;
-	while ((readl(hbclk->reg) & HB_PLL_LOCK_500) == 0)
-		;
-
-	return 0;
-}
-
-static void clk_pll_unprepare(struct clk_hw *hwclk)
-{
-	struct hb_clk *hbclk = to_hb_clk(hwclk);
-	u32 reg;
-
-	reg = readl(hbclk->reg);
-	reg |= HB_PLL_RESET;
-	writel(reg, hbclk->reg);
-}
-
-static int clk_pll_enable(struct clk_hw *hwclk)
-{
-	struct hb_clk *hbclk = to_hb_clk(hwclk);
-	u32 reg;
-
-	reg = readl(hbclk->reg);
-	reg |= HB_PLL_EXT_ENA;
-	writel(reg, hbclk->reg);
-
-	return 0;
-}
-
-static void clk_pll_disable(struct clk_hw *hwclk)
-{
-	struct hb_clk *hbclk = to_hb_clk(hwclk);
-	u32 reg;
-
-	reg = readl(hbclk->reg);
-	reg &= ~HB_PLL_EXT_ENA;
-	writel(reg, hbclk->reg);
-}
-
-static unsigned long clk_pll_recalc_rate(struct clk_hw *hwclk,
-					 unsigned long parent_rate)
-{
-	struct hb_clk *hbclk = to_hb_clk(hwclk);
-	unsigned long divf, divq, vco_freq, reg;
-
-	reg = readl(hbclk->reg);
-	if (reg & HB_PLL_EXT_BYPASS)
-		return parent_rate;
-
-	divf = (reg & HB_PLL_DIVF_MASK) >> HB_PLL_DIVF_SHIFT;
-	divq = (reg & HB_PLL_DIVQ_MASK) >> HB_PLL_DIVQ_SHIFT;
-	vco_freq = parent_rate * (divf + 1);
-
-	return vco_freq / (1 << divq);
-}
-
-static void clk_pll_calc(unsigned long rate, unsigned long ref_freq,
-			u32 *pdivq, u32 *pdivf)
-{
-	u32 divq, divf;
-	unsigned long vco_freq;
-
-	if (rate < HB_PLL_MIN_FREQ)
-		rate = HB_PLL_MIN_FREQ;
-	if (rate > HB_PLL_MAX_FREQ)
-		rate = HB_PLL_MAX_FREQ;
-
-	for (divq = 1; divq <= 6; divq++) {
-		if ((rate * (1 << divq)) >= HB_PLL_VCO_MIN_FREQ)
-			break;
-	}
-
-	vco_freq = rate * (1 << divq);
-	divf = (vco_freq + (ref_freq / 2)) / ref_freq;
-	divf--;
-
-	*pdivq = divq;
-	*pdivf = divf;
-}
-
-static long clk_pll_round_rate(struct clk_hw *hwclk, unsigned long rate,
-			       unsigned long *parent_rate)
-{
-	u32 divq, divf;
-	unsigned long ref_freq = *parent_rate;
-
-	clk_pll_calc(rate, ref_freq, &divq, &divf);
-
-	return (ref_freq * (divf + 1)) / (1 << divq);
-}
-
-static int clk_pll_set_rate(struct clk_hw *hwclk, unsigned long rate,
-			    unsigned long parent_rate)
-{
-	struct hb_clk *hbclk = to_hb_clk(hwclk);
-	u32 divq, divf;
-	u32 reg;
-
-	clk_pll_calc(rate, parent_rate, &divq, &divf);
-
-	reg = readl(hbclk->reg);
-	if (divf != ((reg & HB_PLL_DIVF_MASK) >> HB_PLL_DIVF_SHIFT)) {
-		/* Need to re-lock PLL, so put it into bypass mode */
-		reg |= HB_PLL_EXT_BYPASS;
-		writel(reg | HB_PLL_EXT_BYPASS, hbclk->reg);
-
-		writel(reg | HB_PLL_RESET, hbclk->reg);
-		reg &= ~(HB_PLL_DIVF_MASK | HB_PLL_DIVQ_MASK);
-		reg |= (divf << HB_PLL_DIVF_SHIFT) | (divq << HB_PLL_DIVQ_SHIFT);
-		writel(reg | HB_PLL_RESET, hbclk->reg);
-		writel(reg, hbclk->reg);
-
-		while ((readl(hbclk->reg) & HB_PLL_LOCK) == 0)
-			;
-		while ((readl(hbclk->reg) & HB_PLL_LOCK_500) == 0)
-			;
-		reg |= HB_PLL_EXT_ENA;
-		reg &= ~HB_PLL_EXT_BYPASS;
-	} else {
-		writel(reg | HB_PLL_EXT_BYPASS, hbclk->reg);
-		reg &= ~HB_PLL_DIVQ_MASK;
-		reg |= divq << HB_PLL_DIVQ_SHIFT;
-		writel(reg | HB_PLL_EXT_BYPASS, hbclk->reg);
-	}
-	writel(reg, hbclk->reg);
-
-	return 0;
-}
-
-static const struct clk_ops clk_pll_ops = {
-	.prepare = clk_pll_prepare,
-	.unprepare = clk_pll_unprepare,
-	.enable = clk_pll_enable,
-	.disable = clk_pll_disable,
-	.recalc_rate = clk_pll_recalc_rate,
-	.round_rate = clk_pll_round_rate,
-	.set_rate = clk_pll_set_rate,
-};
-
-static unsigned long clk_cpu_periphclk_recalc_rate(struct clk_hw *hwclk,
-						   unsigned long parent_rate)
-{
-	struct hb_clk *hbclk = to_hb_clk(hwclk);
-	u32 div = (readl(hbclk->reg) & HB_A9_PCLK_DIV) ? 8 : 4;
-	return parent_rate / div;
-}
-
-static const struct clk_ops a9periphclk_ops = {
-	.recalc_rate = clk_cpu_periphclk_recalc_rate,
-};
-
-static unsigned long clk_cpu_a9bclk_recalc_rate(struct clk_hw *hwclk,
-						unsigned long parent_rate)
-{
-	struct hb_clk *hbclk = to_hb_clk(hwclk);
-	u32 div = (readl(hbclk->reg) & HB_A9_BCLK_DIV_MASK) >> HB_A9_BCLK_DIV_SHIFT;
-
-	return parent_rate / (div + 2);
-}
-
-static const struct clk_ops a9bclk_ops = {
-	.recalc_rate = clk_cpu_a9bclk_recalc_rate,
-};
-
-static unsigned long clk_periclk_recalc_rate(struct clk_hw *hwclk,
-					     unsigned long parent_rate)
-{
-	struct hb_clk *hbclk = to_hb_clk(hwclk);
-	u32 div;
-
-	div = readl(hbclk->reg) & 0x1f;
-	div++;
-	div *= 2;
-
-	return parent_rate / div;
-}
-
-static long clk_periclk_round_rate(struct clk_hw *hwclk, unsigned long rate,
-				   unsigned long *parent_rate)
-{
-	u32 div;
-
-	div = *parent_rate / rate;
-	div++;
-	div &= ~0x1;
-
-	return *parent_rate / div;
-}
-
-static int clk_periclk_set_rate(struct clk_hw *hwclk, unsigned long rate,
-				unsigned long parent_rate)
-{
-	struct hb_clk *hbclk = to_hb_clk(hwclk);
-	u32 div;
-
-	div = parent_rate / rate;
-	if (div & 0x1)
-		return -EINVAL;
-
-	writel(div >> 1, hbclk->reg);
-	return 0;
-}
-
-static const struct clk_ops periclk_ops = {
-	.recalc_rate = clk_periclk_recalc_rate,
-	.round_rate = clk_periclk_round_rate,
-	.set_rate = clk_periclk_set_rate,
-};
-
-static void __init hb_clk_init(struct device_node *node, const struct clk_ops *ops, unsigned long clkflags)
-{
-	u32 reg;
-	struct hb_clk *hb_clk;
-	const char *clk_name = node->name;
-	const char *parent_name;
-	struct clk_init_data init;
-	struct device_node *srnp;
-	int rc;
-
-	rc = of_property_read_u32(node, "reg", &reg);
-	if (WARN_ON(rc))
-		return;
-
-	hb_clk = kzalloc(sizeof(*hb_clk), GFP_KERNEL);
-	if (WARN_ON(!hb_clk))
-		return;
-
-	/* Map system registers */
-	srnp = of_find_compatible_node(NULL, NULL, "calxeda,hb-sregs");
-	hb_clk->reg = of_iomap(srnp, 0);
-	of_node_put(srnp);
-	BUG_ON(!hb_clk->reg);
-	hb_clk->reg += reg;
-
-	of_property_read_string(node, "clock-output-names", &clk_name);
-
-	init.name = clk_name;
-	init.ops = ops;
-	init.flags = clkflags;
-	parent_name = of_clk_get_parent_name(node, 0);
-	init.parent_names = &parent_name;
-	init.num_parents = 1;
-
-	hb_clk->hw.init = &init;
-
-	rc = clk_hw_register(NULL, &hb_clk->hw);
-	if (WARN_ON(rc)) {
-		kfree(hb_clk);
-		return;
-	}
-	of_clk_add_hw_provider(node, of_clk_hw_simple_get, &hb_clk->hw);
-}
-
-static void __init hb_pll_init(struct device_node *node)
-{
-	hb_clk_init(node, &clk_pll_ops, 0);
-}
-CLK_OF_DECLARE(hb_pll, "calxeda,hb-pll-clock", hb_pll_init);
-
-static void __init hb_a9periph_init(struct device_node *node)
-{
-	hb_clk_init(node, &a9periphclk_ops, 0);
-}
-CLK_OF_DECLARE(hb_a9periph, "calxeda,hb-a9periph-clock", hb_a9periph_init);
-
-static void __init hb_a9bus_init(struct device_node *node)
-{
-	hb_clk_init(node, &a9bclk_ops, CLK_IS_CRITICAL);
-}
-CLK_OF_DECLARE(hb_a9bus, "calxeda,hb-a9bus-clock", hb_a9bus_init);
-
-static void __init hb_emmc_init(struct device_node *node)
-{
-	hb_clk_init(node, &periclk_ops, 0);
-}
-CLK_OF_DECLARE(hb_emmc, "calxeda,hb-emmc-clock", hb_emmc_init);
--
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
