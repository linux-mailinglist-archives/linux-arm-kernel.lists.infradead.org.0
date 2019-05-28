Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 661E12C0E4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 10:08:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H8mYYQkwkd1IeKxBNr77sUfs1TDevTtugdyF+ARZ9LQ=; b=A3Db4fjuQMw9lI
	GxSARZu4zbwSFdwsZg5DEvJ5UzG93+/t3ZBKosrK5vyKlHhDylNg778fHGw6buacn+ksq3lKBasju
	/WjaOTapmR3NA+TIs1i1L2vLLkJfWvLeUtzufur4qnTxMD2jUhwsZmj2T4vncggyxn7Ef9RKh3yVC
	z+kBRLMg7kmLrzCpeDp44a4A4L8aajAu0WD2Z+ZKMterx5xNfR21QCE2oKi9gKuAL2ODkF4wYKqnz
	xvcP7IkVDxTeUFKaiRE201RBy6YJT96DVq+HR10SQHalCQMpjI7O6n0zk1CojmFCphYCA/IYuiA0k
	BUnEQqSfVz1MF4iE5JoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVXA9-0002rR-2G; Tue, 28 May 2019 08:08:49 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVX9T-0002EF-SJ
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 08:08:13 +0000
Received: by mail-wm1-x343.google.com with SMTP id w9so1727117wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 01:08:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8/elNMUjWrD+BBb+ANMbI1Vjtndx8dxBC4l875bHq2E=;
 b=Vu1j0zHoebDYreWvMW3z+fVv/XppTS0+aulleS9YSMUtdTDhynUe6UKbwGbJmKe2tE
 WiNbHdUJ2bAW30sxvGN/g1TEMDdkNojJZ2XxGzvA2mGwnfomzOCvJrqDB0ftXHfa74ol
 flg8qfCRmbHMVtfrETza2gv7EXBlg6Kevs5Vt+S1JvhygPjdJLfnUxHtG0MZRzmZRX0p
 PuHf+fL7GXPncMisyRivRTW8/tMqetO/zdsrC5W+BTotnPTxMj/5cG8bgn2t9BcEBspX
 0BCbjwWtVkfAIT+DlOdLQQZrSxHZfP/TBEdETZ0pNiiMNw4z/CCIBDB5gmN9z7wv7GWt
 wJJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8/elNMUjWrD+BBb+ANMbI1Vjtndx8dxBC4l875bHq2E=;
 b=kMrPTet8Uf6GNCGjqE8pbwXBsY7qbe7M8fLzOGPS1DHQmy2/8PgR9eRc87u1SQpW4y
 SlzakkNN943Xbq6iPPvcIaDOUZRVIDfsfr4H5JB36/TJ7H922558pEi+dFDfyDfMIzMQ
 H9opttapVrCj6etySTRsKkKZTYByvZYQJu1gKHGPdqoGTPq2XLDGTs4cSv+zH/m95STD
 MVB3zE6sMUbZAhUc0VSGe9sn4sNu85Vlrp6btX6/Bgd7wR0nkzE3LECHZDsfIeJkRtNq
 NmYOTcPsqy74sMWIbXOum3bhFxxfqLZE5dxB6nRUsXXaqQO9+QiFB2W+UL/X+RKA7jD5
 WuEQ==
X-Gm-Message-State: APjAAAUo6oLnHF2dlBr5Gh/MNzF+PnTFnyoKpF4WfMPqfM/3wGc+bg5i
 Fu9D7aqX96xkhld8xCpxzLy7hg==
X-Google-Smtp-Source: APXvYqzF4LU65AvLEfXf67D2OdPI/swjqEIdelG6ROB1vLhHnNxOXdo13+Gy8ePWe68inOV0sm3ZtQ==
X-Received: by 2002:a1c:6c1a:: with SMTP id h26mr2234653wmc.89.1559030885833; 
 Tue, 28 May 2019 01:08:05 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id z74sm2456121wmc.2.2019.05.28.01.08.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 28 May 2019 01:08:04 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com
Subject: [PATCH v2 2/3] clk: meson: g12a: Add support for G12B CPUB clocks
Date: Tue, 28 May 2019 10:07:57 +0200
Message-Id: <20190528080758.17079-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190528080758.17079-1-narmstrong@baylibre.com>
References: <20190528080758.17079-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_010807_929149_BF091EAC 
X-CRM114-Status: GOOD (  15.80  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the Meson G12A Clock driver to support the Amlogic G12B SoC.

G12B clock driver is very close, the main differences are :
- the clock tree is duplicated for the both clusters, and the
  SYS_PLL are swapped between the clusters
- G12B has additional clocks like for CSI an other components

Here only the cpu clock tree is handled.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/clk/meson/g12a.c | 762 +++++++++++++++++++++++++++++++++++++++
 drivers/clk/meson/g12a.h |  40 +-
 2 files changed, 801 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/meson/g12a.c b/drivers/clk/meson/g12a.c
index a7b621bebb7e..1abe46a95dc1 100644
--- a/drivers/clk/meson/g12a.c
+++ b/drivers/clk/meson/g12a.c
@@ -150,6 +150,57 @@ static struct clk_regmap g12a_sys_pll = {
 	},
 };
 
+static struct clk_regmap g12b_sys1_pll_dco = {
+	.data = &(struct meson_clk_pll_data){
+		.en = {
+			.reg_off = HHI_SYS1_PLL_CNTL0,
+			.shift   = 28,
+			.width   = 1,
+		},
+		.m = {
+			.reg_off = HHI_SYS1_PLL_CNTL0,
+			.shift   = 0,
+			.width   = 8,
+		},
+		.n = {
+			.reg_off = HHI_SYS1_PLL_CNTL0,
+			.shift   = 10,
+			.width   = 5,
+		},
+		.l = {
+			.reg_off = HHI_SYS1_PLL_CNTL0,
+			.shift   = 31,
+			.width   = 1,
+		},
+		.rst = {
+			.reg_off = HHI_SYS1_PLL_CNTL0,
+			.shift   = 29,
+			.width   = 1,
+		},
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "sys1_pll_dco",
+		.ops = &meson_clk_pll_ro_ops,
+		.parent_names = (const char *[]){ IN_PREFIX "xtal" },
+		.num_parents = 1,
+	},
+};
+
+static struct clk_regmap g12b_sys1_pll = {
+	.data = &(struct clk_regmap_div_data){
+		.offset = HHI_SYS1_PLL_CNTL0,
+		.shift = 16,
+		.width = 3,
+		.flags = CLK_DIVIDER_POWER_OF_TWO,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "sys1_pll",
+		.ops = &clk_regmap_divider_ro_ops,
+		.parent_names = (const char *[]){ "sys1_pll_dco" },
+		.num_parents = 1,
+	},
+};
+
 static struct clk_regmap g12a_sys_pll_div16_en = {
 	.data = &(struct clk_regmap_gate_data){
 		.offset = HHI_SYS_CPU_CLK_CNTL1,
@@ -167,6 +218,23 @@ static struct clk_regmap g12a_sys_pll_div16_en = {
 	},
 };
 
+static struct clk_regmap g12b_sys1_pll_div16_en = {
+	.data = &(struct clk_regmap_gate_data){
+		.offset = HHI_SYS_CPUB_CLK_CNTL1,
+		.bit_idx = 24,
+	},
+	.hw.init = &(struct clk_init_data) {
+		.name = "sys1_pll_div16_en",
+		.ops = &clk_regmap_gate_ro_ops,
+		.parent_names = (const char *[]){ "sys1_pll" },
+		.num_parents = 1,
+		/*
+		 * This clock is used to debug the sys_pll range
+		 * Linux should not change it at runtime
+		 */
+	},
+};
+
 static struct clk_fixed_factor g12a_sys_pll_div16 = {
 	.mult = 1,
 	.div = 16,
@@ -178,6 +246,17 @@ static struct clk_fixed_factor g12a_sys_pll_div16 = {
 	},
 };
 
+static struct clk_fixed_factor g12b_sys1_pll_div16 = {
+	.mult = 1,
+	.div = 16,
+	.hw.init = &(struct clk_init_data){
+		.name = "sys1_pll_div16",
+		.ops = &clk_fixed_factor_ops,
+		.parent_names = (const char *[]){ "sys1_pll_div16_en" },
+		.num_parents = 1,
+	},
+};
+
 /* Datasheet names this field as "premux0" */
 static struct clk_regmap g12a_cpu_clk_premux0 = {
 	.data = &(struct clk_regmap_mux_data){
@@ -306,6 +385,150 @@ static struct clk_regmap g12a_cpu_clk = {
 	},
 };
 
+/* Datasheet names this field as "Final_mux_sel" */
+static struct clk_regmap g12b_cpu_clk = {
+	.data = &(struct clk_regmap_mux_data){
+		.offset = HHI_SYS_CPU_CLK_CNTL0,
+		.mask = 0x1,
+		.shift = 11,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "cpu_clk",
+		.ops = &clk_regmap_mux_ro_ops,
+		.parent_names = (const char *[]){ "cpu_clk_dyn",
+						  "sys1_pll" },
+		.num_parents = 2,
+	},
+};
+
+/* Datasheet names this field as "premux0" */
+static struct clk_regmap g12b_cpub_clk_premux0 = {
+	.data = &(struct clk_regmap_mux_data){
+		.offset = HHI_SYS_CPUB_CLK_CNTL,
+		.mask = 0x3,
+		.shift = 0,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "cpub_clk_dyn0_sel",
+		.ops = &clk_regmap_mux_ro_ops,
+		.parent_names = (const char *[]){ IN_PREFIX "xtal",
+						  "fclk_div2",
+						  "fclk_div3" },
+		.num_parents = 3,
+	},
+};
+
+/* Datasheet names this field as "mux0_divn_tcnt" */
+static struct clk_regmap g12b_cpub_clk_mux0_div = {
+	.data = &(struct clk_regmap_div_data){
+		.offset = HHI_SYS_CPUB_CLK_CNTL,
+		.shift = 4,
+		.width = 6,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "cpub_clk_dyn0_div",
+		.ops = &clk_regmap_divider_ro_ops,
+		.parent_names = (const char *[]){ "cpub_clk_dyn0_sel" },
+		.num_parents = 1,
+	},
+};
+
+/* Datasheet names this field as "postmux0" */
+static struct clk_regmap g12b_cpub_clk_postmux0 = {
+	.data = &(struct clk_regmap_mux_data){
+		.offset = HHI_SYS_CPUB_CLK_CNTL,
+		.mask = 0x1,
+		.shift = 2,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "cpub_clk_dyn0",
+		.ops = &clk_regmap_mux_ro_ops,
+		.parent_names = (const char *[]){ "cpub_clk_dyn0_sel",
+						  "cpub_clk_dyn0_div" },
+		.num_parents = 2,
+	},
+};
+
+/* Datasheet names this field as "premux1" */
+static struct clk_regmap g12b_cpub_clk_premux1 = {
+	.data = &(struct clk_regmap_mux_data){
+		.offset = HHI_SYS_CPUB_CLK_CNTL,
+		.mask = 0x3,
+		.shift = 16,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "cpub_clk_dyn1_sel",
+		.ops = &clk_regmap_mux_ro_ops,
+		.parent_names = (const char *[]){ IN_PREFIX "xtal",
+						  "fclk_div2",
+						  "fclk_div3" },
+		.num_parents = 3,
+	},
+};
+
+/* Datasheet names this field as "Mux1_divn_tcnt" */
+static struct clk_regmap g12b_cpub_clk_mux1_div = {
+	.data = &(struct clk_regmap_div_data){
+		.offset = HHI_SYS_CPUB_CLK_CNTL,
+		.shift = 20,
+		.width = 6,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "cpub_clk_dyn1_div",
+		.ops = &clk_regmap_divider_ro_ops,
+		.parent_names = (const char *[]){ "cpub_clk_dyn1_sel" },
+		.num_parents = 1,
+	},
+};
+
+/* Datasheet names this field as "postmux1" */
+static struct clk_regmap g12b_cpub_clk_postmux1 = {
+	.data = &(struct clk_regmap_mux_data){
+		.offset = HHI_SYS_CPUB_CLK_CNTL,
+		.mask = 0x1,
+		.shift = 18,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "cpub_clk_dyn1",
+		.ops = &clk_regmap_mux_ro_ops,
+		.parent_names = (const char *[]){ "cpub_clk_dyn1_sel",
+						  "cpub_clk_dyn1_div" },
+		.num_parents = 2,
+	},
+};
+
+/* Datasheet names this field as "Final_dyn_mux_sel" */
+static struct clk_regmap g12b_cpub_clk_dyn = {
+	.data = &(struct clk_regmap_mux_data){
+		.offset = HHI_SYS_CPUB_CLK_CNTL,
+		.mask = 0x1,
+		.shift = 10,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "cpub_clk_dyn",
+		.ops = &clk_regmap_mux_ro_ops,
+		.parent_names = (const char *[]){ "cpub_clk_dyn0",
+						  "cpub_clk_dyn1" },
+		.num_parents = 2,
+	},
+};
+
+/* Datasheet names this field as "Final_mux_sel" */
+static struct clk_regmap g12b_cpub_clk = {
+	.data = &(struct clk_regmap_mux_data){
+		.offset = HHI_SYS_CPUB_CLK_CNTL,
+		.mask = 0x1,
+		.shift = 11,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "cpub_clk",
+		.ops = &clk_regmap_mux_ro_ops,
+		.parent_names = (const char *[]){ "cpub_clk_dyn",
+						  "sys_pll" },
+		.num_parents = 2,
+	},
+};
+
 static struct clk_regmap g12a_cpu_clk_div16_en = {
 	.data = &(struct clk_regmap_gate_data){
 		.offset = HHI_SYS_CPU_CLK_CNTL1,
@@ -323,6 +546,23 @@ static struct clk_regmap g12a_cpu_clk_div16_en = {
 	},
 };
 
+static struct clk_regmap g12b_cpub_clk_div16_en = {
+	.data = &(struct clk_regmap_gate_data){
+		.offset = HHI_SYS_CPUB_CLK_CNTL1,
+		.bit_idx = 1,
+	},
+	.hw.init = &(struct clk_init_data) {
+		.name = "cpub_clk_div16_en",
+		.ops = &clk_regmap_gate_ro_ops,
+		.parent_names = (const char *[]){ "cpub_clk" },
+		.num_parents = 1,
+		/*
+		 * This clock is used to debug the cpu_clk range
+		 * Linux should not change it at runtime
+		 */
+	},
+};
+
 static struct clk_fixed_factor g12a_cpu_clk_div16 = {
 	.mult = 1,
 	.div = 16,
@@ -334,6 +574,17 @@ static struct clk_fixed_factor g12a_cpu_clk_div16 = {
 	},
 };
 
+static struct clk_fixed_factor g12b_cpub_clk_div16 = {
+	.mult = 1,
+	.div = 16,
+	.hw.init = &(struct clk_init_data){
+		.name = "cpub_clk_div16",
+		.ops = &clk_fixed_factor_ops,
+		.parent_names = (const char *[]){ "cpub_clk_div16_en" },
+		.num_parents = 1,
+	},
+};
+
 static struct clk_regmap g12a_cpu_clk_apb_div = {
 	.data = &(struct clk_regmap_div_data){
 		.offset = HHI_SYS_CPU_CLK_CNTL1,
@@ -462,6 +713,240 @@ static struct clk_regmap g12a_cpu_clk_trace = {
 	},
 };
 
+static struct clk_fixed_factor g12b_cpub_clk_div2 = {
+	.mult = 1,
+	.div = 2,
+	.hw.init = &(struct clk_init_data){
+		.name = "cpub_clk_div2",
+		.ops = &clk_fixed_factor_ops,
+		.parent_names = (const char *[]){ "cpub_clk" },
+		.num_parents = 1,
+	},
+};
+
+static struct clk_fixed_factor g12b_cpub_clk_div3 = {
+	.mult = 1,
+	.div = 3,
+	.hw.init = &(struct clk_init_data){
+		.name = "cpub_clk_div3",
+		.ops = &clk_fixed_factor_ops,
+		.parent_names = (const char *[]){ "cpub_clk" },
+		.num_parents = 1,
+	},
+};
+
+static struct clk_fixed_factor g12b_cpub_clk_div4 = {
+	.mult = 1,
+	.div = 4,
+	.hw.init = &(struct clk_init_data){
+		.name = "cpub_clk_div4",
+		.ops = &clk_fixed_factor_ops,
+		.parent_names = (const char *[]){ "cpub_clk" },
+		.num_parents = 1,
+	},
+};
+
+static struct clk_fixed_factor g12b_cpub_clk_div5 = {
+	.mult = 1,
+	.div = 5,
+	.hw.init = &(struct clk_init_data){
+		.name = "cpub_clk_div5",
+		.ops = &clk_fixed_factor_ops,
+		.parent_names = (const char *[]){ "cpub_clk" },
+		.num_parents = 1,
+	},
+};
+
+static struct clk_fixed_factor g12b_cpub_clk_div6 = {
+	.mult = 1,
+	.div = 6,
+	.hw.init = &(struct clk_init_data){
+		.name = "cpub_clk_div6",
+		.ops = &clk_fixed_factor_ops,
+		.parent_names = (const char *[]){ "cpub_clk" },
+		.num_parents = 1,
+	},
+};
+
+static struct clk_fixed_factor g12b_cpub_clk_div7 = {
+	.mult = 1,
+	.div = 7,
+	.hw.init = &(struct clk_init_data){
+		.name = "cpub_clk_div7",
+		.ops = &clk_fixed_factor_ops,
+		.parent_names = (const char *[]){ "cpub_clk" },
+		.num_parents = 1,
+	},
+};
+
+static struct clk_fixed_factor g12b_cpub_clk_div8 = {
+	.mult = 1,
+	.div = 8,
+	.hw.init = &(struct clk_init_data){
+		.name = "cpub_clk_div8",
+		.ops = &clk_fixed_factor_ops,
+		.parent_names = (const char *[]){ "cpub_clk" },
+		.num_parents = 1,
+	},
+};
+
+static u32 mux_table_cpub[] = { 1, 2, 3, 4, 5, 6, 7 };
+static struct clk_regmap g12b_cpub_clk_apb_sel = {
+	.data = &(struct clk_regmap_mux_data){
+		.offset = HHI_SYS_CPUB_CLK_CNTL1,
+		.mask = 7,
+		.shift = 3,
+		.table = mux_table_cpub,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "cpub_clk_apb_sel",
+		.ops = &clk_regmap_mux_ro_ops,
+		.parent_names = (const char *[]){ "cpub_clk_div2",
+						  "cpub_clk_div3",
+						  "cpub_clk_div4",
+						  "cpub_clk_div5",
+						  "cpub_clk_div6",
+						  "cpub_clk_div7",
+						  "cpub_clk_div8" },
+		.num_parents = 7,
+	},
+};
+
+static struct clk_regmap g12b_cpub_clk_apb = {
+	.data = &(struct clk_regmap_gate_data){
+		.offset = HHI_SYS_CPUB_CLK_CNTL1,
+		.bit_idx = 16,
+		.flags = CLK_GATE_SET_TO_DISABLE,
+	},
+	.hw.init = &(struct clk_init_data) {
+		.name = "cpub_clk_apb",
+		.ops = &clk_regmap_gate_ro_ops,
+		.parent_names = (const char *[]){ "cpub_clk_apb_sel" },
+		.num_parents = 1,
+		/*
+		 * This clock is set by the ROM monitor code,
+		 * Linux should not change it at runtime
+		 */
+	},
+};
+
+static struct clk_regmap g12b_cpub_clk_atb_sel = {
+	.data = &(struct clk_regmap_mux_data){
+		.offset = HHI_SYS_CPUB_CLK_CNTL1,
+		.mask = 7,
+		.shift = 6,
+		.table = mux_table_cpub,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "cpub_clk_atb_sel",
+		.ops = &clk_regmap_mux_ro_ops,
+		.parent_names = (const char *[]){ "cpub_clk_div2",
+						  "cpub_clk_div3",
+						  "cpub_clk_div4",
+						  "cpub_clk_div5",
+						  "cpub_clk_div6",
+						  "cpub_clk_div7",
+						  "cpub_clk_div8" },
+		.num_parents = 7,
+	},
+};
+
+static struct clk_regmap g12b_cpub_clk_atb = {
+	.data = &(struct clk_regmap_gate_data){
+		.offset = HHI_SYS_CPUB_CLK_CNTL1,
+		.bit_idx = 17,
+		.flags = CLK_GATE_SET_TO_DISABLE,
+	},
+	.hw.init = &(struct clk_init_data) {
+		.name = "cpub_clk_atb",
+		.ops = &clk_regmap_gate_ro_ops,
+		.parent_names = (const char *[]){ "cpub_clk_atb_sel" },
+		.num_parents = 1,
+		/*
+		 * This clock is set by the ROM monitor code,
+		 * Linux should not change it at runtime
+		 */
+	},
+};
+
+static struct clk_regmap g12b_cpub_clk_axi_sel = {
+	.data = &(struct clk_regmap_mux_data){
+		.offset = HHI_SYS_CPUB_CLK_CNTL1,
+		.mask = 7,
+		.shift = 9,
+		.table = mux_table_cpub,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "cpub_clk_axi_sel",
+		.ops = &clk_regmap_mux_ro_ops,
+		.parent_names = (const char *[]){ "cpub_clk_div2",
+						  "cpub_clk_div3",
+						  "cpub_clk_div4",
+						  "cpub_clk_div5",
+						  "cpub_clk_div6",
+						  "cpub_clk_div7",
+						  "cpub_clk_div8" },
+		.num_parents = 7,
+	},
+};
+
+static struct clk_regmap g12b_cpub_clk_axi = {
+	.data = &(struct clk_regmap_gate_data){
+		.offset = HHI_SYS_CPUB_CLK_CNTL1,
+		.bit_idx = 18,
+		.flags = CLK_GATE_SET_TO_DISABLE,
+	},
+	.hw.init = &(struct clk_init_data) {
+		.name = "cpub_clk_axi",
+		.ops = &clk_regmap_gate_ro_ops,
+		.parent_names = (const char *[]){ "cpub_clk_axi_sel" },
+		.num_parents = 1,
+		/*
+		 * This clock is set by the ROM monitor code,
+		 * Linux should not change it at runtime
+		 */
+	},
+};
+
+static struct clk_regmap g12b_cpub_clk_trace_sel = {
+	.data = &(struct clk_regmap_mux_data){
+		.offset = HHI_SYS_CPUB_CLK_CNTL1,
+		.mask = 7,
+		.shift = 20,
+		.table = mux_table_cpub,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "cpub_clk_trace_sel",
+		.ops = &clk_regmap_mux_ro_ops,
+		.parent_names = (const char *[]){ "cpub_clk_div2",
+						  "cpub_clk_div3",
+						  "cpub_clk_div4",
+						  "cpub_clk_div5",
+						  "cpub_clk_div6",
+						  "cpub_clk_div7",
+						  "cpub_clk_div8" },
+		.num_parents = 7,
+	},
+};
+
+static struct clk_regmap g12b_cpub_clk_trace = {
+	.data = &(struct clk_regmap_gate_data){
+		.offset = HHI_SYS_CPUB_CLK_CNTL1,
+		.bit_idx = 23,
+		.flags = CLK_GATE_SET_TO_DISABLE,
+	},
+	.hw.init = &(struct clk_init_data) {
+		.name = "cpub_clk_trace",
+		.ops = &clk_regmap_gate_ro_ops,
+		.parent_names = (const char *[]){ "cpub_clk_trace_sel" },
+		.num_parents = 1,
+		/*
+		 * This clock is set by the ROM monitor code,
+		 * Linux should not change it at runtime
+		 */
+	},
+};
+
 static const struct pll_mult_range g12a_gp0_pll_mult_range = {
 	.min = 125,
 	.max = 255,
@@ -2827,6 +3312,255 @@ static struct clk_hw_onecell_data g12a_hw_onecell_data = {
 	.num = NR_CLKS,
 };
 
+static struct clk_hw_onecell_data g12b_hw_onecell_data = {
+	.hws = {
+		[CLKID_SYS_PLL]			= &g12a_sys_pll.hw,
+		[CLKID_FIXED_PLL]		= &g12a_fixed_pll.hw,
+		[CLKID_FCLK_DIV2]		= &g12a_fclk_div2.hw,
+		[CLKID_FCLK_DIV3]		= &g12a_fclk_div3.hw,
+		[CLKID_FCLK_DIV4]		= &g12a_fclk_div4.hw,
+		[CLKID_FCLK_DIV5]		= &g12a_fclk_div5.hw,
+		[CLKID_FCLK_DIV7]		= &g12a_fclk_div7.hw,
+		[CLKID_FCLK_DIV2P5]		= &g12a_fclk_div2p5.hw,
+		[CLKID_GP0_PLL]			= &g12a_gp0_pll.hw,
+		[CLKID_MPEG_SEL]		= &g12a_mpeg_clk_sel.hw,
+		[CLKID_MPEG_DIV]		= &g12a_mpeg_clk_div.hw,
+		[CLKID_CLK81]			= &g12a_clk81.hw,
+		[CLKID_MPLL0]			= &g12a_mpll0.hw,
+		[CLKID_MPLL1]			= &g12a_mpll1.hw,
+		[CLKID_MPLL2]			= &g12a_mpll2.hw,
+		[CLKID_MPLL3]			= &g12a_mpll3.hw,
+		[CLKID_DDR]			= &g12a_ddr.hw,
+		[CLKID_DOS]			= &g12a_dos.hw,
+		[CLKID_AUDIO_LOCKER]		= &g12a_audio_locker.hw,
+		[CLKID_MIPI_DSI_HOST]		= &g12a_mipi_dsi_host.hw,
+		[CLKID_ETH_PHY]			= &g12a_eth_phy.hw,
+		[CLKID_ISA]			= &g12a_isa.hw,
+		[CLKID_PL301]			= &g12a_pl301.hw,
+		[CLKID_PERIPHS]			= &g12a_periphs.hw,
+		[CLKID_SPICC0]			= &g12a_spicc_0.hw,
+		[CLKID_I2C]			= &g12a_i2c.hw,
+		[CLKID_SANA]			= &g12a_sana.hw,
+		[CLKID_SD]			= &g12a_sd.hw,
+		[CLKID_RNG0]			= &g12a_rng0.hw,
+		[CLKID_UART0]			= &g12a_uart0.hw,
+		[CLKID_SPICC1]			= &g12a_spicc_1.hw,
+		[CLKID_HIU_IFACE]		= &g12a_hiu_reg.hw,
+		[CLKID_MIPI_DSI_PHY]		= &g12a_mipi_dsi_phy.hw,
+		[CLKID_ASSIST_MISC]		= &g12a_assist_misc.hw,
+		[CLKID_SD_EMMC_A]		= &g12a_emmc_a.hw,
+		[CLKID_SD_EMMC_B]		= &g12a_emmc_b.hw,
+		[CLKID_SD_EMMC_C]		= &g12a_emmc_c.hw,
+		[CLKID_AUDIO_CODEC]		= &g12a_audio_codec.hw,
+		[CLKID_AUDIO]			= &g12a_audio.hw,
+		[CLKID_ETH]			= &g12a_eth_core.hw,
+		[CLKID_DEMUX]			= &g12a_demux.hw,
+		[CLKID_AUDIO_IFIFO]		= &g12a_audio_ififo.hw,
+		[CLKID_ADC]			= &g12a_adc.hw,
+		[CLKID_UART1]			= &g12a_uart1.hw,
+		[CLKID_G2D]			= &g12a_g2d.hw,
+		[CLKID_RESET]			= &g12a_reset.hw,
+		[CLKID_PCIE_COMB]		= &g12a_pcie_comb.hw,
+		[CLKID_PARSER]			= &g12a_parser.hw,
+		[CLKID_USB]			= &g12a_usb_general.hw,
+		[CLKID_PCIE_PHY]		= &g12a_pcie_phy.hw,
+		[CLKID_AHB_ARB0]		= &g12a_ahb_arb0.hw,
+		[CLKID_AHB_DATA_BUS]		= &g12a_ahb_data_bus.hw,
+		[CLKID_AHB_CTRL_BUS]		= &g12a_ahb_ctrl_bus.hw,
+		[CLKID_HTX_HDCP22]		= &g12a_htx_hdcp22.hw,
+		[CLKID_HTX_PCLK]		= &g12a_htx_pclk.hw,
+		[CLKID_BT656]			= &g12a_bt656.hw,
+		[CLKID_USB1_DDR_BRIDGE]		= &g12a_usb1_to_ddr.hw,
+		[CLKID_MMC_PCLK]		= &g12a_mmc_pclk.hw,
+		[CLKID_UART2]			= &g12a_uart2.hw,
+		[CLKID_VPU_INTR]		= &g12a_vpu_intr.hw,
+		[CLKID_GIC]			= &g12a_gic.hw,
+		[CLKID_SD_EMMC_A_CLK0_SEL]	= &g12a_sd_emmc_a_clk0_sel.hw,
+		[CLKID_SD_EMMC_A_CLK0_DIV]	= &g12a_sd_emmc_a_clk0_div.hw,
+		[CLKID_SD_EMMC_A_CLK0]		= &g12a_sd_emmc_a_clk0.hw,
+		[CLKID_SD_EMMC_B_CLK0_SEL]	= &g12a_sd_emmc_b_clk0_sel.hw,
+		[CLKID_SD_EMMC_B_CLK0_DIV]	= &g12a_sd_emmc_b_clk0_div.hw,
+		[CLKID_SD_EMMC_B_CLK0]		= &g12a_sd_emmc_b_clk0.hw,
+		[CLKID_SD_EMMC_C_CLK0_SEL]	= &g12a_sd_emmc_c_clk0_sel.hw,
+		[CLKID_SD_EMMC_C_CLK0_DIV]	= &g12a_sd_emmc_c_clk0_div.hw,
+		[CLKID_SD_EMMC_C_CLK0]		= &g12a_sd_emmc_c_clk0.hw,
+		[CLKID_MPLL0_DIV]		= &g12a_mpll0_div.hw,
+		[CLKID_MPLL1_DIV]		= &g12a_mpll1_div.hw,
+		[CLKID_MPLL2_DIV]		= &g12a_mpll2_div.hw,
+		[CLKID_MPLL3_DIV]		= &g12a_mpll3_div.hw,
+		[CLKID_FCLK_DIV2_DIV]		= &g12a_fclk_div2_div.hw,
+		[CLKID_FCLK_DIV3_DIV]		= &g12a_fclk_div3_div.hw,
+		[CLKID_FCLK_DIV4_DIV]		= &g12a_fclk_div4_div.hw,
+		[CLKID_FCLK_DIV5_DIV]		= &g12a_fclk_div5_div.hw,
+		[CLKID_FCLK_DIV7_DIV]		= &g12a_fclk_div7_div.hw,
+		[CLKID_FCLK_DIV2P5_DIV]		= &g12a_fclk_div2p5_div.hw,
+		[CLKID_HIFI_PLL]		= &g12a_hifi_pll.hw,
+		[CLKID_VCLK2_VENCI0]		= &g12a_vclk2_venci0.hw,
+		[CLKID_VCLK2_VENCI1]		= &g12a_vclk2_venci1.hw,
+		[CLKID_VCLK2_VENCP0]		= &g12a_vclk2_vencp0.hw,
+		[CLKID_VCLK2_VENCP1]		= &g12a_vclk2_vencp1.hw,
+		[CLKID_VCLK2_VENCT0]		= &g12a_vclk2_venct0.hw,
+		[CLKID_VCLK2_VENCT1]		= &g12a_vclk2_venct1.hw,
+		[CLKID_VCLK2_OTHER]		= &g12a_vclk2_other.hw,
+		[CLKID_VCLK2_ENCI]		= &g12a_vclk2_enci.hw,
+		[CLKID_VCLK2_ENCP]		= &g12a_vclk2_encp.hw,
+		[CLKID_DAC_CLK]			= &g12a_dac_clk.hw,
+		[CLKID_AOCLK]			= &g12a_aoclk_gate.hw,
+		[CLKID_IEC958]			= &g12a_iec958_gate.hw,
+		[CLKID_ENC480P]			= &g12a_enc480p.hw,
+		[CLKID_RNG1]			= &g12a_rng1.hw,
+		[CLKID_VCLK2_ENCT]		= &g12a_vclk2_enct.hw,
+		[CLKID_VCLK2_ENCL]		= &g12a_vclk2_encl.hw,
+		[CLKID_VCLK2_VENCLMMC]		= &g12a_vclk2_venclmmc.hw,
+		[CLKID_VCLK2_VENCL]		= &g12a_vclk2_vencl.hw,
+		[CLKID_VCLK2_OTHER1]		= &g12a_vclk2_other1.hw,
+		[CLKID_FIXED_PLL_DCO]		= &g12a_fixed_pll_dco.hw,
+		[CLKID_SYS_PLL_DCO]		= &g12a_sys_pll_dco.hw,
+		[CLKID_GP0_PLL_DCO]		= &g12a_gp0_pll_dco.hw,
+		[CLKID_HIFI_PLL_DCO]		= &g12a_hifi_pll_dco.hw,
+		[CLKID_DMA]			= &g12a_dma.hw,
+		[CLKID_EFUSE]			= &g12a_efuse.hw,
+		[CLKID_ROM_BOOT]		= &g12a_rom_boot.hw,
+		[CLKID_RESET_SEC]		= &g12a_reset_sec.hw,
+		[CLKID_SEC_AHB_APB3]		= &g12a_sec_ahb_apb3.hw,
+		[CLKID_MPLL_PREDIV]		= &g12a_mpll_prediv.hw,
+		[CLKID_VPU_0_SEL]		= &g12a_vpu_0_sel.hw,
+		[CLKID_VPU_0_DIV]		= &g12a_vpu_0_div.hw,
+		[CLKID_VPU_0]			= &g12a_vpu_0.hw,
+		[CLKID_VPU_1_SEL]		= &g12a_vpu_1_sel.hw,
+		[CLKID_VPU_1_DIV]		= &g12a_vpu_1_div.hw,
+		[CLKID_VPU_1]			= &g12a_vpu_1.hw,
+		[CLKID_VPU]			= &g12a_vpu.hw,
+		[CLKID_VAPB_0_SEL]		= &g12a_vapb_0_sel.hw,
+		[CLKID_VAPB_0_DIV]		= &g12a_vapb_0_div.hw,
+		[CLKID_VAPB_0]			= &g12a_vapb_0.hw,
+		[CLKID_VAPB_1_SEL]		= &g12a_vapb_1_sel.hw,
+		[CLKID_VAPB_1_DIV]		= &g12a_vapb_1_div.hw,
+		[CLKID_VAPB_1]			= &g12a_vapb_1.hw,
+		[CLKID_VAPB_SEL]		= &g12a_vapb_sel.hw,
+		[CLKID_VAPB]			= &g12a_vapb.hw,
+		[CLKID_HDMI_PLL_DCO]		= &g12a_hdmi_pll_dco.hw,
+		[CLKID_HDMI_PLL_OD]		= &g12a_hdmi_pll_od.hw,
+		[CLKID_HDMI_PLL_OD2]		= &g12a_hdmi_pll_od2.hw,
+		[CLKID_HDMI_PLL]		= &g12a_hdmi_pll.hw,
+		[CLKID_VID_PLL]			= &g12a_vid_pll_div.hw,
+		[CLKID_VID_PLL_SEL]		= &g12a_vid_pll_sel.hw,
+		[CLKID_VID_PLL_DIV]		= &g12a_vid_pll.hw,
+		[CLKID_VCLK_SEL]		= &g12a_vclk_sel.hw,
+		[CLKID_VCLK2_SEL]		= &g12a_vclk2_sel.hw,
+		[CLKID_VCLK_INPUT]		= &g12a_vclk_input.hw,
+		[CLKID_VCLK2_INPUT]		= &g12a_vclk2_input.hw,
+		[CLKID_VCLK_DIV]		= &g12a_vclk_div.hw,
+		[CLKID_VCLK2_DIV]		= &g12a_vclk2_div.hw,
+		[CLKID_VCLK]			= &g12a_vclk.hw,
+		[CLKID_VCLK2]			= &g12a_vclk2.hw,
+		[CLKID_VCLK_DIV1]		= &g12a_vclk_div1.hw,
+		[CLKID_VCLK_DIV2_EN]		= &g12a_vclk_div2_en.hw,
+		[CLKID_VCLK_DIV4_EN]		= &g12a_vclk_div4_en.hw,
+		[CLKID_VCLK_DIV6_EN]		= &g12a_vclk_div6_en.hw,
+		[CLKID_VCLK_DIV12_EN]		= &g12a_vclk_div12_en.hw,
+		[CLKID_VCLK2_DIV1]		= &g12a_vclk2_div1.hw,
+		[CLKID_VCLK2_DIV2_EN]		= &g12a_vclk2_div2_en.hw,
+		[CLKID_VCLK2_DIV4_EN]		= &g12a_vclk2_div4_en.hw,
+		[CLKID_VCLK2_DIV6_EN]		= &g12a_vclk2_div6_en.hw,
+		[CLKID_VCLK2_DIV12_EN]		= &g12a_vclk2_div12_en.hw,
+		[CLKID_VCLK_DIV2]		= &g12a_vclk_div2.hw,
+		[CLKID_VCLK_DIV4]		= &g12a_vclk_div4.hw,
+		[CLKID_VCLK_DIV6]		= &g12a_vclk_div6.hw,
+		[CLKID_VCLK_DIV12]		= &g12a_vclk_div12.hw,
+		[CLKID_VCLK2_DIV2]		= &g12a_vclk2_div2.hw,
+		[CLKID_VCLK2_DIV4]		= &g12a_vclk2_div4.hw,
+		[CLKID_VCLK2_DIV6]		= &g12a_vclk2_div6.hw,
+		[CLKID_VCLK2_DIV12]		= &g12a_vclk2_div12.hw,
+		[CLKID_CTS_ENCI_SEL]		= &g12a_cts_enci_sel.hw,
+		[CLKID_CTS_ENCP_SEL]		= &g12a_cts_encp_sel.hw,
+		[CLKID_CTS_VDAC_SEL]		= &g12a_cts_vdac_sel.hw,
+		[CLKID_HDMI_TX_SEL]		= &g12a_hdmi_tx_sel.hw,
+		[CLKID_CTS_ENCI]		= &g12a_cts_enci.hw,
+		[CLKID_CTS_ENCP]		= &g12a_cts_encp.hw,
+		[CLKID_CTS_VDAC]		= &g12a_cts_vdac.hw,
+		[CLKID_HDMI_TX]			= &g12a_hdmi_tx.hw,
+		[CLKID_HDMI_SEL]		= &g12a_hdmi_sel.hw,
+		[CLKID_HDMI_DIV]		= &g12a_hdmi_div.hw,
+		[CLKID_HDMI]			= &g12a_hdmi.hw,
+		[CLKID_MALI_0_SEL]		= &g12a_mali_0_sel.hw,
+		[CLKID_MALI_0_DIV]		= &g12a_mali_0_div.hw,
+		[CLKID_MALI_0]			= &g12a_mali_0.hw,
+		[CLKID_MALI_1_SEL]		= &g12a_mali_1_sel.hw,
+		[CLKID_MALI_1_DIV]		= &g12a_mali_1_div.hw,
+		[CLKID_MALI_1]			= &g12a_mali_1.hw,
+		[CLKID_MALI]			= &g12a_mali.hw,
+		[CLKID_MPLL_50M_DIV]		= &g12a_mpll_50m_div.hw,
+		[CLKID_MPLL_50M]		= &g12a_mpll_50m.hw,
+		[CLKID_SYS_PLL_DIV16_EN]	= &g12a_sys_pll_div16_en.hw,
+		[CLKID_SYS_PLL_DIV16]		= &g12a_sys_pll_div16.hw,
+		[CLKID_CPU_CLK_DYN0_SEL]	= &g12a_cpu_clk_premux0.hw,
+		[CLKID_CPU_CLK_DYN0_DIV]	= &g12a_cpu_clk_mux0_div.hw,
+		[CLKID_CPU_CLK_DYN0]		= &g12a_cpu_clk_postmux0.hw,
+		[CLKID_CPU_CLK_DYN1_SEL]	= &g12a_cpu_clk_premux1.hw,
+		[CLKID_CPU_CLK_DYN1_DIV]	= &g12a_cpu_clk_mux1_div.hw,
+		[CLKID_CPU_CLK_DYN1]		= &g12a_cpu_clk_postmux1.hw,
+		[CLKID_CPU_CLK_DYN]		= &g12a_cpu_clk_dyn.hw,
+		[CLKID_CPU_CLK]			= &g12b_cpu_clk.hw,
+		[CLKID_CPU_CLK_DIV16_EN]	= &g12a_cpu_clk_div16_en.hw,
+		[CLKID_CPU_CLK_DIV16]		= &g12a_cpu_clk_div16.hw,
+		[CLKID_CPU_CLK_APB_DIV]		= &g12a_cpu_clk_apb_div.hw,
+		[CLKID_CPU_CLK_APB]		= &g12a_cpu_clk_apb.hw,
+		[CLKID_CPU_CLK_ATB_DIV]		= &g12a_cpu_clk_atb_div.hw,
+		[CLKID_CPU_CLK_ATB]		= &g12a_cpu_clk_atb.hw,
+		[CLKID_CPU_CLK_AXI_DIV]		= &g12a_cpu_clk_axi_div.hw,
+		[CLKID_CPU_CLK_AXI]		= &g12a_cpu_clk_axi.hw,
+		[CLKID_CPU_CLK_TRACE_DIV]	= &g12a_cpu_clk_trace_div.hw,
+		[CLKID_CPU_CLK_TRACE]		= &g12a_cpu_clk_trace.hw,
+		[CLKID_PCIE_PLL_DCO]		= &g12a_pcie_pll_dco.hw,
+		[CLKID_PCIE_PLL_DCO_DIV2]	= &g12a_pcie_pll_dco_div2.hw,
+		[CLKID_PCIE_PLL_OD]		= &g12a_pcie_pll_od.hw,
+		[CLKID_PCIE_PLL]		= &g12a_pcie_pll.hw,
+		[CLKID_VDEC_1_SEL]		= &g12a_vdec_1_sel.hw,
+		[CLKID_VDEC_1_DIV]		= &g12a_vdec_1_div.hw,
+		[CLKID_VDEC_1]			= &g12a_vdec_1.hw,
+		[CLKID_VDEC_HEVC_SEL]		= &g12a_vdec_hevc_sel.hw,
+		[CLKID_VDEC_HEVC_DIV]		= &g12a_vdec_hevc_div.hw,
+		[CLKID_VDEC_HEVC]		= &g12a_vdec_hevc.hw,
+		[CLKID_VDEC_HEVCF_SEL]		= &g12a_vdec_hevcf_sel.hw,
+		[CLKID_VDEC_HEVCF_DIV]		= &g12a_vdec_hevcf_div.hw,
+		[CLKID_VDEC_HEVCF]		= &g12a_vdec_hevcf.hw,
+		[CLKID_TS_DIV]			= &g12a_ts_div.hw,
+		[CLKID_TS]			= &g12a_ts.hw,
+		[CLKID_SYS1_PLL_DCO]		= &g12b_sys1_pll_dco.hw,
+		[CLKID_SYS1_PLL]		= &g12b_sys1_pll.hw,
+		[CLKID_SYS1_PLL_DIV16_EN]	= &g12b_sys1_pll_div16_en.hw,
+		[CLKID_SYS1_PLL_DIV16]		= &g12b_sys1_pll_div16.hw,
+		[CLKID_CPUB_CLK_DYN0_SEL]	= &g12b_cpub_clk_premux0.hw,
+		[CLKID_CPUB_CLK_DYN0_DIV]	= &g12b_cpub_clk_mux0_div.hw,
+		[CLKID_CPUB_CLK_DYN0]		= &g12b_cpub_clk_postmux0.hw,
+		[CLKID_CPUB_CLK_DYN1_SEL]	= &g12b_cpub_clk_premux1.hw,
+		[CLKID_CPUB_CLK_DYN1_DIV]	= &g12b_cpub_clk_mux1_div.hw,
+		[CLKID_CPUB_CLK_DYN1]		= &g12b_cpub_clk_postmux1.hw,
+		[CLKID_CPUB_CLK_DYN]		= &g12b_cpub_clk_dyn.hw,
+		[CLKID_CPUB_CLK]		= &g12b_cpub_clk.hw,
+		[CLKID_CPUB_CLK_DIV16_EN]	= &g12b_cpub_clk_div16_en.hw,
+		[CLKID_CPUB_CLK_DIV16]		= &g12b_cpub_clk_div16.hw,
+		[CLKID_CPUB_CLK_DIV2]		= &g12b_cpub_clk_div2.hw,
+		[CLKID_CPUB_CLK_DIV3]		= &g12b_cpub_clk_div3.hw,
+		[CLKID_CPUB_CLK_DIV4]		= &g12b_cpub_clk_div4.hw,
+		[CLKID_CPUB_CLK_DIV5]		= &g12b_cpub_clk_div5.hw,
+		[CLKID_CPUB_CLK_DIV6]		= &g12b_cpub_clk_div6.hw,
+		[CLKID_CPUB_CLK_DIV7]		= &g12b_cpub_clk_div7.hw,
+		[CLKID_CPUB_CLK_DIV8]		= &g12b_cpub_clk_div8.hw,
+		[CLKID_CPUB_CLK_APB_SEL]	= &g12b_cpub_clk_apb_sel.hw,
+		[CLKID_CPUB_CLK_APB]		= &g12b_cpub_clk_apb.hw,
+		[CLKID_CPUB_CLK_ATB_SEL]	= &g12b_cpub_clk_atb_sel.hw,
+		[CLKID_CPUB_CLK_ATB]		= &g12b_cpub_clk_atb.hw,
+		[CLKID_CPUB_CLK_AXI_SEL]	= &g12b_cpub_clk_axi_sel.hw,
+		[CLKID_CPUB_CLK_AXI]		= &g12b_cpub_clk_axi.hw,
+		[CLKID_CPUB_CLK_TRACE_SEL]	= &g12b_cpub_clk_trace_sel.hw,
+		[CLKID_CPUB_CLK_TRACE]		= &g12b_cpub_clk_trace.hw,
+		[NR_CLKS]			= NULL,
+	},
+	.num = NR_CLKS,
+};
+
 /* Convenience table to populate regmap in .probe */
 static struct clk_regmap *const g12a_clk_regmaps[] = {
 	&g12a_clk81,
@@ -3021,6 +3755,27 @@ static struct clk_regmap *const g12a_clk_regmaps[] = {
 	&g12a_vdec_hevcf,
 	&g12a_ts_div,
 	&g12a_ts,
+	&g12b_cpu_clk,
+	&g12b_sys1_pll_dco,
+	&g12b_sys1_pll,
+	&g12b_sys1_pll_div16_en,
+	&g12b_cpub_clk_premux0,
+	&g12b_cpub_clk_mux0_div,
+	&g12b_cpub_clk_postmux0,
+	&g12b_cpub_clk_premux1,
+	&g12b_cpub_clk_mux1_div,
+	&g12b_cpub_clk_postmux1,
+	&g12b_cpub_clk_dyn,
+	&g12b_cpub_clk,
+	&g12b_cpub_clk_div16_en,
+	&g12b_cpub_clk_apb_sel,
+	&g12b_cpub_clk_apb,
+	&g12b_cpub_clk_atb_sel,
+	&g12b_cpub_clk_atb,
+	&g12b_cpub_clk_axi_sel,
+	&g12b_cpub_clk_axi,
+	&g12b_cpub_clk_trace_sel,
+	&g12b_cpub_clk_trace,
 };
 
 static const struct reg_sequence g12a_init_regs[] = {
@@ -3035,8 +3790,15 @@ static const struct meson_eeclkc_data g12a_clkc_data = {
 	.init_count = ARRAY_SIZE(g12a_init_regs),
 };
 
+static const struct meson_eeclkc_data g12b_clkc_data = {
+	.regmap_clks = g12a_clk_regmaps,
+	.regmap_clk_num = ARRAY_SIZE(g12a_clk_regmaps),
+	.hw_onecell_data = &g12b_hw_onecell_data
+};
+
 static const struct of_device_id clkc_match_table[] = {
 	{ .compatible = "amlogic,g12a-clkc", .data = &g12a_clkc_data },
+	{ .compatible = "amlogic,g12b-clkc", .data = &g12b_clkc_data },
 	{}
 };
 
diff --git a/drivers/clk/meson/g12a.h b/drivers/clk/meson/g12a.h
index bda1501ba671..c8aed31fbe17 100644
--- a/drivers/clk/meson/g12a.h
+++ b/drivers/clk/meson/g12a.h
@@ -69,6 +69,8 @@
 #define HHI_VDEC4_CLK_CNTL		0x1EC
 #define HHI_HDCP22_CLK_CNTL		0x1F0
 #define HHI_VAPBCLK_CNTL		0x1F4
+#define HHI_SYS_CPUB_CLK_CNTL1		0x200
+#define HHI_SYS_CPUB_CLK_CNTL		0x208
 #define HHI_VPU_CLKB_CNTL		0x20C
 #define HHI_GEN_CLK_CNTL		0x228
 #define HHI_VDIN_MEAS_CLK_CNTL		0x250
@@ -102,6 +104,13 @@
 #define HHI_HDMI_PLL_CNTL5		0x334
 #define HHI_HDMI_PLL_CNTL6		0x338
 #define HHI_SPICC_CLK_CNTL		0x3dc
+#define HHI_SYS1_PLL_CNTL0		0x380
+#define HHI_SYS1_PLL_CNTL1		0x384
+#define HHI_SYS1_PLL_CNTL2		0x388
+#define HHI_SYS1_PLL_CNTL3		0x38c
+#define HHI_SYS1_PLL_CNTL4		0x390
+#define HHI_SYS1_PLL_CNTL5		0x394
+#define HHI_SYS1_PLL_CNTL6		0x398
 
 /*
  * CLKID index values
@@ -196,8 +205,37 @@
 #define CLKID_VDEC_HEVCF_SEL			208
 #define CLKID_VDEC_HEVCF_DIV			209
 #define CLKID_TS_DIV				211
+#define CLKID_SYS1_PLL_DCO			213
+#define CLKID_SYS1_PLL				214
+#define CLKID_SYS1_PLL_DIV16_EN			215
+#define CLKID_SYS1_PLL_DIV16			216
+#define CLKID_CPUB_CLK_DYN0_SEL			217
+#define CLKID_CPUB_CLK_DYN0_DIV			218
+#define CLKID_CPUB_CLK_DYN0			219
+#define CLKID_CPUB_CLK_DYN1_SEL			220
+#define CLKID_CPUB_CLK_DYN1_DIV			221
+#define CLKID_CPUB_CLK_DYN1			222
+#define CLKID_CPUB_CLK_DYN			223
+#define CLKID_CPUB_CLK				224
+#define CLKID_CPUB_CLK_DIV16_EN			225
+#define CLKID_CPUB_CLK_DIV16			226
+#define CLKID_CPUB_CLK_DIV2			227
+#define CLKID_CPUB_CLK_DIV3			228
+#define CLKID_CPUB_CLK_DIV4			229
+#define CLKID_CPUB_CLK_DIV5			230
+#define CLKID_CPUB_CLK_DIV6			231
+#define CLKID_CPUB_CLK_DIV7			232
+#define CLKID_CPUB_CLK_DIV8			233
+#define CLKID_CPUB_CLK_APB_SEL			234
+#define CLKID_CPUB_CLK_APB			235
+#define CLKID_CPUB_CLK_ATB_SEL			236
+#define CLKID_CPUB_CLK_ATB			237
+#define CLKID_CPUB_CLK_AXI_SEL			238
+#define CLKID_CPUB_CLK_AXI			239
+#define CLKID_CPUB_CLK_TRACE_SEL		240
+#define CLKID_CPUB_CLK_TRACE			241
 
-#define NR_CLKS					213
+#define NR_CLKS					242
 
 /* include the CLKIDs that have been made part of the DT binding */
 #include <dt-bindings/clock/g12a-clkc.h>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
