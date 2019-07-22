Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A55A6FD36
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 11:56:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7Dj+4eL7DcnW+T8JVCNgiDMRIKMmye7fc4qnG4WaGF4=; b=u0uj3HqiWTIfOVTR/FsRYf2Wj8
	CHalS9mqaRa7DOafdRdx9eTf/wU1Fcy4Xog8GO5rntJ1dRQgbXzOclFDQSoZbmtNtdwq1awUjkbUB
	UyYAN7tQssD8YuHf9N3r9NxBZMo7mRFdkUvFDAZoy0Eln2CDXw3CDGlZYubvYn9eAwtGFL6kZrLK7
	FIg7QvsIDSgIr+tP6UvG09juSZ4iqhqlNfDXZm6uYEMWRL7Wl9F+9nQ7GtJSrgTbWblHvcf1YxSfc
	bler08yBFhhWvKOWqz95Dlwy/drBgLrGlsOwgoTejssUS0fdOAYEwuxjrhp6vU59YQx0e2fYKGp1p
	Xq6Ps0cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpV2u-0001Pf-VB; Mon, 22 Jul 2019 09:55:53 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpV1a-00084b-GP
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 09:54:37 +0000
Received: by mail-wr1-x444.google.com with SMTP id 31so38762918wrm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 02:54:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cIceYeZmXLnDB8KmyjeQxrFIl+tdDqzy/AgzjLz1uyc=;
 b=09eZ7CUQJWjEDPknM+glm7nGARL3191dfdnzDoDTIcXUf2VN/coQPKSBZPFyz9NNfC
 GEpjW3GMEewKb1ip9yr6C+f0EGNH+oJMtSnZh4o4fmfolLpJYq0qj5qoRXtmoLrSMamp
 nUc+JDRBop0pxkonQ1UlKoFZoohi6DPwc8SiO9p5MW2Qs9Fyk68m5bmzKtfpJdJe+5sx
 E1SspGW/gU3dRoQRjzUmh6F7t40J6L8GQph5JtuYVKFiYXGuDpGmx/sRuMOnRlALG4rS
 kWCmtJw73zCURV1MhJEG/rSXxW8fgPTIc1eu0Uogi/W6QdiGka/jpW2NiCDfN9FqAR2+
 YRUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cIceYeZmXLnDB8KmyjeQxrFIl+tdDqzy/AgzjLz1uyc=;
 b=n/B4gwS28OecYz2ZRf0mSs/or0CyeXeRnDyFnTJ/YD3PQUFuMez4zHVbM9l6c7Muaq
 JeTvEavkccIeKAOxpUIdrNlqg8h6kgyi2eo3Lf8wqQe64l4LMt7O9jAzo/Q5H858mA68
 esu+EvHD+/RkwBo+B1cRB3bf4gZPy2ThPgxG/6o4U09E7jw5TL20Uj1Z11rMCb54ZVnq
 cEs/VLHHlyuUNbg1t/U0nNjkCyNEQRnzvwC1GKQ59i32xl+CqTuOM2t5CRDUeGIQk5tN
 dxuEn6QanmMOSyCBQIbG/TUqbAXONjYZRqh57gboLPFtpiJ8tlKIXeUylErH856F/eu4
 Q7yQ==
X-Gm-Message-State: APjAAAUSpU4tcvZA3vv0dRaEJCdZm1bREmlqpFuYPpoG0gczqyospHpD
 qI2z9SWJx1arsfTiTcMTrpwXSQ==
X-Google-Smtp-Source: APXvYqzLxOM30MoA/Cs6XJMrso0FW9Y4DTwH7k8jtslzDTkT8KdRK3RB5BI+8Zi1/XhsuvNPDS2TMA==
X-Received: by 2002:a5d:4090:: with SMTP id o16mr22577752wrp.292.1563789269259; 
 Mon, 22 Jul 2019 02:54:29 -0700 (PDT)
Received: from pop-os.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id 91sm83158469wrp.3.2019.07.22.02.54.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 02:54:28 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
To: jbrunet@baylibre.com
Subject: [PATCH 1/8] clk: meson: g12a: move clock declaration to dependency
 order
Date: Mon, 22 Jul 2019 11:54:18 +0200
Message-Id: <20190722095425.14193-2-amergnat@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190722095425.14193-1-amergnat@baylibre.com>
References: <20190722095425.14193-1-amergnat@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_025432_061684_54831B1F 
X-CRM114-Status: GOOD (  17.25  )
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
