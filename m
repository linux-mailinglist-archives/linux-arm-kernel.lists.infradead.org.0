Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C981F5053
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 10:31:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L9Pqsv92b2U3ou5QeE3XM0qdOlAS8k3IHiOp8sKYJjg=; b=Li6FyuAAIBnIcP
	OpnNz3T06f5pwMCK3nhs1yKzI7dHp4z/qqnPiGp19mIJPmJy/Fl8Z4M7QvloAT2WZ9d1f78oYYUCW
	ka6tFmwuTihvKzA1HjmmnjSAvLf4/GdTZUuaq+sRHM5eg6wGBOu+BYWTdW2q8yB9SpvFdREHqoxUx
	lYd65ah/Lrca1pesACISUEnXG90TTfua3rRc+iYsiTo9xN6BUrC80owkZTg5SdgRvDASljfcPWRcB
	D502hRrE+Z9adzjJaYEIMrNXt+Q488eR50T2QCKeUHAY9QcNU7x9L7iWuFQcsf43hIcqsUD+yuvRl
	A4NzLANUMQfqxPDJC8yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiw8Z-0003C9-2n; Wed, 10 Jun 2020 08:31:07 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiw7p-0002eC-01
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 08:30:22 +0000
Received: by mail-wr1-x442.google.com with SMTP id x13so1241306wrv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 01:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lPp6VqQcy0iQsfloe6knT20Y8DJvmbq6mVjmcioSaQ8=;
 b=WrCVnVG5q5Fywz83luKZPdKhNAMMt74TBo3j5w35tQ6k35gB80ABhyYXmFImzBEzzX
 uEBYq3Pn1lKubN+5j9bvpRK201nqTDdgrmqjmVrkpAwGJrtcB5J8lFRAoYdfRKQ6vIhV
 ZLZ4a7ZZlVlnFNkdCJiARAP+Jrjn9EpcljWSTHTUAz8cyVdMU1ytmnrTJb4MYbwIKDim
 F2zHhJCOaojRj0gXor65QgLghbwE5ueLnEuBTGUjbeR06TbX70h0QFZ0DNx4/kX1gMlJ
 5uoel/rDosIB0hghoGbEdprLyuRVyvEfNdK5RTh3YY0aH1c8vQ2wzhSxvyD4/Uk9bYNV
 8xew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lPp6VqQcy0iQsfloe6knT20Y8DJvmbq6mVjmcioSaQ8=;
 b=ngSHrJnNPCrQh+djjeZR+RL9TEP6ZPqXRgphNIk6HpqF+xaGbSYCtF0jTyK8We5WTV
 ATZoT9p6dBNXWaHG1VveyPFaYV+OMMClBTne4Kf0i3GhS9SmDrpeJfeYsJckFSDLhON1
 +6cFDwOL/a6xjPJ/VcOXsqo4n0tSUTDFJfaaTP+69ZEmwfRBg5tR9dU7/d0PLqKWKPgI
 Sh4jiHo2ls/+lqCsvyVZIRvdYK3P9pWNusDGN6zvvEBKZoNhicVT/DIPOkyqGxOX19Q+
 JVNt/cxFLLFjdUzKxJrpoAgZySNrg/J8FSRAWn7Hb5uEeFZfKJKG6C+2aUICHhISSOh7
 fNdA==
X-Gm-Message-State: AOAM531SRsU1TcS/tSKE6PMVt1z3qOxWAnRCm62x4S+2j+i3DBT8gDnF
 NLOXNjXnPenn5Cj75J0YxXCeUg==
X-Google-Smtp-Source: ABdhPJx94NKyXsKDcnV10IsqMYYY6faUswz/JNOerG8XPvisIU+VVaRhnwMUZi7QGcCrQRQ0u+fNrw==
X-Received: by 2002:a5d:4e88:: with SMTP id e8mr2432582wru.188.1591777818862; 
 Wed, 10 Jun 2020 01:30:18 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:22:5867:d2c6:75f4])
 by smtp.gmail.com with ESMTPSA id
 u13sm6958974wrp.53.2020.06.10.01.30.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 01:30:18 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com
Subject: [PATCH 2/2] clk: meson: g12a: Add support for NNA CLK source clocks
Date: Wed, 10 Jun 2020 10:30:12 +0200
Message-Id: <20200610083012.5024-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200610083012.5024-1-narmstrong@baylibre.com>
References: <20200610083012.5024-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_013021_106053_737ADB47 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: Dmitry Shmidt <dimitrysh@google.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dmitry Shmidt <dimitrysh@google.com>

This adds the Neural Network Accelerator source clocks hierarchy, it's
2 simple composite clocks to feed the AXI interface and the Core of
the Neural Network Accelerator IP.

This IP is only present on the Amlogic SM1 SoCs family.

Signed-off-by: Dmitry Shmidt <dimitrysh@google.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/clk/meson/g12a.c | 119 +++++++++++++++++++++++++++++++++++++++
 drivers/clk/meson/g12a.h |   7 ++-
 2 files changed, 125 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/meson/g12a.c b/drivers/clk/meson/g12a.c
index 30c15766ebb1..9803d44bb157 100644
--- a/drivers/clk/meson/g12a.c
+++ b/drivers/clk/meson/g12a.c
@@ -3981,6 +3981,113 @@ static struct clk_regmap g12a_spicc1_sclk = {
 	},
 };
 
+/* Neural Network Accelerator source clock */
+
+static const struct clk_parent_data nna_clk_parent_data[] = {
+	{ .fw_name = "xtal", },
+	{ .hw = &g12a_gp0_pll.hw, },
+	{ .hw = &g12a_hifi_pll.hw, },
+	{ .hw = &g12a_fclk_div2p5.hw, },
+	{ .hw = &g12a_fclk_div3.hw, },
+	{ .hw = &g12a_fclk_div4.hw, },
+	{ .hw = &g12a_fclk_div5.hw, },
+	{ .hw = &g12a_fclk_div7.hw },
+};
+
+static struct clk_regmap sm1_nna_axi_clk_sel = {
+	.data = &(struct clk_regmap_mux_data){
+		.offset = HHI_NNA_CLK_CNTL,
+		.mask = 7,
+		.shift = 9,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "nna_axi_clk_sel",
+		.ops = &clk_regmap_mux_ops,
+		.parent_data = nna_clk_parent_data,
+		.num_parents = ARRAY_SIZE(nna_clk_parent_data),
+	},
+};
+
+static struct clk_regmap sm1_nna_axi_clk_div = {
+	.data = &(struct clk_regmap_div_data){
+		.offset = HHI_NNA_CLK_CNTL,
+		.shift = 0,
+		.width = 7,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "nna_axi_clk_div",
+		.ops = &clk_regmap_divider_ops,
+		.parent_hws = (const struct clk_hw *[]) {
+			&sm1_nna_axi_clk_sel.hw
+		},
+		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
+	},
+};
+
+static struct clk_regmap sm1_nna_axi_clk = {
+	.data = &(struct clk_regmap_gate_data){
+		.offset = HHI_NNA_CLK_CNTL,
+		.bit_idx = 8,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "nna_axi_clk",
+		.ops = &clk_regmap_gate_ops,
+		.parent_hws = (const struct clk_hw *[]) {
+			&sm1_nna_axi_clk_div.hw
+		},
+		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
+	},
+};
+
+static struct clk_regmap sm1_nna_core_clk_sel = {
+	.data = &(struct clk_regmap_mux_data){
+		.offset = HHI_NNA_CLK_CNTL,
+		.mask = 7,
+		.shift = 25,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "nna_core_clk_sel",
+		.ops = &clk_regmap_mux_ops,
+		.parent_data = nna_clk_parent_data,
+		.num_parents = ARRAY_SIZE(nna_clk_parent_data),
+	},
+};
+
+static struct clk_regmap sm1_nna_core_clk_div = {
+	.data = &(struct clk_regmap_div_data){
+		.offset = HHI_NNA_CLK_CNTL,
+		.shift = 16,
+		.width = 7,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "nna_core_clk_div",
+		.ops = &clk_regmap_divider_ops,
+		.parent_hws = (const struct clk_hw *[]) {
+			&sm1_nna_core_clk_sel.hw
+		},
+		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
+	},
+};
+
+static struct clk_regmap sm1_nna_core_clk = {
+	.data = &(struct clk_regmap_gate_data){
+		.offset = HHI_NNA_CLK_CNTL,
+		.bit_idx = 24,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "nna_core_clk",
+		.ops = &clk_regmap_gate_ops,
+		.parent_hws = (const struct clk_hw *[]) {
+			&sm1_nna_core_clk_div.hw
+		},
+		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
+	},
+};
+
 #define MESON_GATE(_name, _reg, _bit) \
 	MESON_PCLK(_name, _reg, _bit, &g12a_clk81.hw)
 
@@ -4779,6 +4886,12 @@ static struct clk_hw_onecell_data sm1_hw_onecell_data = {
 		[CLKID_SPICC1_SCLK_SEL]		= &g12a_spicc1_sclk_sel.hw,
 		[CLKID_SPICC1_SCLK_DIV]		= &g12a_spicc1_sclk_div.hw,
 		[CLKID_SPICC1_SCLK]		= &g12a_spicc1_sclk.hw,
+		[CLKID_NNA_AXI_CLK_SEL]		= &sm1_nna_axi_clk_sel.hw,
+		[CLKID_NNA_AXI_CLK_DIV]		= &sm1_nna_axi_clk_div.hw,
+		[CLKID_NNA_AXI_CLK]		= &sm1_nna_axi_clk.hw,
+		[CLKID_NNA_CORE_CLK_SEL]	= &sm1_nna_core_clk_sel.hw,
+		[CLKID_NNA_CORE_CLK_DIV]	= &sm1_nna_core_clk_div.hw,
+		[CLKID_NNA_CORE_CLK]		= &sm1_nna_core_clk.hw,
 		[NR_CLKS]			= NULL,
 	},
 	.num = NR_CLKS,
@@ -5020,6 +5133,12 @@ static struct clk_regmap *const g12a_clk_regmaps[] = {
 	&g12a_spicc1_sclk_sel,
 	&g12a_spicc1_sclk_div,
 	&g12a_spicc1_sclk,
+	&sm1_nna_axi_clk_sel,
+	&sm1_nna_axi_clk_div,
+	&sm1_nna_axi_clk,
+	&sm1_nna_core_clk_sel,
+	&sm1_nna_core_clk_div,
+	&sm1_nna_core_clk,
 };
 
 static const struct reg_sequence g12a_init_regs[] = {
diff --git a/drivers/clk/meson/g12a.h b/drivers/clk/meson/g12a.h
index a8852556836e..69b6a69549c7 100644
--- a/drivers/clk/meson/g12a.h
+++ b/drivers/clk/meson/g12a.h
@@ -70,6 +70,7 @@
 #define HHI_MALI_CLK_CNTL		0x1b0
 #define HHI_VPU_CLKC_CNTL		0x1b4
 #define HHI_VPU_CLK_CNTL		0x1bC
+#define HHI_NNA_CLK_CNTL		0x1C8
 #define HHI_HDMI_CLK_CNTL		0x1CC
 #define HHI_VDEC_CLK_CNTL		0x1E0
 #define HHI_VDEC2_CLK_CNTL		0x1E4
@@ -259,8 +260,12 @@
 #define CLKID_SPICC0_SCLK_DIV			257
 #define CLKID_SPICC1_SCLK_SEL			259
 #define CLKID_SPICC1_SCLK_DIV			260
+#define CLKID_NNA_AXI_CLK_SEL			262
+#define CLKID_NNA_AXI_CLK_DIV			263
+#define CLKID_NNA_CORE_CLK_SEL			265
+#define CLKID_NNA_CORE_CLK_DIV			266
 
-#define NR_CLKS					262
+#define NR_CLKS					268
 
 /* include the CLKIDs that have been made part of the DT binding */
 #include <dt-bindings/clock/g12a-clkc.h>
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
