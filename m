Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2770499678
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 16:26:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RMRO6KwotU1Wev3PlZKIhYsNl8cHJAzLE8Tjr9z9KQg=; b=Q+LY71eEZ2A45C
	+AOGX9XaYJqCLRTtHp9sxB+rxB8A7aJJ8n1fTR5r8CK5tAKbAaMl9DkMzgG1XpXbm3G86z2ks1SYR
	/ez0wpgShET0w/IB1NEBHqpsZSbXzH6146/XmOuA9qIoT68s2b2snueqc5cX59PX8X8YLGylGnPxM
	riEQzGRhsaddnYxCbtEwTNUH1ByatgdAvOGGEMib+lQWsTmKL7FcL/2qQldX4Fw+4eZaocLuNqkqU
	i0deKWhlNU6I2KxZ6KeyfF3xnUIvF0f06v41P8Q/PB8+njOhhqe/GsuXXNwk4h3T8osY2Q/46QsZ9
	OvwXnmZ+GB+5i+hH1MIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0o2f-0003R4-GZ; Thu, 22 Aug 2019 14:26:21 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0o1Q-0001TB-Bj
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 14:25:09 +0000
Received: by mail-wm1-x343.google.com with SMTP id k1so5868017wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 07:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=efdSeNH/QBBOZqlQs2XNIRUHwxZMtVjjyApRGkdJu3w=;
 b=ZNGhBY1rfPIoyScoivo8/iASLhNmdke4+25bbKaQ5Obqoz6haM5GsTFFq/FmEOtgCG
 n7Dmm6LledG9iB3szrITx1SKpoQ61ZMDXJclOtrl5iTYHiTvodZ3zoncC1Zk1G/6rraN
 H+WAKUOdCpz9yVQBkoktXVGVhgCw3kSN8j9SKHsjX505yXSG9Wdqp5dq275aoXM0ppoV
 PzyMgI8c94EK1n18VllL64JYQgLMQyJZ8C5Yqb6o7BqQpU9winiLZZaZPo2fHQcXl6Wo
 S4TrmI5ts96Ha5y3ZHyHgyICULmDOqyzgcFESL/dgSNBV0m45Grl7OLIA8UAY+OaR+Oi
 IUMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=efdSeNH/QBBOZqlQs2XNIRUHwxZMtVjjyApRGkdJu3w=;
 b=S9m4Jutv0o+9MZ409pRwe514O7Hnr4E3H7KV1Jz3uXGpoMextXZZgv+AaEGYARfjIO
 fW0NDEsKPNJ6L7JnJhl2a9Krdw0u8OKbQCjCZrpyWfDQ9rH5HJKr0V8QPAvN4M+P8Osk
 qw/RkafT53U1ISL+oe3u/3dpm0/hLDjcmiSUIxdyBZNRV102NtU8rhnBW6CMuy+u1Lz+
 mvglR0rkEOBaOdQT5QYaRKIrjT/6MlVFIGowbIn50gmCbX5/akWfkKxNnjNgAbpFNr8z
 zs872r4mlWcRttYuTZxXcy/lqPTbRNC6rFYsXB9HeV+OTeTmOWGHWQa0gEYRz9ydcYce
 UQsg==
X-Gm-Message-State: APjAAAUmOV5FJbbYK3MceFZLKzprDcnPL1sVDE0A9BqKxC19BrJl+N9X
 noysox64nc/gX4XlTXfVqYETVw==
X-Google-Smtp-Source: APXvYqyFE9Pb25xtedaP9csULi66XXPT7a+xlIV3PDqNu3/EEMfHXywqrTrnUpXDD/8k72i2E/yz1A==
X-Received: by 2002:a7b:cb0f:: with SMTP id u15mr6299552wmj.173.1566483902198; 
 Thu, 22 Aug 2019 07:25:02 -0700 (PDT)
Received: from bender.baylibre.local (176-150-251-154.abo.bbox.fr.
 [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id d17sm25806547wrm.52.2019.08.22.07.25.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Aug 2019 07:25:01 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com,
	jbrunet@baylibre.com
Subject: [PATCH 3/6] clk: meson: g12a: add support for SM1 DynamIQ Shared Unit
 clock
Date: Thu, 22 Aug 2019 16:24:52 +0200
Message-Id: <20190822142455.12506-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190822142455.12506-1-narmstrong@baylibre.com>
References: <20190822142455.12506-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_072504_484662_FE053A4B 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Amlogic SM1 DynamIQ Shared Unit has a dedicated clock tree similar to the
CPU clock tree with a supplementaty mux to select the CPU0 clock instead.

Leave this as read-only since it's set up by the early boot stages.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/clk/meson/g12a.c | 184 +++++++++++++++++++++++++++++++++++++++
 drivers/clk/meson/g12a.h |  16 +++-
 2 files changed, 199 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/meson/g12a.c b/drivers/clk/meson/g12a.c
index 34dfac4b4dc6..e00df17f800a 100644
--- a/drivers/clk/meson/g12a.c
+++ b/drivers/clk/meson/g12a.c
@@ -676,6 +676,172 @@ static struct clk_regmap g12b_cpub_clk = {
 	},
 };
 
+static struct clk_regmap sm1_gp1_pll;
+
+/* Datasheet names this field as "premux0" */
+static struct clk_regmap sm1_dsu_clk_premux0 = {
+	.data = &(struct clk_regmap_mux_data){
+		.offset = HHI_SYS_CPU_CLK_CNTL5,
+		.mask = 0x3,
+		.shift = 0,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "dsu_clk_dyn0_sel",
+		.ops = &clk_regmap_mux_ro_ops,
+		.parent_data = (const struct clk_parent_data []) {
+			{ .fw_name = "xtal", },
+			{ .hw = &g12a_fclk_div2.hw },
+			{ .hw = &g12a_fclk_div3.hw },
+			{ .hw = &sm1_gp1_pll.hw },
+		},
+		.num_parents = 4,
+	},
+};
+
+/* Datasheet names this field as "premux1" */
+static struct clk_regmap sm1_dsu_clk_premux1 = {
+	.data = &(struct clk_regmap_mux_data){
+		.offset = HHI_SYS_CPU_CLK_CNTL5,
+		.mask = 0x3,
+		.shift = 16,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "dsu_clk_dyn1_sel",
+		.ops = &clk_regmap_mux_ro_ops,
+		.parent_data = (const struct clk_parent_data []) {
+			{ .fw_name = "xtal", },
+			{ .hw = &g12a_fclk_div2.hw },
+			{ .hw = &g12a_fclk_div3.hw },
+			{ .hw = &sm1_gp1_pll.hw },
+		},
+		.num_parents = 4,
+	},
+};
+
+/* Datasheet names this field as "Mux0_divn_tcnt" */
+static struct clk_regmap sm1_dsu_clk_mux0_div = {
+	.data = &(struct clk_regmap_div_data){
+		.offset = HHI_SYS_CPU_CLK_CNTL5,
+		.shift = 4,
+		.width = 6,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "dsu_clk_dyn0_div",
+		.ops = &clk_regmap_divider_ro_ops,
+		.parent_hws = (const struct clk_hw *[]) {
+			&sm1_dsu_clk_premux0.hw
+		},
+		.num_parents = 1,
+	},
+};
+
+/* Datasheet names this field as "postmux0" */
+static struct clk_regmap sm1_dsu_clk_postmux0 = {
+	.data = &(struct clk_regmap_mux_data){
+		.offset = HHI_SYS_CPU_CLK_CNTL5,
+		.mask = 0x1,
+		.shift = 2,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "dsu_clk_dyn0",
+		.ops = &clk_regmap_mux_ro_ops,
+		.parent_hws = (const struct clk_hw *[]) {
+			&sm1_dsu_clk_premux0.hw,
+			&sm1_dsu_clk_mux0_div.hw,
+		},
+		.num_parents = 2,
+	},
+};
+
+/* Datasheet names this field as "Mux1_divn_tcnt" */
+static struct clk_regmap sm1_dsu_clk_mux1_div = {
+	.data = &(struct clk_regmap_div_data){
+		.offset = HHI_SYS_CPU_CLK_CNTL5,
+		.shift = 20,
+		.width = 6,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "dsu_clk_dyn1_div",
+		.ops = &clk_regmap_divider_ro_ops,
+		.parent_hws = (const struct clk_hw *[]) {
+			&sm1_dsu_clk_premux1.hw
+		},
+		.num_parents = 1,
+	},
+};
+
+/* Datasheet names this field as "postmux1" */
+static struct clk_regmap sm1_dsu_clk_postmux1 = {
+	.data = &(struct clk_regmap_mux_data){
+		.offset = HHI_SYS_CPU_CLK_CNTL5,
+		.mask = 0x1,
+		.shift = 18,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "dsu_clk_dyn1",
+		.ops = &clk_regmap_mux_ro_ops,
+		.parent_hws = (const struct clk_hw *[]) {
+			&sm1_dsu_clk_premux1.hw,
+			&sm1_dsu_clk_mux1_div.hw,
+		},
+		.num_parents = 2,
+	},
+};
+
+/* Datasheet names this field as "Final_dyn_mux_sel" */
+static struct clk_regmap sm1_dsu_clk_dyn = {
+	.data = &(struct clk_regmap_mux_data){
+		.offset = HHI_SYS_CPU_CLK_CNTL5,
+		.mask = 0x1,
+		.shift = 10,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "dsu_clk_dyn",
+		.ops = &clk_regmap_mux_ro_ops,
+		.parent_hws = (const struct clk_hw *[]) {
+			&sm1_dsu_clk_postmux0.hw,
+			&sm1_dsu_clk_postmux1.hw,
+		},
+		.num_parents = 2,
+	},
+};
+
+/* Datasheet names this field as "Final_mux_sel" */
+static struct clk_regmap sm1_dsu_final_clk = {
+	.data = &(struct clk_regmap_mux_data){
+		.offset = HHI_SYS_CPU_CLK_CNTL5,
+		.mask = 0x1,
+		.shift = 11,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "dsu_clk_final",
+		.ops = &clk_regmap_mux_ro_ops,
+		.parent_hws = (const struct clk_hw *[]) {
+			&sm1_dsu_clk_dyn.hw,
+			&g12a_sys_pll.hw,
+		},
+		.num_parents = 2,
+	},
+};
+
+/* Datasheet names this field as "Cpu_clk_sync_mux_sel" bit 4 */
+static struct clk_regmap sm1_dsu_clk = {
+	.data = &(struct clk_regmap_mux_data){
+		.offset = HHI_SYS_CPU_CLK_CNTL6,
+		.mask = 0x1,
+		.shift = 27,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "dsu_clk",
+		.ops = &clk_regmap_mux_ro_ops,
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_cpu_clk.hw,
+			&sm1_dsu_final_clk.hw,
+		},
+		.num_parents = 2,
+	},
+};
+
 static int g12a_cpu_clk_mux_notifier_cb(struct notifier_block *nb,
 					unsigned long event, void *data)
 {
@@ -4401,6 +4567,15 @@ static struct clk_hw_onecell_data sm1_hw_onecell_data = {
 		[CLKID_TS]			= &g12a_ts.hw,
 		[CLKID_GP1_PLL_DCO]		= &sm1_gp1_pll_dco.hw,
 		[CLKID_GP1_PLL]			= &sm1_gp1_pll.hw,
+		[CLKID_DSU_CLK_DYN0_SEL]	= &sm1_dsu_clk_premux0.hw,
+		[CLKID_DSU_CLK_DYN0_DIV]	= &sm1_dsu_clk_premux1.hw,
+		[CLKID_DSU_CLK_DYN0]		= &sm1_dsu_clk_mux0_div.hw,
+		[CLKID_DSU_CLK_DYN1_SEL]	= &sm1_dsu_clk_postmux0.hw,
+		[CLKID_DSU_CLK_DYN1_DIV]	= &sm1_dsu_clk_mux1_div.hw,
+		[CLKID_DSU_CLK_DYN1]		= &sm1_dsu_clk_postmux1.hw,
+		[CLKID_DSU_CLK_DYN]		= &sm1_dsu_clk_dyn.hw,
+		[CLKID_DSU_CLK_FINAL]		= &sm1_dsu_final_clk.hw,
+		[CLKID_DSU_CLK]			= &sm1_dsu_clk.hw,
 		[NR_CLKS]			= NULL,
 	},
 	.num = NR_CLKS,
@@ -4623,6 +4798,15 @@ static struct clk_regmap *const g12a_clk_regmaps[] = {
 	&g12b_cpub_clk_trace,
 	&sm1_gp1_pll_dco,
 	&sm1_gp1_pll,
+	&sm1_dsu_clk_premux0,
+	&sm1_dsu_clk_premux1,
+	&sm1_dsu_clk_mux0_div,
+	&sm1_dsu_clk_postmux0,
+	&sm1_dsu_clk_mux1_div,
+	&sm1_dsu_clk_postmux1,
+	&sm1_dsu_clk_dyn,
+	&sm1_dsu_final_clk,
+	&sm1_dsu_clk,
 };
 
 static const struct reg_sequence g12a_init_regs[] = {
diff --git a/drivers/clk/meson/g12a.h b/drivers/clk/meson/g12a.h
index 4b3d22245609..66fd46940f91 100644
--- a/drivers/clk/meson/g12a.h
+++ b/drivers/clk/meson/g12a.h
@@ -80,6 +80,11 @@
 #define HHI_SYS_CPUB_CLK_CNTL1		0x200
 #define HHI_SYS_CPUB_CLK_CNTL		0x208
 #define HHI_VPU_CLKB_CNTL		0x20C
+#define HHI_SYS_CPU_CLK_CNTL2		0x210
+#define HHI_SYS_CPU_CLK_CNTL3		0x214
+#define HHI_SYS_CPU_CLK_CNTL4		0x218
+#define HHI_SYS_CPU_CLK_CNTL5		0x21c
+#define HHI_SYS_CPU_CLK_CNTL6		0x220
 #define HHI_GEN_CLK_CNTL		0x228
 #define HHI_VDIN_MEAS_CLK_CNTL		0x250
 #define HHI_MIPIDSI_PHY_CLK_CNTL	0x254
@@ -243,8 +248,17 @@
 #define CLKID_CPUB_CLK_TRACE			241
 #define CLKID_GP1_PLL_DCO			242
 #define CLKID_GP1_PLL				243
+#define CLKID_DSU_CLK_DYN0_SEL			244
+#define CLKID_DSU_CLK_DYN0_DIV			245
+#define CLKID_DSU_CLK_DYN0			246
+#define CLKID_DSU_CLK_DYN1_SEL			247
+#define CLKID_DSU_CLK_DYN1_DIV			248
+#define CLKID_DSU_CLK_DYN1			249
+#define CLKID_DSU_CLK_DYN			250
+#define CLKID_DSU_CLK_FINAL			251
+#define CLKID_DSU_CLK				252
 
-#define NR_CLKS					242
+#define NR_CLKS					253
 
 /* include the CLKIDs that have been made part of the DT binding */
 #include <dt-bindings/clock/g12a-clkc.h>
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
