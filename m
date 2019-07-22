Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ACE26FCFD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 11:51:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ImjQiXT1iZGOBujd2I5KMbaOfGJnuK1QFPlXtzJXcLw=; b=psHtPzMupetnnhJX7AnjaUfbPx
	a7i2X1u404kb1p4Hvg0MLg8rBFVC1U/zxvmCXDaxG60n3N6G4eVtVi33EwwtIzunEeXN/++yFxB6A
	ziifDREl7wijs9az42fcRv2blkoQJzo+UHB0NO4/pbsWcFrQ1leFvXXHIhzou9JsVOY1q0JSAsO/i
	3HQl8f4kgSw8VCXctSyd6/DWtft8dWBErhr4YjGE2y2ryWR36iRd3T8wFi1xo0FVbikerTX0NStFe
	IkTjxhPTCSv3Hxgy4bENHlvsdCm7ZsiPJmLUStBX3y7K6bkWBmXcAgAUUDUS9zOm7aOVKKYZLuGp6
	y3x3aqog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpUz6-0006LH-9M; Mon, 22 Jul 2019 09:51:56 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpUyG-0005pr-34
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 09:51:07 +0000
Received: by mail-wr1-x444.google.com with SMTP id n9so38780056wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 02:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=sj01xNA3JDbqGaNRoQKoEUQ2dvTES//llJmhdN8V66g=;
 b=nxu3lMmrk72CK/+w0rnU4/OOChM7fNLBdi4s7gL3jXjrmfkB4SeAgwYgcx2IMaSw0m
 +Jw1IpCoi0CghezgySeiKJ5ZqwLhneVpvvJvlPZLTPoiO3r6vx2ujr3QEiL2vRXstAEG
 wa5hhtZGs61z6l98/KZfyfuQsHWKh5z7zH5GaZpqhpcsXLp4qricwjE/s4bhldCVkSty
 OKBP1XhjlxKCQehX0Pi+xc7/hBpniogweFHf6agwILNglO2J8bCShR05Z6hBM5twEYEU
 8lZiLTlltiiX8iRcIoMo2aN5f5ASdkm1Tqi21j0zEkX28+nflB1zSI0vo54+fJS2GnGJ
 8FLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=sj01xNA3JDbqGaNRoQKoEUQ2dvTES//llJmhdN8V66g=;
 b=aTL7SzMPgWjspDgDDljUiNBF1vSR8EZ8OH/IW8qfsTWfMqNf0eFfRPoCPtIb+RB/yY
 hMic3tlXMBTuS3cOYXCwKmUPl1GEIEA2Y9ig60k/VFCn8ED4MLgR7iFl851NmUjpRaZe
 cyl07ShoJNoNWtpYV/g4nmP+6RHl69Vel1I7eFOEX6BWO7QSM+QMCCoC/917PIUj/ZzN
 Qw6/+fAiFBQZTg/iEYLGrVrmSvtwGhnFdN6OgGlEohirLp4SOMAZnWHeFOKvlm6kHLT3
 /aZDRmCQBmUdkvfGdwqwEKaSamLjn55ELimwj2p7+LFk7Qty+vMb0XkwmstzG9zJMZxv
 2VgA==
X-Gm-Message-State: APjAAAWDKRNug+f4ax+jKXD4es5cEyiY518FeBUZ0zkouRrGDLzTN3/M
 1Nx5+pRMzaCnJqN//h2z75fCkQ==
X-Google-Smtp-Source: APXvYqyagKCOYpuHJzadGy/aFJFz5VgjxUDN6lNdXeNVb76F8TIZAegKWScV+mLzD7WpKFkzkAa8PA==
X-Received: by 2002:adf:f544:: with SMTP id j4mr74537236wrp.150.1563789062766; 
 Mon, 22 Jul 2019 02:51:02 -0700 (PDT)
Received: from pop-os.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id o3sm31050738wrs.59.2019.07.22.02.51.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 02:51:02 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
To: jbrunet@baylibre.com
Subject: [PATCH 2/4] clk: meson: gxbb-aoclk: migrate to the new parent
 description method
Date: Mon, 22 Jul 2019 11:50:51 +0200
Message-Id: <20190722095053.14104-3-amergnat@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190722095053.14104-1-amergnat@baylibre.com>
References: <20190722095053.14104-1-amergnat@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_025104_319293_9858D9C5 
X-CRM114-Status: GOOD (  14.59  )
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
relation between the clocks, which is not optimized.

Migrate to the new way by using .parent_hws where possible (when parent
clocks are localy declared in the controller) and use .parent_data
otherwise.

Remove clk input helper and all bypass clocks (declared in probe function)
which are no longer used since we are able to use device-tree clock name
directly.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 drivers/clk/meson/gxbb-aoclk.c | 55 +++++++++++++++++-----------------
 1 file changed, 27 insertions(+), 28 deletions(-)

diff --git a/drivers/clk/meson/gxbb-aoclk.c b/drivers/clk/meson/gxbb-aoclk.c
index 449f6ac189d8..32490e8062e9 100644
--- a/drivers/clk/meson/gxbb-aoclk.c
+++ b/drivers/clk/meson/gxbb-aoclk.c
@@ -11,8 +11,6 @@
 #include "clk-regmap.h"
 #include "clk-dualdiv.h"
 
-#define IN_PREFIX "ao-in-"
-
 /* AO Configuration Clock registers offsets */
 #define AO_RTI_PWR_CNTL_REG1	0x0c
 #define AO_RTI_PWR_CNTL_REG0	0x10
@@ -31,7 +29,9 @@ static struct clk_regmap _name##_ao = {					\
 	.hw.init = &(struct clk_init_data) {				\
 		.name = #_name "_ao",					\
 		.ops = &clk_regmap_gate_ops,				\
-		.parent_names = (const char *[]){ IN_PREFIX "mpeg-clk" }, \
+		.parent_data = &(const struct clk_parent_data) {	\
+			.fw_name = "mpeg-clk",				\
+		},							\
 		.num_parents = 1,					\
 		.flags = CLK_IGNORE_UNUSED,				\
 	},								\
@@ -52,7 +52,9 @@ static struct clk_regmap ao_cts_oscin = {
 	.hw.init = &(struct clk_init_data){
 		.name = "ao_cts_oscin",
 		.ops = &clk_regmap_gate_ro_ops,
-		.parent_names = (const char *[]){ IN_PREFIX "xtal" },
+		.parent_data = &(const struct clk_parent_data) {
+			.fw_name = "xtal",
+		},
 		.num_parents = 1,
 	},
 };
@@ -65,7 +67,7 @@ static struct clk_regmap ao_32k_pre = {
 	.hw.init = &(struct clk_init_data){
 		.name = "ao_32k_pre",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "ao_cts_oscin" },
+		.parent_hws = (const struct clk_hw *[]) { &ao_cts_oscin.hw },
 		.num_parents = 1,
 	},
 };
@@ -112,7 +114,7 @@ static struct clk_regmap ao_32k_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "ao_32k_div",
 		.ops = &meson_clk_dualdiv_ops,
-		.parent_names = (const char *[]){ "ao_32k_pre" },
+		.parent_hws = (const struct clk_hw *[]) { &ao_32k_pre.hw },
 		.num_parents = 1,
 	},
 };
@@ -127,8 +129,10 @@ static struct clk_regmap ao_32k_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "ao_32k_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = (const char *[]){ "ao_32k_div",
-						  "ao_32k_pre" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&ao_32k_div.hw,
+			&ao_32k_pre.hw
+		},
 		.num_parents = 2,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -142,7 +146,7 @@ static struct clk_regmap ao_32k = {
 	.hw.init = &(struct clk_init_data){
 		.name = "ao_32k",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "ao_32k_sel" },
+		.parent_hws = (const struct clk_hw *[]) { &ao_32k_sel.hw },
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -159,10 +163,12 @@ static struct clk_regmap ao_cts_rtc_oscin = {
 	.hw.init = &(struct clk_init_data){
 		.name = "ao_cts_rtc_oscin",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = (const char *[]){ IN_PREFIX "ext-32k-0",
-						  IN_PREFIX "ext-32k-1",
-						  IN_PREFIX "ext-32k-2",
-						  "ao_32k" },
+		.parent_data = (const struct clk_parent_data []) {
+			{ .fw_name = "ext-32k-0", },
+			{ .fw_name = "ext-32k-1", },
+			{ .fw_name = "ext-32k-2", },
+			{ .hw = &ao_32k.hw },
+		},
 		.num_parents = 4,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -178,8 +184,10 @@ static struct clk_regmap ao_clk81 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "ao_clk81",
 		.ops = &clk_regmap_mux_ro_ops,
-		.parent_names = (const char *[]){ IN_PREFIX "mpeg-clk",
-						  "ao_cts_rtc_oscin" },
+		.parent_data = (const struct clk_parent_data []) {
+			{ .fw_name = "mpeg-clk", },
+			{ .hw = &ao_cts_rtc_oscin.hw },
+		},
 		.num_parents = 2,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -208,8 +216,10 @@ static struct clk_regmap ao_cts_cec = {
 		 * Until CCF gets fixed, adding this fake parent that won't
 		 * ever be registered should work around the problem
 		 */
-		.parent_names = (const char *[]){ "fixme",
-						  "ao_cts_rtc_oscin" },
+		.parent_data = (const struct clk_parent_data []) {
+			{ .fw_name = "fixme", },
+			{ .hw = &ao_cts_rtc_oscin.hw },
+		},
 		.num_parents = 2,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -261,14 +271,6 @@ static const struct clk_hw_onecell_data gxbb_aoclk_onecell_data = {
 	.num = NR_CLKS,
 };
 
-static const struct meson_aoclk_input gxbb_aoclk_inputs[] = {
-	{ .name = "xtal",	.required = true,  },
-	{ .name = "mpeg-clk",	.required = true,  },
-	{. name = "ext-32k-0",	.required = false, },
-	{. name = "ext-32k-1",	.required = false, },
-	{. name = "ext-32k-2",	.required = false, },
-};
-
 static const struct meson_aoclk_data gxbb_aoclkc_data = {
 	.reset_reg	= AO_RTI_GEN_CNTL_REG0,
 	.num_reset	= ARRAY_SIZE(gxbb_aoclk_reset),
@@ -276,9 +278,6 @@ static const struct meson_aoclk_data gxbb_aoclkc_data = {
 	.num_clks	= ARRAY_SIZE(gxbb_aoclk),
 	.clks		= gxbb_aoclk,
 	.hw_data	= &gxbb_aoclk_onecell_data,
-	.inputs		= gxbb_aoclk_inputs,
-	.num_inputs	= ARRAY_SIZE(gxbb_aoclk_inputs),
-	.input_prefix	= IN_PREFIX,
 };
 
 static const struct of_device_id gxbb_aoclkc_match_table[] = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
