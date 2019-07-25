Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2ED7545C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 18:42:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=C4dJqG/aCQ8W1OBbGRq5e8Cld8ttU+YTbHuoLNqN9I4=; b=ElBNH9dYUEbYz1H9w0UOe3I45t
	CZhi1IjsVVpuxGVki19TJYxKbfbediD6oVSITLvG3wA9l0DQjUvgxnIzrXtAPvLGD2eNTUb/5aAww
	hwCrgyXsC/NxG4qvkaVfTnyOr46fkfHqpjU2Tl+AOpizDyMkVZzpf/HJKtjbrval/Kes76q0+MWoQ
	PUf7mZkWpIDnAf184mjApG6qHALVQzQ6/27hYJpTYPWcM4fafbnUYx9NTjWNaqwpAOrqKwynoPaic
	aaWOETXuKUm5NH0SOKn+Jb6o0RaoVXKumNs5YPov5X28BzEIVLAulB3rSM+KafqFpPmDv1STdP0Rj
	K1JvN5TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqgp6-0003iP-L9; Thu, 25 Jul 2019 16:42:32 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqgoN-0003Gk-1c
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 16:41:49 +0000
Received: by mail-wm1-x341.google.com with SMTP id g67so41224613wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 09:41:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+R127HEVGHOO/AjJtJo08bSVN+XpGtu/IEcCAx9bvEA=;
 b=mg9P8ztsV3J8jlHD2Kv34wz/u0yngpFjS9qSe7JQJ6JwWAXqovIwpeXTMEN2dSwC2T
 HjQG2Hq5OdWIoCfBLWbhoA1UrtCHmMdcxdGM+wKVPG/Syo/ON0Kf4DpZ2zQlattrl2q8
 dCvGmaHaze78+9CPQvXX5osXwhVAagLGWZjvVjwog1r/0qJ0cRknxkuSjOQ8UE8Lhb02
 36DdncppVoWRiykG+KdkDSpWvnk6/HeBbKSHZ98fsCs2Tx/ysz7jdjWJ8beE0iie05t+
 UfSuKpUe3J/yP4PTGThKfge20Hz8vifLYbHaGQS+2088mZFP4q+WqAKd8hnyVLIz/D4Z
 Earw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+R127HEVGHOO/AjJtJo08bSVN+XpGtu/IEcCAx9bvEA=;
 b=jK/V+JPum5BQApKCngHXFp/SBz3SwmN8JCStQUzsfng0bN980FGBNtGtS5q5epWZm5
 cansN+Fk0v/2zdqPRyCwJBodXkZvtM4elxS9GkCKW4EEqF7R8o4dfYW/v7UgIZ3pTdlw
 AYSMXqEf+kl1HK3W6UG+IzTXC1aQPrpthAVDiu9q6IXI+W9yz5lNjUOrOaUSDZeRtN9c
 JNyXX+lba132cyswC6rKhI+ISYWi7ttB1GOKJXoL8PeCYHCNbedwmt66+vtUSn1fOaTV
 dIxOhO4O8ZpQZJRihcOAmIRNC+GcPVXC2jw9V4MuiBe1DBXwQgCQXI27ViVvAL9bP18X
 Vc6w==
X-Gm-Message-State: APjAAAWfmvwdQdMwiinru99M7NB0qybCdlL0+gKSXvL5UxjCckqfqnDq
 WaPKws38Il0+hpMY3CHbFKtf/g==
X-Google-Smtp-Source: APXvYqyfJxkS4dKcjVM13upB85N+j79d3XoPdVFnRdmoBO/g2YeAGymDna0OxE9EPIN8wAZ7oUZhLA==
X-Received: by 2002:a1c:cb43:: with SMTP id b64mr79198139wmg.135.1564072905509; 
 Thu, 25 Jul 2019 09:41:45 -0700 (PDT)
Received: from pop-os.baylibre.local ([2a01:e35:8ad2:2cb0:2dbb:fac9:5ec0:e3ef])
 by smtp.googlemail.com with ESMTPSA id
 y16sm102488858wrg.85.2019.07.25.09.41.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 09:41:45 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
To: jbrunet@baylibre.com
Subject: [PATCH v2 1/4] clk: meson: g12a-aoclk: migrate to the new parent
 description method
Date: Thu, 25 Jul 2019 18:41:23 +0200
Message-Id: <20190725164126.27919-2-amergnat@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190725164126.27919-1-amergnat@baylibre.com>
References: <20190725164126.27919-1-amergnat@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_094147_090420_4A3F0A20 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
 drivers/clk/meson/g12a-aoclk.c | 81 +++++++++++++++++++++-------------
 1 file changed, 50 insertions(+), 31 deletions(-)

diff --git a/drivers/clk/meson/g12a-aoclk.c b/drivers/clk/meson/g12a-aoclk.c
index 1994e735396b..62499563e4f5 100644
--- a/drivers/clk/meson/g12a-aoclk.c
+++ b/drivers/clk/meson/g12a-aoclk.c
@@ -18,8 +18,6 @@
 #include "clk-regmap.h"
 #include "clk-dualdiv.h"
 
-#define IN_PREFIX "ao-in-"
-
 /*
  * AO Configuration Clock registers offsets
  * Register offsets from the data sheet must be multiplied by 4.
@@ -51,7 +49,9 @@ static struct clk_regmap g12a_aoclk_##_name = {				\
 	.hw.init = &(struct clk_init_data) {				\
 		.name =  "g12a_ao_" #_name,				\
 		.ops = &clk_regmap_gate_ops,				\
-		.parent_names = (const char *[]){ IN_PREFIX "mpeg-clk" }, \
+		.parent_data = &(const struct clk_parent_data) {	\
+			.fw_name = "mpeg-clk",				\
+		},							\
 		.num_parents = 1,					\
 		.flags = CLK_IGNORE_UNUSED,				\
 	},								\
@@ -81,7 +81,9 @@ static struct clk_regmap g12a_aoclk_cts_oscin = {
 	.hw.init = &(struct clk_init_data){
 		.name = "cts_oscin",
 		.ops = &clk_regmap_gate_ro_ops,
-		.parent_names = (const char *[]){ IN_PREFIX "xtal" },
+		.parent_data = &(const struct clk_parent_data) {
+			.fw_name = "xtal",
+		},
 		.num_parents = 1,
 	},
 };
@@ -106,7 +108,9 @@ static struct clk_regmap g12a_aoclk_32k_by_oscin_pre = {
 	.hw.init = &(struct clk_init_data){
 		.name = "g12a_ao_32k_by_oscin_pre",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "cts_oscin" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_aoclk_cts_oscin.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -143,7 +147,9 @@ static struct clk_regmap g12a_aoclk_32k_by_oscin_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "g12a_ao_32k_by_oscin_div",
 		.ops = &meson_clk_dualdiv_ops,
-		.parent_names = (const char *[]){ "g12a_ao_32k_by_oscin_pre" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_aoclk_32k_by_oscin_pre.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -158,8 +164,10 @@ static struct clk_regmap g12a_aoclk_32k_by_oscin_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "g12a_ao_32k_by_oscin_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = (const char *[]){ "g12a_ao_32k_by_oscin_div",
-						  "g12a_ao_32k_by_oscin_pre" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_aoclk_32k_by_oscin_div.hw,
+			&g12a_aoclk_32k_by_oscin_pre.hw,
+		},
 		.num_parents = 2,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -173,7 +181,9 @@ static struct clk_regmap g12a_aoclk_32k_by_oscin = {
 	.hw.init = &(struct clk_init_data){
 		.name = "g12a_ao_32k_by_oscin",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "g12a_ao_32k_by_oscin_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_aoclk_32k_by_oscin_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -189,7 +199,9 @@ static struct clk_regmap g12a_aoclk_cec_pre = {
 	.hw.init = &(struct clk_init_data){
 		.name = "g12a_ao_cec_pre",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "cts_oscin" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_aoclk_cts_oscin.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -226,7 +238,9 @@ static struct clk_regmap g12a_aoclk_cec_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "g12a_ao_cec_div",
 		.ops = &meson_clk_dualdiv_ops,
-		.parent_names = (const char *[]){ "g12a_ao_cec_pre" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_aoclk_cec_pre.hw
+		},
 		.num_parents = 1,
 	},
 };
@@ -241,8 +255,10 @@ static struct clk_regmap g12a_aoclk_cec_sel = {
 	.hw.init = &(struct clk_init_data){
 		.name = "g12a_ao_cec_sel",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = (const char *[]){ "g12a_ao_cec_div",
-						  "g12a_ao_cec_pre" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_aoclk_cec_div.hw,
+			&g12a_aoclk_cec_pre.hw,
+		},
 		.num_parents = 2,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -256,7 +272,9 @@ static struct clk_regmap g12a_aoclk_cec = {
 	.hw.init = &(struct clk_init_data){
 		.name = "g12a_ao_cec",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "g12a_ao_cec_sel" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_aoclk_cec_sel.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -272,8 +290,10 @@ static struct clk_regmap g12a_aoclk_cts_rtc_oscin = {
 	.hw.init = &(struct clk_init_data){
 		.name = "g12a_ao_cts_rtc_oscin",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = (const char *[]){ "g12a_ao_32k_by_oscin",
-						  IN_PREFIX "ext_32k-0" },
+		.parent_data = (const struct clk_parent_data []) {
+			{ .hw = &g12a_aoclk_32k_by_oscin.hw },
+			{ .fw_name = "ext-32k-0", },
+		},
 		.num_parents = 2,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -289,8 +309,10 @@ static struct clk_regmap g12a_aoclk_clk81 = {
 	.hw.init = &(struct clk_init_data){
 		.name = "g12a_ao_clk81",
 		.ops = &clk_regmap_mux_ro_ops,
-		.parent_names = (const char *[]){ IN_PREFIX "mpeg-clk",
-						  "g12a_ao_cts_rtc_oscin"},
+		.parent_data = (const struct clk_parent_data []) {
+			{ .fw_name = "mpeg-clk", },
+			{ .hw = &g12a_aoclk_cts_rtc_oscin.hw },
+		},
 		.num_parents = 2,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -305,8 +327,10 @@ static struct clk_regmap g12a_aoclk_saradc_mux = {
 	.hw.init = &(struct clk_init_data){
 		.name = "g12a_ao_saradc_mux",
 		.ops = &clk_regmap_mux_ops,
-		.parent_names = (const char *[]){ IN_PREFIX "xtal",
-						  "g12a_ao_clk81" },
+		.parent_data = (const struct clk_parent_data []) {
+			{ .fw_name = "xtal", },
+			{ .hw = &g12a_aoclk_clk81.hw },
+		},
 		.num_parents = 2,
 	},
 };
@@ -320,7 +344,9 @@ static struct clk_regmap g12a_aoclk_saradc_div = {
 	.hw.init = &(struct clk_init_data){
 		.name = "g12a_ao_saradc_div",
 		.ops = &clk_regmap_divider_ops,
-		.parent_names = (const char *[]){ "g12a_ao_saradc_mux" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_aoclk_saradc_mux.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -334,7 +360,9 @@ static struct clk_regmap g12a_aoclk_saradc_gate = {
 	.hw.init = &(struct clk_init_data){
 		.name = "g12a_ao_saradc_gate",
 		.ops = &clk_regmap_gate_ops,
-		.parent_names = (const char *[]){ "g12a_ao_saradc_div" },
+		.parent_hws = (const struct clk_hw *[]) {
+			&g12a_aoclk_saradc_div.hw
+		},
 		.num_parents = 1,
 		.flags = CLK_SET_RATE_PARENT,
 	},
@@ -417,12 +445,6 @@ static const struct clk_hw_onecell_data g12a_aoclk_onecell_data = {
 	.num = NR_CLKS,
 };
 
-static const struct meson_aoclk_input g12a_aoclk_inputs[] = {
-	{ .name = "xtal",	.required = true  },
-	{ .name = "mpeg-clk",	.required = true  },
-	{ .name = "ext-32k-0",	.required = false },
-};
-
 static const struct meson_aoclk_data g12a_aoclkc_data = {
 	.reset_reg	= AO_RTI_GEN_CNTL_REG0,
 	.num_reset	= ARRAY_SIZE(g12a_aoclk_reset),
@@ -430,9 +452,6 @@ static const struct meson_aoclk_data g12a_aoclkc_data = {
 	.num_clks	= ARRAY_SIZE(g12a_aoclk_regmap),
 	.clks		= g12a_aoclk_regmap,
 	.hw_data	= &g12a_aoclk_onecell_data,
-	.inputs		= g12a_aoclk_inputs,
-	.num_inputs	= ARRAY_SIZE(g12a_aoclk_inputs),
-	.input_prefix	= IN_PREFIX,
 };
 
 static const struct of_device_id g12a_aoclkc_match_table[] = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
