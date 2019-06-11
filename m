Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E053C8BB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 12:21:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=802SGjlXL5W1KouZ71PNWmfkarnKsBkIMjYU+8YjAzY=; b=jVArYZaMYCw9oC
	BiW5fA4ScXrfK8rDwhWA9wcJ0X43paQeoZgNNDQCKJbSMV++2lLDVXBsP3fOtP8ds9sbJ7UtTFPlk
	k2zhDwb56yEpe2Drn33NfgfvdcXGqc/vG2VCjFkuhziUYqZy9JiICurfcU7PK9bC2KeOqGPq72Syu
	rZo9stCuqeIWglv2ic1o9SPTe7DuFdNE5b8NhT0sDUlWUSs3aZZ0h+EpOBv9SFh7lT9ppD/rZyTqJ
	SAs1rmvjowsijRFzqOzNZRHZw4vLqC3lzeg6mArnxeGckOAc7R91N5kbUZ3NoPDWviwE4I0o1NDUP
	acqE96vD6bpYQFNK2Xqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadtt-0005ix-5a; Tue, 11 Jun 2019 10:21:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadqG-0001ZC-VO
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 10:17:28 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3F49521726;
 Tue, 11 Jun 2019 10:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560248243;
 bh=2ZPf0hGuA6VMQm+7F68FVzilgXCREpNUpD7L4YolhBw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hhtOahOtrQzpNu57kAB0mvWffYFtZgBR0cXbnZ9m+mCeImaEVW/+OxijHOxCMbu9N
 lHhun62JZ1j9e7RBOXLcaTJioX3lqMnlUN6f0alqBSU9e00MrVrcMTCKAyBswC0Ue2
 m16A1rtig0oMo5n9a0MgbxulPVue3nfG3YnjCaAU=
Received: by wens.tw (Postfix, from userid 1000)
 id 43C1560411; Tue, 11 Jun 2019 18:17:18 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
Subject: [PATCH v2 09/25] clk: sunxi-ng: sun8i-r: Use local parent references
 for CLK_HW_INIT_*
Date: Tue, 11 Jun 2019 18:16:42 +0800
Message-Id: <20190611101658.23855-10-wens@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190611101658.23855-1-wens@kernel.org>
References: <20190611101658.23855-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_031725_065804_6F34C4FB 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Chen-Yu Tsai <wens@csie.org>, Chen-Yu Tsai <wens@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

With the new clk parenting code and CLK_HW_INIT_* macros, we can
reference parents locally via pointers to struct clk_hw or DT
clock-names.

Convert existing CLK_HW_INIT_* definitions to describe parents using
either struct clk_hw pointers or clock-names from the device tree
binding.

For the AR100, this also allows us to merge the generic AR100 and the
A83T specific one, which only differed in the global clock names for
their parent clocks. The device tree bindings used the same name
specifiers.

Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 drivers/clk/sunxi-ng/ccu-sun8i-r.c | 65 ++++++++++++------------------
 1 file changed, 25 insertions(+), 40 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-r.c b/drivers/clk/sunxi-ng/ccu-sun8i-r.c
index 71feb7b24e8a..a43e8de873d7 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-r.c
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-r.c
@@ -25,10 +25,13 @@
 
 #include "ccu-sun8i-r.h"
 
-static const char * const ar100_parents[] = { "osc32k", "osc24M",
-					     "pll-periph0", "iosc" };
-static const char * const a83t_ar100_parents[] = { "osc16M-d512", "osc24M",
-						   "pll-periph0", "iosc" };
+static const struct clk_parent_data ar100_parents[] = {
+	{ .fw_name = "losc" },
+	{ .fw_name = "hosc" },
+	{ .fw_name = "pll-periph" },
+	{ .fw_name = "iosc" },
+};
+
 static const struct ccu_mux_var_prediv ar100_predivs[] = {
 	{ .index = 2, .shift = 8, .width = 5 },
 };
@@ -47,31 +50,10 @@ static struct ccu_div ar100_clk = {
 	.common		= {
 		.reg		= 0x00,
 		.features	= CCU_FEATURE_VARIABLE_PREDIV,
-		.hw.init	= CLK_HW_INIT_PARENTS("ar100",
-						      ar100_parents,
-						      &ccu_div_ops,
-						      0),
-	},
-};
-
-static struct ccu_div a83t_ar100_clk = {
-	.div		= _SUNXI_CCU_DIV_FLAGS(4, 2, CLK_DIVIDER_POWER_OF_TWO),
-
-	.mux		= {
-		.shift	= 16,
-		.width	= 2,
-
-		.var_predivs	= ar100_predivs,
-		.n_var_predivs	= ARRAY_SIZE(ar100_predivs),
-	},
-
-	.common		= {
-		.reg		= 0x00,
-		.features	= CCU_FEATURE_VARIABLE_PREDIV,
-		.hw.init	= CLK_HW_INIT_PARENTS("ar100",
-						      a83t_ar100_parents,
-						      &ccu_div_ops,
-						      0),
+		.hw.init	= CLK_HW_INIT_PARENTS_DATA("ar100",
+							   ar100_parents,
+							   &ccu_div_ops,
+							   0),
 	},
 };
 
@@ -82,10 +64,10 @@ static struct ccu_div apb0_clk = {
 
 	.common		= {
 		.reg		= 0x0c,
-		.hw.init	= CLK_HW_INIT("apb0",
-					      "ahb0",
-					      &ccu_div_ops,
-					      0),
+		.hw.init	= CLK_HW_INIT_HW("apb0",
+						 &ahb0_clk.hw,
+						 &ccu_div_ops,
+						 0),
 	},
 };
 
@@ -115,7 +97,10 @@ static SUNXI_CCU_MP_WITH_MUX_GATE(ir_clk, "ir",
 				  BIT(31),	/* gate */
 				  0);
 
-static const char *const a83t_r_mod0_parents[] = { "osc16M", "osc24M" };
+static const struct clk_parent_data a83t_r_mod0_parents[] = {
+	{ .fw_name = "iosc" },
+	{ .fw_name = "hosc" },
+};
 static const struct ccu_mux_fixed_prediv a83t_ir_predivs[] = {
 	{ .index = 0, .div = 16 },
 };
@@ -135,15 +120,15 @@ static struct ccu_mp a83t_ir_clk = {
 	.common		= {
 		.reg		= 0x54,
 		.features	= CCU_FEATURE_VARIABLE_PREDIV,
-		.hw.init	= CLK_HW_INIT_PARENTS("ir",
-						      a83t_r_mod0_parents,
-						      &ccu_mp_ops,
-						      0),
+		.hw.init	= CLK_HW_INIT_PARENTS_DATA("ir",
+							   a83t_r_mod0_parents,
+							   &ccu_mp_ops,
+							   0),
 	},
 };
 
 static struct ccu_common *sun8i_a83t_r_ccu_clks[] = {
-	&a83t_ar100_clk.common,
+	&ar100_clk.common,
 	&a83t_apb0_clk.common,
 	&apb0_pio_clk.common,
 	&apb0_ir_clk.common,
@@ -182,7 +167,7 @@ static struct ccu_common *sun50i_a64_r_ccu_clks[] = {
 
 static struct clk_hw_onecell_data sun8i_a83t_r_hw_clks = {
 	.hws	= {
-		[CLK_AR100]		= &a83t_ar100_clk.common.hw,
+		[CLK_AR100]		= &ar100_clk.common.hw,
 		[CLK_AHB0]		= &ahb0_clk.hw,
 		[CLK_APB0]		= &a83t_apb0_clk.common.hw,
 		[CLK_APB0_PIO]		= &apb0_pio_clk.common.hw,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
