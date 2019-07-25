Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F269D7547D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 18:44:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7Dj+4eL7DcnW+T8JVCNgiDMRIKMmye7fc4qnG4WaGF4=; b=pNvUYhBgfnSvA+cmFK0oMOLf8g
	3ncNdMcDuNNJpCB6EL5lE0QxcobvSyBXSfUajncrtJgWKLoDW1GxAxWN/lT2awtmzRuZmC/NrqKWh
	7o1rTG9stPTMsm0kWkl9q9wwvse4H91I7V6D1/xBIMYdet5MgIql/3eeKszYMmxwTUxij3HES3awE
	DgZcGFvpmIj2C9FMxyoSZPp3SFHE4CKSiiIGOL1F4aTr+iaAiqq3Gjl66t0Sfi5mMaU0mEdqukQFQ
	DPY27LAKvdXoUgj0ww40YTEpxhKfz9qI5lihH9QGrgnJ/yUGg7N2Yn/jFmaG0su054CxlRFLL5iRX
	nR7a9IAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqgrL-0005Jl-GW; Thu, 25 Jul 2019 16:44:51 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqgpT-0004Bx-3C
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 16:42:58 +0000
Received: by mail-wr1-x441.google.com with SMTP id f9so51455135wre.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 09:42:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cIceYeZmXLnDB8KmyjeQxrFIl+tdDqzy/AgzjLz1uyc=;
 b=nvW5oTHj4gQvGHo7lcJTswmWZ60wi/xYBHu7DlVCK3SgRT9tDHv3cwNDKYa1vMRMJ2
 wjRTerLSX8BtgER/mmzHTwkN99x+hXleNLtcmj5lahZqo+eJPKQ/JUXizGP8keAVr55f
 IkhsJjfKA85qwvXy8beI/7YsfkpurbaHSJBglWN3ykH4v4khuYs897QILrSOJVkugP3x
 oObQA3uwYz+KXwjghszb9SuyMOJJGoIDqiXjPOdv4KLMS55aA0LiZfughhBuEdRzB1lc
 1V9TfEMwzVsamOPwSovxsw3dfs2wS6If5Nwj0IdhlDe2O/u9+FJZsMHAjVSWdv1kR+hk
 waiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cIceYeZmXLnDB8KmyjeQxrFIl+tdDqzy/AgzjLz1uyc=;
 b=Ovcxg1cixy6t1EGiaHLNxCvVb+371hwNWUFgxFYpBkIn/UvZVzFlNc5b8gyDEuja37
 6LTNPRkeJ69DRdVT+f97Z8f7DZmLNTpIfUEh2ba/fSKvBf6KlZX5oCfuvHrB8IV+kbMF
 VvTUNcNvf26h/npIu/r74/ICA6CW7/gNkuJlnQDCBidt66dL/abaAqhLU1hfbW6R0mkd
 EVXNAWY30lLVs7ZZWXUI1dGBhewQ0DHGdxRXk3eoDQ8NBoVPM8eoaJnqOuIbvS2/b26O
 AzAm3nvSIr7Pzn9nxn6fCJ6pgZfPe0V7/6/koOlrAWc6bzEJ5NAO2rF98EJPApCF1tj6
 XTdw==
X-Gm-Message-State: APjAAAUGzfwAIs6zr7oB+kyJzqYPUVxQzRhpKxe9TNq9MgNBtEtLQgZO
 96BS37Wqnz7tSBsT7mO0yrjiRA==
X-Google-Smtp-Source: APXvYqyQZGlsKFWD/sDLe1hv4n9haHqDBHhVsDzbHoc0AZ36ZoPvsaEYl81aAQ8BA1KiwCsC3cR0RQ==
X-Received: by 2002:a5d:6a90:: with SMTP id s16mr41077814wru.288.1564072973815; 
 Thu, 25 Jul 2019 09:42:53 -0700 (PDT)
Received: from pop-os.baylibre.local ([2a01:e35:8ad2:2cb0:2dbb:fac9:5ec0:e3ef])
 by smtp.googlemail.com with ESMTPSA id 91sm103031727wrp.3.2019.07.25.09.42.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 09:42:53 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
To: jbrunet@baylibre.com
Subject: [PATCH v2 1/8] clk: meson: g12a: move clock declaration to dependency
 order
Date: Thu, 25 Jul 2019 18:42:31 +0200
Message-Id: <20190725164238.27991-2-amergnat@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190725164238.27991-1-amergnat@baylibre.com>
References: <20190725164238.27991-1-amergnat@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_094255_252161_6518658F 
X-CRM114-Status: GOOD (  17.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
relation between the clocks.

In order to migrate to clk_hw pointers, it is easier if the parent is
declared before being used. This patch just move the declaration to
facilitate the review of migration to the parent description method.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 drivers/clk/meson/g12a.c | 270 +++++++++++++++++++--------------------
 1 file changed, 135 insertions(+), 135 deletions(-)

diff --git a/drivers/clk/meson/g12a.c b/drivers/clk/meson/g12a.c
index 7bc5566b66f7..cbd56b2e05d0 100644
--- a/drivers/clk/meson/g12a.c
+++ b/drivers/clk/meson/g12a.c
@@ -257,6 +257,64 @@ static struct clk_fixed_factor g12b_sys1_pll_div16 = {
 	},
 };
 
+static struct clk_fixed_factor g12a_fclk_div2_div = {
+	.mult = 1,
+	.div = 2,
+	.hw.init = &(struct clk_init_data){
+		.name = "fclk_div2_div",
+		.ops = &clk_fixed_factor_ops,
+		.parent_names = (const char *[]){ "fixed_pll" },
+		.num_parents = 1,
+	},
+};
+
+static struct clk_regmap g12a_fclk_div2 = {
+	.data = &(struct clk_regmap_gate_data){
+		.offset = HHI_FIX_PLL_CNTL1,
+		.bit_idx = 24,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "fclk_div2",
+		.ops = &clk_regmap_gate_ops,
+		.parent_names = (const char *[]){ "fclk_div2_div" },
+		.num_parents = 1,
+	},
+};
+
+static struct clk_fixed_factor g12a_fclk_div3_div = {
+	.mult = 1,
+	.div = 3,
+	.hw.init = &(struct clk_init_data){
+		.name = "fclk_div3_div",
+		.ops = &clk_fixed_factor_ops,
+		.parent_names = (const char *[]){ "fixed_pll" },
+		.num_parents = 1,
+	},
+};
+
+static struct clk_regmap g12a_fclk_div3 = {
+	.data = &(struct clk_regmap_gate_data){
+		.offset = HHI_FIX_PLL_CNTL1,
+		.bit_idx = 20,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "fclk_div3",
+		.ops = &clk_regmap_gate_ops,
+		.parent_names = (const char *[]){ "fclk_div3_div" },
+		.num_parents = 1,
+		/*
+		 * This clock is used by the resident firmware and is required
+		 * by the platform to operate correctly.
+		 * Until the following condition are met, we need this clock to
+		 * be marked as critical:
+		 * a) Mark the clock used by a firmware resource, if possible
+		 * b) CCF has a clock hand-off mechanism to make the sure the
+		 *    clock stays on until the proper driver comes along
+		 */
+		.flags = CLK_IS_CRITICAL,
+	},
+};
+
 /* Datasheet names this field as "premux0" */
 static struct clk_regmap g12a_cpu_clk_premux0 = {
 	.data = &(struct clk_regmap_mux_data){
@@ -274,6 +332,23 @@ static struct clk_regmap g12a_cpu_clk_premux0 = {
 	},
 };
 
+/* Datasheet names this field as "premux1" */
+static struct clk_regmap g12a_cpu_clk_premux1 = {
+	.data = &(struct clk_regmap_mux_data){
+		.offset = HHI_SYS_CPU_CLK_CNTL0,
+		.mask = 0x3,
+		.shift = 16,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "cpu_clk_dyn1_sel",
+		.ops = &clk_regmap_mux_ro_ops,
+		.parent_names = (const char *[]){ IN_PREFIX "xtal",
+						  "fclk_div2",
+						  "fclk_div3" },
+		.num_parents = 3,
+	},
+};
+
 /* Datasheet names this field as "mux0_divn_tcnt" */
 static struct clk_regmap g12a_cpu_clk_mux0_div = {
 	.data = &(struct clk_regmap_div_data){
@@ -305,23 +380,6 @@ static struct clk_regmap g12a_cpu_clk_postmux0 = {
 	},
 };
 
-/* Datasheet names this field as "premux1" */
-static struct clk_regmap g12a_cpu_clk_premux1 = {
-	.data = &(struct clk_regmap_mux_data){
-		.offset = HHI_SYS_CPU_CLK_CNTL0,
-		.mask = 0x3,
-		.shift = 16,
-	},
-	.hw.init = &(struct clk_init_data){
-		.name = "cpu_clk_dyn1_sel",
-		.ops = &clk_regmap_mux_ro_ops,
-		.parent_names = (const char *[]){ IN_PREFIX "xtal",
-						  "fclk_div2",
-						  "fclk_div3" },
-		.num_parents = 3,
-	},
-};
-
 /* Datasheet names this field as "Mux1_divn_tcnt" */
 static struct clk_regmap g12a_cpu_clk_mux1_div = {
 	.data = &(struct clk_regmap_div_data){
@@ -1305,64 +1363,6 @@ static struct clk_regmap g12a_hdmi_pll = {
 	},
 };
 
-static struct clk_fixed_factor g12a_fclk_div2_div = {
-	.mult = 1,
-	.div = 2,
-	.hw.init = &(struct clk_init_data){
-		.name = "fclk_div2_div",
-		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "fixed_pll" },
-		.num_parents = 1,
-	},
-};
-
-static struct clk_regmap g12a_fclk_div2 = {
-	.data = &(struct clk_regmap_gate_data){
-		.offset = HHI_FIX_PLL_CNTL1,
-		.bit_idx = 24,
-	},
-	.hw.init = &(struct clk_init_data){
-		.name = "fclk_div2",
-		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "fclk_div2_div" },
-		.num_parents = 1,
-	},
-};
-
-static struct clk_fixed_factor g12a_fclk_div3_div = {
-	.mult = 1,
-	.div = 3,
-	.hw.init = &(struct clk_init_data){
-		.name = "fclk_div3_div",
-		.ops = &clk_fixed_factor_ops,
-		.parent_names = (const char *[]){ "fixed_pll" },
-		.num_parents = 1,
-	},
-};
-
-static struct clk_regmap g12a_fclk_div3 = {
-	.data = &(struct clk_regmap_gate_data){
-		.offset = HHI_FIX_PLL_CNTL1,
-		.bit_idx = 20,
-	},
-	.hw.init = &(struct clk_init_data){
-		.name = "fclk_div3",
-		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "fclk_div3_div" },
-		.num_parents = 1,
-		/*
-		 * This clock is used by the resident firmware and is required
-		 * by the platform to operate correctly.
-		 * Until the following condition are met, we need this clock to
-		 * be marked as critical:
-		 * a) Mark the clock used by a firmware resource, if possible
-		 * b) CCF has a clock hand-off mechanism to make the sure the
-		 *    clock stays on until the proper driver comes along
-		 */
-		.flags = CLK_IS_CRITICAL,
-	},
-};
-
 static struct clk_fixed_factor g12a_fclk_div4_div = {
 	.mult = 1,
 	.div = 4,
@@ -1900,6 +1900,66 @@ static struct clk_regmap g12a_sd_emmc_c_clk0 = {
 	},
 };
 
+/* Video Clocks */
+
+static struct clk_regmap g12a_vid_pll_div = {
+	.data = &(struct meson_vid_pll_div_data){
+		.val = {
+			.reg_off = HHI_VID_PLL_CLK_DIV,
+			.shift   = 0,
+			.width   = 15,
+		},
+		.sel = {
+			.reg_off = HHI_VID_PLL_CLK_DIV,
+			.shift   = 16,
+			.width   = 2,
+		},
+	},
+	.hw.init = &(struct clk_init_data) {
+		.name = "vid_pll_div",
+		.ops = &meson_vid_pll_div_ro_ops,
+		.parent_names = (const char *[]){ "hdmi_pll" },
+		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT | CLK_GET_RATE_NOCACHE,
+	},
+};
+
+static const char * const g12a_vid_pll_parent_names[] = { "vid_pll_div",
+							  "hdmi_pll" };
+
+static struct clk_regmap g12a_vid_pll_sel = {
+	.data = &(struct clk_regmap_mux_data){
+		.offset = HHI_VID_PLL_CLK_DIV,
+		.mask = 0x1,
+		.shift = 18,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "vid_pll_sel",
+		.ops = &clk_regmap_mux_ops,
+		/*
+		 * bit 18 selects from 2 possible parents:
+		 * vid_pll_div or hdmi_pll
+		 */
+		.parent_names = g12a_vid_pll_parent_names,
+		.num_parents = ARRAY_SIZE(g12a_vid_pll_parent_names),
+		.flags = CLK_SET_RATE_NO_REPARENT | CLK_GET_RATE_NOCACHE,
+	},
+};
+
+static struct clk_regmap g12a_vid_pll = {
+	.data = &(struct clk_regmap_gate_data){
+		.offset = HHI_VID_PLL_CLK_DIV,
+		.bit_idx = 19,
+	},
+	.hw.init = &(struct clk_init_data) {
+		.name = "vid_pll",
+		.ops = &clk_regmap_gate_ops,
+		.parent_names = (const char *[]){ "vid_pll_sel" },
+		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
+	},
+};
+
 /* VPU Clock */
 
 static const char * const g12a_vpu_parent_names[] = {
@@ -2287,66 +2347,6 @@ static struct clk_regmap g12a_vapb = {
 	},
 };
 
-/* Video Clocks */
-
-static struct clk_regmap g12a_vid_pll_div = {
-	.data = &(struct meson_vid_pll_div_data){
-		.val = {
-			.reg_off = HHI_VID_PLL_CLK_DIV,
-			.shift   = 0,
-			.width   = 15,
-		},
-		.sel = {
-			.reg_off = HHI_VID_PLL_CLK_DIV,
-			.shift   = 16,
-			.width   = 2,
-		},
-	},
-	.hw.init = &(struct clk_init_data) {
-		.name = "vid_pll_div",
-		.ops = &meson_vid_pll_div_ro_ops,
-		.parent_names = (const char *[]){ "hdmi_pll" },
-		.num_parents = 1,
-		.flags = CLK_SET_RATE_PARENT | CLK_GET_RATE_NOCACHE,
-	},
-};
-
-static const char * const g12a_vid_pll_parent_names[] = { "vid_pll_div",
-							  "hdmi_pll" };
-
-static struct clk_regmap g12a_vid_pll_sel = {
-	.data = &(struct clk_regmap_mux_data){
-		.offset = HHI_VID_PLL_CLK_DIV,
-		.mask = 0x1,
-		.shift = 18,
-	},
-	.hw.init = &(struct clk_init_data){
-		.name = "vid_pll_sel",
-		.ops = &clk_regmap_mux_ops,
-		/*
-		 * bit 18 selects from 2 possible parents:
-		 * vid_pll_div or hdmi_pll
-		 */
-		.parent_names = g12a_vid_pll_parent_names,
-		.num_parents = ARRAY_SIZE(g12a_vid_pll_parent_names),
-		.flags = CLK_SET_RATE_NO_REPARENT | CLK_GET_RATE_NOCACHE,
-	},
-};
-
-static struct clk_regmap g12a_vid_pll = {
-	.data = &(struct clk_regmap_gate_data){
-		.offset = HHI_VID_PLL_CLK_DIV,
-		.bit_idx = 19,
-	},
-	.hw.init = &(struct clk_init_data) {
-		.name = "vid_pll",
-		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "vid_pll_sel" },
-		.num_parents = 1,
-		.flags = CLK_SET_RATE_PARENT | CLK_IGNORE_UNUSED,
-	},
-};
-
 static const char * const g12a_vclk_parent_names[] = {
 	"vid_pll", "gp0_pll", "hifi_pll", "mpll1", "fclk_div3", "fclk_div4",
 	"fclk_div5", "fclk_div7"
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
