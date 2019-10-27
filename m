Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5B7E6418
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 17:19:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3bTesdBYFexnUelhS+unsLISwWp80/qh4dDb/tNXmlA=; b=pXwW8KvUKaVbUM
	kAa9LF57TnT0hH/W7G+sPCqiVQOBG4qsLRZafaC9yzP5JUVQULmSBO1ZJ2Os0hT3wbQjTcUBYi8al
	rp3YUW4WFfCL2zstpJAdCFoxzONzDeoDhHYOzFHYZwLUkmB4FKrzgW1MIH/DzFllSmCmmNJD9pe3l
	SSBBtbNJSLHUTgiRiRtIaP4e4JYzgLWMN27GXX+MiQOLD7UBc1FJeaJ2Pxf4ZZe3bqtKcYv+IK5XK
	tREF9SNTxwzhoxtVlNlLrmDA1+Iquwc+KrV1ct4v2+walZ8dbpZIxdrkrqe0kVc96m+ejuSe78d8F
	SmCBurVmFQn9jrqoYh3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOlGk-0007cx-Sk; Sun, 27 Oct 2019 16:19:54 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOlFE-0006CA-QO; Sun, 27 Oct 2019 16:18:23 +0000
Received: by mail-wm1-x341.google.com with SMTP id g24so6950253wmh.5;
 Sun, 27 Oct 2019 09:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+ELKKDirjp0oZPBJ44VpnYEwyvsV3MSi9kYfRjT4vis=;
 b=bdPbhc4OqjdEq4Y+pgsjRiDeliZB157wJfKIzj+AJrpxZ6o4UT9EOSAFZVR63LQkB6
 t4pdEo8HWxpZ43uX4pDzgpHoRw9Dq9KTQyHowOPRhNvU3/WByYQYWpCKKakGz0KQzDMd
 661DcknhVvnOX7Q5jiY4bFIBeGjCzCC4MNkUQW4AF2VwPyZmFwqksRXVgViTztlyRpTM
 t6UOKoq56CiYlEE4tUKLH0DPG0ptvUcs+rC+LVJyLItruxLiTFPnTsZb4evV/QaDhKAT
 7NIVSHGZElnuTptOHZkmP6rRXb/35cnlwpwQ/q+3LwNfEC/4x4IALzM7OeJysMuHE4WD
 MlyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+ELKKDirjp0oZPBJ44VpnYEwyvsV3MSi9kYfRjT4vis=;
 b=IfxKfDDBiNCQ70Y4lEGMb8ZPiTSTjcCmGPlqW8BlSoG/k0X5HDyR04QYLjrazL4J1k
 Bp5Hr3M5ODasK+0tXSKC2L/2vv1jApRbfm2Td6r2n0ZVsCuIChUyySZE4/cIB0hDsBiC
 GcLCZRf16gs1O4Jo763xCtaxDFMiVnz+aahmALeeQiZLY+rCSPT0ecrzGd7bzdaRf3Vj
 mXTvVrQcsR5k/J8D7qyfBOHWDZayOfAcB7X+w/V//j8WOTnjyfDw12KxswFr8PZ4pDDu
 8oQtkRYlbby+nXwJCR+ON3l5DoW8if1fAwD3qWa/IvoB/y9Zc2xjOWqsEO/QdQGs6aCf
 ccUQ==
X-Gm-Message-State: APjAAAVB+OPp6ldCiN4Ii7CXzS3xkSrchsvdWzkZw68XCBMpB/WO0GPD
 sxjej4X8y651a924uSrcShY=
X-Google-Smtp-Source: APXvYqzYzg6sKc3cDWdXql+bGhHA9n8UawIXHVxcqwjHlZ0xvQiwjrziZqNi1JNlyIGoX4qHoiK1xA==
X-Received: by 2002:a1c:1901:: with SMTP id 1mr11970983wmz.28.1572193095906;
 Sun, 27 Oct 2019 09:18:15 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F133D01300428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:33d0:1300:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id j14sm9585014wrj.35.2019.10.27.09.18.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Oct 2019 09:18:15 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: narmstrong@baylibre.com, jbrunet@baylibre.com,
 linux-amlogic@lists.infradead.org, khilman@baylibre.com
Subject: [PATCH v2 3/5] clk: meson: meson8b: change references to the XTAL
 clock to use the name
Date: Sun, 27 Oct 2019 17:18:03 +0100
Message-Id: <20191027161805.1176321-4-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191027161805.1176321-1-martin.blumenstingl@googlemail.com>
References: <20191027161805.1176321-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_091820_903113_AA8A1E09 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
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
