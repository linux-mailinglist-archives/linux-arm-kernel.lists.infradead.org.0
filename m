Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8661801AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 16:22:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KBG8KmmbaJWcQeLpU6Cqxie4ocxPEYyUGA7b04JdkN4=; b=i3lPM0rDCTuIHg
	24fFvvG7q/WSKu9ct3Gv6xuHpsPZZHUaOZhL4yutJoZ++0FeQSYo+voqV5uGxSTO7Hp1/BVAD8jDM
	dFxeZ09OLQvygUHHF1ct8YS80aXtMqytFFxBqFga9vc4pe5ULwUnPg9VOT13L4BT1qJ2ensKHos9+
	QJQwOuqKG0foyTR/fLvRX9/UvOFwydy3nZ209RCgomf4ouiaynnV2jHppTPvz/at8vUfztEPTvoI2
	8+sWQzOMOpwV0Z8I2lS822JoErEK+v0JmZ5zR9hGkBy3L33EQH2at0CPqJipqtDHvcqEbauSyxvuh
	17IsvUN+hmiTEzgl9ZLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBgiI-000438-HW; Tue, 10 Mar 2020 15:22:34 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBggH-0002Js-HC
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 15:20:32 +0000
Received: by mail-wr1-x443.google.com with SMTP id s5so12487687wrg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 08:20:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ii2BrewVS3q4fYdTKcoF5y7GinLZa/uKgQ7LuFVDOiE=;
 b=mg2P+mWIwefea2Gb4MbVfGYZyYQ/wESleXFBAU4JH6aLt3sl8z0AHjHfh+G3NtU31g
 KomkkTDwg8i1XsIUw0klCGuKm+WEyRL+zw7v5GoA6yg7LiDR4xcTCd/f2T9wJ+DnwD39
 6mHkCwo1Rut9S89gI+b3bwe4jUB5NI+f52D6HXft8JDw3Y8W68NYnLYf+m46yDFHIGX8
 K4PXT7vjnudt0xVlGOfXB7jONl7ObhhavdF3Q+unKhWVDnWCqk4A7lKM1pgkLg6z2viA
 cUKnlyeiVmBN+0ixLZmksTGwJcGJ+NwLHSbt58y2qgzYFn6nZ/UdID6fOeyfL5j8M5L4
 Ys1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ii2BrewVS3q4fYdTKcoF5y7GinLZa/uKgQ7LuFVDOiE=;
 b=b91YPROFLCR4ZjYV5Fud8sIrC1OyQfpyED3kY0TpTt78b/km7lzotOC1oqRM+Cb1Kl
 rc13gvtHHlNOTirTN0OCOq6GXaN5bUT6xtPI5l6jgmZki94B9bMlMYZZE8SvWA1punC0
 GLV/mr8i6dR9IpUvJxDxLanfr7duISlbDPI0gKCKIKFGJ0hDATN1ynRzBZHU8x4Ro6gf
 PlcwHaAvGwP5q2QwEIYN6d6aguZRqsrePs4ZRSU3cVc/sKCvUWq4oa956TdSUCZV5C1o
 G6j6i/gthybU+sV4ZwNElVw1AWwUfGoqQon2O2GeTj7QJvlrVHRorLfxrEkFinEqGQtv
 vgag==
X-Gm-Message-State: ANhLgQ0XTPPQgDI0llFIdEn5A/F+lTd6sZiajeCmoBDhbA1hqwACkt83
 mHjMqre/c1B02Q3UgEH08a8=
X-Google-Smtp-Source: ADFU+vtqTs4uQrDAjryzWDvDnNDQaQ9//VXaPAg8U0G9Hcxghhfz7KMqFy3Tr5AdeGHNKXA3DcuEfw==
X-Received: by 2002:a5d:6aca:: with SMTP id u10mr26376254wrw.99.1583853628261; 
 Tue, 10 Mar 2020 08:20:28 -0700 (PDT)
Received: from localhost (pD9E516A9.dip0.t-ipconnect.de. [217.229.22.169])
 by smtp.gmail.com with ESMTPSA id t18sm4676558wml.17.2020.03.10.08.20.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 08:20:27 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v5 8/8] clk: tegra: Remove the old emc_mux clock for Tegra210
Date: Tue, 10 Mar 2020 16:20:03 +0100
Message-Id: <20200310152003.2945170-9-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200310152003.2945170-1-thierry.reding@gmail.com>
References: <20200310152003.2945170-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_082029_624862_8ECA67B6 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Jon Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
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
 drivers/clk/tegra/clk-tegra210.c | 46 ++++++++++++++++++++------------
 1 file changed, 29 insertions(+), 17 deletions(-)

diff --git a/drivers/clk/tegra/clk-tegra210.c b/drivers/clk/tegra/clk-tegra210.c
index 0a5be781da60..53a570b1fc29 100644
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
@@ -2987,6 +2980,27 @@ static const char * const sor1_parents[] = {
 
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
@@ -3029,7 +3043,8 @@ static const char * const la_parents[] = {
 static struct tegra_clk_periph tegra210_la =
 	TEGRA_CLK_PERIPH(29, 7, 9, 0, 8, 1, TEGRA_DIVIDER_ROUND_UP, 76, 0, NULL, 0);
 
-static __init void tegra210_periph_clk_init(void __iomem *clk_base,
+static __init void tegra210_periph_clk_init(struct device_node *np,
+					    void __iomem *clk_base,
 					    void __iomem *pmc_base)
 {
 	struct clk *clk;
@@ -3075,15 +3090,12 @@ static __init void tegra210_periph_clk_init(void __iomem *clk_base,
 			CLK_SOURCE_LA, 0);
 	clks[TEGRA210_CLK_LA] = clk;
 
-	/* emc mux */
-	clk = clk_register_mux(NULL, "emc_mux", mux_pllmcp_clkm,
-			       ARRAY_SIZE(mux_pllmcp_clkm), 0,
-			       clk_base + CLK_SOURCE_EMC,
-			       29, 3, 0, &emc_lock);
+	/* emc */
+	clk = tegra210_clk_register_emc(np, clk_base);
+	clks[TEGRA210_CLK_EMC] = clk;
 
-	clk = tegra_clk_register_mc("mc", "emc_mux", clk_base + CLK_SOURCE_EMC,
-				    &emc_lock);
-	clks[TEGRA210_CLK_MC] = clk;
+	/* mc */
+	tegra210_clk_register_mc("mc", "emc");
 
 	/* cml0 */
 	clk = clk_register_gate(NULL, "cml0", "pll_e", 0, clk_base + PLLE_AUX,
@@ -3728,7 +3740,7 @@ static void __init tegra210_clock_init(struct device_node *np)
 
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
