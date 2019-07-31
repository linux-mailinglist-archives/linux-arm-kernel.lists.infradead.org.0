Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF397BBFD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 10:42:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5vx0yfUMr8VLW+RQyqUziUwAf4KpIN0o7IBn4jbld7k=; b=R1Z3XIb+PRsUSu
	QO9jv/Gbg+1iDRNs6HKVupKtbiJT2sB3MUyAEcs0hrA81996x8UZlXV4MExYikvCxhc9+1zKobq5f
	3gyjX6NdXdi8mCoXgU7zBzq5EcSZ7XUDREWd1ig3hY/MJ59YlHBjFecBXumkeIOqYYaqRZIXhGjfn
	RYxztnNe3KgQESSDn14utWalFC0IaMg1LfKdxja7wMhLijgjGXU5BRhzHBarFJSaGeq0aasQJaJIE
	avZRAXziesUALDFgJn0nnYzNhIl/0pX9rGNrT4o2biPuIn3yw1zZMsePgWr1F0MPJffSbuKO3cNe+
	bvcimqHhPd8dMRMvd5SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hskBX-0007Hi-00; Wed, 31 Jul 2019 08:42:11 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsk9q-000622-RQ
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 08:40:32 +0000
Received: by mail-wr1-x443.google.com with SMTP id z1so68661686wru.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 01:40:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=63sSLRGTpGeAUn/T7N+lHC6ZeaTODs5OgJPVWtHQrw4=;
 b=rwhNKN4T0anDeEDorZm+T1NrJ2TofNYqlkbthqU5dBtWsvC0yEls7aWWu+MiHcZgRc
 jzpLcPCqiD82EHYs/wv9RCbxReJDiylo9CMVs85y9NiHo1+X9+hxR5SXIBVQt11TYMx4
 2h+iqWwmm/hhGGmApcly/aaaMgdwlzV2+RTKhMtdadigxPxxwbKvQxQG1lfp63re6jvy
 9q3FyGMJ6YG/0678ry/gLlWlrLhPUdskVDEjFMOnfhV2f1HJTY9jP+LrpnJpWSPYxiz9
 c7ZAxMDs340n+ALzSVkfKxngVqRrvwS5QycNVqLjFnRROcsp7Rzmv2xlMSy/xOGAtsm+
 7fMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=63sSLRGTpGeAUn/T7N+lHC6ZeaTODs5OgJPVWtHQrw4=;
 b=cItqMxm13rReeSedGialYamzfoNHKBjr7CXLcG3BbupZfwboiIjwwwdq4ynltexhqi
 wzybVauJwCmKZiHhxLaGPjf3JP1eYmUOt1HfJ7bUCBO1maw6geF1rrr4Ub6ec3HDJbQI
 pRgIMrgtJZFrUYETX0QcWbFVQ+0wtRcROMKSn2tibYmtvF+sBUkBalKncid6cImOnIOo
 32JkFy4R1zSbZr1Sxwkx2++aWUOAy9k0X4AXKwwNf07za7bBUfCR1Lu+IamjiKsZeeyt
 yDIh4gTK2RVULt4nJjPf87Ug5NPa0rsehSuVa+pTMNbc+siUsrPugHb5UrgRb4lbTd85
 BuDw==
X-Gm-Message-State: APjAAAVsmJySEfgfU9HyyzCkJxSQNTIt4pYp2DllXjPoTGT/2RMy6/Lz
 4r+9oz4iywqLBmpShFZ3PpblFLQhQ2k=
X-Google-Smtp-Source: APXvYqx40IN/QxyDMu7LxQKOfbqtePOKoOl/CVocjqQ2e17XIY87YPcDVM8XBbyf2jFSrMvvHbCpuA==
X-Received: by 2002:a5d:470e:: with SMTP id
 y14mr108211346wrq.308.1564562425353; 
 Wed, 31 Jul 2019 01:40:25 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id 18sm56049308wmg.43.2019.07.31.01.40.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 01:40:24 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com
Subject: [PATCH v2 3/4] clk: meson: g12a: add notifiers to handle cpu clock
 change
Date: Wed, 31 Jul 2019 10:40:18 +0200
Message-Id: <20190731084019.8451-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731084019.8451-1-narmstrong@baylibre.com>
References: <20190731084019.8451-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_014027_070883_6D863E67 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
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
 drivers/clk/meson/g12a.c | 535 +++++++++++++++++++++++++++++++++++----
 1 file changed, 481 insertions(+), 54 deletions(-)

diff --git a/drivers/clk/meson/g12a.c b/drivers/clk/meson/g12a.c
index e4957fd9f91f..e6011d18a719 100644
--- a/drivers/clk/meson/g12a.c
+++ b/drivers/clk/meson/g12a.c
@@ -14,10 +14,12 @@
 #include <linux/init.h>
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
+#include <linux/clk.h>
 
 #include "clk-mpll.h"
 #include "clk-pll.h"
 #include "clk-regmap.h"
+#include "clk-cpu-dyndiv.h"
 #include "vid-pll-div.h"
 #include "meson-eeclk.h"
 #include "g12a.h"
@@ -88,16 +90,9 @@ static struct clk_regmap g12a_fixed_pll = {
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
@@ -127,16 +122,17 @@ static struct clk_regmap g12a_sys_pll_dco = {
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
 		.parent_data = &(const struct clk_parent_data) {
 			.fw_name = "xtal",
 		},
 		.num_parents = 1,
+		/* This clock feeds the CPU, avoid disabling it */
+		.flags = CLK_IS_CRITICAL,
 	},
 };
 
@@ -149,11 +145,12 @@ static struct clk_regmap g12a_sys_pll = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "sys_pll",
-		.ops = &clk_regmap_divider_ro_ops,
+		.ops = &clk_regmap_divider_ops,
 		.parent_hws = (const struct clk_hw *[]) {
 			&g12a_sys_pll_dco.hw
 		},
 		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
@@ -184,14 +181,17 @@ static struct clk_regmap g12b_sys1_pll_dco = {
 			.shift   = 29,
 			.width   = 1,
 		},
+		.range = &g12a_sys_pll_mult_range,
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "sys1_pll_dco",
-		.ops = &meson_clk_pll_ro_ops,
+		.ops = &meson_clk_pll_ops,
 		.parent_data = &(const struct clk_parent_data) {
 			.fw_name = "xtal",
 		},
 		.num_parents = 1,
+		/* This clock feeds the CPU, avoid disabling it */
+		.flags = CLK_IS_CRITICAL,
 	},
 };
 
@@ -204,11 +204,12 @@ static struct clk_regmap g12b_sys1_pll = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "sys1_pll",
-		.ops = &clk_regmap_divider_ro_ops,
+		.ops = &clk_regmap_divider_ops,
 		.parent_hws = (const struct clk_hw *[]) {
 			&g12b_sys1_pll_dco.hw
 		},
 		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
@@ -345,13 +346,15 @@ static struct clk_regmap g12a_cpu_clk_premux0 = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk_dyn0_sel",
-		.ops = &clk_regmap_mux_ro_ops,
+		.ops = &clk_regmap_mux_ops,
 		.parent_data = (const struct clk_parent_data []) {
 			{ .fw_name = "xtal", },
 			{ .hw = &g12a_fclk_div2.hw },
 			{ .hw = &g12a_fclk_div3.hw },
 		},
 		.num_parents = 3,
+		/* This sub-tree is used a parking clock */
+		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
 };
 
@@ -364,30 +367,40 @@ static struct clk_regmap g12a_cpu_clk_premux1 = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk_dyn1_sel",
-		.ops = &clk_regmap_mux_ro_ops,
+		.ops = &clk_regmap_mux_ops,
 		.parent_data = (const struct clk_parent_data []) {
 			{ .fw_name = "xtal", },
 			{ .hw = &g12a_fclk_div2.hw },
 			{ .hw = &g12a_fclk_div3.hw },
 		},
 		.num_parents = 3,
+		/* This sub-tree is used a parking clock */
+		.flags = CLK_SET_RATE_NO_REPARENT
 	},
 };
 
 /* Datasheet names this field as "mux0_divn_tcnt" */
 static struct clk_regmap g12a_cpu_clk_mux0_div = {
-	.data = &(struct clk_regmap_div_data){
-		.offset = HHI_SYS_CPU_CLK_CNTL0,
-		.shift = 4,
-		.width = 6,
+	.data = &(struct meson_clk_cpu_dyndiv_data){
+		.div = {
+			.reg_off = HHI_SYS_CPU_CLK_CNTL0,
+			.shift = 4,
+			.width = 6,
+		},
+		.dyn = {
+			.reg_off = HHI_SYS_CPU_CLK_CNTL0,
+			.shift = 26,
+			.width = 1,
+		},
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk_dyn0_div",
-		.ops = &clk_regmap_divider_ro_ops,
+		.ops = &meson_clk_cpu_dyndiv_ops,
 		.parent_hws = (const struct clk_hw *[]) {
 			&g12a_cpu_clk_premux0.hw
 		},
 		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
@@ -400,12 +413,13 @@ static struct clk_regmap g12a_cpu_clk_postmux0 = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk_dyn0",
-		.ops = &clk_regmap_mux_ro_ops,
+		.ops = &clk_regmap_mux_ops,
 		.parent_hws = (const struct clk_hw *[]) {
 			&g12a_cpu_clk_premux0.hw,
 			&g12a_cpu_clk_mux0_div.hw,
 		},
 		.num_parents = 2,
+		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
@@ -435,12 +449,14 @@ static struct clk_regmap g12a_cpu_clk_postmux1 = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk_dyn1",
-		.ops = &clk_regmap_mux_ro_ops,
+		.ops = &clk_regmap_mux_ops,
 		.parent_hws = (const struct clk_hw *[]) {
 			&g12a_cpu_clk_premux1.hw,
 			&g12a_cpu_clk_mux1_div.hw,
 		},
 		.num_parents = 2,
+		/* This sub-tree is used a parking clock */
+		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
 };
 
@@ -453,12 +469,13 @@ static struct clk_regmap g12a_cpu_clk_dyn = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk_dyn",
-		.ops = &clk_regmap_mux_ro_ops,
+		.ops = &clk_regmap_mux_ops,
 		.parent_hws = (const struct clk_hw *[]) {
 			&g12a_cpu_clk_postmux0.hw,
 			&g12a_cpu_clk_postmux1.hw,
 		},
 		.num_parents = 2,
+		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
@@ -471,12 +488,13 @@ static struct clk_regmap g12a_cpu_clk = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk",
-		.ops = &clk_regmap_mux_ro_ops,
+		.ops = &clk_regmap_mux_ops,
 		.parent_hws = (const struct clk_hw *[]) {
 			&g12a_cpu_clk_dyn.hw,
 			&g12a_sys_pll.hw,
 		},
 		.num_parents = 2,
+		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
@@ -489,12 +507,13 @@ static struct clk_regmap g12b_cpu_clk = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk",
-		.ops = &clk_regmap_mux_ro_ops,
+		.ops = &clk_regmap_mux_ops,
 		.parent_hws = (const struct clk_hw *[]) {
 			&g12a_cpu_clk_dyn.hw,
 			&g12b_sys1_pll.hw
 		},
 		.num_parents = 2,
+		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
@@ -507,7 +526,7 @@ static struct clk_regmap g12b_cpub_clk_premux0 = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_dyn0_sel",
-		.ops = &clk_regmap_mux_ro_ops,
+		.ops = &clk_regmap_mux_ops,
 		.parent_data = (const struct clk_parent_data []) {
 			{ .fw_name = "xtal", },
 			{ .hw = &g12a_fclk_div2.hw },
@@ -519,18 +538,26 @@ static struct clk_regmap g12b_cpub_clk_premux0 = {
 
 /* Datasheet names this field as "mux0_divn_tcnt" */
 static struct clk_regmap g12b_cpub_clk_mux0_div = {
-	.data = &(struct clk_regmap_div_data){
-		.offset = HHI_SYS_CPUB_CLK_CNTL,
-		.shift = 4,
-		.width = 6,
+	.data = &(struct meson_clk_cpu_dyndiv_data){
+		.div = {
+			.reg_off = HHI_SYS_CPUB_CLK_CNTL,
+			.shift = 4,
+			.width = 6,
+		},
+		.dyn = {
+			.reg_off = HHI_SYS_CPUB_CLK_CNTL,
+			.shift = 26,
+			.width = 1,
+		},
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_dyn0_div",
-		.ops = &clk_regmap_divider_ro_ops,
+		.ops = &meson_clk_cpu_dyndiv_ops,
 		.parent_hws = (const struct clk_hw *[]) {
 			&g12b_cpub_clk_premux0.hw
 		},
 		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
@@ -543,12 +570,13 @@ static struct clk_regmap g12b_cpub_clk_postmux0 = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_dyn0",
-		.ops = &clk_regmap_mux_ro_ops,
+		.ops = &clk_regmap_mux_ops,
 		.parent_hws = (const struct clk_hw *[]) {
 			&g12b_cpub_clk_premux0.hw,
 			&g12b_cpub_clk_mux0_div.hw
 		},
 		.num_parents = 2,
+		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
@@ -561,13 +589,15 @@ static struct clk_regmap g12b_cpub_clk_premux1 = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_dyn1_sel",
-		.ops = &clk_regmap_mux_ro_ops,
+		.ops = &clk_regmap_mux_ops,
 		.parent_data = (const struct clk_parent_data []) {
 			{ .fw_name = "xtal", },
 			{ .hw = &g12a_fclk_div2.hw },
 			{ .hw = &g12a_fclk_div3.hw },
 		},
 		.num_parents = 3,
+		/* This sub-tree is used a parking clock */
+		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
 };
 
@@ -597,12 +627,14 @@ static struct clk_regmap g12b_cpub_clk_postmux1 = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_dyn1",
-		.ops = &clk_regmap_mux_ro_ops,
+		.ops = &clk_regmap_mux_ops,
 		.parent_hws = (const struct clk_hw *[]) {
 			&g12b_cpub_clk_premux1.hw,
 			&g12b_cpub_clk_mux1_div.hw
 		},
 		.num_parents = 2,
+		/* This sub-tree is used a parking clock */
+		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
 };
 
@@ -615,12 +647,13 @@ static struct clk_regmap g12b_cpub_clk_dyn = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_dyn",
-		.ops = &clk_regmap_mux_ro_ops,
+		.ops = &clk_regmap_mux_ops,
 		.parent_hws = (const struct clk_hw *[]) {
 			&g12b_cpub_clk_postmux0.hw,
 			&g12b_cpub_clk_postmux1.hw
 		},
 		.num_parents = 2,
+		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
@@ -633,15 +666,227 @@ static struct clk_regmap g12b_cpub_clk = {
 	},
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk",
-		.ops = &clk_regmap_mux_ro_ops,
+		.ops = &clk_regmap_mux_ops,
 		.parent_hws = (const struct clk_hw *[]) {
 			&g12b_cpub_clk_dyn.hw,
 			&g12a_sys_pll.hw
 		},
 		.num_parents = 2,
+		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
+static int g12a_cpu_clk_mux_notifier_cb(struct notifier_block *nb,
+					unsigned long event, void *data)
+{
+	if (event == POST_RATE_CHANGE || event == PRE_RATE_CHANGE) {
+		/* Wait for clock propagation before/after changing the mux */
+		udelay(100);
+		return NOTIFY_OK;
+	}
+
+	return NOTIFY_DONE;
+}
+
+static struct notifier_block g12a_cpu_clk_mux_nb = {
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
+					    unsigned long event, void *data)
+{
+	struct g12a_cpu_clk_postmux_nb_data *nb_data =
+		container_of(nb, struct g12a_cpu_clk_postmux_nb_data, nb);
+
+	switch (event) {
+	case PRE_RATE_CHANGE:
+		/*
+		 * This notifier means cpu_clk_postmux0 clock will be changed
+		 * to feed cpu_clk, this is the current path :
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
@@ -4097,28 +4342,210 @@ static const struct reg_sequence g12a_init_regs[] = {
 	{ .reg = HHI_MPLL_CNTL0,	.def = 0x00000543 },
 };
 
-static const struct meson_eeclkc_data g12a_clkc_data = {
-	.regmap_clks = g12a_clk_regmaps,
-	.regmap_clk_num = ARRAY_SIZE(g12a_clk_regmaps),
-	.hw_onecell_data = &g12a_hw_onecell_data,
-	.init_regs = g12a_init_regs,
-	.init_count = ARRAY_SIZE(g12a_init_regs),
-};
-
-static const struct meson_eeclkc_data g12b_clkc_data = {
-	.regmap_clks = g12a_clk_regmaps,
-	.regmap_clk_num = ARRAY_SIZE(g12a_clk_regmaps),
-	.hw_onecell_data = &g12b_hw_onecell_data
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
+struct meson_g12a_data {
+	const struct meson_eeclkc_data eeclkc_data;
+	int (*dvfs_setup)(struct platform_device *pdev);
+};
+
+static int meson_g12a_probe(struct platform_device *pdev)
+{
+	const struct meson_eeclkc_data *eeclkc_data;
+	const struct meson_g12a_data *g12a_data;
+	int ret;
+
+	eeclkc_data = of_device_get_match_data(&pdev->dev);
+	if (!eeclkc_data)
+		return -EINVAL;
+
+	ret = meson_eeclkc_probe(pdev);
+	if (ret)
+		return ret;
+
+	g12a_data = container_of(eeclkc_data, struct meson_g12a_data,
+				 eeclkc_data);
+
+	if (g12a_data->dvfs_setup)
+		return g12a_data->dvfs_setup(pdev);
+
+	return 0;
+}
+
+static const struct meson_g12a_data g12a_clkc_data = {
+	.eeclkc_data = {
+		.regmap_clks = g12a_clk_regmaps,
+		.regmap_clk_num = ARRAY_SIZE(g12a_clk_regmaps),
+		.hw_onecell_data = &g12a_hw_onecell_data,
+		.init_regs = g12a_init_regs,
+		.init_count = ARRAY_SIZE(g12a_init_regs),
+	},
+	.dvfs_setup = meson_g12a_dvfs_setup,
+};
+
+static const struct meson_g12a_data g12b_clkc_data = {
+	.eeclkc_data = {
+		.regmap_clks = g12a_clk_regmaps,
+		.regmap_clk_num = ARRAY_SIZE(g12a_clk_regmaps),
+		.hw_onecell_data = &g12b_hw_onecell_data,
+	},
+	.dvfs_setup = meson_g12b_dvfs_setup,
 };
 
 static const struct of_device_id clkc_match_table[] = {
-	{ .compatible = "amlogic,g12a-clkc", .data = &g12a_clkc_data },
-	{ .compatible = "amlogic,g12b-clkc", .data = &g12b_clkc_data },
+	{
+		.compatible = "amlogic,g12a-clkc",
+		.data = &g12a_clkc_data.eeclkc_data
+	},
+	{
+		.compatible = "amlogic,g12b-clkc",
+		.data = &g12b_clkc_data.eeclkc_data
+	},
 	{}
 };
 
 static struct platform_driver g12a_driver = {
-	.probe		= meson_eeclkc_probe,
+	.probe		= meson_g12a_probe,
 	.driver		= {
 		.name	= "g12a-clkc",
 		.of_match_table = clkc_match_table,
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
