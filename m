Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 648466FD3D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 11:57:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xh4fs6vPjyGXklJf206hD6OBAU9zj3D0CTFHrlf9OAw=; b=jDTD6wj2FhyntNH+FxHIHQEeRP
	x+k8/mF4dMGNw6pvj/W5SWlMrWtm8/Umc8OOzlfsLGbsjkM3O/REltAJppOm5TpE1RlESq5PXI4Cc
	ik6aLFoqceTOfgIUir413zoAxW0U0Ol/PuCjakxiVBYRGBca3I4Vds/DkpsFBdmMtI6VhvwUk+0+o
	GEBUy7Y0uDgxqbnbO5kQkPOmf7TmYF/gTt4tNPxIVrGajnw6shg6kvuuFacdhyrkLivMjTl0lSUU5
	Mg/6CyKuDitHvCEnzRs08DLTae9W+WaoQh+WKPTg1BBT9Cn/4YqolHhsX5EOBnmpEJtpbS2nWrRWs
	2+YFfGHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpV4K-0002S5-B3; Mon, 22 Jul 2019 09:57:20 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpV1d-00086N-9p
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 09:54:51 +0000
Received: by mail-wr1-x444.google.com with SMTP id n9so13644617wrr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 02:54:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=KF/hV6aYxOWYk1xOcsmRHxKXw9xF3sMCkrTerM5VTVY=;
 b=B0SCDnR5a3tvUhIg/+8YcEIqDj+i76VLRiCXaLO2jx1FMMSh+4B4PEbbde2ZSs41Fc
 Z9+/RwALBayzP4cnJrfj0gSrYDdyedsywYkCxEg3QppXjxXiOsPFWXy6TWYr8ok2CIVf
 K39P81yg2ztUANVkyHfuG2BBJ38nOWjuYZh9Q4mvJofD/cChC2rp23K77EP7z+EJn9hS
 uuF/asSyY3LuZgxQwdnFQ3hTvqidFCTwVzbGSRHr3EvkUZC4darT8IF82lvN+n9Y5VwI
 nR3RdwYWUdTVTCzZ+Zvzp3VmwtYAy5w4ixrhJ9AwApKA6ywXcIbXTynZbMY1yf+BvqdX
 a4Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=KF/hV6aYxOWYk1xOcsmRHxKXw9xF3sMCkrTerM5VTVY=;
 b=MZfPHV9fsLTON1WPtA81TnF58Q0XLoWuj7vDvN7iMcrY4M03cEP+FoCVZst2p6KzyV
 hgsuPYZHnu9rskBQZAGZ2UrdQ+JPz9GZnEEDiTaj41qV4TeaqJltFmW8CeEfdc5LfF0G
 FtQRLdoAFXfmFSX43f3JyDvuKkTXZVKn4f968H7x2fDF5Z9qjhbR+gnVZaY4J7D52ASE
 sSTpp/PVvu0h7nS+9YpopsbG4BpSK/hUGSSY3OkkPbZNrMHBGkL5TOBnCpS8YPAotgNg
 p5eTjX4y8uwrigdEMeh49FdlZ4vrmY4v8J3GNyeXZ4qajYUgkHVMLV/VyCmWc16OdDZC
 Q6sA==
X-Gm-Message-State: APjAAAWqNwvcaNvwd7K9rPfmeeft6EimfFJJpn4zdwJVyjnY3DER786z
 21EmnhqlEzGSUNNb6sLaaHAqFA==
X-Google-Smtp-Source: APXvYqzVIfjRyACb22iD5v02/E9SEiCmiFb0TBF3tJpd/P6106v/qUwiQ4aRhR1MRDBxH+6j/xRrFw==
X-Received: by 2002:a5d:5152:: with SMTP id u18mr75801368wrt.9.1563789271274; 
 Mon, 22 Jul 2019 02:54:31 -0700 (PDT)
Received: from pop-os.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id 91sm83158469wrp.3.2019.07.22.02.54.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 02:54:30 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
To: jbrunet@baylibre.com
Subject: [PATCH 3/8] clk: meson: gxbb: migrate to the new parent description
 method
Date: Mon, 22 Jul 2019 11:54:20 +0200
Message-Id: <20190722095425.14193-4-amergnat@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190722095425.14193-1-amergnat@baylibre.com>
References: <20190722095425.14193-1-amergnat@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_025434_286439_5BE8A4C9 
X-CRM114-Status: GOOD (  14.08  )
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
 drivers/clk/meson/gxbb.c | 643 +++++++++++++++++++++++++++------------
 1 file changed, 440 insertions(+), 203 deletions(-)

diff --git a/drivers/clk/meson/gxbb.c b/drivers/clk/meson/gxbb.c
index dab16d9b1af8..65ba08c210d2 100644
--- a/drivers/clk/meson/gxbb.c
+++ b/drivers/clk/meson/gxbb.c
@@ -10,15 +10,12 @@
 #include <linux/platform_device.h>
 
 #include "gxbb.h"
-#include "clk-input.h"
 #include "clk-regmap.h"
 #include "clk-pll.h"
 #include "clk-mpll.h"
 #include "meson-eeclk.h"
 #include "vid-pll-div.h"
 
-#define IN_PREFIX "ee-in-"
-
 static DEFINE_SPINLOCK(meson_clk_lock);
 
 static const struct pll_params_table gxbb_gp0_pll_params_table[] = {
@@ -121,7 +118,9 @@ static struct clk_regmap gxbb_fixed_pll_dco = {
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
@@ -136,7 +135,9 @@ static struct clk_regmap gxbb_fixed_pll = {
 	.hw.init = &(struct clk_init_data){
 		.name = "fixed_pll",
 		.ops = &clk_regmap_divider_ro_ops,
-		.parent_names = (const char *[]){ "fixed_pll_dco" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_fixed_pll_dco.hw
+		},
 		.num_parents = 1,
 		/*
 		 * This clock won't ever change at runtime so
@@ -151,7 +152,9 @@ static struct clk_fixed_factor gxbb_hdmi_pll_pre_mult = {
 	.hw.init = &(struct clk_init_data){
 		.name = "hdmi_pll_pre_mult",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ IN_PREFIX "xtal" },
+		.parent_data = &(const struct clk_parent_data) {
+			.fw_name = "xtal",
+		},
 		.num_parents = 1,
 	},
 };
@@ -192,7 +195,9 @@ static struct clk_regmap gxbb_hdmi_pll_dco = {
 	.hw.init = &(struct clk_init_data){
 		.name = "hdmi_pll_dco",
 		.ops = &meson_clk_pll_ro_ops,
-		.parent_names = (const char *[]){ "hdmi_pll_pre_mult" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_hdmi_pll_pre_mult.hw
+		},
 		.num_parents = 1,
 		/*
 		 * Display directly handle hdmi pll registers ATM, we need
@@ -244,7 +249,9 @@ static struct clk_regmap gxl_hdmi_pll_dco = {
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
@@ -264,7 +271,9 @@ static struct clk_regmap gxbb_hdmi_pll_od = {
 	.hw.init = &(struct clk_init_data){
 		.name = "hdmi_pll_od",
 		.ops = &clk_regmap_divider_ro_ops,
-		.parent_names = (const char *[]){ "hdmi_pll_dco" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_hdmi_pll_dco.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_GET_RATE_NOCACHE | CLK_SET_RATE_PARENT,
 	},
@@ -280,7 +289,9 @@ static struct clk_regmap gxbb_hdmi_pll_od2 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "hdmi_pll_od2",
 		.ops = &clk_regmap_divider_ro_ops,
-		.parent_names = (const char *[]){ "hdmi_pll_od" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_hdmi_pll_od.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_GET_RATE_NOCACHE | CLK_SET_RATE_PARENT,
 	},
@@ -296,7 +307,9 @@ static struct clk_regmap gxbb_hdmi_pll = {
 	.hw.init = &(struct clk_init_data){
 		.name = "hdmi_pll",
 		.ops = &clk_regmap_divider_ro_ops,
-		.parent_names = (const char *[]){ "hdmi_pll_od2" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_hdmi_pll_od2.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_GET_RATE_NOCACHE | CLK_SET_RATE_PARENT,
 	},
@@ -312,7 +325,9 @@ static struct clk_regmap gxl_hdmi_pll_od = {
 	.hw.init = &(struct clk_init_data){
 		.name = "hdmi_pll_od",
 		.ops = &clk_regmap_divider_ro_ops,
-		.parent_names = (const char *[]){ "hdmi_pll_dco" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxl_hdmi_pll_dco.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_GET_RATE_NOCACHE | CLK_SET_RATE_PARENT,
 	},
@@ -328,7 +343,9 @@ static struct clk_regmap gxl_hdmi_pll_od2 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "hdmi_pll_od2",
 		.ops = &clk_regmap_divider_ro_ops,
-		.parent_names = (const char *[]){ "hdmi_pll_od" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxl_hdmi_pll_od.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_GET_RATE_NOCACHE | CLK_SET_RATE_PARENT,
 	},
@@ -344,7 +361,9 @@ static struct clk_regmap gxl_hdmi_pll = {
 	.hw.init = &(struct clk_init_data){
 		.name = "hdmi_pll",
 		.ops = &clk_regmap_divider_ro_ops,
-		.parent_names = (const char *[]){ "hdmi_pll_od2" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxl_hdmi_pll_od2.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_GET_RATE_NOCACHE | CLK_SET_RATE_PARENT,
 	},
@@ -381,7 +400,9 @@ static struct clk_regmap gxbb_sys_pll_dco = {
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
@@ -396,7 +417,9 @@ static struct clk_regmap gxbb_sys_pll = {
 	.hw.init = &(struct clk_init_data){
 		.name = "sys_pll",
 		.ops = &clk_regmap_divider_ro_ops,
-		.parent_names = (const char *[]){ "sys_pll_dco" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_sys_pll_dco.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -442,7 +465,9 @@ static struct clk_regmap gxbb_gp0_pll_dco = {
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
@@ -494,7 +519,9 @@ static struct clk_regmap gxl_gp0_pll_dco = {
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
@@ -509,7 +536,10 @@ static struct clk_regmap gxbb_gp0_pll = {
 	.hw.init = &(struct clk_init_data){
 		.name = "gp0_pll",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "gp0_pll_dco" },
+		.parent_data = &(const struct clk_parent_data) {
+			.name = "gp0_pll_dco",
+			.index = -1,
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -521,7 +551,9 @@ static struct clk_fixed_factor gxbb_fclk_div2_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "fclk_div2_div",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "fixed_pll" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_fixed_pll.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -534,7 +566,9 @@ static struct clk_regmap gxbb_fclk_div2 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "fclk_div2",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "fclk_div2_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_fclk_div2_div.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_IS_CRITICAL,
 	},
@@ -546,7 +580,7 @@ static struct clk_fixed_factor gxbb_fclk_div3_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "fclk_div3_div",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "fixed_pll" },
+		.parent_hws = (const struct clk_hw *[]) { &gxbb_fixed_pll.hw },
 		.num_parents = 1,
 	},
 };
@@ -559,7 +593,9 @@ static struct clk_regmap gxbb_fclk_div3 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "fclk_div3",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "fclk_div3_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_fclk_div3_div.hw
+		},
 		.num_parents = 1,
 		/*
 		 * FIXME:
@@ -582,7 +618,7 @@ static struct clk_fixed_factor gxbb_fclk_div4_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "fclk_div4_div",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "fixed_pll" },
+		.parent_hws = (const struct clk_hw *[]) { &gxbb_fixed_pll.hw },
 		.num_parents = 1,
 	},
 };
@@ -595,7 +631,9 @@ static struct clk_regmap gxbb_fclk_div4 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "fclk_div4",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "fclk_div4_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_fclk_div4_div.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -606,7 +644,7 @@ static struct clk_fixed_factor gxbb_fclk_div5_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "fclk_div5_div",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "fixed_pll" },
+		.parent_hws = (const struct clk_hw *[]) { &gxbb_fixed_pll.hw },
 		.num_parents = 1,
 	},
 };
@@ -619,7 +657,9 @@ static struct clk_regmap gxbb_fclk_div5 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "fclk_div5",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "fclk_div5_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_fclk_div5_div.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -630,7 +670,7 @@ static struct clk_fixed_factor gxbb_fclk_div7_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "fclk_div7_div",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "fixed_pll" },
+		.parent_hws = (const struct clk_hw *[]) { &gxbb_fixed_pll.hw },
 		.num_parents = 1,
 	},
 };
@@ -643,7 +683,9 @@ static struct clk_regmap gxbb_fclk_div7 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "fclk_div7",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "fclk_div7_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_fclk_div7_div.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -657,7 +699,7 @@ static struct clk_regmap gxbb_mpll_prediv = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mpll_prediv",
 		.ops = &clk_regmap_divider_ro_ops,
-		.parent_names = (const char *[]){ "fixed_pll" },
+		.parent_hws = (const struct clk_hw *[]) { &gxbb_fixed_pll.hw },
 		.num_parents = 1,
 	},
 };
@@ -684,7 +726,9 @@ static struct clk_regmap gxbb_mpll0_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mpll0_div",
 		.ops = &meson_clk_mpll_ops,
-		.parent_names = (const char *[]){ "mpll_prediv" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_mpll_prediv.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -697,7 +741,7 @@ static struct clk_regmap gxbb_mpll0 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mpll0",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "mpll0_div" },
+		.parent_hws = (const struct clk_hw *[]) { &gxbb_mpll0_div.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -725,7 +769,9 @@ static struct clk_regmap gxbb_mpll1_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mpll1_div",
 		.ops = &meson_clk_mpll_ops,
-		.parent_names = (const char *[]){ "mpll_prediv" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_mpll_prediv.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -738,7 +784,7 @@ static struct clk_regmap gxbb_mpll1 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mpll1",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "mpll1_div" },
+		.parent_hws = (const struct clk_hw *[]) { &gxbb_mpll1_div.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -766,7 +812,9 @@ static struct clk_regmap gxbb_mpll2_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mpll2_div",
 		.ops = &meson_clk_mpll_ops,
-		.parent_names = (const char *[]){ "mpll_prediv" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_mpll_prediv.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -779,16 +827,21 @@ static struct clk_regmap gxbb_mpll2 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mpll2",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "mpll2_div" },
+		.parent_hws = (const struct clk_hw *[]) { &gxbb_mpll2_div.hw },
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
+	{ .hw = &gxbb_fclk_div7.hw },
+	{ .hw = &gxbb_mpll1.hw },
+	{ .hw = &gxbb_mpll2.hw },
+	{ .hw = &gxbb_fclk_div4.hw },
+	{ .hw = &gxbb_fclk_div3.hw },
+	{ .hw = &gxbb_fclk_div5.hw },
 };
 
 static struct clk_regmap gxbb_mpeg_clk_sel = {
@@ -806,8 +859,8 @@ static struct clk_regmap gxbb_mpeg_clk_sel = {
 		 * xtal, 1'b0 (wtf), fclk_div7, mpll_clkout1, mpll_clkout2,
 		 * fclk_div4, fclk_div3, fclk_div5
 		 */
-		.parent_names = clk81_parent_names,
-		.num_parents = ARRAY_SIZE(clk81_parent_names),
+		.parent_data = clk81_parent_data,
+		.num_parents = ARRAY_SIZE(clk81_parent_data),
 	},
 };
 
@@ -820,7 +873,9 @@ static struct clk_regmap gxbb_mpeg_clk_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mpeg_clk_div",
 		.ops = &clk_regmap_divider_ro_ops,
-		.parent_names = (const char *[]){ "mpeg_clk_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_mpeg_clk_sel.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -834,7 +889,9 @@ static struct clk_regmap gxbb_clk81 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "clk81",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "mpeg_clk_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_mpeg_clk_div.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_IS_CRITICAL,
 	},
@@ -850,7 +907,10 @@ static struct clk_regmap gxbb_sar_adc_clk_sel = {
 		.name = "sar_adc_clk_sel",
 		.ops = &clk_regmap_mux_ops,
 		/* NOTE: The datasheet doesn't list the parents for bit 10 */
-		.parent_names = (const char *[]){ IN_PREFIX "xtal", "clk81", },
+		.parent_data = (const struct clk_parent_data []) {
+			{ .fw_name = "xtal", },
+			{ .hw = &gxbb_clk81.hw },
+		},
 		.num_parents = 2,
 	},
 };
@@ -864,7 +924,9 @@ static struct clk_regmap gxbb_sar_adc_clk_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "sar_adc_clk_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "sar_adc_clk_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_sar_adc_clk_sel.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -877,7 +939,9 @@ static struct clk_regmap gxbb_sar_adc_clk = {
 	.hw.init = &(struct clk_init_data){
 		.name = "sar_adc_clk",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "sar_adc_clk_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_sar_adc_clk_div.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -888,9 +952,15 @@ static struct clk_regmap gxbb_sar_adc_clk = {
  * muxed by a glitch-free switch.
  */
 
-static const char * const gxbb_mali_0_1_parent_names[] = {
-	IN_PREFIX "xtal", "gp0_pll", "mpll2", "mpll1", "fclk_div7",
-	"fclk_div4", "fclk_div3", "fclk_div5"
+static const struct clk_parent_data gxbb_mali_0_1_parent_data[] = {
+	{ .fw_name = "xtal", },
+	{ .hw = &gxbb_gp0_pll.hw },
+	{ .hw = &gxbb_mpll2.hw },
+	{ .hw = &gxbb_mpll1.hw },
+	{ .hw = &gxbb_fclk_div7.hw },
+	{ .hw = &gxbb_fclk_div4.hw },
+	{ .hw = &gxbb_fclk_div3.hw },
+	{ .hw = &gxbb_fclk_div5.hw },
 };
 
 static struct clk_regmap gxbb_mali_0_sel = {
@@ -907,7 +977,7 @@ static struct clk_regmap gxbb_mali_0_sel = {
 		 * xtal, gp0_pll, mpll2, mpll1, fclk_div7,
 		 * fclk_div4, fclk_div3, fclk_div5
 		 */
-		.parent_names = gxbb_mali_0_1_parent_names,
+		.parent_data = gxbb_mali_0_1_parent_data,
 		.num_parents = 8,
 		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
@@ -922,7 +992,9 @@ static struct clk_regmap gxbb_mali_0_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mali_0_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "mali_0_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_mali_0_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
@@ -936,7 +1008,9 @@ static struct clk_regmap gxbb_mali_0 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mali_0",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "mali_0_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_mali_0_div.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -956,7 +1030,7 @@ static struct clk_regmap gxbb_mali_1_sel = {
 		 * xtal, gp0_pll, mpll2, mpll1, fclk_div7,
 		 * fclk_div4, fclk_div3, fclk_div5
 		 */
-		.parent_names = gxbb_mali_0_1_parent_names,
+		.parent_data = gxbb_mali_0_1_parent_data,
 		.num_parents = 8,
 		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
@@ -971,7 +1045,9 @@ static struct clk_regmap gxbb_mali_1_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mali_1_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "mali_1_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_mali_1_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
@@ -985,14 +1061,17 @@ static struct clk_regmap gxbb_mali_1 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mali_1",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "mali_1_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_mali_1_div.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
-static const char * const gxbb_mali_parent_names[] = {
-	"mali_0", "mali_1"
+static const struct clk_hw *gxbb_mali_parent_hws[] = {
+	&gxbb_mali_0.hw,
+	&gxbb_mali_1.hw,
 };
 
 static struct clk_regmap gxbb_mali = {
@@ -1004,7 +1083,7 @@ static struct clk_regmap gxbb_mali = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mali",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = gxbb_mali_parent_names,
+		.parent_hws = gxbb_mali_parent_hws,
 		.num_parents = 2,
 		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
@@ -1021,7 +1100,11 @@ static struct clk_regmap gxbb_cts_amclk_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cts_amclk_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = (const char *[]){ "mpll0", "mpll1", "mpll2" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_mpll0.hw,
+			&gxbb_mpll1.hw,
+			&gxbb_mpll2.hw,
+		},
 		.num_parents = 3,
 	},
 };
@@ -1036,7 +1119,9 @@ static struct clk_regmap gxbb_cts_amclk_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cts_amclk_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "cts_amclk_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_cts_amclk_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -1050,7 +1135,9 @@ static struct clk_regmap gxbb_cts_amclk = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cts_amclk",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "cts_amclk_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_cts_amclk_div.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -1067,7 +1154,11 @@ static struct clk_regmap gxbb_cts_mclk_i958_sel = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "cts_mclk_i958_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = (const char *[]){ "mpll0", "mpll1", "mpll2" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_mpll0.hw,
+			&gxbb_mpll1.hw,
+			&gxbb_mpll2.hw,
+		},
 		.num_parents = 3,
 	},
 };
@@ -1082,7 +1173,9 @@ static struct clk_regmap gxbb_cts_mclk_i958_div = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "cts_mclk_i958_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "cts_mclk_i958_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_cts_mclk_i958_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -1096,7 +1189,9 @@ static struct clk_regmap gxbb_cts_mclk_i958 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cts_mclk_i958",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "cts_mclk_i958_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_cts_mclk_i958_div.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -1111,7 +1206,10 @@ static struct clk_regmap gxbb_cts_i958 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cts_i958",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = (const char *[]){ "cts_amclk", "cts_mclk_i958" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_cts_amclk.hw,
+			&gxbb_cts_mclk_i958.hw
+		},
 		.num_parents = 2,
 		/*
 		 *The parent is specific to origin of the audio data. Let the
@@ -1121,6 +1219,33 @@ static struct clk_regmap gxbb_cts_i958 = {
 	},
 };
 
+static const struct clk_parent_data gxbb_32k_clk_parent_data[] = {
+	{ .fw_name = "xtal", },
+	/*
+	 * FIXME: This clock is provided by the ao clock controller but the
+	 * clock is not yet part of the binding of this controller, so string
+	 * name must be use to set this parent.
+	 */
+	{ .name = "cts_slow_oscin", .index = -1 },
+	{ .hw = &gxbb_fclk_div3.hw },
+	{ .hw = &gxbb_fclk_div5.hw },
+};
+
+static struct clk_regmap gxbb_32k_clk_sel = {
+	.data = &(struct clk_regmap_mux_data){
+		.offset = HHI_32K_CLK_CNTL,
+		.mask = 0x3,
+		.shift = 16,
+		},
+	.hw.init = &(struct clk_init_data){
+		.name = "32k_clk_sel",
+		.ops = &clk_regmap_mux_ops,
+		.parent_data = gxbb_32k_clk_parent_data,
+		.num_parents = 4,
+		.flags = CLK_SET_RATE_PARENT,
+	},
+};
+
 static struct clk_regmap gxbb_32k_clk_div = {
 	.data = &(struct clk_regmap_div_data){
 		.offset = HHI_32K_CLK_CNTL,
@@ -1130,7 +1255,9 @@ static struct clk_regmap gxbb_32k_clk_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "32k_clk_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "32k_clk_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_32k_clk_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_DIVIDER_ROUND_CLOSEST,
 	},
@@ -1144,34 +1271,20 @@ static struct clk_regmap gxbb_32k_clk = {
 	.hw.init = &(struct clk_init_data){
 		.name = "32k_clk",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "32k_clk_div" },
-		.num_parents = 1,
-		.flags = CLK_SET_RATE_PARENT,
-	},
-};
-
-static const char * const gxbb_32k_clk_parent_names[] = {
-	IN_PREFIX "xtal", "cts_slow_oscin", "fclk_div3", "fclk_div5"
-};
-
-static struct clk_regmap gxbb_32k_clk_sel = {
-	.data = &(struct clk_regmap_mux_data){
-		.offset = HHI_32K_CLK_CNTL,
-		.mask = 0x3,
-		.shift = 16,
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_32k_clk_div.hw
 		},
-	.hw.init = &(struct clk_init_data){
-		.name = "32k_clk_sel",
-		.ops = &clk_regmap_mux_ops,
-		.parent_names = gxbb_32k_clk_parent_names,
-		.num_parents = 4,
+		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
 };
 
-static const char * const gxbb_sd_emmc_clk0_parent_names[] = {
-	IN_PREFIX "xtal", "fclk_div2", "fclk_div3", "fclk_div5", "fclk_div7",
-
+static const struct clk_parent_data gxbb_sd_emmc_clk0_parent_data[] = {
+	{ .fw_name = "xtal", },
+	{ .hw = &gxbb_fclk_div2.hw },
+	{ .hw = &gxbb_fclk_div3.hw },
+	{ .hw = &gxbb_fclk_div5.hw },
+	{ .hw = &gxbb_fclk_div7.hw },
 	/*
 	 * Following these parent clocks, we should also have had mpll2, mpll3
 	 * and gp0_pll but these clocks are too precious to be used here. All
@@ -1190,8 +1303,8 @@ static struct clk_regmap gxbb_sd_emmc_a_clk0_sel = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "sd_emmc_a_clk0_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = gxbb_sd_emmc_clk0_parent_names,
-		.num_parents = ARRAY_SIZE(gxbb_sd_emmc_clk0_parent_names),
+		.parent_data = gxbb_sd_emmc_clk0_parent_data,
+		.num_parents = ARRAY_SIZE(gxbb_sd_emmc_clk0_parent_data),
 		.flags = CLK_SET_RATE_PARENT,
 	},
 };
@@ -1206,7 +1319,9 @@ static struct clk_regmap gxbb_sd_emmc_a_clk0_div = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "sd_emmc_a_clk0_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "sd_emmc_a_clk0_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_sd_emmc_a_clk0_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -1220,7 +1335,9 @@ static struct clk_regmap gxbb_sd_emmc_a_clk0 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "sd_emmc_a_clk0",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "sd_emmc_a_clk0_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_sd_emmc_a_clk0_div.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -1236,8 +1353,8 @@ static struct clk_regmap gxbb_sd_emmc_b_clk0_sel = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "sd_emmc_b_clk0_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = gxbb_sd_emmc_clk0_parent_names,
-		.num_parents = ARRAY_SIZE(gxbb_sd_emmc_clk0_parent_names),
+		.parent_data = gxbb_sd_emmc_clk0_parent_data,
+		.num_parents = ARRAY_SIZE(gxbb_sd_emmc_clk0_parent_data),
 		.flags = CLK_SET_RATE_PARENT,
 	},
 };
@@ -1252,7 +1369,9 @@ static struct clk_regmap gxbb_sd_emmc_b_clk0_div = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "sd_emmc_b_clk0_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "sd_emmc_b_clk0_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_sd_emmc_b_clk0_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -1266,7 +1385,9 @@ static struct clk_regmap gxbb_sd_emmc_b_clk0 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "sd_emmc_b_clk0",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "sd_emmc_b_clk0_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_sd_emmc_b_clk0_div.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -1282,8 +1403,8 @@ static struct clk_regmap gxbb_sd_emmc_c_clk0_sel = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "sd_emmc_c_clk0_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = gxbb_sd_emmc_clk0_parent_names,
-		.num_parents = ARRAY_SIZE(gxbb_sd_emmc_clk0_parent_names),
+		.parent_data = gxbb_sd_emmc_clk0_parent_data,
+		.num_parents = ARRAY_SIZE(gxbb_sd_emmc_clk0_parent_data),
 		.flags = CLK_SET_RATE_PARENT,
 	},
 };
@@ -1298,7 +1419,9 @@ static struct clk_regmap gxbb_sd_emmc_c_clk0_div = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "sd_emmc_c_clk0_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "sd_emmc_c_clk0_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_sd_emmc_c_clk0_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -1312,7 +1435,9 @@ static struct clk_regmap gxbb_sd_emmc_c_clk0 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "sd_emmc_c_clk0",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "sd_emmc_c_clk0_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_sd_emmc_c_clk0_div.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -1320,8 +1445,11 @@ static struct clk_regmap gxbb_sd_emmc_c_clk0 = {
 
 /* VPU Clock */
 
-static const char * const gxbb_vpu_parent_names[] = {
-	"fclk_div4", "fclk_div3", "fclk_div5", "fclk_div7"
+static const struct clk_hw *gxbb_vpu_parent_hws[] = {
+	&gxbb_fclk_div4.hw,
+	&gxbb_fclk_div3.hw,
+	&gxbb_fclk_div5.hw,
+	&gxbb_fclk_div7.hw,
 };
 
 static struct clk_regmap gxbb_vpu_0_sel = {
@@ -1337,8 +1465,8 @@ static struct clk_regmap gxbb_vpu_0_sel = {
 		 * bits 9:10 selects from 4 possible parents:
 		 * fclk_div4, fclk_div3, fclk_div5, fclk_div7,
 		 */
-		.parent_names = gxbb_vpu_parent_names,
-		.num_parents = ARRAY_SIZE(gxbb_vpu_parent_names),
+		.parent_hws = gxbb_vpu_parent_hws,
+		.num_parents = ARRAY_SIZE(gxbb_vpu_parent_hws),
 		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
 };
@@ -1352,7 +1480,7 @@ static struct clk_regmap gxbb_vpu_0_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vpu_0_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "vpu_0_sel" },
+		.parent_hws = (const struct clk_hw *[]) { &gxbb_vpu_0_sel.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -1366,7 +1494,7 @@ static struct clk_regmap gxbb_vpu_0 = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vpu_0",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vpu_0_div" },
+		.parent_hws = (const struct clk_hw *[]) { &gxbb_vpu_0_div.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -1385,8 +1513,8 @@ static struct clk_regmap gxbb_vpu_1_sel = {
 		 * bits 25:26 selects from 4 possible parents:
 		 * fclk_div4, fclk_div3, fclk_div5, fclk_div7,
 		 */
-		.parent_names = gxbb_vpu_parent_names,
-		.num_parents = ARRAY_SIZE(gxbb_vpu_parent_names),
+		.parent_hws = gxbb_vpu_parent_hws,
+		.num_parents = ARRAY_SIZE(gxbb_vpu_parent_hws),
 		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
 };
@@ -1400,7 +1528,7 @@ static struct clk_regmap gxbb_vpu_1_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vpu_1_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "vpu_1_sel" },
+		.parent_hws = (const struct clk_hw *[]) { &gxbb_vpu_1_sel.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -1414,7 +1542,7 @@ static struct clk_regmap gxbb_vpu_1 = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vpu_1",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vpu_1_div" },
+		.parent_hws = (const struct clk_hw *[]) { &gxbb_vpu_1_div.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -1433,7 +1561,10 @@ static struct clk_regmap gxbb_vpu = {
 		 * bit 31 selects from 2 possible parents:
 		 * vpu_0 or vpu_1
 		 */
-		.parent_names = (const char *[]){ "vpu_0", "vpu_1" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_vpu_0.hw,
+			&gxbb_vpu_1.hw
+		},
 		.num_parents = 2,
 		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
@@ -1441,8 +1572,11 @@ static struct clk_regmap gxbb_vpu = {
 
 /* VAPB Clock */
 
-static const char * const gxbb_vapb_parent_names[] = {
-	"fclk_div4", "fclk_div3", "fclk_div5", "fclk_div7"
+static const struct clk_hw *gxbb_vapb_parent_hws[] = {
+	&gxbb_fclk_div4.hw,
+	&gxbb_fclk_div3.hw,
+	&gxbb_fclk_div5.hw,
+	&gxbb_fclk_div7.hw,
 };
 
 static struct clk_regmap gxbb_vapb_0_sel = {
@@ -1458,8 +1592,8 @@ static struct clk_regmap gxbb_vapb_0_sel = {
 		 * bits 9:10 selects from 4 possible parents:
 		 * fclk_div4, fclk_div3, fclk_div5, fclk_div7,
 		 */
-		.parent_names = gxbb_vapb_parent_names,
-		.num_parents = ARRAY_SIZE(gxbb_vapb_parent_names),
+		.parent_hws = gxbb_vapb_parent_hws,
+		.num_parents = ARRAY_SIZE(gxbb_vapb_parent_hws),
 		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
 };
@@ -1473,7 +1607,9 @@ static struct clk_regmap gxbb_vapb_0_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vapb_0_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "vapb_0_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_vapb_0_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -1487,7 +1623,9 @@ static struct clk_regmap gxbb_vapb_0 = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vapb_0",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vapb_0_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_vapb_0_div.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -1506,8 +1644,8 @@ static struct clk_regmap gxbb_vapb_1_sel = {
 		 * bits 25:26 selects from 4 possible parents:
 		 * fclk_div4, fclk_div3, fclk_div5, fclk_div7,
 		 */
-		.parent_names = gxbb_vapb_parent_names,
-		.num_parents = ARRAY_SIZE(gxbb_vapb_parent_names),
+		.parent_hws = gxbb_vapb_parent_hws,
+		.num_parents = ARRAY_SIZE(gxbb_vapb_parent_hws),
 		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
 };
@@ -1521,7 +1659,9 @@ static struct clk_regmap gxbb_vapb_1_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vapb_1_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "vapb_1_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_vapb_1_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -1535,7 +1675,9 @@ static struct clk_regmap gxbb_vapb_1 = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vapb_1",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vapb_1_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_vapb_1_div.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -1554,7 +1696,10 @@ static struct clk_regmap gxbb_vapb_sel = {
 		 * bit 31 selects from 2 possible parents:
 		 * vapb_0 or vapb_1
 		 */
-		.parent_names = (const char *[]){ "vapb_0", "vapb_1" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_vapb_0.hw,
+			&gxbb_vapb_1.hw
+		},
 		.num_parents = 2,
 		.flags = CLK_SET_RATE_NO_REPARENT,
 	},
@@ -1568,7 +1713,7 @@ static struct clk_regmap gxbb_vapb = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vapb",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vapb_sel" },
+		.parent_hws = (const struct clk_hw *[]) { &gxbb_vapb_sel.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -1592,13 +1737,29 @@ static struct clk_regmap gxbb_vid_pll_div = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vid_pll_div",
 		.ops = &meson_vid_pll_div_ro_ops,
-		.parent_names = (const char *[]){ "hdmi_pll" },
+		.parent_data = &(const struct clk_parent_data) {
+			/*
+			 * This clock is declared here for GXL and GXBB SoC, so
+			 * we must use string name to set this parent to avoid
+			 * pointer issue.
+			 */
+			.name = "hdmi_pll",
+			.index = -1,
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_GET_RATE_NOCACHE,
 	},
 };
 
-static const char * const gxbb_vid_pll_parent_names[] = { "vid_pll_div", "hdmi_pll" };
+static const struct clk_parent_data gxbb_vid_pll_parent_data[] = {
+	{ .hw = &gxbb_vid_pll_div.hw },
+	/*
+	 * This clock is declared here for GXL and GXBB SoC, so
+	 * we must use string name to set this parent to avoid
+	 * pointer issue.
+	 */
+	{ .name = "hdmi_pll", .index = -1 },
+};
 
 static struct clk_regmap gxbb_vid_pll_sel = {
 	.data = &(struct clk_regmap_mux_data){
@@ -1613,8 +1774,8 @@ static struct clk_regmap gxbb_vid_pll_sel = {
 		 * bit 18 selects from 2 possible parents:
 		 * vid_pll_div or hdmi_pll
 		 */
-		.parent_names = gxbb_vid_pll_parent_names,
-		.num_parents = ARRAY_SIZE(gxbb_vid_pll_parent_names),
+		.parent_data = gxbb_vid_pll_parent_data,
+		.num_parents = ARRAY_SIZE(gxbb_vid_pll_parent_data),
 		.flags = CLK_SET_RATE_NO_REPARENT | CLK_GET_RATE_NOCACHE,
 	},
 };
@@ -1627,15 +1788,22 @@ static struct clk_regmap gxbb_vid_pll = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vid_pll",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vid_pll_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_vid_pll_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
 };
 
-static const char * const gxbb_vclk_parent_names[] = {
-	"vid_pll", "fclk_div4", "fclk_div3", "fclk_div5", "vid_pll",
-	"fclk_div7", "mpll1",
+static const struct clk_hw *gxbb_vclk_parent_hws[] = {
+	&gxbb_vid_pll.hw,
+	&gxbb_fclk_div4.hw,
+	&gxbb_fclk_div3.hw,
+	&gxbb_fclk_div5.hw,
+	&gxbb_vid_pll.hw,
+	&gxbb_fclk_div7.hw,
+	&gxbb_mpll1.hw,
 };
 
 static struct clk_regmap gxbb_vclk_sel = {
@@ -1652,8 +1820,8 @@ static struct clk_regmap gxbb_vclk_sel = {
 		 * vid_pll, fclk_div4, fclk_div3, fclk_div5,
 		 * vid_pll, fclk_div7, mp1
 		 */
-		.parent_names = gxbb_vclk_parent_names,
-		.num_parents = ARRAY_SIZE(gxbb_vclk_parent_names),
+		.parent_hws = gxbb_vclk_parent_hws,
+		.num_parents = ARRAY_SIZE(gxbb_vclk_parent_hws),
 		.flags = CLK_SET_RATE_NO_REPARENT | CLK_GET_RATE_NOCACHE,
 	},
 };
@@ -1672,8 +1840,8 @@ static struct clk_regmap gxbb_vclk2_sel = {
 		 * vid_pll, fclk_div4, fclk_div3, fclk_div5,
 		 * vid_pll, fclk_div7, mp1
 		 */
-		.parent_names = gxbb_vclk_parent_names,
-		.num_parents = ARRAY_SIZE(gxbb_vclk_parent_names),
+		.parent_hws = gxbb_vclk_parent_hws,
+		.num_parents = ARRAY_SIZE(gxbb_vclk_parent_hws),
 		.flags = CLK_SET_RATE_NO_REPARENT | CLK_GET_RATE_NOCACHE,
 	},
 };
@@ -1686,7 +1854,7 @@ static struct clk_regmap gxbb_vclk_input = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk_input",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk_sel" },
+		.parent_hws = (const struct clk_hw *[]) { &gxbb_vclk_sel.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -1700,7 +1868,7 @@ static struct clk_regmap gxbb_vclk2_input = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk2_input",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk2_sel" },
+		.parent_hws = (const struct clk_hw *[]) { &gxbb_vclk2_sel.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -1715,7 +1883,9 @@ static struct clk_regmap gxbb_vclk_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vclk_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "vclk_input" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_vclk_input.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_GET_RATE_NOCACHE,
 	},
@@ -1730,7 +1900,9 @@ static struct clk_regmap gxbb_vclk2_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vclk2_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "vclk2_input" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_vclk2_input.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_GET_RATE_NOCACHE,
 	},
@@ -1744,7 +1916,7 @@ static struct clk_regmap gxbb_vclk = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk_div" },
+		.parent_hws = (const struct clk_hw *[]) { &gxbb_vclk_div.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -1758,7 +1930,7 @@ static struct clk_regmap gxbb_vclk2 = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk2",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk2_div" },
+		.parent_hws = (const struct clk_hw *[]) { &gxbb_vclk2_div.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -1772,7 +1944,7 @@ static struct clk_regmap gxbb_vclk_div1 = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk_div1",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk" },
+		.parent_hws = (const struct clk_hw *[]) { &gxbb_vclk.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -1786,7 +1958,7 @@ static struct clk_regmap gxbb_vclk_div2_en = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk_div2_en",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk" },
+		.parent_hws = (const struct clk_hw *[]) { &gxbb_vclk.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -1800,7 +1972,7 @@ static struct clk_regmap gxbb_vclk_div4_en = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk_div4_en",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk" },
+		.parent_hws = (const struct clk_hw *[]) { &gxbb_vclk.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -1814,7 +1986,7 @@ static struct clk_regmap gxbb_vclk_div6_en = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk_div6_en",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk" },
+		.parent_hws = (const struct clk_hw *[]) { &gxbb_vclk.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -1828,7 +2000,7 @@ static struct clk_regmap gxbb_vclk_div12_en = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk_div12_en",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk" },
+		.parent_hws = (const struct clk_hw *[]) { &gxbb_vclk.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -1842,7 +2014,7 @@ static struct clk_regmap gxbb_vclk2_div1 = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk2_div1",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk2" },
+		.parent_hws = (const struct clk_hw *[]) { &gxbb_vclk2.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -1856,7 +2028,7 @@ static struct clk_regmap gxbb_vclk2_div2_en = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk2_div2_en",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk2" },
+		.parent_hws = (const struct clk_hw *[]) { &gxbb_vclk2.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -1870,7 +2042,7 @@ static struct clk_regmap gxbb_vclk2_div4_en = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk2_div4_en",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk2" },
+		.parent_hws = (const struct clk_hw *[]) { &gxbb_vclk2.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -1884,7 +2056,7 @@ static struct clk_regmap gxbb_vclk2_div6_en = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk2_div6_en",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk2" },
+		.parent_hws = (const struct clk_hw *[]) { &gxbb_vclk2.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -1898,7 +2070,7 @@ static struct clk_regmap gxbb_vclk2_div12_en = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vclk2_div12_en",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vclk2" },
+		.parent_hws = (const struct clk_hw *[]) { &gxbb_vclk2.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -1910,7 +2082,9 @@ static struct clk_fixed_factor gxbb_vclk_div2 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vclk_div2",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "vclk_div2_en" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_vclk_div2_en.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -1921,7 +2095,9 @@ static struct clk_fixed_factor gxbb_vclk_div4 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vclk_div4",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "vclk_div4_en" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_vclk_div4_en.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -1932,7 +2108,9 @@ static struct clk_fixed_factor gxbb_vclk_div6 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vclk_div6",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "vclk_div6_en" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_vclk_div6_en.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -1943,7 +2121,9 @@ static struct clk_fixed_factor gxbb_vclk_div12 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vclk_div12",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "vclk_div12_en" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_vclk_div12_en.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -1954,7 +2134,9 @@ static struct clk_fixed_factor gxbb_vclk2_div2 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vclk2_div2",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "vclk2_div2_en" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_vclk2_div2_en.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -1965,7 +2147,9 @@ static struct clk_fixed_factor gxbb_vclk2_div4 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vclk2_div4",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "vclk2_div4_en" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_vclk2_div4_en.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -1976,7 +2160,9 @@ static struct clk_fixed_factor gxbb_vclk2_div6 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vclk2_div6",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "vclk2_div6_en" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_vclk2_div6_en.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -1987,16 +2173,25 @@ static struct clk_fixed_factor gxbb_vclk2_div12 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vclk2_div12",
 		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "vclk2_div12_en" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_vclk2_div12_en.hw
+		},
 		.num_parents = 1,
 	},
 };
 
 static u32 mux_table_cts_sel[] = { 0, 1, 2, 3, 4, 8, 9, 10, 11, 12 };
-static const char * const gxbb_cts_parent_names[] = {
-	"vclk_div1", "vclk_div2", "vclk_div4", "vclk_div6",
-	"vclk_div12", "vclk2_div1", "vclk2_div2", "vclk2_div4",
-	"vclk2_div6", "vclk2_div12"
+static const struct clk_hw *gxbb_cts_parent_hws[] = {
+	&gxbb_vclk_div1.hw,
+	&gxbb_vclk_div2.hw,
+	&gxbb_vclk_div4.hw,
+	&gxbb_vclk_div6.hw,
+	&gxbb_vclk_div12.hw,
+	&gxbb_vclk2_div1.hw,
+	&gxbb_vclk2_div2.hw,
+	&gxbb_vclk2_div4.hw,
+	&gxbb_vclk2_div6.hw,
+	&gxbb_vclk2_div12.hw,
 };
 
 static struct clk_regmap gxbb_cts_enci_sel = {
@@ -2009,8 +2204,8 @@ static struct clk_regmap gxbb_cts_enci_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cts_enci_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = gxbb_cts_parent_names,
-		.num_parents = ARRAY_SIZE(gxbb_cts_parent_names),
+		.parent_hws = gxbb_cts_parent_hws,
+		.num_parents = ARRAY_SIZE(gxbb_cts_parent_hws),
 		.flags = CLK_SET_RATE_NO_REPARENT | CLK_GET_RATE_NOCACHE,
 	},
 };
@@ -2025,8 +2220,8 @@ static struct clk_regmap gxbb_cts_encp_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cts_encp_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = gxbb_cts_parent_names,
-		.num_parents = ARRAY_SIZE(gxbb_cts_parent_names),
+		.parent_hws = gxbb_cts_parent_hws,
+		.num_parents = ARRAY_SIZE(gxbb_cts_parent_hws),
 		.flags = CLK_SET_RATE_NO_REPARENT | CLK_GET_RATE_NOCACHE,
 	},
 };
@@ -2041,18 +2236,25 @@ static struct clk_regmap gxbb_cts_vdac_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cts_vdac_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = gxbb_cts_parent_names,
-		.num_parents = ARRAY_SIZE(gxbb_cts_parent_names),
+		.parent_hws = gxbb_cts_parent_hws,
+		.num_parents = ARRAY_SIZE(gxbb_cts_parent_hws),
 		.flags = CLK_SET_RATE_NO_REPARENT | CLK_GET_RATE_NOCACHE,
 	},
 };
 
 /* TOFIX: add support for cts_tcon */
 static u32 mux_table_hdmi_tx_sel[] = { 0, 1, 2, 3, 4, 8, 9, 10, 11, 12 };
-static const char * const gxbb_cts_hdmi_tx_parent_names[] = {
-	"vclk_div1", "vclk_div2", "vclk_div4", "vclk_div6",
-	"vclk_div12", "vclk2_div1", "vclk2_div2", "vclk2_div4",
-	"vclk2_div6", "vclk2_div12"
+static const struct clk_hw *gxbb_cts_hdmi_tx_parent_hws[] = {
+	&gxbb_vclk_div1.hw,
+	&gxbb_vclk_div2.hw,
+	&gxbb_vclk_div4.hw,
+	&gxbb_vclk_div6.hw,
+	&gxbb_vclk_div12.hw,
+	&gxbb_vclk2_div1.hw,
+	&gxbb_vclk2_div2.hw,
+	&gxbb_vclk2_div4.hw,
+	&gxbb_vclk2_div6.hw,
+	&gxbb_vclk2_div12.hw,
 };
 
 static struct clk_regmap gxbb_hdmi_tx_sel = {
@@ -2071,8 +2273,8 @@ static struct clk_regmap gxbb_hdmi_tx_sel = {
 		 * vclk2_div1, vclk2_div2, vclk2_div4, vclk2_div6, vclk2_div12,
 		 * cts_tcon
 		 */
-		.parent_names = gxbb_cts_hdmi_tx_parent_names,
-		.num_parents = ARRAY_SIZE(gxbb_cts_hdmi_tx_parent_names),
+		.parent_hws = gxbb_cts_hdmi_tx_parent_hws,
+		.num_parents = ARRAY_SIZE(gxbb_cts_hdmi_tx_parent_hws),
 		.flags = CLK_SET_RATE_NO_REPARENT | CLK_GET_RATE_NOCACHE,
 	},
 };
@@ -2085,7 +2287,9 @@ static struct clk_regmap gxbb_cts_enci = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "cts_enci",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "cts_enci_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_cts_enci_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2099,7 +2303,9 @@ static struct clk_regmap gxbb_cts_encp = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "cts_encp",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "cts_encp_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_cts_encp_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2113,7 +2319,9 @@ static struct clk_regmap gxbb_cts_vdac = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "cts_vdac",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "cts_vdac_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_cts_vdac_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2127,7 +2335,9 @@ static struct clk_regmap gxbb_hdmi_tx = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "hdmi_tx",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "hdmi_tx_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_hdmi_tx_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2135,8 +2345,11 @@ static struct clk_regmap gxbb_hdmi_tx = {
 
 /* HDMI Clocks */
 
-static const char * const gxbb_hdmi_parent_names[] = {
-	IN_PREFIX "xtal", "fclk_div4", "fclk_div3", "fclk_div5"
+static const struct clk_parent_data gxbb_hdmi_parent_data[] = {
+	{ .fw_name = "xtal", },
+	{ .hw = &gxbb_fclk_div4.hw },
+	{ .hw = &gxbb_fclk_div3.hw },
+	{ .hw = &gxbb_fclk_div5.hw },
 };
 
 static struct clk_regmap gxbb_hdmi_sel = {
@@ -2149,8 +2362,8 @@ static struct clk_regmap gxbb_hdmi_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "hdmi_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = gxbb_hdmi_parent_names,
-		.num_parents = ARRAY_SIZE(gxbb_hdmi_parent_names),
+		.parent_data = gxbb_hdmi_parent_data,
+		.num_parents = ARRAY_SIZE(gxbb_hdmi_parent_data),
 		.flags = CLK_SET_RATE_NO_REPARENT | CLK_GET_RATE_NOCACHE,
 	},
 };
@@ -2164,7 +2377,7 @@ static struct clk_regmap gxbb_hdmi_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "hdmi_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "hdmi_sel" },
+		.parent_hws = (const struct clk_hw *[]) { &gxbb_hdmi_sel.hw },
 		.num_parents = 1,
 		.flags = CLK_GET_RATE_NOCACHE,
 	},
@@ -2178,7 +2391,7 @@ static struct clk_regmap gxbb_hdmi = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "hdmi",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "hdmi_div" },
+		.parent_hws = (const struct clk_hw *[]) { &gxbb_hdmi_div.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
 	},
@@ -2186,8 +2399,11 @@ static struct clk_regmap gxbb_hdmi = {
 
 /* VDEC clocks */
 
-static const char * const gxbb_vdec_parent_names[] = {
-	"fclk_div4", "fclk_div3", "fclk_div5", "fclk_div7"
+static const struct clk_hw *gxbb_vdec_parent_hws[] = {
+	&gxbb_fclk_div4.hw,
+	&gxbb_fclk_div3.hw,
+	&gxbb_fclk_div5.hw,
+	&gxbb_fclk_div7.hw,
 };
 
 static struct clk_regmap gxbb_vdec_1_sel = {
@@ -2200,8 +2416,8 @@ static struct clk_regmap gxbb_vdec_1_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vdec_1_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = gxbb_vdec_parent_names,
-		.num_parents = ARRAY_SIZE(gxbb_vdec_parent_names),
+		.parent_hws = gxbb_vdec_parent_hws,
+		.num_parents = ARRAY_SIZE(gxbb_vdec_parent_hws),
 		.flags = CLK_SET_RATE_PARENT,
 	},
 };
@@ -2216,7 +2432,9 @@ static struct clk_regmap gxbb_vdec_1_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vdec_1_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "vdec_1_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_vdec_1_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -2230,7 +2448,9 @@ static struct clk_regmap gxbb_vdec_1 = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vdec_1",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vdec_1_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_vdec_1_div.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -2246,8 +2466,8 @@ static struct clk_regmap gxbb_vdec_hevc_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vdec_hevc_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = gxbb_vdec_parent_names,
-		.num_parents = ARRAY_SIZE(gxbb_vdec_parent_names),
+		.parent_hws = gxbb_vdec_parent_hws,
+		.num_parents = ARRAY_SIZE(gxbb_vdec_parent_hws),
 		.flags = CLK_SET_RATE_PARENT,
 	},
 };
@@ -2262,7 +2482,9 @@ static struct clk_regmap gxbb_vdec_hevc_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "vdec_hevc_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "vdec_hevc_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_vdec_hevc_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -2276,7 +2498,9 @@ static struct clk_regmap gxbb_vdec_hevc = {
 	.hw.init = &(struct clk_init_data) {
 		.name = "vdec_hevc",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vdec_hevc_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_vdec_hevc_div.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -2284,9 +2508,18 @@ static struct clk_regmap gxbb_vdec_hevc = {
 
 static u32 mux_table_gen_clk[]	= { 0, 4, 5, 6, 7, 8,
 				    9, 10, 11, 13, 14, };
-static const char * const gen_clk_parent_names[] = {
-	IN_PREFIX "xtal", "vdec_1", "vdec_hevc", "mpll0", "mpll1", "mpll2",
-	"fclk_div4", "fclk_div3", "fclk_div5", "fclk_div7", "gp0_pll",
+static const struct clk_parent_data gen_clk_parent_data[] = {
+	{ .fw_name = "xtal", },
+	{ .hw = &gxbb_vdec_1.hw },
+	{ .hw = &gxbb_vdec_hevc.hw },
+	{ .hw = &gxbb_mpll0.hw },
+	{ .hw = &gxbb_mpll1.hw },
+	{ .hw = &gxbb_mpll2.hw },
+	{ .hw = &gxbb_fclk_div4.hw },
+	{ .hw = &gxbb_fclk_div3.hw },
+	{ .hw = &gxbb_fclk_div5.hw },
+	{ .hw = &gxbb_fclk_div7.hw },
+	{ .hw = &gxbb_gp0_pll.hw },
 };
 
 static struct clk_regmap gxbb_gen_clk_sel = {
@@ -2305,8 +2538,8 @@ static struct clk_regmap gxbb_gen_clk_sel = {
 		 * vid_pll, vid2_pll (hevc), mpll0, mpll1, mpll2, fdiv4,
 		 * fdiv3, fdiv5, [cts_msr_clk], fdiv7, gp0_pll
 		 */
-		.parent_names = gen_clk_parent_names,
-		.num_parents = ARRAY_SIZE(gen_clk_parent_names),
+		.parent_data = gen_clk_parent_data,
+		.num_parents = ARRAY_SIZE(gen_clk_parent_data),
 	},
 };
 
@@ -2319,7 +2552,9 @@ static struct clk_regmap gxbb_gen_clk_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "gen_clk_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "gen_clk_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_gen_clk_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -2333,7 +2568,9 @@ static struct clk_regmap gxbb_gen_clk = {
 	.hw.init = &(struct clk_init_data){
 		.name = "gen_clk",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "gen_clk_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&gxbb_gen_clk_div.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
