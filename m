Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79475163FAE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 09:50:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bXLaqxu9/nIUp7jgHxmEy6Ntins7mQhacDZTcO/qc7M=; b=Bep7aO6tC4qc8j
	BUgf7sYXpQA25w0sSjUUvsPX6SB71LlD7FW36Tm91Ym8T8WOQPHJJFTpvHnAKgjVSb8EFivPgS9TK
	KRsidlzbQJDcqpOSKUgbwLkMpbVIkwCIFqLrXfkgywN+dQNuoJhTSzT+oQzMGbQBc1yVrngk5zmYA
	od/01xB2YEF7SEjIEYcFRJhW7OFic1fVo3BANWeJtnu1LiLz8ry8GXwf/HMkCzaie5+t+l/1u/iGH
	YLrJRghyk15sfv8xlQtRwm59gdeA7au2Ti0OjDh5QC475V2joaKH6svjE5U1uDYLLrLpoik4tpnn5
	gTkd3mh7A6HeM2LaYH/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4L3z-0005gN-PA; Wed, 19 Feb 2020 08:50:35 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4L35-0003ox-CU
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 08:49:41 +0000
Received: by mail-wr1-x441.google.com with SMTP id r11so27125021wrq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 00:49:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5GSg/xDxPp49oDbA6vFdut+q4shLY3Pk8HEGAuRFez0=;
 b=eluEgFKOncyKAGdAwn5OlTiyk2CNzP5MLYoMHFNmglRELyDY5Bk6FrEAlgWD7RuyYp
 cIRQuyIF/z2xm2TY2HA0ExnS0Px90I2YnFFe2YaEp8nRZe8AWjSJ+yXWyGKS+FtSe+i3
 SM4nfyn/zK9JP5yPnX1DcQrdxrAVI3xGW2dO320+301upQ6idUmjL64+5RLLV+F7l+R2
 EHQNCCqP7FZ8UpTmLCXdGOj9Ec6wfsrNuyRGOwNJQOc2+ezeoKKUbgZ5NW+eB1kiJz4X
 Xy/0uw/WlS0qq3ibJmSnCialEob3fLbK8sgqebp6PoO2HlZbIlAWjvIkZr4G71U1auup
 hNYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5GSg/xDxPp49oDbA6vFdut+q4shLY3Pk8HEGAuRFez0=;
 b=AA5Rjx1TZQZ3CesW9j2/apqdN6ApSz8XTU+38nwOX78yKUZNPEypzEBB3yfZ+ALr11
 I1R0D/Zp9J75W52YexexTxDYS4aT4UrwuDwHg5JgCo4mnWADF0B+uLQLoXtt5e86v69c
 8qna7VWlmfcinzcmAzymc1m2TUGx24SP+2HDQaw11uQ0+rtWjGe20bG9HI3r3SdLFAGY
 UGElXQfuz8nJDNk/4EqfmXYJju2YyfzBJIX64xpb8jqK9knUYsT/soIs31m6NhfqSDHp
 gUZn4I7LAavOAbr2rNlZoUBoMcNK1UNXx+dTuhzwM45vu6OQlGgDwsTheDUy1rr0SBU9
 6tfg==
X-Gm-Message-State: APjAAAUg9mo1v4/wW/1OJUF6Y2MNzFRyfSkmzE85vwchc0eX+VHLw8XB
 uuiTEOeGDBXapiHFoK0M2WoSqYJBBq44mg==
X-Google-Smtp-Source: APXvYqzIWUthaSqh0c9Ww016Eg2GCgQn8e5Ju2qinfSCQh/Y6SpPyxGTiNTOn47XES0XFKoKalCppg==
X-Received: by 2002:a05:6000:1187:: with SMTP id
 g7mr34747098wrx.109.1582102178017; 
 Wed, 19 Feb 2020 00:49:38 -0800 (PST)
Received: from bender.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id t13sm2021673wrw.19.2020.02.19.00.49.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 00:49:37 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com
Subject: [PATCH 2/2] clk: meson: g12a: add support for the SPICC SCLK Source
 clocks
Date: Wed, 19 Feb 2020 09:49:28 +0100
Message-Id: <20200219084928.28707-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200219084928.28707-1-narmstrong@baylibre.com>
References: <20200219084928.28707-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_004939_438293_D877F244 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

This adds the clocks used for the Amlogic G12A and compatible SoCs SPICC
controller to provide a more complete range of frequencies instead of the
SPICC internal divider over Xtal.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/clk/meson/g12a.c | 129 +++++++++++++++++++++++++++++++++++++++
 drivers/clk/meson/g12a.h |   6 +-
 2 files changed, 134 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/meson/g12a.c b/drivers/clk/meson/g12a.c
index d2760a021301..fad616cac01e 100644
--- a/drivers/clk/meson/g12a.c
+++ b/drivers/clk/meson/g12a.c
@@ -3862,6 +3862,111 @@ static struct clk_regmap g12a_ts = {
 	},
 };
 
+/* SPICC SCLK source clock */
+
+static const struct clk_parent_data spicc_sclk_parent_data[] = {
+	{ .fw_name = "xtal", },
+	{ .hw = &g12a_clk81.hw },
+	{ .hw = &g12a_fclk_div4.hw },
+	{ .hw = &g12a_fclk_div3.hw },
+	{ .hw = &g12a_fclk_div5.hw },
+	{ .hw = &g12a_fclk_div7.hw },
+};
+
+static struct clk_regmap g12a_spicc0_sclk_sel = {
+	.data = &(struct clk_regmap_mux_data){
+		.offset = HHI_SPICC_CLK_CNTL,
+		.mask = 7,
+		.shift = 7,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "spicc0_sclk_sel",
+		.ops = &clk_regmap_mux_ops,
+		.parent_data = spicc_sclk_parent_data,
+		.num_parents = ARRAY_SIZE(spicc_sclk_parent_data),
+	},
+};
+
+static struct clk_regmap g12a_spicc0_sclk_div = {
+	.data = &(struct clk_regmap_div_data){
+		.offset = HHI_SPICC_CLK_CNTL,
+		.shift = 0,
+		.width = 6,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "spicc0_sclk_div",
+		.ops = &clk_regmap_divider_ops,
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_spicc0_sclk_sel.hw
+		},
+		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
+	},
+};
+
+static struct clk_regmap g12a_spicc0_sclk = {
+	.data = &(struct clk_regmap_gate_data){
+		.offset = HHI_SPICC_CLK_CNTL,
+		.bit_idx = 6,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "spicc0_sclk",
+		.ops = &clk_regmap_gate_ops,
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_spicc0_sclk_div.hw
+		},
+		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
+	},
+};
+
+static struct clk_regmap g12a_spicc1_sclk_sel = {
+	.data = &(struct clk_regmap_mux_data){
+		.offset = HHI_SPICC_CLK_CNTL,
+		.mask = 7,
+		.shift = 23,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "spicc1_sclk_sel",
+		.ops = &clk_regmap_mux_ops,
+		.parent_data = spicc_sclk_parent_data,
+		.num_parents = ARRAY_SIZE(spicc_sclk_parent_data),
+	},
+};
+
+static struct clk_regmap g12a_spicc1_sclk_div = {
+	.data = &(struct clk_regmap_div_data){
+		.offset = HHI_SPICC_CLK_CNTL,
+		.shift = 16,
+		.width = 6,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "spicc1_sclk_div",
+		.ops = &clk_regmap_divider_ops,
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_spicc1_sclk_sel.hw
+		},
+		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
+	},
+};
+
+static struct clk_regmap g12a_spicc1_sclk = {
+	.data = &(struct clk_regmap_gate_data){
+		.offset = HHI_SPICC_CLK_CNTL,
+		.bit_idx = 22,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "spicc1_sclk",
+		.ops = &clk_regmap_gate_ops,
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_spicc1_sclk_div.hw
+		},
+		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
+	},
+};
+
 #define MESON_GATE(_name, _reg, _bit) \
 	MESON_PCLK(_name, _reg, _bit, &g12a_clk81.hw)
 
@@ -4159,6 +4264,12 @@ static struct clk_hw_onecell_data g12a_hw_onecell_data = {
 		[CLKID_VDEC_HEVCF]		= &g12a_vdec_hevcf.hw,
 		[CLKID_TS_DIV]			= &g12a_ts_div.hw,
 		[CLKID_TS]			= &g12a_ts.hw,
+		[CLKID_SPICC0_SCLK_SEL]		= &g12a_spicc0_sclk_sel.hw,
+		[CLKID_SPICC0_SCLK_DIV]		= &g12a_spicc0_sclk_div.hw,
+		[CLKID_SPICC0_SCLK]		= &g12a_spicc0_sclk.hw,
+		[CLKID_SPICC1_SCLK_SEL]		= &g12a_spicc1_sclk_sel.hw,
+		[CLKID_SPICC1_SCLK_DIV]		= &g12a_spicc1_sclk_div.hw,
+		[CLKID_SPICC1_SCLK]		= &g12a_spicc1_sclk.hw,
 		[NR_CLKS]			= NULL,
 	},
 	.num = NR_CLKS,
@@ -4408,6 +4519,12 @@ static struct clk_hw_onecell_data g12b_hw_onecell_data = {
 		[CLKID_CPUB_CLK_AXI]		= &g12b_cpub_clk_axi.hw,
 		[CLKID_CPUB_CLK_TRACE_SEL]	= &g12b_cpub_clk_trace_sel.hw,
 		[CLKID_CPUB_CLK_TRACE]		= &g12b_cpub_clk_trace.hw,
+		[CLKID_SPICC0_SCLK_SEL]		= &g12a_spicc0_sclk_sel.hw,
+		[CLKID_SPICC0_SCLK_DIV]		= &g12a_spicc0_sclk_div.hw,
+		[CLKID_SPICC0_SCLK]		= &g12a_spicc0_sclk.hw,
+		[CLKID_SPICC1_SCLK_SEL]		= &g12a_spicc1_sclk_sel.hw,
+		[CLKID_SPICC1_SCLK_DIV]		= &g12a_spicc1_sclk_div.hw,
+		[CLKID_SPICC1_SCLK]		= &g12a_spicc1_sclk.hw,
 		[NR_CLKS]			= NULL,
 	},
 	.num = NR_CLKS,
@@ -4642,6 +4759,12 @@ static struct clk_hw_onecell_data sm1_hw_onecell_data = {
 		[CLKID_CPU1_CLK]		= &sm1_cpu1_clk.hw,
 		[CLKID_CPU2_CLK]		= &sm1_cpu2_clk.hw,
 		[CLKID_CPU3_CLK]		= &sm1_cpu3_clk.hw,
+		[CLKID_SPICC0_SCLK_SEL]		= &g12a_spicc0_sclk_sel.hw,
+		[CLKID_SPICC0_SCLK_DIV]		= &g12a_spicc0_sclk_div.hw,
+		[CLKID_SPICC0_SCLK]		= &g12a_spicc0_sclk.hw,
+		[CLKID_SPICC1_SCLK_SEL]		= &g12a_spicc1_sclk_sel.hw,
+		[CLKID_SPICC1_SCLK_DIV]		= &g12a_spicc1_sclk_div.hw,
+		[CLKID_SPICC1_SCLK]		= &g12a_spicc1_sclk.hw,
 		[NR_CLKS]			= NULL,
 	},
 	.num = NR_CLKS,
@@ -4877,6 +5000,12 @@ static struct clk_regmap *const g12a_clk_regmaps[] = {
 	&sm1_cpu1_clk,
 	&sm1_cpu2_clk,
 	&sm1_cpu3_clk,
+	&g12a_spicc0_sclk_sel,
+	&g12a_spicc0_sclk_div,
+	&g12a_spicc0_sclk,
+	&g12a_spicc1_sclk_sel,
+	&g12a_spicc1_sclk_div,
+	&g12a_spicc1_sclk,
 };
 
 static const struct reg_sequence g12a_init_regs[] = {
diff --git a/drivers/clk/meson/g12a.h b/drivers/clk/meson/g12a.h
index 9df4068aced1..a8852556836e 100644
--- a/drivers/clk/meson/g12a.h
+++ b/drivers/clk/meson/g12a.h
@@ -255,8 +255,12 @@
 #define CLKID_DSU_CLK_DYN1			249
 #define CLKID_DSU_CLK_DYN			250
 #define CLKID_DSU_CLK_FINAL			251
+#define CLKID_SPICC0_SCLK_SEL			256
+#define CLKID_SPICC0_SCLK_DIV			257
+#define CLKID_SPICC1_SCLK_SEL			259
+#define CLKID_SPICC1_SCLK_DIV			260
 
-#define NR_CLKS					256
+#define NR_CLKS					262
 
 /* include the CLKIDs that have been made part of the DT binding */
 #include <dt-bindings/clock/g12a-clkc.h>
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
