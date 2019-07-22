Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2186FD39
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 11:56:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sEXxep4Up5g+fJgv+GoR47VeRq5ZIDlxS7pw09Jfcb8=; b=Y9WRG80qij8ZTna1dMkUFrzPJz
	q1Nx4u84A6QfVBXr/ecC8OcVQ9+1+MzickvcbsPHwt0+4LwRCM2ilAuDx0u0F1YZWsgK4ECm2WYb7
	apSzaASP92cZBA/I7TI9mAuUA9+Ip6PT6CYG6whtfeGMWCdqm3I9enGS460SarquYdsE/846SA/gY
	W6IDwCF56HhIQG4w8UG8V3N+UP9VMtsTPnGpWvqbIJaUdzGA3+rwUvP6B08jNteH/ebh99HwoMoSf
	WNNulFI52K2BDUYonndCdNI71jKYLL7omvtUJxYc+2X/lh+DH48BhiwkH85d63AA57StZOVTQ1U+U
	CxvDwseQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpV3j-00020U-FY; Mon, 22 Jul 2019 09:56:43 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpV1c-00084s-PY
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 09:54:46 +0000
Received: by mail-wr1-x442.google.com with SMTP id n9so13644576wrr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 02:54:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=m/RG3Iaap1GzQTstqEG0D7y6L8JusFxMTbNHVHRlI3M=;
 b=o2SCmnMLzAItuUPqnqcKv0YqKfuzdhK1hvK0Ync12mQQ0WTiXxmwYGJxIcyGWLceo0
 ijsZGPio0P7Yx18U3SMcsCLCJmfM6rKPookUeVWEGUNpm0Yyna3EXuHYaB1PGUK7Zt9y
 sZ2A/pfGYsxXkeqOiyyqdGzHXIk4VOBbiXawTXZNMOpMIOmcVkv0xlW1X0FgGnDg4DhA
 oOgnY0nCAFDzoCp+vsqgrgElHwX0pLmjGmCHHtREVMf6yTPcBzE5XM1FjxqlvgJdjGWP
 sgU6/ehZiPgKtgOvUHy5xqKRU0cMN5wFSXssPZz9yZhvp9NO0g5smPiIW7xi9AkwSku2
 lCNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=m/RG3Iaap1GzQTstqEG0D7y6L8JusFxMTbNHVHRlI3M=;
 b=uf1dqLffmK9GKaS/8gcPJbQ4/CDn9U65T/eySzPAt529FTzPUfs1bZsId6rERU3wvy
 jWaoRoLS2N7SkoduSW5yjPZ+942kN15gvUJCSWYq6peOGXVNtwVlFC5T3OXFaLWYc9C7
 kACHpz+2LjLE7vsa74YG0gUkIFDXP4tdT757iWM5fuTNtzFUbI9vWxXD4fVz5QjFXXNg
 XPs0QJAyl2h5/OwgiwwKToGen0uRJskd60EeAsw9Y/xs9RlObB26wCNnl4YIbRNFrOxK
 O7kiSBgA8kfexWHnlGoomsM4hY8Ui7x68V0j5VkEFjUrpN9HK3f56OyJwpfEJjhlWePK
 RejA==
X-Gm-Message-State: APjAAAXpjbPjGKZ1tp9/mpThI7OqqMwM3nr2gr0AlYZH65a1U1QlzAWt
 wwqPu8rx+pGkNmnPd6q0IQpAtQ==
X-Google-Smtp-Source: APXvYqymdT/l/+z6MAKOcjaCNpRiefwHAxU3DzHpQ9N02ba+HLLbZz/q1nRWniRC1/OP5cozEcRBiw==
X-Received: by 2002:adf:e6c5:: with SMTP id y5mr77160548wrm.235.1563789270346; 
 Mon, 22 Jul 2019 02:54:30 -0700 (PDT)
Received: from pop-os.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id 91sm83158469wrp.3.2019.07.22.02.54.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 02:54:29 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
To: jbrunet@baylibre.com
Subject: [PATCH 2/8] clk: meson: g12a: migrate to the new parent description
 method
Date: Mon, 22 Jul 2019 11:54:19 +0200
Message-Id: <20190722095425.14193-3-amergnat@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190722095425.14193-1-amergnat@baylibre.com>
References: <20190722095425.14193-1-amergnat@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_025433_619689_25863CB3 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: narmstrong@baylibre.com, sboyd@kernel.org, khilman@baylibre.com,
 Alexandre Mergnat <amergnat@baylibre.com>, linux-kernel@vger.kernel.org,
 baylibre-upstreaming@groups.io, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This clock controller use the string comparison method to describe parent
relation between the clocks, which is not optimized.

Migrate to the new way by using .parent_hws where possible (ie. when
all clocks are local to the controller) and use .parent_data otherwise.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 drivers/clk/meson/g12a.c | 836 ++++++++++++++++++++++++++-------------
 1 file changed, 564 insertions(+), 272 deletions(-)

diff --git a/drivers/clk/meson/g12a.c b/drivers/clk/meson/g12a.c
index cbd56b2e05d0..5cad8cee142b 100644
--- a/drivers/clk/meson/g12a.c
+++ b/drivers/clk/meson/g12a.c
@@ -15,7 +15,6 @@
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
 
-#include "clk-input.h"
 #include "clk-mpll.h"
 #include "clk-pll.h"
 #include "clk-regmap.h"
@@ -61,7 +60,9 @@ static struct clk_regmap g12a_fixed_pll_dco = {
 	.hw.init = &(struct clk_init_data){
 		.name = "fixed_pll_dco",
 		.ops = &meson_clk_pll_ro_ops,
-		.parent_names = (const char *[]){ IN_PREFIX "xtal" },
+		.parent_data = &(const struct clk_parent_data) {
+			.fw_name = "xtal",
+		},
 		.num_parents = 1,
 	},
 };
@@ -76,7 +77,9 @@ static struct clk_regmap g12a_fixed_pll = {
 	.hw.init = &(struct clk_init_data){
 		.name = "fixed_pll",
 		.ops = &clk_regmap_divider_ro_ops,
-		.parent_names = (const char *[]){ "fixed_pll_dco" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_fixed_pll_dco.hw
+		},
 		.num_parents = 1,
 		/*
 		 * This clock won't ever change at runtime so
@@ -130,7 +133,9 @@ static struct clk_regmap g12a_sys_pll_dco = {
 	.hw.init = &(struct clk_init_data){
 		.name = "sys_pll_dco",
 		.ops = &meson_clk_pll_ro_ops,
-		.parent_names = (const char *[]){ IN_PREFIX "xtal" },
+		.parent_data = &(const struct clk_parent_data) {
+			.fw_name = "xtal",
+		},
 		.num_parents = 1,
 	},
 };
@@ -145,7 +150,9 @@ static struct clk_regmap g12a_sys_pll = {
 	.hw.init = &(struct clk_init_data){
 		.name = "sys_pll",
 		.ops = &clk_regmap_divider_ro_ops,
-		.parent_names = (const char *[]){ "sys_pll_dco" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_sys_pll_dco.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -181,7 +188,9 @@ static struct clk_regmap g12b_sys1_pll_dco = {
 	.hw.init = &(struct clk_init_data){
 		.name = "sys1_pll_dco",
 		.ops = &meson_clk_pll_ro_ops,
-		.parent_names = (const char *[]){ IN_PREFIX "xtal" },
+		.parent_data = &(const struct clk_parent_data) {
+			.fw_name = "xtal",
+		},
 		.num_parents = 1,
 	},
 };
@@ -196,7 +205,9 @@ static struct clk_regmap g12b_sys1_pll = {
 	.hw.init = &(struct clk_init_data){
 		.name = "sys1_pll",
 		.ops = &clk_regmap_divider_ro_ops,
-		.parent_names = (const char *[]){ "sys1_pll_dco" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12b_sys1_pll_dco.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -209,7 +220,7 @@ static struct clk_regmap g12a_sys_pll_div16_en = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "sys_pll_div16_en",
 		.ops = &clk_regmap_gate_ro_ops,
-		.parent_names = (const char *[]){ "sys_pll" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_sys_pll.hw },
 		.num_parents = 1,
 		/*
 		 * This clock is used to debug the sys_pll range
@@ -226,7 +237,9 @@ static struct clk_regmap g12b_sys1_pll_div16_en = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "sys1_pll_div16_en",
 		.ops = &clk_regmap_gate_ro_ops,
-		.parent_names = (const char *[]){ "sys1_pll" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12b_sys1_pll.hw
+		},
 		.num_parents = 1,
 		/*
 		 * This clock is used to debug the sys_pll range
@@ -241,7 +254,9 @@ static struct clk_fixed_factor g12a_sys_pll_div16 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "sys_pll_div16",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "sys_pll_div16_en" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_sys_pll_div16_en.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -252,7 +267,9 @@ static struct clk_fixed_factor g12b_sys1_pll_div16 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "sys1_pll_div16",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "sys1_pll_div16_en" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12b_sys1_pll_div16_en.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -263,7 +280,7 @@ static struct clk_fixed_factor g12a_fclk_div2_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "fclk_div2_div",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "fixed_pll" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_fixed_pll.hw },
 		.num_parents = 1,
 	},
 };
@@ -276,7 +293,9 @@ static struct clk_regmap g12a_fclk_div2 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "fclk_div2",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "fclk_div2_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_fclk_div2_div.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -287,7 +306,7 @@ static struct clk_fixed_factor g12a_fclk_div3_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "fclk_div3_div",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "fixed_pll" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_fixed_pll.hw },
 		.num_parents = 1,
 	},
 };
@@ -300,7 +319,9 @@ static struct clk_regmap g12a_fclk_div3 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "fclk_div3",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "fclk_div3_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_fclk_div3_div.hw
+		},
 		.num_parents = 1,
 		/*
 		 * This clock is used by the resident firmware and is required
@@ -325,9 +346,11 @@ static struct clk_regmap g12a_cpu_clk_premux0 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk_dyn0_sel",
 		.ops = &clk_regmap_mux_ro_ops,
-		.parent_names = (const char *[]){ IN_PREFIX "xtal",
-						  "fclk_div2",
-						  "fclk_div3" },
+		.parent_data = (const struct clk_parent_data []) {
+			{ .fw_name = "xtal", },
+			{ .hw = &g12a_fclk_div2.hw },
+			{ .hw = &g12a_fclk_div3.hw },
+		},
 		.num_parents = 3,
 	},
 };
@@ -342,9 +365,11 @@ static struct clk_regmap g12a_cpu_clk_premux1 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk_dyn1_sel",
 		.ops = &clk_regmap_mux_ro_ops,
-		.parent_names = (const char *[]){ IN_PREFIX "xtal",
-						  "fclk_div2",
-						  "fclk_div3" },
+		.parent_data = (const struct clk_parent_data []) {
+			{ .fw_name = "xtal", },
+			{ .hw = &g12a_fclk_div2.hw },
+			{ .hw = &g12a_fclk_div3.hw },
+		},
 		.num_parents = 3,
 	},
 };
@@ -359,7 +384,9 @@ static struct clk_regmap g12a_cpu_clk_mux0_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk_dyn0_div",
 		.ops = &clk_regmap_divider_ro_ops,
-		.parent_names = (const char *[]){ "cpu_clk_dyn0_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_cpu_clk_premux0.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -374,8 +401,10 @@ static struct clk_regmap g12a_cpu_clk_postmux0 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk_dyn0",
 		.ops = &clk_regmap_mux_ro_ops,
-		.parent_names = (const char *[]){ "cpu_clk_dyn0_sel",
-						  "cpu_clk_dyn0_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_cpu_clk_premux0.hw,
+			&g12a_cpu_clk_mux0_div.hw,
+		},
 		.num_parents = 2,
 	},
 };
@@ -390,7 +419,9 @@ static struct clk_regmap g12a_cpu_clk_mux1_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk_dyn1_div",
 		.ops = &clk_regmap_divider_ro_ops,
-		.parent_names = (const char *[]){ "cpu_clk_dyn1_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_cpu_clk_premux1.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -405,8 +436,10 @@ static struct clk_regmap g12a_cpu_clk_postmux1 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk_dyn1",
 		.ops = &clk_regmap_mux_ro_ops,
-		.parent_names = (const char *[]){ "cpu_clk_dyn1_sel",
-						  "cpu_clk_dyn1_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_cpu_clk_premux1.hw,
+			&g12a_cpu_clk_mux1_div.hw,
+		},
 		.num_parents = 2,
 	},
 };
@@ -421,8 +454,10 @@ static struct clk_regmap g12a_cpu_clk_dyn = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk_dyn",
 		.ops = &clk_regmap_mux_ro_ops,
-		.parent_names = (const char *[]){ "cpu_clk_dyn0",
-						  "cpu_clk_dyn1" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_cpu_clk_postmux0.hw,
+			&g12a_cpu_clk_postmux1.hw,
+		},
 		.num_parents = 2,
 	},
 };
@@ -437,8 +472,10 @@ static struct clk_regmap g12a_cpu_clk = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk",
 		.ops = &clk_regmap_mux_ro_ops,
-		.parent_names = (const char *[]){ "cpu_clk_dyn",
-						  "sys_pll" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_cpu_clk_dyn.hw,
+			&g12a_sys_pll.hw,
+		},
 		.num_parents = 2,
 	},
 };
@@ -453,8 +490,10 @@ static struct clk_regmap g12b_cpu_clk = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk",
 		.ops = &clk_regmap_mux_ro_ops,
-		.parent_names = (const char *[]){ "cpu_clk_dyn",
-						  "sys1_pll" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_cpu_clk_dyn.hw,
+			&g12b_sys1_pll.hw
+		},
 		.num_parents = 2,
 	},
 };
@@ -469,9 +508,11 @@ static struct clk_regmap g12b_cpub_clk_premux0 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_dyn0_sel",
 		.ops = &clk_regmap_mux_ro_ops,
-		.parent_names = (const char *[]){ IN_PREFIX "xtal",
-						  "fclk_div2",
-						  "fclk_div3" },
+		.parent_data = (const struct clk_parent_data []) {
+			{ .fw_name = "xtal", },
+			{ .hw = &g12a_fclk_div2.hw },
+			{ .hw = &g12a_fclk_div3.hw },
+		},
 		.num_parents = 3,
 	},
 };
@@ -486,7 +527,9 @@ static struct clk_regmap g12b_cpub_clk_mux0_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_dyn0_div",
 		.ops = &clk_regmap_divider_ro_ops,
-		.parent_names = (const char *[]){ "cpub_clk_dyn0_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12b_cpub_clk_premux0.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -501,8 +544,10 @@ static struct clk_regmap g12b_cpub_clk_postmux0 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_dyn0",
 		.ops = &clk_regmap_mux_ro_ops,
-		.parent_names = (const char *[]){ "cpub_clk_dyn0_sel",
-						  "cpub_clk_dyn0_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12b_cpub_clk_premux0.hw,
+			&g12b_cpub_clk_mux0_div.hw
+		},
 		.num_parents = 2,
 	},
 };
@@ -517,9 +562,11 @@ static struct clk_regmap g12b_cpub_clk_premux1 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_dyn1_sel",
 		.ops = &clk_regmap_mux_ro_ops,
-		.parent_names = (const char *[]){ IN_PREFIX "xtal",
-						  "fclk_div2",
-						  "fclk_div3" },
+		.parent_data = (const struct clk_parent_data []) {
+			{ .fw_name = "xtal", },
+			{ .hw = &g12a_fclk_div2.hw },
+			{ .hw = &g12a_fclk_div3.hw },
+		},
 		.num_parents = 3,
 	},
 };
@@ -534,7 +581,9 @@ static struct clk_regmap g12b_cpub_clk_mux1_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_dyn1_div",
 		.ops = &clk_regmap_divider_ro_ops,
-		.parent_names = (const char *[]){ "cpub_clk_dyn1_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12b_cpub_clk_premux1.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -549,8 +598,10 @@ static struct clk_regmap g12b_cpub_clk_postmux1 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_dyn1",
 		.ops = &clk_regmap_mux_ro_ops,
-		.parent_names = (const char *[]){ "cpub_clk_dyn1_sel",
-						  "cpub_clk_dyn1_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12b_cpub_clk_premux1.hw,
+			&g12b_cpub_clk_mux1_div.hw
+		},
 		.num_parents = 2,
 	},
 };
@@ -565,8 +616,10 @@ static struct clk_regmap g12b_cpub_clk_dyn = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_dyn",
 		.ops = &clk_regmap_mux_ro_ops,
-		.parent_names = (const char *[]){ "cpub_clk_dyn0",
-						  "cpub_clk_dyn1" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12b_cpub_clk_postmux0.hw,
+			&g12b_cpub_clk_postmux1.hw
+		},
 		.num_parents = 2,
 	},
 };
@@ -581,8 +634,10 @@ static struct clk_regmap g12b_cpub_clk = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk",
 		.ops = &clk_regmap_mux_ro_ops,
-		.parent_names = (const char *[]){ "cpub_clk_dyn",
-						  "sys_pll" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12b_cpub_clk_dyn.hw,
+			&g12a_sys_pll.hw
+		},
 		.num_parents = 2,
 	},
 };
@@ -595,7 +650,9 @@ static struct clk_regmap g12a_cpu_clk_div16_en = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "cpu_clk_div16_en",
 		.ops = &clk_regmap_gate_ro_ops,
-		.parent_names = (const char *[]){ "cpu_clk" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_cpu_clk.hw
+		},
 		.num_parents = 1,
 		/*
 		 * This clock is used to debug the cpu_clk range
@@ -612,7 +669,9 @@ static struct clk_regmap g12b_cpub_clk_div16_en = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "cpub_clk_div16_en",
 		.ops = &clk_regmap_gate_ro_ops,
-		.parent_names = (const char *[]){ "cpub_clk" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12b_cpub_clk.hw
+		},
 		.num_parents = 1,
 		/*
 		 * This clock is used to debug the cpu_clk range
@@ -627,7 +686,9 @@ static struct clk_fixed_factor g12a_cpu_clk_div16 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk_div16",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "cpu_clk_div16_en" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_cpu_clk_div16_en.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -638,7 +699,9 @@ static struct clk_fixed_factor g12b_cpub_clk_div16 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_div16",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "cpub_clk_div16_en" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12b_cpub_clk_div16_en.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -653,7 +716,7 @@ static struct clk_regmap g12a_cpu_clk_apb_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk_apb_div",
 		.ops = &clk_regmap_divider_ro_ops,
-		.parent_names = (const char *[]){ "cpu_clk" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_cpu_clk.hw },
 		.num_parents = 1,
 	},
 };
@@ -666,7 +729,9 @@ static struct clk_regmap g12a_cpu_clk_apb = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "cpu_clk_apb",
 		.ops = &clk_regmap_gate_ro_ops,
-		.parent_names = (const char *[]){ "cpu_clk_apb_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_cpu_clk_apb_div.hw
+		},
 		.num_parents = 1,
 		/*
 		 * This clock is set by the ROM monitor code,
@@ -685,7 +750,7 @@ static struct clk_regmap g12a_cpu_clk_atb_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk_atb_div",
 		.ops = &clk_regmap_divider_ro_ops,
-		.parent_names = (const char *[]){ "cpu_clk" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_cpu_clk.hw },
 		.num_parents = 1,
 	},
 };
@@ -698,7 +763,9 @@ static struct clk_regmap g12a_cpu_clk_atb = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "cpu_clk_atb",
 		.ops = &clk_regmap_gate_ro_ops,
-		.parent_names = (const char *[]){ "cpu_clk_atb_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_cpu_clk_atb_div.hw
+		},
 		.num_parents = 1,
 		/*
 		 * This clock is set by the ROM monitor code,
@@ -717,7 +784,7 @@ static struct clk_regmap g12a_cpu_clk_axi_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk_axi_div",
 		.ops = &clk_regmap_divider_ro_ops,
-		.parent_names = (const char *[]){ "cpu_clk" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_cpu_clk.hw },
 		.num_parents = 1,
 	},
 };
@@ -730,7 +797,9 @@ static struct clk_regmap g12a_cpu_clk_axi = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "cpu_clk_axi",
 		.ops = &clk_regmap_gate_ro_ops,
-		.parent_names = (const char *[]){ "cpu_clk_axi_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_cpu_clk_axi_div.hw
+		},
 		.num_parents = 1,
 		/*
 		 * This clock is set by the ROM monitor code,
@@ -749,7 +818,10 @@ static struct clk_regmap g12a_cpu_clk_trace_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk_trace_div",
 		.ops = &clk_regmap_divider_ro_ops,
-		.parent_names = (const char *[]){ "cpu_clk" },
+		.parent_data = &(const struct clk_parent_data) {
+			.name = "cpu_clk",
+			.index = -1,
+		},
 		.num_parents = 1,
 	},
 };
@@ -762,7 +834,9 @@ static struct clk_regmap g12a_cpu_clk_trace = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "cpu_clk_trace",
 		.ops = &clk_regmap_gate_ro_ops,
-		.parent_names = (const char *[]){ "cpu_clk_trace_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_cpu_clk_trace_div.hw
+		},
 		.num_parents = 1,
 		/*
 		 * This clock is set by the ROM monitor code,
@@ -777,7 +851,9 @@ static struct clk_fixed_factor g12b_cpub_clk_div2 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_div2",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "cpub_clk" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12b_cpub_clk.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -788,7 +864,9 @@ static struct clk_fixed_factor g12b_cpub_clk_div3 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_div3",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "cpub_clk" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12b_cpub_clk.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -799,7 +877,9 @@ static struct clk_fixed_factor g12b_cpub_clk_div4 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_div4",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "cpub_clk" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12b_cpub_clk.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -810,7 +890,9 @@ static struct clk_fixed_factor g12b_cpub_clk_div5 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_div5",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "cpub_clk" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12b_cpub_clk.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -821,7 +903,9 @@ static struct clk_fixed_factor g12b_cpub_clk_div6 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_div6",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "cpub_clk" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12b_cpub_clk.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -832,7 +916,9 @@ static struct clk_fixed_factor g12b_cpub_clk_div7 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_div7",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "cpub_clk" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12b_cpub_clk.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -843,7 +929,9 @@ static struct clk_fixed_factor g12b_cpub_clk_div8 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_div8",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "cpub_clk" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12b_cpub_clk.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -859,13 +947,15 @@ static struct clk_regmap g12b_cpub_clk_apb_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_apb_sel",
 		.ops = &clk_regmap_mux_ro_ops,
-		.parent_names = (const char *[]){ "cpub_clk_div2",
-						  "cpub_clk_div3",
-						  "cpub_clk_div4",
-						  "cpub_clk_div5",
-						  "cpub_clk_div6",
-						  "cpub_clk_div7",
-						  "cpub_clk_div8" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12b_cpub_clk_div2.hw,
+			&g12b_cpub_clk_div3.hw,
+			&g12b_cpub_clk_div4.hw,
+			&g12b_cpub_clk_div5.hw,
+			&g12b_cpub_clk_div6.hw,
+			&g12b_cpub_clk_div7.hw,
+			&g12b_cpub_clk_div8.hw
+		},
 		.num_parents = 7,
 	},
 };
@@ -879,7 +969,9 @@ static struct clk_regmap g12b_cpub_clk_apb = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "cpub_clk_apb",
 		.ops = &clk_regmap_gate_ro_ops,
-		.parent_names = (const char *[]){ "cpub_clk_apb_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12b_cpub_clk_apb_sel.hw
+		},
 		.num_parents = 1,
 		/*
 		 * This clock is set by the ROM monitor code,
@@ -898,13 +990,15 @@ static struct clk_regmap g12b_cpub_clk_atb_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_atb_sel",
 		.ops = &clk_regmap_mux_ro_ops,
-		.parent_names = (const char *[]){ "cpub_clk_div2",
-						  "cpub_clk_div3",
-						  "cpub_clk_div4",
-						  "cpub_clk_div5",
-						  "cpub_clk_div6",
-						  "cpub_clk_div7",
-						  "cpub_clk_div8" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12b_cpub_clk_div2.hw,
+			&g12b_cpub_clk_div3.hw,
+			&g12b_cpub_clk_div4.hw,
+			&g12b_cpub_clk_div5.hw,
+			&g12b_cpub_clk_div6.hw,
+			&g12b_cpub_clk_div7.hw,
+			&g12b_cpub_clk_div8.hw
+		},
 		.num_parents = 7,
 	},
 };
@@ -918,7 +1012,9 @@ static struct clk_regmap g12b_cpub_clk_atb = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "cpub_clk_atb",
 		.ops = &clk_regmap_gate_ro_ops,
-		.parent_names = (const char *[]){ "cpub_clk_atb_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12b_cpub_clk_atb_sel.hw
+		},
 		.num_parents = 1,
 		/*
 		 * This clock is set by the ROM monitor code,
@@ -937,13 +1033,15 @@ static struct clk_regmap g12b_cpub_clk_axi_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_axi_sel",
 		.ops = &clk_regmap_mux_ro_ops,
-		.parent_names = (const char *[]){ "cpub_clk_div2",
-						  "cpub_clk_div3",
-						  "cpub_clk_div4",
-						  "cpub_clk_div5",
-						  "cpub_clk_div6",
-						  "cpub_clk_div7",
-						  "cpub_clk_div8" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12b_cpub_clk_div2.hw,
+			&g12b_cpub_clk_div3.hw,
+			&g12b_cpub_clk_div4.hw,
+			&g12b_cpub_clk_div5.hw,
+			&g12b_cpub_clk_div6.hw,
+			&g12b_cpub_clk_div7.hw,
+			&g12b_cpub_clk_div8.hw
+		},
 		.num_parents = 7,
 	},
 };
@@ -957,7 +1055,9 @@ static struct clk_regmap g12b_cpub_clk_axi = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "cpub_clk_axi",
 		.ops = &clk_regmap_gate_ro_ops,
-		.parent_names = (const char *[]){ "cpub_clk_axi_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12b_cpub_clk_axi_sel.hw
+		},
 		.num_parents = 1,
 		/*
 		 * This clock is set by the ROM monitor code,
@@ -976,13 +1076,15 @@ static struct clk_regmap g12b_cpub_clk_trace_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpub_clk_trace_sel",
 		.ops = &clk_regmap_mux_ro_ops,
-		.parent_names = (const char *[]){ "cpub_clk_div2",
-						  "cpub_clk_div3",
-						  "cpub_clk_div4",
-						  "cpub_clk_div5",
-						  "cpub_clk_div6",
-						  "cpub_clk_div7",
-						  "cpub_clk_div8" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12b_cpub_clk_div2.hw,
+			&g12b_cpub_clk_div3.hw,
+			&g12b_cpub_clk_div4.hw,
+			&g12b_cpub_clk_div5.hw,
+			&g12b_cpub_clk_div6.hw,
+			&g12b_cpub_clk_div7.hw,
+			&g12b_cpub_clk_div8.hw
+		},
 		.num_parents = 7,
 	},
 };
@@ -996,7 +1098,9 @@ static struct clk_regmap g12b_cpub_clk_trace = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "cpub_clk_trace",
 		.ops = &clk_regmap_gate_ro_ops,
-		.parent_names = (const char *[]){ "cpub_clk_trace_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12b_cpub_clk_trace_sel.hw
+		},
 		.num_parents = 1,
 		/*
 		 * This clock is set by the ROM monitor code,
@@ -1061,7 +1165,9 @@ static struct clk_regmap g12a_gp0_pll_dco = {
 	.hw.init = &(struct clk_init_data){
 		.name = "gp0_pll_dco",
 		.ops = &meson_clk_pll_ops,
-		.parent_names = (const char *[]){ IN_PREFIX "xtal" },
+		.parent_data = &(const struct clk_parent_data) {
+			.fw_name = "xtal",
+		},
 		.num_parents = 1,
 	},
 };
@@ -1077,7 +1183,9 @@ static struct clk_regmap g12a_gp0_pll = {
 	.hw.init = &(struct clk_init_data){
 		.name = "gp0_pll",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "gp0_pll_dco" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_gp0_pll_dco.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -1135,7 +1243,9 @@ static struct clk_regmap g12a_hifi_pll_dco = {
 	.hw.init = &(struct clk_init_data){
 		.name = "hifi_pll_dco",
 		.ops = &meson_clk_pll_ops,
-		.parent_names = (const char *[]){ IN_PREFIX "xtal" },
+		.parent_data = &(const struct clk_parent_data) {
+			.fw_name = "xtal",
+		},
 		.num_parents = 1,
 	},
 };
@@ -1151,7 +1261,9 @@ static struct clk_regmap g12a_hifi_pll = {
 	.hw.init = &(struct clk_init_data){
 		.name = "hifi_pll",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "hifi_pll_dco" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_hifi_pll_dco.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -1222,7 +1334,9 @@ static struct clk_regmap g12a_pcie_pll_dco = {
 	.hw.init = &(struct clk_init_data){
 		.name = "pcie_pll_dco",
 		.ops = &meson_clk_pcie_pll_ops,
-		.parent_names = (const char *[]){ IN_PREFIX "xtal" },
+		.parent_data = &(const struct clk_parent_data) {
+			.fw_name = "xtal",
+		},
 		.num_parents = 1,
 	},
 };
@@ -1233,7 +1347,9 @@ static struct clk_fixed_factor g12a_pcie_pll_dco_div2 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "pcie_pll_dco_div2",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "pcie_pll_dco" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_pcie_pll_dco.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -1251,7 +1367,9 @@ static struct clk_regmap g12a_pcie_pll_od = {
 	.hw.init = &(struct clk_init_data){
 		.name = "pcie_pll_od",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "pcie_pll_dco_div2" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_pcie_pll_dco_div2.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -1263,7 +1381,9 @@ static struct clk_fixed_factor g12a_pcie_pll = {
 	.hw.init = &(struct clk_init_data){
 		.name = "pcie_pll_pll",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "pcie_pll_od" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_pcie_pll_od.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -1305,7 +1425,9 @@ static struct clk_regmap g12a_hdmi_pll_dco = {
 	.hw.init = &(struct clk_init_data){
 		.name = "hdmi_pll_dco",
 		.ops = &meson_clk_pll_ro_ops,
-		.parent_names = (const char *[]){ IN_PREFIX "xtal" },
+		.parent_data = &(const struct clk_parent_data) {
+			.fw_name = "xtal",
+		},
 		.num_parents = 1,
 		/*
 		 * Display directly handle hdmi pll registers ATM, we need
@@ -1325,7 +1447,9 @@ static struct clk_regmap g12a_hdmi_pll_od = {
 	.hw.init = &(struct clk_init_data){
 		.name = "hdmi_pll_od",
 		.ops = &clk_regmap_divider_ro_ops,
-		.parent_names = (const char *[]){ "hdmi_pll_dco" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_hdmi_pll_dco.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_GET_RATE_NOCACHE | CLK_SET_RATE_PARENT,
 	},
@@ -1341,7 +1465,9 @@ static struct clk_regmap g12a_hdmi_pll_od2 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "hdmi_pll_od2",
 		.ops = &clk_regmap_divider_ro_ops,
-		.parent_names = (const char *[]){ "hdmi_pll_od" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_hdmi_pll_od.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_GET_RATE_NOCACHE | CLK_SET_RATE_PARENT,
 	},
@@ -1357,7 +1483,9 @@ static struct clk_regmap g12a_hdmi_pll = {
 	.hw.init = &(struct clk_init_data){
 		.name = "hdmi_pll",
 		.ops = &clk_regmap_divider_ro_ops,
-		.parent_names = (const char *[]){ "hdmi_pll_od2" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_hdmi_pll_od2.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_GET_RATE_NOCACHE | CLK_SET_RATE_PARENT,
 	},
@@ -1369,7 +1497,7 @@ static struct clk_fixed_factor g12a_fclk_div4_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "fclk_div4_div",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "fixed_pll" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_fixed_pll.hw },
 		.num_parents = 1,
 	},
 };
@@ -1382,7 +1510,9 @@ static struct clk_regmap g12a_fclk_div4 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "fclk_div4",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "fclk_div4_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_fclk_div4_div.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -1393,7 +1523,7 @@ static struct clk_fixed_factor g12a_fclk_div5_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "fclk_div5_div",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "fixed_pll" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_fixed_pll.hw },
 		.num_parents = 1,
 	},
 };
@@ -1406,7 +1536,9 @@ static struct clk_regmap g12a_fclk_div5 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "fclk_div5",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "fclk_div5_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_fclk_div5_div.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -1417,7 +1549,7 @@ static struct clk_fixed_factor g12a_fclk_div7_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "fclk_div7_div",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "fixed_pll" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_fixed_pll.hw },
 		.num_parents = 1,
 	},
 };
@@ -1430,7 +1562,9 @@ static struct clk_regmap g12a_fclk_div7 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "fclk_div7",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "fclk_div7_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_fclk_div7_div.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -1441,7 +1575,9 @@ static struct clk_fixed_factor g12a_fclk_div2p5_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "fclk_div2p5_div",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "fixed_pll_dco" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_fixed_pll_dco.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -1454,7 +1590,9 @@ static struct clk_regmap g12a_fclk_div2p5 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "fclk_div2p5",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "fclk_div2p5_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_fclk_div2p5_div.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -1465,7 +1603,9 @@ static struct clk_fixed_factor g12a_mpll_50m_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mpll_50m_div",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "fixed_pll_dco" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_fixed_pll_dco.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -1479,8 +1619,10 @@ static struct clk_regmap g12a_mpll_50m = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mpll_50m",
 		.ops = &clk_regmap_mux_ro_ops,
-		.parent_names = (const char *[]){ IN_PREFIX "xtal",
-						  "mpll_50m_div" },
+		.parent_data = (const struct clk_parent_data []) {
+			{ .fw_name = "xtal", },
+			{ .hw = &g12a_mpll_50m_div.hw },
+		},
 		.num_parents = 2,
 	},
 };
@@ -1491,7 +1633,9 @@ static struct clk_fixed_factor g12a_mpll_prediv = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mpll_prediv",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "fixed_pll_dco" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_fixed_pll_dco.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -1529,7 +1673,9 @@ static struct clk_regmap g12a_mpll0_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mpll0_div",
 		.ops = &meson_clk_mpll_ops,
-		.parent_names = (const char *[]){ "mpll_prediv" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_mpll_prediv.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -1542,7 +1688,7 @@ static struct clk_regmap g12a_mpll0 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mpll0",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "mpll0_div" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_mpll0_div.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -1581,7 +1727,9 @@ static struct clk_regmap g12a_mpll1_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mpll1_div",
 		.ops = &meson_clk_mpll_ops,
-		.parent_names = (const char *[]){ "mpll_prediv" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_mpll_prediv.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -1594,7 +1742,7 @@ static struct clk_regmap g12a_mpll1 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mpll1",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "mpll1_div" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_mpll1_div.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -1633,7 +1781,9 @@ static struct clk_regmap g12a_mpll2_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mpll2_div",
 		.ops = &meson_clk_mpll_ops,
-		.parent_names = (const char *[]){ "mpll_prediv" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_mpll_prediv.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -1646,7 +1796,7 @@ static struct clk_regmap g12a_mpll2 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mpll2",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "mpll2_div" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_mpll2_div.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -1685,7 +1835,9 @@ static struct clk_regmap g12a_mpll3_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mpll3_div",
 		.ops = &meson_clk_mpll_ops,
-		.parent_names = (const char *[]){ "mpll_prediv" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_mpll_prediv.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -1698,16 +1850,21 @@ static struct clk_regmap g12a_mpll3 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mpll3",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "mpll3_div" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_mpll3_div.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
 static u32 mux_table_clk81[]	= { 0, 2, 3, 4, 5, 6, 7 };
-static const char * const clk81_parent_names[] = {
-	IN_PREFIX "xtal", "fclk_div7", "mpll1", "mpll2", "fclk_div4",
-	"fclk_div3", "fclk_div5"
+static const struct clk_parent_data clk81_parent_data[] = {
+	{ .fw_name = "xtal", },
+	{ .hw = &g12a_fclk_div7.hw },
+	{ .hw = &g12a_mpll1.hw },
+	{ .hw = &g12a_mpll2.hw },
+	{ .hw = &g12a_fclk_div4.hw },
+	{ .hw = &g12a_fclk_div3.hw },
+	{ .hw = &g12a_fclk_div5.hw },
 };
 
 static struct clk_regmap g12a_mpeg_clk_sel = {
@@ -1720,8 +1877,8 @@ static struct clk_regmap g12a_mpeg_clk_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mpeg_clk_sel",
 		.ops = &clk_regmap_mux_ro_ops,
-		.parent_names = clk81_parent_names,
-		.num_parents = ARRAY_SIZE(clk81_parent_names),
+		.parent_data = clk81_parent_data,
+		.num_parents = ARRAY_SIZE(clk81_parent_data),
 	},
 };
 
@@ -1734,7 +1891,9 @@ static struct clk_regmap g12a_mpeg_clk_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mpeg_clk_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "mpeg_clk_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_mpeg_clk_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -1748,15 +1907,20 @@ static struct clk_regmap g12a_clk81 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "clk81",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "mpeg_clk_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_mpeg_clk_div.hw
+		},
 		.num_parents = 1,
 		.flags = (CLK_SET_RATE_PARENT | CLK_IS_CRITICAL),
 	},
 };
 
-static const char * const g12a_sd_emmc_clk0_parent_names[] = {
-	IN_PREFIX "xtal", "fclk_div2", "fclk_div3", "fclk_div5", "fclk_div7",
-
+static const struct clk_parent_data g12a_sd_emmc_clk0_parent_data[] = {
+	{ .fw_name = "xtal", },
+	{ .hw = &g12a_fclk_div2.hw },
+	{ .hw = &g12a_fclk_div3.hw },
+	{ .hw = &g12a_fclk_div5.hw },
+	{ .hw = &g12a_fclk_div7.hw },
 	/*
 	 * Following these parent clocks, we should also have had mpll2, mpll3
 	 * and gp0_pll but these clocks are too precious to be used here. All
@@ -1775,8 +1939,8 @@ static struct clk_regmap g12a_sd_emmc_a_clk0_sel = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "sd_emmc_a_clk0_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = g12a_sd_emmc_clk0_parent_names,
-		.num_parents = ARRAY_SIZE(g12a_sd_emmc_clk0_parent_names),
+		.parent_data = g12a_sd_emmc_clk0_parent_data,
+		.num_parents = ARRAY_SIZE(g12a_sd_emmc_clk0_parent_data),
 		.flags = CLK_SET_RATE_PARENT,
 	},
 };
@@ -1790,7 +1954,9 @@ static struct clk_regmap g12a_sd_emmc_a_clk0_div = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "sd_emmc_a_clk0_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "sd_emmc_a_clk0_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_sd_emmc_a_clk0_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -1804,7 +1970,9 @@ static struct clk_regmap g12a_sd_emmc_a_clk0 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "sd_emmc_a_clk0",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "sd_emmc_a_clk0_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_sd_emmc_a_clk0_div.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -1820,8 +1988,8 @@ static struct clk_regmap g12a_sd_emmc_b_clk0_sel = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "sd_emmc_b_clk0_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = g12a_sd_emmc_clk0_parent_names,
-		.num_parents = ARRAY_SIZE(g12a_sd_emmc_clk0_parent_names),
+		.parent_data = g12a_sd_emmc_clk0_parent_data,
+		.num_parents = ARRAY_SIZE(g12a_sd_emmc_clk0_parent_data),
 		.flags = CLK_SET_RATE_PARENT,
 	},
 };
@@ -1835,7 +2003,9 @@ static struct clk_regmap g12a_sd_emmc_b_clk0_div = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "sd_emmc_b_clk0_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "sd_emmc_b_clk0_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_sd_emmc_b_clk0_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -1849,7 +2019,9 @@ static struct clk_regmap g12a_sd_emmc_b_clk0 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "sd_emmc_b_clk0",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "sd_emmc_b_clk0_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_sd_emmc_b_clk0_div.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -1865,8 +2037,8 @@ static struct clk_regmap g12a_sd_emmc_c_clk0_sel = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "sd_emmc_c_clk0_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = g12a_sd_emmc_clk0_parent_names,
-		.num_parents = ARRAY_SIZE(g12a_sd_emmc_clk0_parent_names),
+		.parent_data = g12a_sd_emmc_clk0_parent_data,
+		.num_parents = ARRAY_SIZE(g12a_sd_emmc_clk0_parent_data),
 		.flags = CLK_SET_RATE_PARENT,
 	},
 };
@@ -1880,7 +2052,9 @@ static struct clk_regmap g12a_sd_emmc_c_clk0_div = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "sd_emmc_c_clk0_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "sd_emmc_c_clk0_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_sd_emmc_c_clk0_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -1894,7 +2068,9 @@ static struct clk_regmap g12a_sd_emmc_c_clk0 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "sd_emmc_c_clk0",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "sd_emmc_c_clk0_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_sd_emmc_c_clk0_div.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -1918,14 +2094,16 @@ static struct clk_regmap g12a_vid_pll_div = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vid_pll_div",
 		.ops = &meson_vid_pll_div_ro_ops,
-		.parent_names = (const char *[]){ "hdmi_pll" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_hdmi_pll.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_GET_RATE_NOCACHE,
 	},
 };
 
-static const char * const g12a_vid_pll_parent_names[] = { "vid_pll_div",
-							  "hdmi_pll" };
+static const struct clk_hw *g12a_vid_pll_parent_hws[] = {
+	&g12a_vid_pll_div.hw,
+	&g12a_hdmi_pll.hw,
+};
 
 static struct clk_regmap g12a_vid_pll_sel = {
 	.data = &(struct clk_regmap_mux_data){
@@ -1940,8 +2118,8 @@ static struct clk_regmap g12a_vid_pll_sel = {
 		 * bit 18 selects from 2 possible parents:
 		 * vid_pll_div or hdmi_pll
 		 */
-		.parent_names = g12a_vid_pll_parent_names,
-		.num_parents = ARRAY_SIZE(g12a_vid_pll_parent_names),
+		.parent_hws = g12a_vid_pll_parent_hws,
+		.num_parents = ARRAY_SIZE(g12a_vid_pll_parent_hws),
 		.flags = CLK_SET_RATE_NO_REPARENT | CLK_GET_RATE_NOCACHE,
 	},
 };
@@ -1954,7 +2132,9 @@ static struct clk_regmap g12a_vid_pll = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vid_pll",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vid_pll_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_vid_pll_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -1962,9 +2142,15 @@ static struct clk_regmap g12a_vid_pll = {
 
 /* VPU Clock */
 
-static const char * const g12a_vpu_parent_names[] = {
-	"fclk_div3", "fclk_div4", "fclk_div5", "fclk_div7",
-	"mpll1", "vid_pll", "hifi_pll", "gp0_pll",
+static const struct clk_hw *g12a_vpu_parent_hws[] = {
+	&g12a_fclk_div3.hw,
+	&g12a_fclk_div4.hw,
+	&g12a_fclk_div5.hw,
+	&g12a_fclk_div7.hw,
+	&g12a_mpll1.hw,
+	&g12a_vid_pll.hw,
+	&g12a_hifi_pll.hw,
+	&g12a_gp0_pll.hw,
 };
 
 static struct clk_regmap g12a_vpu_0_sel = {
@@ -1976,8 +2162,8 @@ static struct clk_regmap g12a_vpu_0_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vpu_0_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = g12a_vpu_parent_names,
-		.num_parents = ARRAY_SIZE(g12a_vpu_parent_names),
+		.parent_hws = g12a_vpu_parent_hws,
+		.num_parents = ARRAY_SIZE(g12a_vpu_parent_hws),
 		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
 };
@@ -1991,7 +2177,7 @@ static struct clk_regmap g12a_vpu_0_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vpu_0_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "vpu_0_sel" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vpu_0_sel.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -2005,7 +2191,7 @@ static struct clk_regmap g12a_vpu_0 = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vpu_0",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vpu_0_div" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vpu_0_div.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2020,8 +2206,8 @@ static struct clk_regmap g12a_vpu_1_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vpu_1_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = g12a_vpu_parent_names,
-		.num_parents = ARRAY_SIZE(g12a_vpu_parent_names),
+		.parent_hws = g12a_vpu_parent_hws,
+		.num_parents = ARRAY_SIZE(g12a_vpu_parent_hws),
 		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
 };
@@ -2035,7 +2221,7 @@ static struct clk_regmap g12a_vpu_1_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vpu_1_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "vpu_1_sel" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vpu_1_sel.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -2049,7 +2235,7 @@ static struct clk_regmap g12a_vpu_1 = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vpu_1",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vpu_1_div" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vpu_1_div.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2068,7 +2254,10 @@ static struct clk_regmap g12a_vpu = {
 		 * bit 31 selects from 2 possible parents:
 		 * vpu_0 or vpu_1
 		 */
-		.parent_names = (const char *[]){ "vpu_0", "vpu_1" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_vpu_0.hw,
+			&g12a_vpu_1.hw,
+		},
 		.num_parents = 2,
 		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
@@ -2076,9 +2265,14 @@ static struct clk_regmap g12a_vpu = {
 
 /* VDEC clocks */
 
-static const char * const g12a_vdec_parent_names[] = {
-	"fclk_div2p5", "fclk_div3", "fclk_div4", "fclk_div5", "fclk_div7",
-	"hifi_pll", "gp0_pll",
+static const struct clk_hw *g12a_vdec_parent_hws[] = {
+	&g12a_fclk_div2p5.hw,
+	&g12a_fclk_div3.hw,
+	&g12a_fclk_div4.hw,
+	&g12a_fclk_div5.hw,
+	&g12a_fclk_div7.hw,
+	&g12a_hifi_pll.hw,
+	&g12a_gp0_pll.hw,
 };
 
 static struct clk_regmap g12a_vdec_1_sel = {
@@ -2091,8 +2285,8 @@ static struct clk_regmap g12a_vdec_1_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vdec_1_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = g12a_vdec_parent_names,
-		.num_parents = ARRAY_SIZE(g12a_vdec_parent_names),
+		.parent_hws = g12a_vdec_parent_hws,
+		.num_parents = ARRAY_SIZE(g12a_vdec_parent_hws),
 		.flags = CLK_SET_RATE_PARENT,
 	},
 };
@@ -2107,7 +2301,9 @@ static struct clk_regmap g12a_vdec_1_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vdec_1_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "vdec_1_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_vdec_1_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -2121,7 +2317,9 @@ static struct clk_regmap g12a_vdec_1 = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vdec_1",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vdec_1_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_vdec_1_div.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -2137,8 +2335,8 @@ static struct clk_regmap g12a_vdec_hevcf_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vdec_hevcf_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = g12a_vdec_parent_names,
-		.num_parents = ARRAY_SIZE(g12a_vdec_parent_names),
+		.parent_hws = g12a_vdec_parent_hws,
+		.num_parents = ARRAY_SIZE(g12a_vdec_parent_hws),
 		.flags = CLK_SET_RATE_PARENT,
 	},
 };
@@ -2153,7 +2351,9 @@ static struct clk_regmap g12a_vdec_hevcf_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vdec_hevcf_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "vdec_hevcf_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_vdec_hevcf_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -2167,7 +2367,9 @@ static struct clk_regmap g12a_vdec_hevcf = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vdec_hevcf",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vdec_hevcf_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_vdec_hevcf_div.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -2183,8 +2385,8 @@ static struct clk_regmap g12a_vdec_hevc_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vdec_hevc_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = g12a_vdec_parent_names,
-		.num_parents = ARRAY_SIZE(g12a_vdec_parent_names),
+		.parent_hws = g12a_vdec_parent_hws,
+		.num_parents = ARRAY_SIZE(g12a_vdec_parent_hws),
 		.flags = CLK_SET_RATE_PARENT,
 	},
 };
@@ -2199,7 +2401,9 @@ static struct clk_regmap g12a_vdec_hevc_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vdec_hevc_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "vdec_hevc_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_vdec_hevc_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -2213,7 +2417,9 @@ static struct clk_regmap g12a_vdec_hevc = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vdec_hevc",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vdec_hevc_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_vdec_hevc_div.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -2221,9 +2427,15 @@ static struct clk_regmap g12a_vdec_hevc = {
 
 /* VAPB Clock */
 
-static const char * const g12a_vapb_parent_names[] = {
-	"fclk_div4", "fclk_div3", "fclk_div5", "fclk_div7",
-	"mpll1", "vid_pll", "mpll2", "fclk_div2p5",
+static const struct clk_hw *g12a_vapb_parent_hws[] = {
+	&g12a_fclk_div4.hw,
+	&g12a_fclk_div3.hw,
+	&g12a_fclk_div5.hw,
+	&g12a_fclk_div7.hw,
+	&g12a_mpll1.hw,
+	&g12a_vid_pll.hw,
+	&g12a_mpll2.hw,
+	&g12a_fclk_div2p5.hw,
 };
 
 static struct clk_regmap g12a_vapb_0_sel = {
@@ -2235,8 +2447,8 @@ static struct clk_regmap g12a_vapb_0_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vapb_0_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = g12a_vapb_parent_names,
-		.num_parents = ARRAY_SIZE(g12a_vapb_parent_names),
+		.parent_hws = g12a_vapb_parent_hws,
+		.num_parents = ARRAY_SIZE(g12a_vapb_parent_hws),
 		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
 };
@@ -2250,7 +2462,9 @@ static struct clk_regmap g12a_vapb_0_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vapb_0_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "vapb_0_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_vapb_0_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -2264,7 +2478,9 @@ static struct clk_regmap g12a_vapb_0 = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vapb_0",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vapb_0_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_vapb_0_div.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2279,8 +2495,8 @@ static struct clk_regmap g12a_vapb_1_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vapb_1_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = g12a_vapb_parent_names,
-		.num_parents = ARRAY_SIZE(g12a_vapb_parent_names),
+		.parent_hws = g12a_vapb_parent_hws,
+		.num_parents = ARRAY_SIZE(g12a_vapb_parent_hws),
 		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
 };
@@ -2294,7 +2510,9 @@ static struct clk_regmap g12a_vapb_1_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vapb_1_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "vapb_1_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_vapb_1_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -2308,7 +2526,9 @@ static struct clk_regmap g12a_vapb_1 = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vapb_1",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vapb_1_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_vapb_1_div.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2327,7 +2547,10 @@ static struct clk_regmap g12a_vapb_sel = {
 		 * bit 31 selects from 2 possible parents:
 		 * vapb_0 or vapb_1
 		 */
-		.parent_names = (const char *[]){ "vapb_0", "vapb_1" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_vapb_0.hw,
+			&g12a_vapb_1.hw,
+		},
 		.num_parents = 2,
 		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
@@ -2341,15 +2564,21 @@ static struct clk_regmap g12a_vapb = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vapb",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vapb_sel" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vapb_sel.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
 };
 
-static const char * const g12a_vclk_parent_names[] = {
-	"vid_pll", "gp0_pll", "hifi_pll", "mpll1", "fclk_div3", "fclk_div4",
-	"fclk_div5", "fclk_div7"
+static const struct clk_hw *g12a_vclk_parent_hws[] = {
+	&g12a_vid_pll.hw,
+	&g12a_gp0_pll.hw,
+	&g12a_hifi_pll.hw,
+	&g12a_mpll1.hw,
+	&g12a_fclk_div3.hw,
+	&g12a_fclk_div4.hw,
+	&g12a_fclk_div5.hw,
+	&g12a_fclk_div7.hw,
 };
 
 static struct clk_regmap g12a_vclk_sel = {
@@ -2361,8 +2590,8 @@ static struct clk_regmap g12a_vclk_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vclk_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = g12a_vclk_parent_names,
-		.num_parents = ARRAY_SIZE(g12a_vclk_parent_names),
+		.parent_hws = g12a_vclk_parent_hws,
+		.num_parents = ARRAY_SIZE(g12a_vclk_parent_hws),
 		.flags = CLK_SET_RATE_NO_REPARENT | CLK_GET_RATE_NOCACHE,
 	},
 };
@@ -2376,8 +2605,8 @@ static struct clk_regmap g12a_vclk2_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vclk2_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = g12a_vclk_parent_names,
-		.num_parents = ARRAY_SIZE(g12a_vclk_parent_names),
+		.parent_hws = g12a_vclk_parent_hws,
+		.num_parents = ARRAY_SIZE(g12a_vclk_parent_hws),
 		.flags = CLK_SET_RATE_NO_REPARENT | CLK_GET_RATE_NOCACHE,
 	},
 };
@@ -2390,7 +2619,7 @@ static struct clk_regmap g12a_vclk_input = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk_input",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk_sel" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vclk_sel.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2404,7 +2633,7 @@ static struct clk_regmap g12a_vclk2_input = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk2_input",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk2_sel" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vclk2_sel.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2419,7 +2648,9 @@ static struct clk_regmap g12a_vclk_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vclk_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "vclk_input" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_vclk_input.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_GET_RATE_NOCACHE,
 	},
@@ -2434,7 +2665,9 @@ static struct clk_regmap g12a_vclk2_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vclk2_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "vclk2_input" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_vclk2_input.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_GET_RATE_NOCACHE,
 	},
@@ -2448,7 +2681,7 @@ static struct clk_regmap g12a_vclk = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk_div" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vclk_div.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2462,7 +2695,7 @@ static struct clk_regmap g12a_vclk2 = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk2",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk2_div" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vclk2_div.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2476,7 +2709,7 @@ static struct clk_regmap g12a_vclk_div1 = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk_div1",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vclk.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2490,7 +2723,7 @@ static struct clk_regmap g12a_vclk_div2_en = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk_div2_en",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vclk.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2504,7 +2737,7 @@ static struct clk_regmap g12a_vclk_div4_en = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk_div4_en",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vclk.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2518,7 +2751,7 @@ static struct clk_regmap g12a_vclk_div6_en = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk_div6_en",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vclk.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2532,7 +2765,7 @@ static struct clk_regmap g12a_vclk_div12_en = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk_div12_en",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vclk.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2546,7 +2779,7 @@ static struct clk_regmap g12a_vclk2_div1 = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk2_div1",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk2" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vclk2.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2560,7 +2793,7 @@ static struct clk_regmap g12a_vclk2_div2_en = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk2_div2_en",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk2" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vclk2.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2574,7 +2807,7 @@ static struct clk_regmap g12a_vclk2_div4_en = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk2_div4_en",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk2" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vclk2.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2588,7 +2821,7 @@ static struct clk_regmap g12a_vclk2_div6_en = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk2_div6_en",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk2" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vclk2.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2602,7 +2835,7 @@ static struct clk_regmap g12a_vclk2_div12_en = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk2_div12_en",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk2" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vclk2.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2614,7 +2847,9 @@ static struct clk_fixed_factor g12a_vclk_div2 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vclk_div2",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "vclk_div2_en" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_vclk_div2_en.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -2625,7 +2860,9 @@ static struct clk_fixed_factor g12a_vclk_div4 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vclk_div4",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "vclk_div4_en" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_vclk_div4_en.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -2636,7 +2873,9 @@ static struct clk_fixed_factor g12a_vclk_div6 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vclk_div6",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "vclk_div6_en" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_vclk_div6_en.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -2647,7 +2886,9 @@ static struct clk_fixed_factor g12a_vclk_div12 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vclk_div12",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "vclk_div12_en" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_vclk_div12_en.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -2658,7 +2899,9 @@ static struct clk_fixed_factor g12a_vclk2_div2 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vclk2_div2",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "vclk2_div2_en" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_vclk2_div2_en.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -2669,7 +2912,9 @@ static struct clk_fixed_factor g12a_vclk2_div4 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vclk2_div4",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "vclk2_div4_en" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_vclk2_div4_en.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -2680,7 +2925,9 @@ static struct clk_fixed_factor g12a_vclk2_div6 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vclk2_div6",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "vclk2_div6_en" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_vclk2_div6_en.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -2691,16 +2938,25 @@ static struct clk_fixed_factor g12a_vclk2_div12 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vclk2_div12",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "vclk2_div12_en" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_vclk2_div12_en.hw
+		},
 		.num_parents = 1,
 	},
 };
 
 static u32 mux_table_cts_sel[] = { 0, 1, 2, 3, 4, 8, 9, 10, 11, 12 };
-static const char * const g12a_cts_parent_names[] = {
-	"vclk_div1", "vclk_div2", "vclk_div4", "vclk_div6",
-	"vclk_div12", "vclk2_div1", "vclk2_div2", "vclk2_div4",
-	"vclk2_div6", "vclk2_div12"
+static const struct clk_hw *g12a_cts_parent_hws[] = {
+	&g12a_vclk_div1.hw,
+	&g12a_vclk_div2.hw,
+	&g12a_vclk_div4.hw,
+	&g12a_vclk_div6.hw,
+	&g12a_vclk_div12.hw,
+	&g12a_vclk2_div1.hw,
+	&g12a_vclk2_div2.hw,
+	&g12a_vclk2_div4.hw,
+	&g12a_vclk2_div6.hw,
+	&g12a_vclk2_div12.hw,
 };
 
 static struct clk_regmap g12a_cts_enci_sel = {
@@ -2713,8 +2969,8 @@ static struct clk_regmap g12a_cts_enci_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cts_enci_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = g12a_cts_parent_names,
-		.num_parents = ARRAY_SIZE(g12a_cts_parent_names),
+		.parent_hws = g12a_cts_parent_hws,
+		.num_parents = ARRAY_SIZE(g12a_cts_parent_hws),
 		.flags = CLK_SET_RATE_NO_REPARENT | CLK_GET_RATE_NOCACHE,
 	},
 };
@@ -2729,8 +2985,8 @@ static struct clk_regmap g12a_cts_encp_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cts_encp_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = g12a_cts_parent_names,
-		.num_parents = ARRAY_SIZE(g12a_cts_parent_names),
+		.parent_hws = g12a_cts_parent_hws,
+		.num_parents = ARRAY_SIZE(g12a_cts_parent_hws),
 		.flags = CLK_SET_RATE_NO_REPARENT | CLK_GET_RATE_NOCACHE,
 	},
 };
@@ -2745,18 +3001,25 @@ static struct clk_regmap g12a_cts_vdac_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cts_vdac_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = g12a_cts_parent_names,
-		.num_parents = ARRAY_SIZE(g12a_cts_parent_names),
+		.parent_hws = g12a_cts_parent_hws,
+		.num_parents = ARRAY_SIZE(g12a_cts_parent_hws),
 		.flags = CLK_SET_RATE_NO_REPARENT | CLK_GET_RATE_NOCACHE,
 	},
 };
 
 /* TOFIX: add support for cts_tcon */
 static u32 mux_table_hdmi_tx_sel[] = { 0, 1, 2, 3, 4, 8, 9, 10, 11, 12 };
-static const char * const g12a_cts_hdmi_tx_parent_names[] = {
-	"vclk_div1", "vclk_div2", "vclk_div4", "vclk_div6",
-	"vclk_div12", "vclk2_div1", "vclk2_div2", "vclk2_div4",
-	"vclk2_div6", "vclk2_div12"
+static const struct clk_hw *g12a_cts_hdmi_tx_parent_hws[] = {
+	&g12a_vclk_div1.hw,
+	&g12a_vclk_div2.hw,
+	&g12a_vclk_div4.hw,
+	&g12a_vclk_div6.hw,
+	&g12a_vclk_div12.hw,
+	&g12a_vclk2_div1.hw,
+	&g12a_vclk2_div2.hw,
+	&g12a_vclk2_div4.hw,
+	&g12a_vclk2_div6.hw,
+	&g12a_vclk2_div12.hw,
 };
 
 static struct clk_regmap g12a_hdmi_tx_sel = {
@@ -2769,8 +3032,8 @@ static struct clk_regmap g12a_hdmi_tx_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "hdmi_tx_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = g12a_cts_hdmi_tx_parent_names,
-		.num_parents = ARRAY_SIZE(g12a_cts_hdmi_tx_parent_names),
+		.parent_hws = g12a_cts_hdmi_tx_parent_hws,
+		.num_parents = ARRAY_SIZE(g12a_cts_hdmi_tx_parent_hws),
 		.flags = CLK_SET_RATE_NO_REPARENT | CLK_GET_RATE_NOCACHE,
 	},
 };
@@ -2783,7 +3046,9 @@ static struct clk_regmap g12a_cts_enci = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "cts_enci",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "cts_enci_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_cts_enci_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2797,7 +3062,9 @@ static struct clk_regmap g12a_cts_encp = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "cts_encp",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "cts_encp_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_cts_encp_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2811,7 +3078,9 @@ static struct clk_regmap g12a_cts_vdac = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "cts_vdac",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "cts_vdac_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_cts_vdac_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2825,7 +3094,9 @@ static struct clk_regmap g12a_hdmi_tx = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "hdmi_tx",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "hdmi_tx_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_hdmi_tx_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2833,8 +3104,11 @@ static struct clk_regmap g12a_hdmi_tx = {
 
 /* HDMI Clocks */
 
-static const char * const g12a_hdmi_parent_names[] = {
-	IN_PREFIX "xtal", "fclk_div4", "fclk_div3", "fclk_div5"
+static const struct clk_parent_data g12a_hdmi_parent_data[] = {
+	{ .fw_name = "xtal", },
+	{ .hw = &g12a_fclk_div4.hw },
+	{ .hw = &g12a_fclk_div3.hw },
+	{ .hw = &g12a_fclk_div5.hw },
 };
 
 static struct clk_regmap g12a_hdmi_sel = {
@@ -2847,8 +3121,8 @@ static struct clk_regmap g12a_hdmi_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "hdmi_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = g12a_hdmi_parent_names,
-		.num_parents = ARRAY_SIZE(g12a_hdmi_parent_names),
+		.parent_data = g12a_hdmi_parent_data,
+		.num_parents = ARRAY_SIZE(g12a_hdmi_parent_data),
 		.flags = CLK_SET_RATE_NO_REPARENT | CLK_GET_RATE_NOCACHE,
 	},
 };
@@ -2862,7 +3136,7 @@ static struct clk_regmap g12a_hdmi_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "hdmi_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "hdmi_sel" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_hdmi_sel.hw },
 		.num_parents = 1,
 		.flags = CLK_GET_RATE_NOCACHE,
 	},
@@ -2876,7 +3150,7 @@ static struct clk_regmap g12a_hdmi = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "hdmi",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "hdmi_div" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_hdmi_div.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2886,10 +3160,15 @@ static struct clk_regmap g12a_hdmi = {
  * The MALI IP is clocked by two identical clocks (mali_0 and mali_1)
  * muxed by a glitch-free switch.
  */
-
-static const char * const g12a_mali_0_1_parent_names[] = {
-	IN_PREFIX "xtal", "gp0_pll", "hifi_pll", "fclk_div2p5",
-	"fclk_div3", "fclk_div4", "fclk_div5", "fclk_div7"
+static const struct clk_parent_data g12a_mali_0_1_parent_data[] = {
+	{ .fw_name = "xtal", },
+	{ .hw = &g12a_gp0_pll.hw },
+	{ .hw = &g12a_hifi_pll.hw },
+	{ .hw = &g12a_fclk_div2p5.hw },
+	{ .hw = &g12a_fclk_div3.hw },
+	{ .hw = &g12a_fclk_div4.hw },
+	{ .hw = &g12a_fclk_div5.hw },
+	{ .hw = &g12a_fclk_div7.hw },
 };
 
 static struct clk_regmap g12a_mali_0_sel = {
@@ -2901,7 +3180,7 @@ static struct clk_regmap g12a_mali_0_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mali_0_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = g12a_mali_0_1_parent_names,
+		.parent_data = g12a_mali_0_1_parent_data,
 		.num_parents = 8,
 		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
@@ -2916,7 +3195,9 @@ static struct clk_regmap g12a_mali_0_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mali_0_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "mali_0_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_mali_0_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
@@ -2930,7 +3211,9 @@ static struct clk_regmap g12a_mali_0 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mali_0",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "mali_0_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_mali_0_div.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -2945,7 +3228,7 @@ static struct clk_regmap g12a_mali_1_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mali_1_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = g12a_mali_0_1_parent_names,
+		.parent_data = g12a_mali_0_1_parent_data,
 		.num_parents = 8,
 		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
@@ -2960,7 +3243,9 @@ static struct clk_regmap g12a_mali_1_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mali_1_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "mali_1_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_mali_1_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
@@ -2974,14 +3259,17 @@ static struct clk_regmap g12a_mali_1 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mali_1",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "mali_1_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_mali_1_div.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
-static const char * const g12a_mali_parent_names[] = {
-	"mali_0", "mali_1"
+static const struct clk_hw *g12a_mali_parent_hws[] = {
+	&g12a_mali_0.hw,
+	&g12a_mali_1.hw,
 };
 
 static struct clk_regmap g12a_mali = {
@@ -2993,7 +3281,7 @@ static struct clk_regmap g12a_mali = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mali",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = g12a_mali_parent_names,
+		.parent_hws = g12a_mali_parent_hws,
 		.num_parents = 2,
 		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
@@ -3008,7 +3296,9 @@ static struct clk_regmap g12a_ts_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "ts_div",
 		.ops = &clk_regmap_divider_ro_ops,
-		.parent_names = (const char *[]){ "xtal" },
+		.parent_data = &(const struct clk_parent_data) {
+			.fw_name = "xtal",
+		},
 		.num_parents = 1,
 	},
 };
@@ -3021,7 +3311,9 @@ static struct clk_regmap g12a_ts = {
 	.hw.init = &(struct clk_init_data){
 		.name = "ts",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "ts_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_ts_div.hw
+		},
 		.num_parents = 1,
 	},
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
