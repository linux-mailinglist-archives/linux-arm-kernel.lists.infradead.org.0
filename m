Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C194D182
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 17:04:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GsY0LGOOeJVi710f+kMgM2XZo+WKqQUQN7TN46wKmJY=; b=B87sskjaKV01nK
	5tvp+T9BPm+C6kdg8MBVmdNQX38MOgf9iurOCzRGGN6KmwP7PnR51N5EzyloFhVv+hDamxn5c8b/0
	5yjcJ+4+65URHMIfHhi6ey670SfYGU7UOW4cUlUJuanmGA0CSgKWNGR4YgkmeqZerf/nw6WEysB2L
	aS8G+f9JuKdvjq+3md6g4JQmYVQMn3KGcrUyvilFtzg4pQ6u5g8Nof/+JsN5KdbT9KTvHtQhIlHu4
	4MjMExC6Zjedta8T737jD1LtZT2/Jn+5iAXXz1fYoGA3DwFrxAPP5AcJqh0v3kr1eHnXQcolxMHS1
	eELMYQxJabQiDCROfLDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdybm-0005hH-LW; Thu, 20 Jun 2019 15:04:14 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdyYA-0003Fi-9I
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 15:00:33 +0000
Received: by mail-wr1-x444.google.com with SMTP id x4so3376131wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 08:00:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lKmOGrps6tEUGlhf4zF+W6R5tZkP1+lE5RNEiYZ1rEc=;
 b=qGz3D2B+DktJG/SSKywZ+VL2Y6jbz8qJscha8l8+2sykMCUyqM9n+n86cIgJ6ov3QT
 9kWNCKYTseu8M9YiHIgilKhGxbyMl9LgRQJY1BvuZfDjqsXHJ4ZTV6sOECMghIwAGQ10
 lwkEVW3kihFvbCu7sSOrBbdr9b/3mpFgLQdNPWwENg3Lfyf1txHGDKHbjrhh261kafcZ
 0h3oewQFyRCsNTKXxEe21xdXVjzrmG/Ca01rMiIbDcVr/YUzWD1xdSq8OP47/xhfMMBD
 sNHF2+vQ+TcYbkL6Hwe60RPQapV3yHDFG5WSu+4CgEVR4kq3dWtTWV6vN+8CxOg9JivW
 5YJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lKmOGrps6tEUGlhf4zF+W6R5tZkP1+lE5RNEiYZ1rEc=;
 b=dx2L0FqxqjjarGRJ74PVHcFR6QovReQxWFWQ3IG96TsYhR4k0XbBLL8mPJ/NZSV5NR
 /epW7khXI/FcURS5sJXY26ZxGpWnVfCe1x9loQQZwnyzRRgs/rCE5xKqKLXplRchf5sR
 of5EhIyyJPVBxHPRB8vC57gf30WUnU4EIjEzZKtyOnK5ExrsWihkBI5eTZit7+fXYQm/
 FgMzxzz/n7FhVyu2ov4bmkFiBb1a3Hsc1aNVJ4DF1T9rzARj6490KRD1c5lUdLpR/Wtc
 JsPs4erOTVXqTsBkcf0VP5abJON3PDN5uUnqbYEEJR2hLYuxGGPv7i2QG4IVfScgQgM1
 xbxQ==
X-Gm-Message-State: APjAAAU/cN3fGbZ1At2GeXEpi+UPbZX8JNG1wnfOycdG2kYbBx/ehMwv
 B8AF6sVBrHPBIlgnT7nkMZ0Bzw==
X-Google-Smtp-Source: APXvYqxHath92L/HcOzG0r+DQmff4/nNqasJnZ6xvZZxrUsCCwWAuasRwhk+n00C6cxtbDfe6XYkCw==
X-Received: by 2002:a5d:46c7:: with SMTP id g7mr41307173wrs.215.1561042828590; 
 Thu, 20 Jun 2019 08:00:28 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o126sm6802520wmo.1.2019.06.20.08.00.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Jun 2019 08:00:28 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com,
	khilman@baylibre.com
Subject: [RFC/RFT 07/14] clk: meson: g12a: add notifiers to handle cpu clock
 change
Date: Thu, 20 Jun 2019 17:00:06 +0200
Message-Id: <20190620150013.13462-8-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190620150013.13462-1-narmstrong@baylibre.com>
References: <20190620150013.13462-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_080030_335393_19F49BE4 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 martin.blumenstingl@googlemail.com, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to implement clock switching for the CLKID_CPU_CLK and
CLKID_CPUB_CLK, notifiers are added on specific points of the
clock tree :

cpu_clk / cpub_clk
|   \- cpu_clk_dyn
|      |  \- cpu_clk_premux0
|      |        |- cpu_clk_postmux0
|      |        |    |- cpu_clk_dyn0_div
|      |        |    \- xtal/fclk_div2/fclk_div3
|      |        \- xtal/fclk_div2/fclk_div3
|      \- cpu_clk_premux1
|            |- cpu_clk_postmux1
|            |    |- cpu_clk_dyn1_div
|            |    \- xtal/fclk_div2/fclk_div3
|            \- xtal/fclk_div2/fclk_div3
\ sys_pll / sys1_pll

This for each cluster, a single one for G12A, two for G12B.

Each cpu_clk_premux1 tree is marked as read-only and CLK_SET_RATE_NO_REPARENT,
to be used as "parking" clock in a safe clock frequency.

A notifier is added on each cpu_clk_premux0 to detech when CCF want to
change the frequency of the cpu_clk_dyn tree.
In this notifier, the cpu_clk_premux1 tree is configured to use the xtal
clock and then the cpu_clk_dyn is switch to cpu_clk_premux1 while CCF
updates the cpu_clk_premux0 tree.

A notifier is added on each sys_pll/sys1_pll to detect when CCF wants to
change the PLL clock source of the cpu_clk.
In this notifier, the cpu_clk is switched to cpu_clk_dyn while CCF
updates the sys_pll/sys1_pll frequency.

A third small notifier is added on each cpu_clk / cpub_clk and cpu_clk_dyn,
add a small delay at PRE_RATE_CHANGE/POST_RATE_CHANGE to let the other
notofiers change propagate before changing the cpu_clk_premux0 and sys_pll
clock trees.

This notifier set permits switching the cpu_clk / cpub_clk without any
glitches and using a safe parking clock while switching between sub-GHz
clocks using the cpu_clk_dyn tree.

This setup has been tested and validated on the Amlogic G12A and G12B
SoCs running the arm64 cpuburn at [1] and cycling between all the possible
cpufreq translations of each cluster and checking the final frequency using
the clock-measurer, script at [2].

[1] https://github.com/ssvb/cpuburn-arm/blob/master/cpuburn-a53.S
[2] https://gist.github.com/superna9999/d4de964dbc0f84b7d527e1df2ddea25f

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/clk/meson/g12a.c | 500 ++++++++++++++++++++++++++++++++++++---
 1 file changed, 468 insertions(+), 32 deletions(-)

diff --git a/drivers/clk/meson/g12a.c b/drivers/clk/meson/g12a.c
index 3c75ef5e4d24..2f3ecbbc98d9 100644
--- a/drivers/clk/meson/g12a.c
+++ b/drivers/clk/meson/g12a.c
@@ -14,6 +14,7 @@
 #include <linux/init.h>
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
+#include <linux/clk.h>
 
 #include "clk-input.h"
 #include "clk-mpll.h"
@@ -85,16 +86,9 @@ static struct clk_regmap g12a_fixed_pll = {
 	},
 };
 
-/*
- * Internal sys pll emulation configuration parameters
- */
-static const struct reg_sequence g12a_sys_init_regs[] = {
-	{ .reg = HHI_SYS_PLL_CNTL1,	.def = 0x00000000 },
-	{ .reg = HHI_SYS_PLL_CNTL2,	.def = 0x00000000 },
-	{ .reg = HHI_SYS_PLL_CNTL3,	.def = 0x48681c00 },
-	{ .reg = HHI_SYS_PLL_CNTL4,	.def = 0x88770290 },
-	{ .reg = HHI_SYS_PLL_CNTL5,	.def = 0x39272000 },
-	{ .reg = HHI_SYS_PLL_CNTL6,	.def = 0x56540000 },
+static const struct pll_mult_range g12a_sys_pll_mult_range = {
+	.min = 128,
+	.max = 250,
 };
 
 static struct clk_regmap g12a_sys_pll_dco = {
@@ -124,14 +118,15 @@ static struct clk_regmap g12a_sys_pll_dco = {
 			.shift   = 29,
 			.width   = 1,
 		},
-		.init_regs = g12a_sys_init_regs,
-		.init_count = ARRAY_SIZE(g12a_sys_init_regs),
+		.range = &g12a_sys_pll_mult_range,
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "sys_pll_dco",
-		.ops = &meson_clk_pll_ro_ops,
+		.ops = &meson_clk_pll_ops,
 		.parent_names = (const char *[]){ IN_PREFIX "xtal" },
 		.num_parents = 1,
+		/* This clock feeds the CPU, avoid disabling it */
+		.flags = CLK_IS_CRITICAL,
 	},
 };
 
@@ -144,9 +139,10 @@ static struct clk_regmap g12a_sys_pll = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "sys_pll",
-		.ops = &clk_regmap_divider_ro_ops,
+		.ops = &clk_regmap_divider_ops,
 		.parent_names = (const char *[]){ "sys_pll_dco" },
 		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
@@ -177,12 +173,15 @@ static struct clk_regmap g12b_sys1_pll_dco = {
 			.shift   = 29,
 			.width   = 1,
 		},
+		.range = &g12a_sys_pll_mult_range,
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "sys1_pll_dco",
-		.ops = &meson_clk_pll_ro_ops,
+		.ops = &meson_clk_pll_ops,
 		.parent_names = (const char *[]){ IN_PREFIX "xtal" },
 		.num_parents = 1,
+		/* This clock feeds the CPU, avoid disabling it */
+		.flags = CLK_IS_CRITICAL,
 	},
 };
 
@@ -195,9 +194,10 @@ static struct clk_regmap g12b_sys1_pll = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "sys1_pll",
-		.ops = &clk_regmap_divider_ro_ops,
+		.ops = &clk_regmap_divider_ops,
 		.parent_names = (const char *[]){ "sys1_pll_dco" },
 		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
@@ -266,7 +266,7 @@ static struct clk_regmap g12a_cpu_clk_premux0 = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk_dyn0_sel",
-		.ops = &clk_regmap_mux_ro_ops,
+		.ops = &clk_regmap_mux_ops,
 		.parent_names = (const char *[]){ IN_PREFIX "xtal",
 						  "fclk_div2",
 						  "fclk_div3" },
@@ -275,6 +275,37 @@ static struct clk_regmap g12a_cpu_clk_premux0 = {
 };
 
 /* Datasheet names this field as "mux0_divn_tcnt" */
+#define SYS_CPU_DYN_ENABLE	BIT(26)
+
+/* This divider uses bit 26 to take change in account */
+static int g12a_cpu_clk_mux0_div_set_rate(struct clk_hw *hw, unsigned long rate,
+					  unsigned long parent_rate)
+{
+	struct clk_regmap *clk = to_clk_regmap(hw);
+	struct clk_regmap_div_data *div = clk_get_regmap_div_data(clk);
+	unsigned int val;
+	int ret;
+
+	ret = divider_get_val(rate, parent_rate, div->table, div->width,
+			      div->flags);
+	if (ret < 0)
+		return ret;
+
+	val = (unsigned int)ret << div->shift;
+
+	regmap_update_bits(clk->map, HHI_SYS_CPU_CLK_CNTL0,
+			   SYS_CPU_DYN_ENABLE, SYS_CPU_DYN_ENABLE);
+
+	return regmap_update_bits(clk->map, div->offset,
+				  clk_div_mask(div->width) << div->shift | SYS_CPU_DYN_ENABLE, val);
+};
+
+const struct clk_ops g12a_cpu_clk_mux0_div_ops = {
+	.recalc_rate = clk_regmap_div_recalc_rate,
+	.round_rate = clk_regmap_div_round_rate,
+	.set_rate = g12a_cpu_clk_mux0_div_set_rate,
+};
+
 static struct clk_regmap g12a_cpu_clk_mux0_div = {
 	.data = &(struct clk_regmap_div_data){
 		.offset = HHI_SYS_CPU_CLK_CNTL0,
@@ -283,9 +314,10 @@ static struct clk_regmap g12a_cpu_clk_mux0_div = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk_dyn0_div",
-		.ops = &clk_regmap_divider_ro_ops,
+		.ops = &g12a_cpu_clk_mux0_div_ops,
 		.parent_names = (const char *[]){ "cpu_clk_dyn0_sel" },
 		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
@@ -298,10 +330,11 @@ static struct clk_regmap g12a_cpu_clk_postmux0 = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk_dyn0",
-		.ops = &clk_regmap_mux_ro_ops,
+		.ops = &clk_regmap_mux_ops,
 		.parent_names = (const char *[]){ "cpu_clk_dyn0_sel",
 						  "cpu_clk_dyn0_div" },
 		.num_parents = 2,
+		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
@@ -314,11 +347,13 @@ static struct clk_regmap g12a_cpu_clk_premux1 = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk_dyn1_sel",
-		.ops = &clk_regmap_mux_ro_ops,
+		.ops = &clk_regmap_mux_ops,
 		.parent_names = (const char *[]){ IN_PREFIX "xtal",
 						  "fclk_div2",
 						  "fclk_div3" },
 		.num_parents = 3,
+		/* This sub-tree is used a parking clock */
+		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
 };
 
@@ -346,10 +381,12 @@ static struct clk_regmap g12a_cpu_clk_postmux1 = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk_dyn1",
-		.ops = &clk_regmap_mux_ro_ops,
+		.ops = &clk_regmap_mux_ops,
 		.parent_names = (const char *[]){ "cpu_clk_dyn1_sel",
 						  "cpu_clk_dyn1_div" },
 		.num_parents = 2,
+		/* This sub-tree is used a parking clock */
+		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
 };
 
@@ -362,10 +399,11 @@ static struct clk_regmap g12a_cpu_clk_dyn = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk_dyn",
-		.ops = &clk_regmap_mux_ro_ops,
+		.ops = &clk_regmap_mux_ops,
 		.parent_names = (const char *[]){ "cpu_clk_dyn0",
 						  "cpu_clk_dyn1" },
 		.num_parents = 2,
+		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
@@ -378,10 +416,11 @@ static struct clk_regmap g12a_cpu_clk = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk",
-		.ops = &clk_regmap_mux_ro_ops,
+		.ops = &clk_regmap_mux_ops,
 		.parent_names = (const char *[]){ "cpu_clk_dyn",
 						  "sys_pll" },
 		.num_parents = 2,
+		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
@@ -394,10 +433,11 @@ static struct clk_regmap g12b_cpu_clk = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk",
-		.ops = &clk_regmap_mux_ro_ops,
+		.ops = &clk_regmap_mux_ops,
 		.parent_names = (const char *[]){ "cpu_clk_dyn",
 						  "sys1_pll" },
 		.num_parents = 2,
+		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
@@ -410,7 +450,7 @@ static struct clk_regmap g12b_cpub_clk_premux0 = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_dyn0_sel",
-		.ops = &clk_regmap_mux_ro_ops,
+		.ops = &clk_regmap_mux_ops,
 		.parent_names = (const char *[]){ IN_PREFIX "xtal",
 						  "fclk_div2",
 						  "fclk_div3" },
@@ -418,6 +458,35 @@ static struct clk_regmap g12b_cpub_clk_premux0 = {
 	},
 };
 
+/* This divider uses bit 26 to take change in account */
+static int g12b_cpub_clk_mux0_div_set_rate(struct clk_hw *hw, unsigned long rate,
+					  unsigned long parent_rate)
+{
+	struct clk_regmap *clk = to_clk_regmap(hw);
+	struct clk_regmap_div_data *div = clk_get_regmap_div_data(clk);
+	unsigned int val;
+	int ret;
+
+	ret = divider_get_val(rate, parent_rate, div->table, div->width,
+			      div->flags);
+	if (ret < 0)
+		return ret;
+
+	val = (unsigned int)ret << div->shift;
+
+	regmap_update_bits(clk->map, HHI_SYS_CPUB_CLK_CNTL,
+			   SYS_CPU_DYN_ENABLE, SYS_CPU_DYN_ENABLE);
+
+	return regmap_update_bits(clk->map, div->offset,
+				  clk_div_mask(div->width) << div->shift | SYS_CPU_DYN_ENABLE, val);
+};
+
+const struct clk_ops g12b_cpub_clk_mux0_div_ops = {
+	.recalc_rate = clk_regmap_div_recalc_rate,
+	.round_rate = clk_regmap_div_round_rate,
+	.set_rate = g12b_cpub_clk_mux0_div_set_rate,
+};
+
 /* Datasheet names this field as "mux0_divn_tcnt" */
 static struct clk_regmap g12b_cpub_clk_mux0_div = {
 	.data = &(struct clk_regmap_div_data){
@@ -427,9 +496,10 @@ static struct clk_regmap g12b_cpub_clk_mux0_div = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_dyn0_div",
-		.ops = &clk_regmap_divider_ro_ops,
+		.ops = &g12b_cpub_clk_mux0_div_ops,
 		.parent_names = (const char *[]){ "cpub_clk_dyn0_sel" },
 		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
@@ -442,10 +512,11 @@ static struct clk_regmap g12b_cpub_clk_postmux0 = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_dyn0",
-		.ops = &clk_regmap_mux_ro_ops,
+		.ops = &clk_regmap_mux_ops,
 		.parent_names = (const char *[]){ "cpub_clk_dyn0_sel",
 						  "cpub_clk_dyn0_div" },
 		.num_parents = 2,
+		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
@@ -458,11 +529,13 @@ static struct clk_regmap g12b_cpub_clk_premux1 = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_dyn1_sel",
-		.ops = &clk_regmap_mux_ro_ops,
+		.ops = &clk_regmap_mux_ops,
 		.parent_names = (const char *[]){ IN_PREFIX "xtal",
 						  "fclk_div2",
 						  "fclk_div3" },
 		.num_parents = 3,
+		/* This sub-tree is used a parking clock */
+		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
 };
 
@@ -490,10 +563,12 @@ static struct clk_regmap g12b_cpub_clk_postmux1 = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_dyn1",
-		.ops = &clk_regmap_mux_ro_ops,
+		.ops = &clk_regmap_mux_ops,
 		.parent_names = (const char *[]){ "cpub_clk_dyn1_sel",
 						  "cpub_clk_dyn1_div" },
 		.num_parents = 2,
+		/* This sub-tree is used a parking clock */
+		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
 };
 
@@ -506,10 +581,11 @@ static struct clk_regmap g12b_cpub_clk_dyn = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_dyn",
-		.ops = &clk_regmap_mux_ro_ops,
+		.ops = &clk_regmap_mux_ops,
 		.parent_names = (const char *[]){ "cpub_clk_dyn0",
 						  "cpub_clk_dyn1" },
 		.num_parents = 2,
+		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
@@ -522,13 +598,228 @@ static struct clk_regmap g12b_cpub_clk = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk",
-		.ops = &clk_regmap_mux_ro_ops,
+		.ops = &clk_regmap_mux_ops,
 		.parent_names = (const char *[]){ "cpub_clk_dyn",
 						  "sys_pll" },
 		.num_parents = 2,
+		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
+static int g12a_cpu_clk_mux_notifier_cb(struct notifier_block *nb,
+					unsigned long event, void *data)
+{
+	switch (event) {
+	case POST_RATE_CHANGE:
+	case PRE_RATE_CHANGE:
+		/* Wait for clock propagation before/after changing the mux */
+		udelay(100);
+		return NOTIFY_OK;
+
+	default:
+		return NOTIFY_DONE;
+	}
+}
+
+struct notifier_block g12a_cpu_clk_mux_nb = {
+	.notifier_call = g12a_cpu_clk_mux_notifier_cb,
+};
+
+struct g12a_cpu_clk_postmux_nb_data {
+	struct notifier_block nb;
+	struct clk_hw *xtal;
+	struct clk_hw *cpu_clk_dyn;
+	struct clk_hw *cpu_clk_postmux0;
+	struct clk_hw *cpu_clk_postmux1;
+	struct clk_hw *cpu_clk_premux1;
+};
+
+static int g12a_cpu_clk_postmux_notifier_cb(struct notifier_block *nb,
+					 unsigned long event, void *data)
+{
+	struct g12a_cpu_clk_postmux_nb_data *nb_data =
+		container_of(nb, struct g12a_cpu_clk_postmux_nb_data, nb);
+
+	switch (event) {
+	case PRE_RATE_CHANGE:
+		/*
+		 * This notifier means cpu_clk_postmux0 clock will be changed
+		 * to feed cpu_clk, this the current path :
+		 * cpu_clk
+		 *    \- cpu_clk_dyn
+		 *          \- cpu_clk_postmux0
+		 *                \- cpu_clk_muxX_div
+		 *                      \- cpu_clk_premux0
+		 *				\- fclk_div3 or fclk_div2
+		 *		OR
+		 *                \- cpu_clk_premux0
+		 *			\- fclk_div3 or fclk_div2
+		 */
+
+		/* Setup cpu_clk_premux1 to xtal */
+		clk_hw_set_parent(nb_data->cpu_clk_premux1,
+				  nb_data->xtal);
+
+		/* Setup cpu_clk_postmux1 to bypass divider */
+		clk_hw_set_parent(nb_data->cpu_clk_postmux1,
+				  nb_data->cpu_clk_premux1);
+
+		/* Switch to parking clk on cpu_clk_postmux1 */
+		clk_hw_set_parent(nb_data->cpu_clk_dyn,
+				  nb_data->cpu_clk_postmux1);
+
+		/*
+		 * Now, cpu_clk is 24MHz in the current path :
+		 * cpu_clk
+		 *    \- cpu_clk_dyn
+		 *          \- cpu_clk_postmux1
+		 *                \- cpu_clk_premux1
+		 *                      \- xtal
+		 */
+
+		udelay(100);
+
+		return NOTIFY_OK;
+
+	case POST_RATE_CHANGE:
+		/*
+		 * The cpu_clk_postmux0 has ben updated, now switch back
+		 * cpu_clk_dyn to cpu_clk_postmux0 and take the changes
+		 * in account.
+		 */
+
+		/* Configure cpu_clk_dyn back to cpu_clk_postmux0 */
+		clk_hw_set_parent(nb_data->cpu_clk_dyn,
+				  nb_data->cpu_clk_postmux0);
+
+		/*
+		 * new path :
+		 * cpu_clk
+		 *    \- cpu_clk_dyn
+		 *          \- cpu_clk_postmux0
+		 *                \- cpu_clk_muxX_div
+		 *                      \- cpu_clk_premux0
+		 *				\- fclk_div3 or fclk_div2
+		 *		OR
+		 *                \- cpu_clk_premux0
+		 *			\- fclk_div3 or fclk_div2
+		 */
+
+		udelay(100);
+
+		return NOTIFY_OK;
+
+	default:
+		return NOTIFY_DONE;
+	}
+}
+
+static struct g12a_cpu_clk_postmux_nb_data g12a_cpu_clk_postmux0_nb_data = {
+	.cpu_clk_dyn = &g12a_cpu_clk_dyn.hw,
+	.cpu_clk_postmux0 = &g12a_cpu_clk_postmux0.hw,
+	.cpu_clk_postmux1 = &g12a_cpu_clk_postmux1.hw,
+	.cpu_clk_premux1 = &g12a_cpu_clk_premux1.hw,
+	.nb.notifier_call = g12a_cpu_clk_postmux_notifier_cb,
+};
+
+static struct g12a_cpu_clk_postmux_nb_data g12b_cpub_clk_postmux0_nb_data = {
+	.cpu_clk_dyn = &g12b_cpub_clk_dyn.hw,
+	.cpu_clk_postmux0 = &g12b_cpub_clk_postmux0.hw,
+	.cpu_clk_postmux1 = &g12b_cpub_clk_postmux1.hw,
+	.cpu_clk_premux1 = &g12b_cpub_clk_premux1.hw,
+	.nb.notifier_call = g12a_cpu_clk_postmux_notifier_cb,
+};
+
+struct g12a_sys_pll_nb_data {
+	struct notifier_block nb;
+	struct clk_hw *sys_pll;
+	struct clk_hw *cpu_clk;
+	struct clk_hw *cpu_clk_dyn;
+};
+
+static int g12a_sys_pll_notifier_cb(struct notifier_block *nb,
+				    unsigned long event, void *data)
+{
+	struct g12a_sys_pll_nb_data *nb_data =
+		container_of(nb, struct g12a_sys_pll_nb_data, nb);
+
+	switch (event) {
+	case PRE_RATE_CHANGE:
+		/*
+		 * This notifier means sys_pll clock will be changed
+		 * to feed cpu_clk, this the current path :
+		 * cpu_clk
+		 *    \- sys_pll
+		 *          \- sys_pll_dco
+		 */
+
+		/* Configure cpu_clk to use cpu_clk_dyn */
+		clk_hw_set_parent(nb_data->cpu_clk,
+				  nb_data->cpu_clk_dyn);
+
+		/*
+		 * Now, cpu_clk uses the dyn path
+		 * cpu_clk
+		 *    \- cpu_clk_dyn
+		 *          \- cpu_clk_dynX
+		 *                \- cpu_clk_dynX_sel
+		 *		     \- cpu_clk_dynX_div
+		 *                      \- xtal/fclk_div2/fclk_div3
+		 *                   \- xtal/fclk_div2/fclk_div3
+		 */
+
+		udelay(100);
+
+		return NOTIFY_OK;
+
+	case POST_RATE_CHANGE:
+		/*
+		 * The sys_pll has ben updated, now switch back cpu_clk to
+		 * sys_pll
+		 */
+
+		/* Configure cpu_clk to use sys_pll */
+		clk_hw_set_parent(nb_data->cpu_clk,
+				  nb_data->sys_pll);
+
+		udelay(100);
+
+		/* new path :
+		 * cpu_clk
+		 *    \- sys_pll
+		 *          \- sys_pll_dco
+		 */
+
+		return NOTIFY_OK;
+
+	default:
+		return NOTIFY_DONE;
+	}
+}
+
+static struct g12a_sys_pll_nb_data g12a_sys_pll_nb_data = {
+	.sys_pll = &g12a_sys_pll.hw,
+	.cpu_clk = &g12a_cpu_clk.hw,
+	.cpu_clk_dyn = &g12a_cpu_clk_dyn.hw,
+	.nb.notifier_call = g12a_sys_pll_notifier_cb,
+};
+
+/* G12B first CPU cluster uses sys1_pll */
+static struct g12a_sys_pll_nb_data g12b_cpu_clk_sys1_pll_nb_data = {
+	.sys_pll = &g12b_sys1_pll.hw,
+	.cpu_clk = &g12b_cpu_clk.hw,
+	.cpu_clk_dyn = &g12a_cpu_clk_dyn.hw,
+	.nb.notifier_call = g12a_sys_pll_notifier_cb,
+};
+
+/* G12B second CPU cluster uses sys_pll */
+static struct g12a_sys_pll_nb_data g12b_cpub_clk_sys_pll_nb_data = {
+	.sys_pll = &g12a_sys_pll.hw,
+	.cpu_clk = &g12b_cpub_clk.hw,
+	.cpu_clk_dyn = &g12b_cpub_clk_dyn.hw,
+	.nb.notifier_call = g12a_sys_pll_notifier_cb,
+};
+
 static struct clk_regmap g12a_cpu_clk_div16_en = {
 	.data = &(struct clk_regmap_gate_data){
 		.offset = HHI_SYS_CPU_CLK_CNTL1,
@@ -3792,18 +4083,163 @@ static const struct reg_sequence g12a_init_regs[] = {
 	{ .reg = HHI_MPLL_CNTL0,	.def = 0x00000543 },
 };
 
+static int meson_g12a_dvfs_setup_common(struct platform_device *pdev,
+					struct clk_hw **hws)
+{
+	const char *notifier_clk_name;
+	struct clk *notifier_clk;
+	struct clk_hw *xtal;
+	int ret;
+
+	xtal = clk_hw_get_parent_by_index(hws[CLKID_CPU_CLK_DYN1_SEL], 0);
+
+	/* Setup clock notifier for cpu_clk_postmux0 */
+	g12a_cpu_clk_postmux0_nb_data.xtal = xtal;
+	notifier_clk_name = clk_hw_get_name(&g12a_cpu_clk_postmux0.hw);
+	notifier_clk = __clk_lookup(notifier_clk_name);
+	ret = clk_notifier_register(notifier_clk,
+				    &g12a_cpu_clk_postmux0_nb_data.nb);
+	if (ret) {
+		dev_err(&pdev->dev, "failed to register the cpu_clk_postmux0 notifier\n");
+		return ret;
+	}
+
+	/* Setup clock notifier for cpu_clk_dyn mux */
+	notifier_clk_name = clk_hw_get_name(&g12a_cpu_clk_dyn.hw);
+	notifier_clk = __clk_lookup(notifier_clk_name);
+	ret = clk_notifier_register(notifier_clk, &g12a_cpu_clk_mux_nb);
+	if (ret) {
+		dev_err(&pdev->dev, "failed to register the cpu_clk_dyn notifier\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static int meson_g12b_dvfs_setup(struct platform_device *pdev)
+{
+	struct clk_hw **hws = g12b_hw_onecell_data.hws;
+	const char *notifier_clk_name;
+	struct clk *notifier_clk;
+	struct clk_hw *xtal;
+	int ret;
+
+	ret = meson_g12a_dvfs_setup_common(pdev, hws);
+	if (ret)
+		return ret;
+
+	xtal = clk_hw_get_parent_by_index(hws[CLKID_CPU_CLK_DYN1_SEL], 0);
+
+	/* Setup clock notifier for cpu_clk mux */
+	notifier_clk_name = clk_hw_get_name(&g12b_cpu_clk.hw);
+	notifier_clk = __clk_lookup(notifier_clk_name);
+	ret = clk_notifier_register(notifier_clk, &g12a_cpu_clk_mux_nb);
+	if (ret) {
+		dev_err(&pdev->dev, "failed to register the cpu_clk notifier\n");
+		return ret;
+	}
+
+	/* Setup clock notifier for sys1_pll */
+	notifier_clk_name = clk_hw_get_name(&g12b_sys1_pll.hw);
+	notifier_clk = __clk_lookup(notifier_clk_name);
+	ret = clk_notifier_register(notifier_clk,
+				    &g12b_cpu_clk_sys1_pll_nb_data.nb);
+	if (ret) {
+		dev_err(&pdev->dev, "failed to register the sys1_pll notifier\n");
+		return ret;
+	}
+
+	/* Add notifiers for the second CPU cluster */
+
+	/* Setup clock notifier for cpub_clk_postmux0 */
+	g12b_cpub_clk_postmux0_nb_data.xtal = xtal;
+	notifier_clk_name = clk_hw_get_name(&g12b_cpub_clk_postmux0.hw);
+	notifier_clk = __clk_lookup(notifier_clk_name);
+	ret = clk_notifier_register(notifier_clk,
+				    &g12b_cpub_clk_postmux0_nb_data.nb);
+	if (ret) {
+		dev_err(&pdev->dev, "failed to register the cpub_clk_postmux0 notifier\n");
+		return ret;
+	}
+
+	/* Setup clock notifier for cpub_clk_dyn mux */
+	notifier_clk_name = clk_hw_get_name(&g12b_cpub_clk_dyn.hw);
+	notifier_clk = __clk_lookup(notifier_clk_name);
+	ret = clk_notifier_register(notifier_clk, &g12a_cpu_clk_mux_nb);
+	if (ret) {
+		dev_err(&pdev->dev, "failed to register the cpub_clk_dyn notifier\n");
+		return ret;
+	}
+
+	/* Setup clock notifier for cpub_clk mux */
+	notifier_clk_name = clk_hw_get_name(&g12b_cpub_clk.hw);
+	notifier_clk = __clk_lookup(notifier_clk_name);
+	ret = clk_notifier_register(notifier_clk, &g12a_cpu_clk_mux_nb);
+	if (ret) {
+		dev_err(&pdev->dev, "failed to register the cpub_clk notifier\n");
+		return ret;
+	}
+
+	/* Setup clock notifier for sys_pll */
+	notifier_clk_name = clk_hw_get_name(&g12a_sys_pll.hw);
+	notifier_clk = __clk_lookup(notifier_clk_name);
+	ret = clk_notifier_register(notifier_clk,
+				    &g12b_cpub_clk_sys_pll_nb_data.nb);
+	if (ret) {
+		dev_err(&pdev->dev, "failed to register the sys_pll notifier\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+
+static int meson_g12a_dvfs_setup(struct platform_device *pdev)
+{
+	struct clk_hw **hws = g12a_hw_onecell_data.hws;
+	const char *notifier_clk_name;
+	struct clk *notifier_clk;
+	int ret;
+
+	ret = meson_g12a_dvfs_setup_common(pdev, hws);
+	if (ret)
+		return ret;
+
+	/* Setup clock notifier for cpu_clk mux */
+	notifier_clk_name = clk_hw_get_name(&g12a_cpu_clk.hw);
+	notifier_clk = __clk_lookup(notifier_clk_name);
+	ret = clk_notifier_register(notifier_clk, &g12a_cpu_clk_mux_nb);
+	if (ret) {
+		dev_err(&pdev->dev, "failed to register the cpu_clk notifier\n");
+		return ret;
+	}
+
+	/* Setup clock notifier for sys_pll */
+	notifier_clk_name = clk_hw_get_name(&g12a_sys_pll.hw);
+	notifier_clk = __clk_lookup(notifier_clk_name);
+	ret = clk_notifier_register(notifier_clk, &g12a_sys_pll_nb_data.nb);
+	if (ret) {
+		dev_err(&pdev->dev, "failed to register the sys_pll notifier\n");
+		return ret;
+	}
+
+	return 0;
+}
+
 static const struct meson_eeclkc_data g12a_clkc_data = {
 	.regmap_clks = g12a_clk_regmaps,
 	.regmap_clk_num = ARRAY_SIZE(g12a_clk_regmaps),
 	.hw_onecell_data = &g12a_hw_onecell_data,
 	.init_regs = g12a_init_regs,
 	.init_count = ARRAY_SIZE(g12a_init_regs),
+	.setup = meson_g12a_dvfs_setup,
 };
 
 static const struct meson_eeclkc_data g12b_clkc_data = {
 	.regmap_clks = g12a_clk_regmaps,
 	.regmap_clk_num = ARRAY_SIZE(g12a_clk_regmaps),
-	.hw_onecell_data = &g12b_hw_onecell_data
+	.hw_onecell_data = &g12b_hw_onecell_data,
+	.setup = meson_g12b_dvfs_setup,
 };
 
 static const struct of_device_id clkc_match_table[] = {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
