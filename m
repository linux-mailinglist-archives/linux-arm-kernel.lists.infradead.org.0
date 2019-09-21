Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D06B9E77
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Sep 2019 17:14:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3bTesdBYFexnUelhS+unsLISwWp80/qh4dDb/tNXmlA=; b=HG/6o1F+00h5Sj
	LncK7ISfYvDbsYybxAGh3xqhP4cwjKREyZcaG3MFMhQO1xXrZ1KpTAo5oBrDSoOGjZ9Y5iHTJGDqb
	7v7niB04Zv+dJd4oeHeMxapJI8yse+sQEEnLiHfG9TYcyStEI/kkHTP9t/qxCB1FJjNI1df03oGas
	IEA2YZMCQEakWTCLwpoD8zo9d/1/o4AVjzzpz4AaerFThSC7Kp5AVX6E5YKYn+GJeZ7FJBvHiOGIa
	zCaXLLonfP9AlvLw5GM96lYMWju3NM2qlmrc3VTq9bGFJXiKjmD9CCjB0AwJIc7BllMDrEaFiQQXI
	qY1UBtCrX96OSVzQcIMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBh5M-00081f-Hw; Sat, 21 Sep 2019 15:14:08 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBh45-00078M-DU; Sat, 21 Sep 2019 15:12:51 +0000
Received: by mail-wr1-x441.google.com with SMTP id a11so9649801wrx.1;
 Sat, 21 Sep 2019 08:12:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+ELKKDirjp0oZPBJ44VpnYEwyvsV3MSi9kYfRjT4vis=;
 b=tSf36BVWvtXx+VPiJbvevWv9xlJ1MUcJK4nZLS1qWGYNLxNoHdV/7xgWGIod4J18ne
 9bpfamIpQ6rlDAewCfWEch+b3DIMg12XG5ZiLs5/C2Cx4Z4YXWyux/iDi3msAT3US/ry
 Pko0MtDG5LmeNd2zARa2loDVGhCAdgexNmZIFqU/PEPNVQoAX3MRPpvpkC28NZvuzL4c
 kXztKPpRiaAru9syL6RcQ0CwNAiCFbJsDJw0PD9/k3hWR9kV34MPf2RssSYirgiJeucn
 TGFOqWe5OeaVg9FWH83tY5HoV0MCZYvjWWXH6jLnsZbeeTEcrI6HCBFonKgTt96aczaY
 T4Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+ELKKDirjp0oZPBJ44VpnYEwyvsV3MSi9kYfRjT4vis=;
 b=ieAUsJ4NhowT0C/S8qCMduUMJca1YZN5u0L8X8G+uOWW3Eou85F8uo/CUrX34VQdCC
 byPWolXLQjfoZrbTvAC5S2yJg1gxoWh0VbvzhdBMAA/K6Ps8lYS/ZzEjs2uqN0lIoXyi
 CMoi8J0IJeytHDZHhxOzTNH8uzIjVI3jWPDBAUs27w6tCyHnbYQoCzpg6nAJi1+kBe02
 F+Jl4sNXwGqxUnqYJZOjjSneblpfwJMwBwKYLtjF3rPGfvWgWfJgh0i3NIHozA+gAaNY
 mtT07QWTkXeJZII90ZkcgLVJ8tLj55MvZpIxEVVCOOn7AXfuLlYzDSTmt23vDuQoVnZU
 73QA==
X-Gm-Message-State: APjAAAVtLHFLnqjrdLByRf9dddNuHmIrNXIh3dbOXzcqYgzbVQ6A4iB/
 ZnWs6sEyWd18uoGCgxyK0rM=
X-Google-Smtp-Source: APXvYqwx45owz2FGuyA/qiPoL6+BJkR2g+Q1oinww/HO5IBtLhd+znAWfPtMJt/w4Y6dclBVZlf0Og==
X-Received: by 2002:a5d:5403:: with SMTP id g3mr15302198wrv.338.1569078767754; 
 Sat, 21 Sep 2019 08:12:47 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133CE0B0028BAA8C744A6F562.dip0.t-ipconnect.de.
 [2003:f1:33ce:b00:28ba:a8c7:44a6:f562])
 by smtp.googlemail.com with ESMTPSA id
 y186sm10712491wmb.41.2019.09.21.08.12.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Sep 2019 08:12:46 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: narmstrong@baylibre.com, jbrunet@baylibre.com, robh+dt@kernel.org,
 mark.rutland@arm.com, linux-amlogic@lists.infradead.org,
 devicetree@vger.kernel.org, khilman@baylibre.com
Subject: [PATCH 3/5] clk: meson: meson8b: change references to the XTAL clock
 to use the name
Date: Sat, 21 Sep 2019 17:12:21 +0200
Message-Id: <20190921151223.768842-4-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190921151223.768842-1-martin.blumenstingl@googlemail.com>
References: <20190921151223.768842-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_081249_487313_3BE6131A 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The XTAL clock is an actual crystal which is mounted on the PCB. Thus
the meson8b clock controller driver should not provide the XTAL clock.

The meson8b clock controller driver must not use references to
the meson8b_xtal clock anymore before we can provide the XTAL clock
via OF. Replace the references to the meson8b_xtal.hw by using
clk_parent_data.name = "xtal" (along with index = -1) because this works
regardless how the XTAL clock is registered (either as fixed-clock in
the .dtb or - if missing - when registered in the meson8b clock
controller driver).

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/clk/meson/meson8b.c | 73 ++++++++++++++++++++-----------------
 1 file changed, 39 insertions(+), 34 deletions(-)

diff --git a/drivers/clk/meson/meson8b.c b/drivers/clk/meson/meson8b.c
index d376f80e806d..b785b67baf2b 100644
--- a/drivers/clk/meson/meson8b.c
+++ b/drivers/clk/meson/meson8b.c
@@ -97,8 +97,9 @@ static struct clk_regmap meson8b_fixed_pll_dco = {
 	.hw.init = &(struct clk_init_data){
 		.name = "fixed_pll_dco",
 		.ops = &meson_clk_pll_ro_ops,
-		.parent_hws = (const struct clk_hw *[]) {
-			&meson8b_xtal.hw
+		.parent_data = &(const struct clk_parent_data) {
+			.name = "xtal",
+			.index = -1,
 		},
 		.num_parents = 1,
 	},
@@ -162,8 +163,9 @@ static struct clk_regmap meson8b_hdmi_pll_dco = {
 		/* sometimes also called "HPLL" or "HPLL PLL" */
 		.name = "hdmi_pll_dco",
 		.ops = &meson_clk_pll_ro_ops,
-		.parent_hws = (const struct clk_hw *[]) {
-			&meson8b_xtal.hw
+		.parent_data = &(const struct clk_parent_data) {
+			.name = "xtal",
+			.index = -1,
 		},
 		.num_parents = 1,
 	},
@@ -237,8 +239,9 @@ static struct clk_regmap meson8b_sys_pll_dco = {
 	.hw.init = &(struct clk_init_data){
 		.name = "sys_pll_dco",
 		.ops = &meson_clk_pll_ops,
-		.parent_hws = (const struct clk_hw *[]) {
-			&meson8b_xtal.hw
+		.parent_data = &(const struct clk_parent_data) {
+			.name = "xtal",
+			.index = -1,
 		},
 		.num_parents = 1,
 	},
@@ -631,9 +634,9 @@ static struct clk_regmap meson8b_cpu_in_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_in_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_hws = (const struct clk_hw *[]) {
-			&meson8b_xtal.hw,
-			&meson8b_sys_pll.hw,
+		.parent_data = (const struct clk_parent_data[]) {
+			{ .name = "xtal", .index = -1, },
+			{ .hw = &meson8b_sys_pll.hw, },
 		},
 		.num_parents = 2,
 		.flags = (CLK_SET_RATE_PARENT |
@@ -736,9 +739,9 @@ static struct clk_regmap meson8b_cpu_clk = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cpu_clk",
 		.ops = &clk_regmap_mux_ops,
-		.parent_hws = (const struct clk_hw *[]) {
-			&meson8b_xtal.hw,
-			&meson8b_cpu_scale_out_sel.hw,
+		.parent_data = (const struct clk_parent_data[]) {
+			{ .name = "xtal", .index = -1, },
+			{ .hw = &meson8b_cpu_scale_out_sel.hw, },
 		},
 		.num_parents = 2,
 		.flags = (CLK_SET_RATE_PARENT |
@@ -758,12 +761,12 @@ static struct clk_regmap meson8b_nand_clk_sel = {
 		.name = "nand_clk_sel",
 		.ops = &clk_regmap_mux_ops,
 		/* FIXME all other parents are unknown: */
-		.parent_hws = (const struct clk_hw *[]) {
-			&meson8b_fclk_div4.hw,
-			&meson8b_fclk_div3.hw,
-			&meson8b_fclk_div5.hw,
-			&meson8b_fclk_div7.hw,
-			&meson8b_xtal.hw,
+		.parent_data = (const struct clk_parent_data[]) {
+			{ .hw = &meson8b_fclk_div4.hw, },
+			{ .hw = &meson8b_fclk_div3.hw, },
+			{ .hw = &meson8b_fclk_div5.hw, },
+			{ .hw = &meson8b_fclk_div7.hw, },
+			{ .name = "xtal", .index = -1, },
 		},
 		.num_parents = 5,
 		.flags = CLK_SET_RATE_PARENT,
@@ -1721,8 +1724,9 @@ static struct clk_regmap meson8b_hdmi_sys_sel = {
 		.name = "hdmi_sys_sel",
 		.ops = &clk_regmap_mux_ro_ops,
 		/* FIXME: all other parents are unknown */
-		.parent_hws = (const struct clk_hw *[]) {
-			&meson8b_xtal.hw
+		.parent_data = &(const struct clk_parent_data) {
+			.name = "xtal",
+			.index = -1,
 		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_NO_REPARENT,
@@ -1767,14 +1771,14 @@ static struct clk_regmap meson8b_hdmi_sys = {
  * muxed by a glitch-free switch on Meson8b and Meson8m2. Meson8 only
  * has mali_0 and no glitch-free mux.
  */
-static const struct clk_hw *meson8b_mali_0_1_parent_hws[] = {
-	&meson8b_xtal.hw,
-	&meson8b_mpll2.hw,
-	&meson8b_mpll1.hw,
-	&meson8b_fclk_div7.hw,
-	&meson8b_fclk_div4.hw,
-	&meson8b_fclk_div3.hw,
-	&meson8b_fclk_div5.hw,
+static const struct clk_parent_data meson8b_mali_0_1_parent_data[] = {
+	{ .name = "xtal", .index = -1, },
+	{ .hw = &meson8b_mpll2.hw, },
+	{ .hw = &meson8b_mpll1.hw, },
+	{ .hw = &meson8b_fclk_div7.hw, },
+	{ .hw = &meson8b_fclk_div4.hw, },
+	{ .hw = &meson8b_fclk_div3.hw, },
+	{ .hw = &meson8b_fclk_div5.hw, },
 };
 
 static u32 meson8b_mali_0_1_mux_table[] = { 0, 2, 3, 4, 5, 6, 7 };
@@ -1789,8 +1793,8 @@ static struct clk_regmap meson8b_mali_0_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mali_0_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_hws = meson8b_mali_0_1_parent_hws,
-		.num_parents = ARRAY_SIZE(meson8b_mali_0_1_parent_hws),
+		.parent_data = meson8b_mali_0_1_parent_data,
+		.num_parents = ARRAY_SIZE(meson8b_mali_0_1_parent_data),
 		/*
 		 * Don't propagate rate changes up because the only changeable
 		 * parents are mpll1 and mpll2 but we need those for audio and
@@ -1844,8 +1848,8 @@ static struct clk_regmap meson8b_mali_1_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "mali_1_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_hws = meson8b_mali_0_1_parent_hws,
-		.num_parents = ARRAY_SIZE(meson8b_mali_0_1_parent_hws),
+		.parent_data = meson8b_mali_0_1_parent_data,
+		.num_parents = ARRAY_SIZE(meson8b_mali_0_1_parent_data),
 		/*
 		 * Don't propagate rate changes up because the only changeable
 		 * parents are mpll1 and mpll2 but we need those for audio and
@@ -1944,8 +1948,9 @@ static struct clk_regmap meson8m2_gp_pll_dco = {
 	.hw.init = &(struct clk_init_data){
 		.name = "gp_pll_dco",
 		.ops = &meson_clk_pll_ops,
-		.parent_hws = (const struct clk_hw *[]) {
-			&meson8b_xtal.hw
+		.parent_data = &(const struct clk_parent_data) {
+			.name = "xtal",
+			.index = -1,
 		},
 		.num_parents = 1,
 	},
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
