Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E740E1A396B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 19:57:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fkX6nQ8u4oos+WO9+FABwqW4ALj6Px4b5gbN+KmLAqA=; b=McFGHvw+xrgBDi
	X2AVkhhKGrLddx9kxu0KgZddE2DfXsqo1vjul3VFgvu3V4qZ6P/Sxc0RjMiyPrxz0JFMC/LjpxS4c
	dKlf+sGNUsgqeLcgw12cvifurkYZ1huaGvO70AopMoWHSSRDbqsdJUoPLMXkg6CSI7LEgEwVs4svK
	PtX47WiPYjf6KezCgwBpuHSFUEqiPZYSu1iM+0xAH6cEuzZwga1bhk++71dKrUS3Ym59dbGgFzy+Z
	hLa+IS48ZJ4KK7N5pAm3q5tamTqQ24AItwPGhsHcJASYbjixVYIum1FEubPAO7kQfs9X49a5RbgIE
	x9yCvA7Kds/lqkXybmJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMbQC-0003S1-Dz; Thu, 09 Apr 2020 17:57:00 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMbMc-0006Dl-9P
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 17:53:21 +0000
Received: by mail-wm1-x343.google.com with SMTP id d202so657062wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 10:53:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kd2k1S51AJoxXmx0CELtwbdw2XFSi2rd3QAA3OfIUBE=;
 b=CZc7Av/tDJHLKb+y3ZYorBL2C0GVxIn1jVZAODB13uuE2DVT3+L/Blmn9FPUp/rx2s
 uCVIOh/jKKkm54vHf5q/5GZ5o9nXjkR8WlBGMEIR35UyL/6A5+Dam5JV864tVgSbkZpm
 afcLSkwbBLZECsrj8QklCQGQPgYMb1O20ZQyQNT+H8z2FGfaR5m8nXLeqeoGjr7TxV+r
 z0zRJwXDDP4q35I400nXE8Ewgg6N1F9jQ512zB4OW2tldbgYTrc/zt3GKeO/eEjVxPzR
 PMoiW0DphxH/q8c9UVCSIpJamzL/oXASQeG/+IcLwbnBRhgDxhEAyMXP1rH6d1R+isvM
 oCsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kd2k1S51AJoxXmx0CELtwbdw2XFSi2rd3QAA3OfIUBE=;
 b=i9DOUPA2jE8xNfYktzyGO65A1QfvvzkabVr4O8q62Y/sfIj9L9lNlAtpUhGYp5VV7z
 cTrmAzDRtsIEZ6PCxDRI0rOVmKqbvQIkYYdLjmRc3q0vvYhq3BWlxEEzt6G+qh+DZyMI
 RcZftBH7tUKehn06VY76C0mIZz48i97HygM+SNTYHrFarASpu+5QzqiExpzXOZ3HEQW6
 Qi2gddrwuN2RZlIbzPM/VheLiIFoF7gdN38KzpigTw19UPrydY7RBybbfpuuV7Z97tD3
 w+EPk38dEoRRFTTu0kqruZP/NR++J9XS8Y2TEa1DhfMmnA/5y/Yx0/zXjBqxmUXQMDBa
 jqWA==
X-Gm-Message-State: AGi0PubjeyONKURoArkkgTdeykV47fJpKJhmlF4SJrHHLyrsch5RTiVU
 rW5OIYNUJrZY6NhMyr4PsLs=
X-Google-Smtp-Source: APiQypI9UtNZG2r3E9m02wmzNZ2WOjfhJifbGFR+gxfruOnf+Bfm1wLq7C79VH+JrzevKZ4ojZvrCA==
X-Received: by 2002:a05:600c:2341:: with SMTP id
 1mr941714wmq.153.1586454795997; 
 Thu, 09 Apr 2020 10:53:15 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id w11sm4460804wmi.32.2020.04.09.10.53.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 10:53:14 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v6 14/14] clk: tegra: Remove the old emc_mux clock for Tegra210
Date: Thu,  9 Apr 2020 19:52:38 +0200
Message-Id: <20200409175238.3586487-15-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200409175238.3586487-1-thierry.reding@gmail.com>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_105318_382855_5D3319AB 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 Dmitry Osipenko <digetx@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Joseph Lo <josephl@nvidia.com>

Remove the old emc_mux clock and don't use the common EMC clock
definition. This will be replaced by a new clock defined in the
EMC driver.

Signed-off-by: Joseph Lo <josephl@nvidia.com>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/clk/tegra/clk-tegra210.c | 50 ++++++++++++++++++++------------
 1 file changed, 31 insertions(+), 19 deletions(-)

diff --git a/drivers/clk/tegra/clk-tegra210.c b/drivers/clk/tegra/clk-tegra210.c
index 798920ec50e9..f2bb188fbc6a 100644
--- a/drivers/clk/tegra/clk-tegra210.c
+++ b/drivers/clk/tegra/clk-tegra210.c
@@ -319,12 +319,6 @@ static unsigned long tegra210_input_freq[] = {
 	[8] = 12000000,
 };
 
-static const char *mux_pllmcp_clkm[] = {
-	"pll_m", "pll_c", "pll_p", "clk_m", "pll_m_ud", "pll_mb", "pll_mb",
-	"pll_p",
-};
-#define mux_pllmcp_clkm_idx NULL
-
 #define PLL_ENABLE			(1 << 30)
 
 #define PLLCX_MISC1_IDDQ		(1 << 27)
@@ -2336,7 +2330,6 @@ static struct tegra_clk tegra210_clks[tegra_clk_max] __initdata = {
 	[tegra_clk_i2c2] = { .dt_id = TEGRA210_CLK_I2C2, .present = true },
 	[tegra_clk_uartc_8] = { .dt_id = TEGRA210_CLK_UARTC, .present = true },
 	[tegra_clk_mipi_cal] = { .dt_id = TEGRA210_CLK_MIPI_CAL, .present = true },
-	[tegra_clk_emc] = { .dt_id = TEGRA210_CLK_EMC, .present = true },
 	[tegra_clk_usb2] = { .dt_id = TEGRA210_CLK_USB2, .present = true },
 	[tegra_clk_bsev] = { .dt_id = TEGRA210_CLK_BSEV, .present = true },
 	[tegra_clk_uartd_8] = { .dt_id = TEGRA210_CLK_UARTD, .present = true },
@@ -2979,6 +2972,27 @@ static const char * const sor1_parents[] = {
 
 static u32 sor1_parents_idx[] = { 0, 2, 5, 6 };
 
+static const struct clk_div_table mc_div_table_tegra210[] = {
+	{ .val = 0, .div = 2 },
+	{ .val = 1, .div = 4 },
+	{ .val = 2, .div = 1 },
+	{ .val = 3, .div = 2 },
+	{ .val = 0, .div = 0 },
+};
+
+static void tegra210_clk_register_mc(const char *name,
+				     const char *parent_name)
+{
+	struct clk *clk;
+
+	clk = clk_register_divider_table(NULL, name, parent_name,
+					 CLK_IS_CRITICAL,
+					 clk_base + CLK_SOURCE_EMC,
+					 15, 2, CLK_DIVIDER_READ_ONLY,
+					 mc_div_table_tegra210, &emc_lock);
+	clks[TEGRA210_CLK_MC] = clk;
+}
+
 static const char * const sor1_out_parents[] = {
 	/*
 	 * Bit 0 of the mux selects sor1_pad_clkout, irrespective of bit 1, so
@@ -3021,7 +3035,8 @@ static const char * const la_parents[] = {
 static struct tegra_clk_periph tegra210_la =
 	TEGRA_CLK_PERIPH(29, 7, 9, 0, 8, 1, TEGRA_DIVIDER_ROUND_UP, 76, 0, NULL, NULL);
 
-static __init void tegra210_periph_clk_init(void __iomem *clk_base,
+static __init void tegra210_periph_clk_init(struct device_node *np,
+					    void __iomem *clk_base,
 					    void __iomem *pmc_base)
 {
 	struct clk *clk;
@@ -3067,16 +3082,6 @@ static __init void tegra210_periph_clk_init(void __iomem *clk_base,
 			CLK_SOURCE_LA, 0);
 	clks[TEGRA210_CLK_LA] = clk;
 
-	/* emc mux */
-	clk = clk_register_mux(NULL, "emc_mux", mux_pllmcp_clkm,
-			       ARRAY_SIZE(mux_pllmcp_clkm), 0,
-			       clk_base + CLK_SOURCE_EMC,
-			       29, 3, 0, &emc_lock);
-
-	clk = tegra_clk_register_mc("mc", "emc_mux", clk_base + CLK_SOURCE_EMC,
-				    &emc_lock);
-	clks[TEGRA210_CLK_MC] = clk;
-
 	/* cml0 */
 	clk = clk_register_gate(NULL, "cml0", "pll_e", 0, clk_base + PLLE_AUX,
 				0, 0, &pll_e_lock);
@@ -3119,6 +3124,13 @@ static __init void tegra210_periph_clk_init(void __iomem *clk_base,
 	}
 
 	tegra_periph_clk_init(clk_base, pmc_base, tegra210_clks, &pll_p_params);
+
+	/* emc */
+	clk = tegra210_clk_register_emc(np, clk_base);
+	clks[TEGRA210_CLK_EMC] = clk;
+
+	/* mc */
+	tegra210_clk_register_mc("mc", "emc");
 }
 
 static void __init tegra210_pll_init(void __iomem *clk_base,
@@ -3717,7 +3729,7 @@ static void __init tegra210_clock_init(struct device_node *np)
 
 	tegra_fixed_clk_init(tegra210_clks);
 	tegra210_pll_init(clk_base, pmc_base);
-	tegra210_periph_clk_init(clk_base, pmc_base);
+	tegra210_periph_clk_init(np, clk_base, pmc_base);
 	tegra_audio_clk_init(clk_base, pmc_base, tegra210_clks,
 			     tegra210_audio_plls,
 			     ARRAY_SIZE(tegra210_audio_plls), 24576000);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
