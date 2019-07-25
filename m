Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93AAF7547E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 18:45:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1du8Kjlfe1dV2wH03a5zqGD1/DS38l+ZH6IP1w3R+Xg=; b=Y7ZBFu0zi4+Wia3vaufwexayu/
	13yXb2Vw9SsuHkW13ZJDofTgjEcs29gjvuR3UtbFxmkebtN/glcnqt7dvI1oW4wxmEj2pEwRH6kJx
	7FdzRUMxcy62wojEMT6I6YaR+hFX0oJYK79JLGB5JQYzH8Gs8Zm7A9qvLoTtAhya63E6VZ+0zsuim
	L9l+sEIB7nAJqvdFMF6RI4IwV8Yo/iT0Cyyt2oph4S7TtfmBQZI4P+PO8KlkQl+NQh0+wd99eNuov
	13nL33L4cyJA7JM24oLIc7iNBJuqk6SZ+5MmUZmkpyRYMUbE+QL9q1qF9KlfvCUm5Gt1S2WqFVzr3
	Y7pjUwtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqgrj-0005Xe-Hp; Thu, 25 Jul 2019 16:45:15 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqgpX-0004Fd-DJ
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 16:43:08 +0000
Received: by mail-wr1-x444.google.com with SMTP id p17so51465589wrf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 09:42:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Gyuzz88FDZxPHzr/mudpfk8lRr0I4mSxFSXCyI1neI0=;
 b=tnO5+8xaccJWKFf8B6hN7l1Dva9/eU6E9a80zZTxsefIw3VRLUCt0HTCr6ajHs7Lbr
 LSo6LaxiWwJuP6phjSJ2Bf+MXAq0ZeIFSJSyvF5qKVEPseRj40lkwUG1W99lT0dKif9a
 WwsFpO/YCiV6ua5HN2Z8KxjHOSuefQj99mV5B9IB4YJcIvo7jl+JSLLY85vLtPdWyqvh
 hItj6W7rhZ0SeqcU52bxLwsAn7vxL6oVFK6vpxxxPq+JlMd35sT9xaQr6MOW6X9hJaYr
 0dHF+baPduzNfbKH2Y+vxU6zopXcLPHBIdru/+DXwXVyI+zGZGqvsShIH45Apf/5PloO
 Hrsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Gyuzz88FDZxPHzr/mudpfk8lRr0I4mSxFSXCyI1neI0=;
 b=X7VwtRB4WiepJhrF3/W4Uo65MUhwdZEIxpGuPIIGtvvqxgKboaHB+Ob910U5++HZPS
 SQArf8al6Jn2asiTSrn2faGsoLxIvHLtwzfx8P55o+lwGfZUU3339+8+PljaHmy+vAfq
 uR0BMRCdC8nQq2LlTePRliJSkHS0YCYcNDpUrGbpg8p8xA6Y6c4D60A4yLAj6frkdbMg
 +sVxc0sTMzr9xHGvQhTSh5AD6EW94q0kEl+0+QW3oNVcOsFO9gLImSpbWUkr+FWJEFjq
 DG4e6Ej5QPgSVVScdEcJ7lFkJRtHueeEdwa+Kze6Y/uPpbdVT9GWI4BM2QXLuyoQBP33
 CL6w==
X-Gm-Message-State: APjAAAWkOvb7CKYWXpj/c6wE+wOkF7uduvtC5IjFUrHNMe+kVerWmQom
 BfdN8ZSscI4Fdl4MOiQCBrp+tA==
X-Google-Smtp-Source: APXvYqw418png4ueBEkhK0GDiYsPs/EGoHbRUyqV38vCZsQvO1n3/wfIO0dRLo3NzYGhj5jDK3nnqA==
X-Received: by 2002:a5d:438e:: with SMTP id i14mr92253133wrq.122.1564072977079; 
 Thu, 25 Jul 2019 09:42:57 -0700 (PDT)
Received: from pop-os.baylibre.local ([2a01:e35:8ad2:2cb0:2dbb:fac9:5ec0:e3ef])
 by smtp.googlemail.com with ESMTPSA id 91sm103031727wrp.3.2019.07.25.09.42.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 09:42:56 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
To: jbrunet@baylibre.com
Subject: [PATCH v2 2/8] clk: meson: g12a: migrate to the new parent
 description method
Date: Thu, 25 Jul 2019 18:42:32 +0200
Message-Id: <20190725164238.27991-3-amergnat@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190725164238.27991-1-amergnat@baylibre.com>
References: <20190725164238.27991-1-amergnat@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_094259_917297_300A2ED3 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
 drivers/clk/meson/g12a.c | 843 ++++++++++++++++++++++++++-------------
 1 file changed, 571 insertions(+), 272 deletions(-)

diff --git a/drivers/clk/meson/g12a.c b/drivers/clk/meson/g12a.c
index cbd56b2e05d0..8cc7f5acf7ab 100644
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
@@ -749,7 +818,17 @@ static struct clk_regmap g12a_cpu_clk_trace_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk_trace_div",
 		.ops = &clk_regmap_divider_ro_ops,
-		.parent_names = (const char *[]){ "cpu_clk" },
+		.parent_data = &(const struct clk_parent_data) {
+			/*
+			 * Note:
+			 * G12A and G12B have different cpu_clks (with
+			 * different struct clk_hw). We fallback to the global
+			 * naming string mechanism so cpu_clk_trace_div picks
+			 * up the appropriate one.
+			 */
+			.name = "cpu_clk",
+			.index = -1,
+		},
 		.num_parents = 1,
 	},
 };
@@ -762,7 +841,9 @@ static struct clk_regmap g12a_cpu_clk_trace = {
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
@@ -777,7 +858,9 @@ static struct clk_fixed_factor g12b_cpub_clk_div2 = {
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
@@ -788,7 +871,9 @@ static struct clk_fixed_factor g12b_cpub_clk_div3 = {
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
@@ -799,7 +884,9 @@ static struct clk_fixed_factor g12b_cpub_clk_div4 = {
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
@@ -810,7 +897,9 @@ static struct clk_fixed_factor g12b_cpub_clk_div5 = {
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
@@ -821,7 +910,9 @@ static struct clk_fixed_factor g12b_cpub_clk_div6 = {
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
@@ -832,7 +923,9 @@ static struct clk_fixed_factor g12b_cpub_clk_div7 = {
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
@@ -843,7 +936,9 @@ static struct clk_fixed_factor g12b_cpub_clk_div8 = {
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
@@ -859,13 +954,15 @@ static struct clk_regmap g12b_cpub_clk_apb_sel = {
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
@@ -879,7 +976,9 @@ static struct clk_regmap g12b_cpub_clk_apb = {
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
@@ -898,13 +997,15 @@ static struct clk_regmap g12b_cpub_clk_atb_sel = {
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
@@ -918,7 +1019,9 @@ static struct clk_regmap g12b_cpub_clk_atb = {
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
@@ -937,13 +1040,15 @@ static struct clk_regmap g12b_cpub_clk_axi_sel = {
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
@@ -957,7 +1062,9 @@ static struct clk_regmap g12b_cpub_clk_axi = {
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
@@ -976,13 +1083,15 @@ static struct clk_regmap g12b_cpub_clk_trace_sel = {
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
@@ -996,7 +1105,9 @@ static struct clk_regmap g12b_cpub_clk_trace = {
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
@@ -1061,7 +1172,9 @@ static struct clk_regmap g12a_gp0_pll_dco = {
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
@@ -1077,7 +1190,9 @@ static struct clk_regmap g12a_gp0_pll = {
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
@@ -1135,7 +1250,9 @@ static struct clk_regmap g12a_hifi_pll_dco = {
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
@@ -1151,7 +1268,9 @@ static struct clk_regmap g12a_hifi_pll = {
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
@@ -1222,7 +1341,9 @@ static struct clk_regmap g12a_pcie_pll_dco = {
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
@@ -1233,7 +1354,9 @@ static struct clk_fixed_factor g12a_pcie_pll_dco_div2 = {
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
@@ -1251,7 +1374,9 @@ static struct clk_regmap g12a_pcie_pll_od = {
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
@@ -1263,7 +1388,9 @@ static struct clk_fixed_factor g12a_pcie_pll = {
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
@@ -1305,7 +1432,9 @@ static struct clk_regmap g12a_hdmi_pll_dco = {
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
@@ -1325,7 +1454,9 @@ static struct clk_regmap g12a_hdmi_pll_od = {
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
@@ -1341,7 +1472,9 @@ static struct clk_regmap g12a_hdmi_pll_od2 = {
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
@@ -1357,7 +1490,9 @@ static struct clk_regmap g12a_hdmi_pll = {
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
@@ -1369,7 +1504,7 @@ static struct clk_fixed_factor g12a_fclk_div4_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "fclk_div4_div",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "fixed_pll" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_fixed_pll.hw },
 		.num_parents = 1,
 	},
 };
@@ -1382,7 +1517,9 @@ static struct clk_regmap g12a_fclk_div4 = {
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
@@ -1393,7 +1530,7 @@ static struct clk_fixed_factor g12a_fclk_div5_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "fclk_div5_div",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "fixed_pll" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_fixed_pll.hw },
 		.num_parents = 1,
 	},
 };
@@ -1406,7 +1543,9 @@ static struct clk_regmap g12a_fclk_div5 = {
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
@@ -1417,7 +1556,7 @@ static struct clk_fixed_factor g12a_fclk_div7_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "fclk_div7_div",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "fixed_pll" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_fixed_pll.hw },
 		.num_parents = 1,
 	},
 };
@@ -1430,7 +1569,9 @@ static struct clk_regmap g12a_fclk_div7 = {
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
@@ -1441,7 +1582,9 @@ static struct clk_fixed_factor g12a_fclk_div2p5_div = {
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
@@ -1454,7 +1597,9 @@ static struct clk_regmap g12a_fclk_div2p5 = {
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
@@ -1465,7 +1610,9 @@ static struct clk_fixed_factor g12a_mpll_50m_div = {
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
@@ -1479,8 +1626,10 @@ static struct clk_regmap g12a_mpll_50m = {
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
@@ -1491,7 +1640,9 @@ static struct clk_fixed_factor g12a_mpll_prediv = {
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
@@ -1529,7 +1680,9 @@ static struct clk_regmap g12a_mpll0_div = {
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
@@ -1542,7 +1695,7 @@ static struct clk_regmap g12a_mpll0 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mpll0",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "mpll0_div" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_mpll0_div.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -1581,7 +1734,9 @@ static struct clk_regmap g12a_mpll1_div = {
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
@@ -1594,7 +1749,7 @@ static struct clk_regmap g12a_mpll1 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mpll1",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "mpll1_div" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_mpll1_div.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -1633,7 +1788,9 @@ static struct clk_regmap g12a_mpll2_div = {
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
@@ -1646,7 +1803,7 @@ static struct clk_regmap g12a_mpll2 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mpll2",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "mpll2_div" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_mpll2_div.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -1685,7 +1842,9 @@ static struct clk_regmap g12a_mpll3_div = {
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
@@ -1698,16 +1857,21 @@ static struct clk_regmap g12a_mpll3 = {
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
@@ -1720,8 +1884,8 @@ static struct clk_regmap g12a_mpeg_clk_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mpeg_clk_sel",
 		.ops = &clk_regmap_mux_ro_ops,
-		.parent_names = clk81_parent_names,
-		.num_parents = ARRAY_SIZE(clk81_parent_names),
+		.parent_data = clk81_parent_data,
+		.num_parents = ARRAY_SIZE(clk81_parent_data),
 	},
 };
 
@@ -1734,7 +1898,9 @@ static struct clk_regmap g12a_mpeg_clk_div = {
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
@@ -1748,15 +1914,20 @@ static struct clk_regmap g12a_clk81 = {
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
@@ -1775,8 +1946,8 @@ static struct clk_regmap g12a_sd_emmc_a_clk0_sel = {
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
@@ -1790,7 +1961,9 @@ static struct clk_regmap g12a_sd_emmc_a_clk0_div = {
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
@@ -1804,7 +1977,9 @@ static struct clk_regmap g12a_sd_emmc_a_clk0 = {
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
@@ -1820,8 +1995,8 @@ static struct clk_regmap g12a_sd_emmc_b_clk0_sel = {
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
@@ -1835,7 +2010,9 @@ static struct clk_regmap g12a_sd_emmc_b_clk0_div = {
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
@@ -1849,7 +2026,9 @@ static struct clk_regmap g12a_sd_emmc_b_clk0 = {
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
@@ -1865,8 +2044,8 @@ static struct clk_regmap g12a_sd_emmc_c_clk0_sel = {
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
@@ -1880,7 +2059,9 @@ static struct clk_regmap g12a_sd_emmc_c_clk0_div = {
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
@@ -1894,7 +2075,9 @@ static struct clk_regmap g12a_sd_emmc_c_clk0 = {
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
@@ -1918,14 +2101,16 @@ static struct clk_regmap g12a_vid_pll_div = {
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
@@ -1940,8 +2125,8 @@ static struct clk_regmap g12a_vid_pll_sel = {
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
@@ -1954,7 +2139,9 @@ static struct clk_regmap g12a_vid_pll = {
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
@@ -1962,9 +2149,15 @@ static struct clk_regmap g12a_vid_pll = {
 
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
@@ -1976,8 +2169,8 @@ static struct clk_regmap g12a_vpu_0_sel = {
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
@@ -1991,7 +2184,7 @@ static struct clk_regmap g12a_vpu_0_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vpu_0_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "vpu_0_sel" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vpu_0_sel.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -2005,7 +2198,7 @@ static struct clk_regmap g12a_vpu_0 = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vpu_0",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vpu_0_div" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vpu_0_div.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2020,8 +2213,8 @@ static struct clk_regmap g12a_vpu_1_sel = {
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
@@ -2035,7 +2228,7 @@ static struct clk_regmap g12a_vpu_1_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vpu_1_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "vpu_1_sel" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vpu_1_sel.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -2049,7 +2242,7 @@ static struct clk_regmap g12a_vpu_1 = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vpu_1",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vpu_1_div" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vpu_1_div.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2068,7 +2261,10 @@ static struct clk_regmap g12a_vpu = {
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
@@ -2076,9 +2272,14 @@ static struct clk_regmap g12a_vpu = {
 
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
@@ -2091,8 +2292,8 @@ static struct clk_regmap g12a_vdec_1_sel = {
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
@@ -2107,7 +2308,9 @@ static struct clk_regmap g12a_vdec_1_div = {
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
@@ -2121,7 +2324,9 @@ static struct clk_regmap g12a_vdec_1 = {
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
@@ -2137,8 +2342,8 @@ static struct clk_regmap g12a_vdec_hevcf_sel = {
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
@@ -2153,7 +2358,9 @@ static struct clk_regmap g12a_vdec_hevcf_div = {
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
@@ -2167,7 +2374,9 @@ static struct clk_regmap g12a_vdec_hevcf = {
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
@@ -2183,8 +2392,8 @@ static struct clk_regmap g12a_vdec_hevc_sel = {
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
@@ -2199,7 +2408,9 @@ static struct clk_regmap g12a_vdec_hevc_div = {
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
@@ -2213,7 +2424,9 @@ static struct clk_regmap g12a_vdec_hevc = {
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
@@ -2221,9 +2434,15 @@ static struct clk_regmap g12a_vdec_hevc = {
 
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
@@ -2235,8 +2454,8 @@ static struct clk_regmap g12a_vapb_0_sel = {
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
@@ -2250,7 +2469,9 @@ static struct clk_regmap g12a_vapb_0_div = {
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
@@ -2264,7 +2485,9 @@ static struct clk_regmap g12a_vapb_0 = {
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
@@ -2279,8 +2502,8 @@ static struct clk_regmap g12a_vapb_1_sel = {
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
@@ -2294,7 +2517,9 @@ static struct clk_regmap g12a_vapb_1_div = {
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
@@ -2308,7 +2533,9 @@ static struct clk_regmap g12a_vapb_1 = {
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
@@ -2327,7 +2554,10 @@ static struct clk_regmap g12a_vapb_sel = {
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
@@ -2341,15 +2571,21 @@ static struct clk_regmap g12a_vapb = {
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
@@ -2361,8 +2597,8 @@ static struct clk_regmap g12a_vclk_sel = {
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
@@ -2376,8 +2612,8 @@ static struct clk_regmap g12a_vclk2_sel = {
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
@@ -2390,7 +2626,7 @@ static struct clk_regmap g12a_vclk_input = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk_input",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk_sel" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vclk_sel.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2404,7 +2640,7 @@ static struct clk_regmap g12a_vclk2_input = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk2_input",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk2_sel" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vclk2_sel.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2419,7 +2655,9 @@ static struct clk_regmap g12a_vclk_div = {
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
@@ -2434,7 +2672,9 @@ static struct clk_regmap g12a_vclk2_div = {
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
@@ -2448,7 +2688,7 @@ static struct clk_regmap g12a_vclk = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk_div" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vclk_div.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2462,7 +2702,7 @@ static struct clk_regmap g12a_vclk2 = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk2",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk2_div" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vclk2_div.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2476,7 +2716,7 @@ static struct clk_regmap g12a_vclk_div1 = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk_div1",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vclk.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2490,7 +2730,7 @@ static struct clk_regmap g12a_vclk_div2_en = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk_div2_en",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vclk.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2504,7 +2744,7 @@ static struct clk_regmap g12a_vclk_div4_en = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk_div4_en",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vclk.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2518,7 +2758,7 @@ static struct clk_regmap g12a_vclk_div6_en = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk_div6_en",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vclk.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2532,7 +2772,7 @@ static struct clk_regmap g12a_vclk_div12_en = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk_div12_en",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vclk.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2546,7 +2786,7 @@ static struct clk_regmap g12a_vclk2_div1 = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk2_div1",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk2" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vclk2.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2560,7 +2800,7 @@ static struct clk_regmap g12a_vclk2_div2_en = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk2_div2_en",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk2" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vclk2.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2574,7 +2814,7 @@ static struct clk_regmap g12a_vclk2_div4_en = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk2_div4_en",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk2" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vclk2.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2588,7 +2828,7 @@ static struct clk_regmap g12a_vclk2_div6_en = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk2_div6_en",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk2" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vclk2.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2602,7 +2842,7 @@ static struct clk_regmap g12a_vclk2_div12_en = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk2_div12_en",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk2" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_vclk2.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2614,7 +2854,9 @@ static struct clk_fixed_factor g12a_vclk_div2 = {
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
@@ -2625,7 +2867,9 @@ static struct clk_fixed_factor g12a_vclk_div4 = {
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
@@ -2636,7 +2880,9 @@ static struct clk_fixed_factor g12a_vclk_div6 = {
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
@@ -2647,7 +2893,9 @@ static struct clk_fixed_factor g12a_vclk_div12 = {
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
@@ -2658,7 +2906,9 @@ static struct clk_fixed_factor g12a_vclk2_div2 = {
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
@@ -2669,7 +2919,9 @@ static struct clk_fixed_factor g12a_vclk2_div4 = {
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
@@ -2680,7 +2932,9 @@ static struct clk_fixed_factor g12a_vclk2_div6 = {
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
@@ -2691,16 +2945,25 @@ static struct clk_fixed_factor g12a_vclk2_div12 = {
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
@@ -2713,8 +2976,8 @@ static struct clk_regmap g12a_cts_enci_sel = {
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
@@ -2729,8 +2992,8 @@ static struct clk_regmap g12a_cts_encp_sel = {
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
@@ -2745,18 +3008,25 @@ static struct clk_regmap g12a_cts_vdac_sel = {
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
@@ -2769,8 +3039,8 @@ static struct clk_regmap g12a_hdmi_tx_sel = {
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
@@ -2783,7 +3053,9 @@ static struct clk_regmap g12a_cts_enci = {
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
@@ -2797,7 +3069,9 @@ static struct clk_regmap g12a_cts_encp = {
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
@@ -2811,7 +3085,9 @@ static struct clk_regmap g12a_cts_vdac = {
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
@@ -2825,7 +3101,9 @@ static struct clk_regmap g12a_hdmi_tx = {
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
@@ -2833,8 +3111,11 @@ static struct clk_regmap g12a_hdmi_tx = {
 
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
@@ -2847,8 +3128,8 @@ static struct clk_regmap g12a_hdmi_sel = {
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
@@ -2862,7 +3143,7 @@ static struct clk_regmap g12a_hdmi_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "hdmi_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "hdmi_sel" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_hdmi_sel.hw },
 		.num_parents = 1,
 		.flags = CLK_GET_RATE_NOCACHE,
 	},
@@ -2876,7 +3157,7 @@ static struct clk_regmap g12a_hdmi = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "hdmi",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "hdmi_div" },
+		.parent_hws = (const struct clk_hw *[]) { &g12a_hdmi_div.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2886,10 +3167,15 @@ static struct clk_regmap g12a_hdmi = {
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
@@ -2901,7 +3187,7 @@ static struct clk_regmap g12a_mali_0_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mali_0_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = g12a_mali_0_1_parent_names,
+		.parent_data = g12a_mali_0_1_parent_data,
 		.num_parents = 8,
 		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
@@ -2916,7 +3202,9 @@ static struct clk_regmap g12a_mali_0_div = {
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
@@ -2930,7 +3218,9 @@ static struct clk_regmap g12a_mali_0 = {
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
@@ -2945,7 +3235,7 @@ static struct clk_regmap g12a_mali_1_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mali_1_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = g12a_mali_0_1_parent_names,
+		.parent_data = g12a_mali_0_1_parent_data,
 		.num_parents = 8,
 		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
@@ -2960,7 +3250,9 @@ static struct clk_regmap g12a_mali_1_div = {
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
@@ -2974,14 +3266,17 @@ static struct clk_regmap g12a_mali_1 = {
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
@@ -2993,7 +3288,7 @@ static struct clk_regmap g12a_mali = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mali",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = g12a_mali_parent_names,
+		.parent_hws = g12a_mali_parent_hws,
 		.num_parents = 2,
 		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
@@ -3008,7 +3303,9 @@ static struct clk_regmap g12a_ts_div = {
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
@@ -3021,7 +3318,9 @@ static struct clk_regmap g12a_ts = {
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
