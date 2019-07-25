Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A8075445
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 18:41:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NP8RJC42to8vuoCgrPxL8DWHGO9nWswPZ1hAiHnN61s=; b=VZ4
	MB1okKT8xunmYH6taHjrcD4HuCIQ4NMdO1A5JEyc5II9t4Y19Oy/0Wd2bz9FIP68bfo+TSf9t/hQM
	QbG7g526Gu/A3CpHCWdyiNUTWw2DdZDl1BCmZAQLmncoDEzZUdjAdu8BqB62ORnamBYlorah3p/jp
	RYq470e39f+J6fYroDoJK6IQFYGWGwpFTfExdK+2OpWRgZseLwa/O/3IWf9KndnLVhMQKK0R39z6+
	To8DYd7jKnNDHlagSpXlZJZTXnYMFr9OA+qb0UkPocfb0KZ/OAhnO4DfPshhZhXY3qYX/PkXDs356
	JTiCpMYKejnKU1k9lRBJBitn14znolA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqgnf-0002rp-BR; Thu, 25 Jul 2019 16:41:03 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqgnL-0002qc-Dm
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 16:40:48 +0000
Received: by mail-wr1-x441.google.com with SMTP id p13so51453492wru.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 09:40:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=S1z3ll61VzAvWLTZ4wJ2Dvd2DycDTTcRFVuvLHMqFSE=;
 b=yVPWzVm7yV36hkMt61iJ3JpxgqDDty4hTpjKLtgl9o7zwr6kH/6dsQ43pe5EE89cxA
 /DUcXpp/kjGtx9VzL0OEjaW3aj+jIcJQ3dNcRiDbQRk3dEbaG+Ut4KVVTWTNj+wXxNnv
 xti63WSlCJXFewzxkafXHeBhCh+Rybil6QkbZZmjjm9zCjkVU17co/Euy9FsPPqnmjUf
 IJc6unEcifr3l92W93R4MKoOCgnE6L3TXUGliuHruWwa6sDsHOMVyL94jqL77GlEODpx
 8dhEK9p2Sq+tQDcB+SlDIKjWab4/hGHKI/I1lKruCnE+wVi+NcBk300aarIN1leGtGxE
 glQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=S1z3ll61VzAvWLTZ4wJ2Dvd2DycDTTcRFVuvLHMqFSE=;
 b=Sx1qIIlLRZmaL58STPNf1W0PWEl/ljDdO4HVxilkBgcutrFi3kUkEjdJ0FXJyqnPBR
 pFugCQ/Oh51wX3PgzXdtyIoWo3SMDFUIM95TzwrBP+Jxtce95hYQYuQm7FH7ZYHxLJHy
 82Gr6SNFITbQdXTy1N7FdmGzP75Q3fW+p6IMSygp5bRYlF0MjcHYc9oRYWf8Zk8t/YRY
 ZmfrMSwNJrrWjtm6Pa63dHGcXnbaejYXOcEAo4IrUOTD4iHSQ89J5Aa7gzkkLZklbFp5
 cYisUvx4HjJLWrMCJpBTWpS+4BvsSPbPoWU1NxgQSKsyfRKjx+98OLSz2c3NdUh+HOIx
 c8EQ==
X-Gm-Message-State: APjAAAWyoFTfWe19iXH+k+X9UhKZ6e7R39uwvOmNH41eyW57vREGDNKc
 hIBga/TVR/xfg4vNSsUJHsQBiA==
X-Google-Smtp-Source: APXvYqwR2oKdOuYCqhSqd4YDhzmKh1MdymIpoaCRvYlRSoxX8B/5Zx+mOs9rvVq0BoMVR3w+MR3C6g==
X-Received: by 2002:a5d:4cc5:: with SMTP id c5mr44817227wrt.278.1564072841426; 
 Thu, 25 Jul 2019 09:40:41 -0700 (PDT)
Received: from pop-os.baylibre.local ([2a01:e35:8ad2:2cb0:2dbb:fac9:5ec0:e3ef])
 by smtp.googlemail.com with ESMTPSA id c78sm71899929wmd.16.2019.07.25.09.40.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 09:40:40 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
To: jbrunet@baylibre.com
Subject: [PATCH v2] clk: meson: axg-audio: migrate to the new parent
 description method
Date: Thu, 25 Jul 2019 18:40:23 +0200
Message-Id: <20190725164023.27855-1-amergnat@baylibre.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_094043_526808_8E65E3EA 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
relation between the clocks, which is not optimized. A recent patch [0]
allows parents to be specified without string names or with device-tree
clock name by using a new assignment structure.

Migrate to the new way by using .parent_hws where possible (when parent
clocks are localy declared in the controller) and use .parent_data
otherwise.

Remove clk input helper and all bypass clocks (declared in probe function)
which are no longer used since we are able to use device-tree clock name
directly.

[0] commit fc0c209c147f ("clk: Allow parents to be specified without string names")

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---

Change since v1:
- Typo fixes

 drivers/clk/meson/Kconfig     |   1 -
 drivers/clk/meson/axg-audio.c | 261 ++++++++++++++++------------------
 2 files changed, 120 insertions(+), 142 deletions(-)

diff --git a/drivers/clk/meson/Kconfig b/drivers/clk/meson/Kconfig
index a6b20e123e0c..ee0b84b6b329 100644
--- a/drivers/clk/meson/Kconfig
+++ b/drivers/clk/meson/Kconfig
@@ -86,7 +86,6 @@ config COMMON_CLK_AXG
 config COMMON_CLK_AXG_AUDIO
 	tristate "Meson AXG Audio Clock Controller Driver"
 	depends on ARCH_MESON
-	select COMMON_CLK_MESON_INPUT
 	select COMMON_CLK_MESON_REGMAP
 	select COMMON_CLK_MESON_PHASE
 	select COMMON_CLK_MESON_SCLK_DIV
diff --git a/drivers/clk/meson/axg-audio.c b/drivers/clk/meson/axg-audio.c
index 8028ff6f6610..caf5e2bf5128 100644
--- a/drivers/clk/meson/axg-audio.c
+++ b/drivers/clk/meson/axg-audio.c
@@ -15,7 +15,6 @@
 #include <linux/slab.h>
 
 #include "axg-audio.h"
-#include "clk-input.h"
 #include "clk-regmap.h"
 #include "clk-phase.h"
 #include "sclk-div.h"
@@ -24,7 +23,7 @@
 #define AUD_SLV_SCLK_COUNT	10
 #define AUD_SLV_LRCLK_COUNT	10
 
-#define AUD_GATE(_name, _reg, _bit, _pname, _iflags)			\
+#define AUD_GATE(_name, _reg, _bit, _phws, _iflags)			\
 struct clk_regmap aud_##_name = {					\
 	.data = &(struct clk_regmap_gate_data){				\
 		.offset = (_reg),					\
@@ -33,13 +32,13 @@ struct clk_regmap aud_##_name = {					\
 	.hw.init = &(struct clk_init_data) {				\
 		.name = "aud_"#_name,					\
 		.ops = &clk_regmap_gate_ops,				\
-		.parent_names = (const char *[]){ _pname },		\
+		.parent_hws = (const struct clk_hw *[]) { &_phws.hw },	\
 		.num_parents = 1,					\
 		.flags = CLK_DUTY_CYCLE_PARENT | (_iflags),		\
 	},								\
 }
 
-#define AUD_MUX(_name, _reg, _mask, _shift, _dflags, _pnames, _iflags)	\
+#define AUD_MUX(_name, _reg, _mask, _shift, _dflags, _pdata, _iflags)	\
 struct clk_regmap aud_##_name = {					\
 	.data = &(struct clk_regmap_mux_data){				\
 		.offset = (_reg),					\
@@ -50,13 +49,13 @@ struct clk_regmap aud_##_name = {					\
 	.hw.init = &(struct clk_init_data){				\
 		.name = "aud_"#_name,					\
 		.ops = &clk_regmap_mux_ops,				\
-		.parent_names = (_pnames),				\
-		.num_parents = ARRAY_SIZE(_pnames),			\
+		.parent_data = _pdata,					\
+		.num_parents = ARRAY_SIZE(_pdata),			\
 		.flags = CLK_DUTY_CYCLE_PARENT | (_iflags),		\
 	},								\
 }
 
-#define AUD_DIV(_name, _reg, _shift, _width, _dflags, _pname, _iflags)	\
+#define AUD_DIV(_name, _reg, _shift, _width, _dflags, _phws, _iflags)	\
 struct clk_regmap aud_##_name = {					\
 	.data = &(struct clk_regmap_div_data){				\
 		.offset = (_reg),					\
@@ -67,15 +66,27 @@ struct clk_regmap aud_##_name = {					\
 	.hw.init = &(struct clk_init_data){				\
 		.name = "aud_"#_name,					\
 		.ops = &clk_regmap_divider_ops,				\
-		.parent_names = (const char *[]) { _pname },		\
+		.parent_hws = (const struct clk_hw *[]) { &_phws.hw },	\
 		.num_parents = 1,					\
 		.flags = (_iflags),					\
 	},								\
 }
 
 #define AUD_PCLK_GATE(_name, _bit)				\
-	AUD_GATE(_name, AUDIO_CLK_GATE_EN, _bit, "audio_pclk", 0)
-
+struct clk_regmap aud_##_name = {					\
+	.data = &(struct clk_regmap_gate_data){				\
+		.offset = (AUDIO_CLK_GATE_EN),				\
+		.bit_idx = (_bit),					\
+	},								\
+	.hw.init = &(struct clk_init_data) {				\
+		.name = "aud_"#_name,					\
+		.ops = &clk_regmap_gate_ops,				\
+		.parent_data = &(const struct clk_parent_data) {	\
+			.fw_name = "pclk",				\
+		},							\
+		.num_parents = 1,					\
+	},								\
+}
 /* Audio peripheral clocks */
 static AUD_PCLK_GATE(ddr_arb,	   0);
 static AUD_PCLK_GATE(pdm,	   1);
@@ -100,14 +111,20 @@ static AUD_PCLK_GATE(power_detect, 19);
 static AUD_PCLK_GATE(spdifout_b,   21);
 
 /* Audio Master Clocks */
-static const char * const mst_mux_parent_names[] = {
-	"aud_mst_in0", "aud_mst_in1", "aud_mst_in2", "aud_mst_in3",
-	"aud_mst_in4", "aud_mst_in5", "aud_mst_in6", "aud_mst_in7",
+static const struct clk_parent_data mst_mux_parent_data[] = {
+	{ .fw_name = "mst_in0", },
+	{ .fw_name = "mst_in1", },
+	{ .fw_name = "mst_in2", },
+	{ .fw_name = "mst_in3", },
+	{ .fw_name = "mst_in4", },
+	{ .fw_name = "mst_in5", },
+	{ .fw_name = "mst_in6", },
+	{ .fw_name = "mst_in7", },
 };
 
 #define AUD_MST_MUX(_name, _reg, _flag)				\
 	AUD_MUX(_name##_sel, _reg, 0x7, 24, _flag,		\
-		mst_mux_parent_names, CLK_SET_RATE_PARENT)
+		mst_mux_parent_data, CLK_SET_RATE_PARENT)
 
 #define AUD_MST_MCLK_MUX(_name, _reg)				\
 	AUD_MST_MUX(_name, _reg, CLK_MUX_ROUND_CLOSEST)
@@ -129,7 +146,7 @@ static AUD_MST_MCLK_MUX(spdifout_b_clk, AUDIO_CLK_SPDIFOUT_B_CTRL);
 
 #define AUD_MST_DIV(_name, _reg, _flag)				\
 	AUD_DIV(_name##_div, _reg, 0, 16, _flag,		\
-		    "aud_"#_name"_sel", CLK_SET_RATE_PARENT)	\
+		    aud_##_name##_sel, CLK_SET_RATE_PARENT)	\
 
 #define AUD_MST_MCLK_DIV(_name, _reg)				\
 	AUD_MST_DIV(_name, _reg, CLK_DIVIDER_ROUND_CLOSEST)
@@ -150,7 +167,7 @@ static AUD_MST_SYS_DIV(pdm_sysclk,    AUDIO_CLK_PDMIN_CTRL1);
 static AUD_MST_MCLK_DIV(spdifout_b_clk, AUDIO_CLK_SPDIFOUT_B_CTRL);
 
 #define AUD_MST_MCLK_GATE(_name, _reg)				\
-	AUD_GATE(_name, _reg, 31,  "aud_"#_name"_div",	\
+	AUD_GATE(_name, _reg, 31,  aud_##_name##_div,		\
 		 CLK_SET_RATE_PARENT)
 
 static AUD_MST_MCLK_GATE(mst_a_mclk,   AUDIO_MCLK_A_CTRL);
@@ -168,7 +185,7 @@ static AUD_MST_MCLK_GATE(spdifout_b_clk, AUDIO_CLK_SPDIFOUT_B_CTRL);
 /* Sample Clocks */
 #define AUD_MST_SCLK_PRE_EN(_name, _reg)			\
 	AUD_GATE(mst_##_name##_sclk_pre_en, _reg, 31,		\
-		 "aud_mst_"#_name"_mclk", 0)
+		 aud_mst_##_name##_mclk, 0)
 
 static AUD_MST_SCLK_PRE_EN(a, AUDIO_MST_A_SCLK_CTRL0);
 static AUD_MST_SCLK_PRE_EN(b, AUDIO_MST_B_SCLK_CTRL0);
@@ -178,7 +195,7 @@ static AUD_MST_SCLK_PRE_EN(e, AUDIO_MST_E_SCLK_CTRL0);
 static AUD_MST_SCLK_PRE_EN(f, AUDIO_MST_F_SCLK_CTRL0);
 
 #define AUD_SCLK_DIV(_name, _reg, _div_shift, _div_width,		\
-			 _hi_shift, _hi_width, _pname, _iflags)		\
+			 _hi_shift, _hi_width, _phws, _iflags)		\
 struct clk_regmap aud_##_name = {					\
 	.data = &(struct meson_sclk_div_data) {				\
 		.div = {						\
@@ -195,7 +212,7 @@ struct clk_regmap aud_##_name = {					\
 	.hw.init = &(struct clk_init_data) {				\
 		.name = "aud_"#_name,					\
 		.ops = &meson_sclk_div_ops,				\
-		.parent_names = (const char *[]) { _pname },		\
+		.parent_hws = (const struct clk_hw *[]) { &_phws.hw },	\
 		.num_parents = 1,					\
 		.flags = (_iflags),					\
 	},								\
@@ -203,7 +220,7 @@ struct clk_regmap aud_##_name = {					\
 
 #define AUD_MST_SCLK_DIV(_name, _reg)					\
 	AUD_SCLK_DIV(mst_##_name##_sclk_div, _reg, 20, 10, 0, 0,	\
-		     "aud_mst_"#_name"_sclk_pre_en",			\
+		     aud_mst_##_name##_sclk_pre_en,			\
 		     CLK_SET_RATE_PARENT)
 
 static AUD_MST_SCLK_DIV(a, AUDIO_MST_A_SCLK_CTRL0);
@@ -214,8 +231,8 @@ static AUD_MST_SCLK_DIV(e, AUDIO_MST_E_SCLK_CTRL0);
 static AUD_MST_SCLK_DIV(f, AUDIO_MST_F_SCLK_CTRL0);
 
 #define AUD_MST_SCLK_POST_EN(_name, _reg)				\
-	AUD_GATE(mst_##_name##_sclk_post_en, _reg, 30,		\
-		 "aud_mst_"#_name"_sclk_div", CLK_SET_RATE_PARENT)
+	AUD_GATE(mst_##_name##_sclk_post_en, _reg, 30,			\
+		 aud_mst_##_name##_sclk_div, CLK_SET_RATE_PARENT)
 
 static AUD_MST_SCLK_POST_EN(a, AUDIO_MST_A_SCLK_CTRL0);
 static AUD_MST_SCLK_POST_EN(b, AUDIO_MST_B_SCLK_CTRL0);
@@ -224,8 +241,8 @@ static AUD_MST_SCLK_POST_EN(d, AUDIO_MST_D_SCLK_CTRL0);
 static AUD_MST_SCLK_POST_EN(e, AUDIO_MST_E_SCLK_CTRL0);
 static AUD_MST_SCLK_POST_EN(f, AUDIO_MST_F_SCLK_CTRL0);
 
-#define AUD_TRIPHASE(_name, _reg, _width, _shift0, _shift1, _shift2, \
-			 _pname, _iflags)				\
+#define AUD_TRIPHASE(_name, _reg, _width, _shift0, _shift1, _shift2,	\
+			 _phws, _iflags)				\
 struct clk_regmap aud_##_name = {					\
 	.data = &(struct meson_clk_triphase_data) {			\
 		.ph0 = {						\
@@ -247,7 +264,7 @@ struct clk_regmap aud_##_name = {					\
 	.hw.init = &(struct clk_init_data) {				\
 		.name = "aud_"#_name,					\
 		.ops = &meson_clk_triphase_ops,				\
-		.parent_names = (const char *[]) { _pname },		\
+		.parent_hws = (const struct clk_hw *[]) { &_phws.hw },	\
 		.num_parents = 1,					\
 		.flags = CLK_DUTY_CYCLE_PARENT | (_iflags),		\
 	},								\
@@ -255,7 +272,7 @@ struct clk_regmap aud_##_name = {					\
 
 #define AUD_MST_SCLK(_name, _reg)					\
 	AUD_TRIPHASE(mst_##_name##_sclk, _reg, 1, 0, 2, 4,		\
-		     "aud_mst_"#_name"_sclk_post_en", CLK_SET_RATE_PARENT)
+		     aud_mst_##_name##_sclk_post_en, CLK_SET_RATE_PARENT)
 
 static AUD_MST_SCLK(a, AUDIO_MST_A_SCLK_CTRL1);
 static AUD_MST_SCLK(b, AUDIO_MST_B_SCLK_CTRL1);
@@ -266,7 +283,7 @@ static AUD_MST_SCLK(f, AUDIO_MST_F_SCLK_CTRL1);
 
 #define AUD_MST_LRCLK_DIV(_name, _reg)					\
 	AUD_SCLK_DIV(mst_##_name##_lrclk_div, _reg, 0, 10, 10, 10,	\
-		     "aud_mst_"#_name"_sclk_post_en", 0)		\
+		     aud_mst_##_name##_sclk_post_en, 0)			\
 
 static AUD_MST_LRCLK_DIV(a, AUDIO_MST_A_SCLK_CTRL0);
 static AUD_MST_LRCLK_DIV(b, AUDIO_MST_B_SCLK_CTRL0);
@@ -277,7 +294,7 @@ static AUD_MST_LRCLK_DIV(f, AUDIO_MST_F_SCLK_CTRL0);
 
 #define AUD_MST_LRCLK(_name, _reg)					\
 	AUD_TRIPHASE(mst_##_name##_lrclk, _reg, 1, 1, 3, 5,		\
-		     "aud_mst_"#_name"_lrclk_div", CLK_SET_RATE_PARENT)
+		     aud_mst_##_name##_lrclk_div, CLK_SET_RATE_PARENT)
 
 static AUD_MST_LRCLK(a, AUDIO_MST_A_SCLK_CTRL1);
 static AUD_MST_LRCLK(b, AUDIO_MST_B_SCLK_CTRL1);
@@ -286,19 +303,29 @@ static AUD_MST_LRCLK(d, AUDIO_MST_D_SCLK_CTRL1);
 static AUD_MST_LRCLK(e, AUDIO_MST_E_SCLK_CTRL1);
 static AUD_MST_LRCLK(f, AUDIO_MST_F_SCLK_CTRL1);
 
-static const char * const tdm_sclk_parent_names[] = {
-	"aud_mst_a_sclk", "aud_mst_b_sclk", "aud_mst_c_sclk",
-	"aud_mst_d_sclk", "aud_mst_e_sclk", "aud_mst_f_sclk",
-	"aud_slv_sclk0", "aud_slv_sclk1", "aud_slv_sclk2",
-	"aud_slv_sclk3", "aud_slv_sclk4", "aud_slv_sclk5",
-	"aud_slv_sclk6", "aud_slv_sclk7", "aud_slv_sclk8",
-	"aud_slv_sclk9"
+static const struct clk_parent_data tdm_sclk_parent_data[] = {
+	{ .hw = &aud_mst_a_sclk.hw, },
+	{ .hw = &aud_mst_b_sclk.hw, },
+	{ .hw = &aud_mst_c_sclk.hw, },
+	{ .hw = &aud_mst_d_sclk.hw, },
+	{ .hw = &aud_mst_e_sclk.hw, },
+	{ .hw = &aud_mst_f_sclk.hw, },
+	{ .fw_name = "slv_sclk0", },
+	{ .fw_name = "slv_sclk1", },
+	{ .fw_name = "slv_sclk2", },
+	{ .fw_name = "slv_sclk3", },
+	{ .fw_name = "slv_sclk4", },
+	{ .fw_name = "slv_sclk5", },
+	{ .fw_name = "slv_sclk6", },
+	{ .fw_name = "slv_sclk7", },
+	{ .fw_name = "slv_sclk8", },
+	{ .fw_name = "slv_sclk9", },
 };
 
 #define AUD_TDM_SCLK_MUX(_name, _reg)				\
 	AUD_MUX(tdm##_name##_sclk_sel, _reg, 0xf, 24,		\
 		    CLK_MUX_ROUND_CLOSEST,			\
-		    tdm_sclk_parent_names, 0)
+		    tdm_sclk_parent_data, 0)
 
 static AUD_TDM_SCLK_MUX(in_a,  AUDIO_CLK_TDMIN_A_CTRL);
 static AUD_TDM_SCLK_MUX(in_b,  AUDIO_CLK_TDMIN_B_CTRL);
@@ -310,7 +337,7 @@ static AUD_TDM_SCLK_MUX(out_c, AUDIO_CLK_TDMOUT_C_CTRL);
 
 #define AUD_TDM_SCLK_PRE_EN(_name, _reg)				\
 	AUD_GATE(tdm##_name##_sclk_pre_en, _reg, 31,			\
-		 "aud_tdm"#_name"_sclk_sel", CLK_SET_RATE_PARENT)
+		 aud_tdm##_name##_sclk_sel, CLK_SET_RATE_PARENT)
 
 static AUD_TDM_SCLK_PRE_EN(in_a,  AUDIO_CLK_TDMIN_A_CTRL);
 static AUD_TDM_SCLK_PRE_EN(in_b,  AUDIO_CLK_TDMIN_B_CTRL);
@@ -322,7 +349,7 @@ static AUD_TDM_SCLK_PRE_EN(out_c, AUDIO_CLK_TDMOUT_C_CTRL);
 
 #define AUD_TDM_SCLK_POST_EN(_name, _reg)				\
 	AUD_GATE(tdm##_name##_sclk_post_en, _reg, 30,			\
-		 "aud_tdm"#_name"_sclk_pre_en", CLK_SET_RATE_PARENT)
+		 aud_tdm##_name##_sclk_pre_en, CLK_SET_RATE_PARENT)
 
 static AUD_TDM_SCLK_POST_EN(in_a,  AUDIO_CLK_TDMIN_A_CTRL);
 static AUD_TDM_SCLK_POST_EN(in_b,  AUDIO_CLK_TDMIN_B_CTRL);
@@ -344,8 +371,9 @@ static AUD_TDM_SCLK_POST_EN(out_c, AUDIO_CLK_TDMOUT_C_CTRL);
 	.hw.init = &(struct clk_init_data) {				\
 		.name = "aud_tdm"#_name"_sclk",				\
 		.ops = &meson_clk_phase_ops,				\
-		.parent_names = (const char *[])			\
-		{ "aud_tdm"#_name"_sclk_post_en" },			\
+		.parent_hws = (const struct clk_hw *[]) {		\
+			&aud_tdm##_name##_sclk_post_en.hw		\
+		},							\
 		.num_parents = 1,					\
 		.flags = CLK_DUTY_CYCLE_PARENT | CLK_SET_RATE_PARENT,	\
 	},								\
@@ -359,19 +387,29 @@ static AUD_TDM_SCLK(out_a, AUDIO_CLK_TDMOUT_A_CTRL);
 static AUD_TDM_SCLK(out_b, AUDIO_CLK_TDMOUT_B_CTRL);
 static AUD_TDM_SCLK(out_c, AUDIO_CLK_TDMOUT_C_CTRL);
 
-static const char * const tdm_lrclk_parent_names[] = {
-	"aud_mst_a_lrclk", "aud_mst_b_lrclk", "aud_mst_c_lrclk",
-	"aud_mst_d_lrclk", "aud_mst_e_lrclk", "aud_mst_f_lrclk",
-	"aud_slv_lrclk0", "aud_slv_lrclk1", "aud_slv_lrclk2",
-	"aud_slv_lrclk3", "aud_slv_lrclk4", "aud_slv_lrclk5",
-	"aud_slv_lrclk6", "aud_slv_lrclk7", "aud_slv_lrclk8",
-	"aud_slv_lrclk9"
+static const struct clk_parent_data tdm_lrclk_parent_data[] = {
+	{ .hw = &aud_mst_a_lrclk.hw, },
+	{ .hw = &aud_mst_b_lrclk.hw, },
+	{ .hw = &aud_mst_c_lrclk.hw, },
+	{ .hw = &aud_mst_d_lrclk.hw, },
+	{ .hw = &aud_mst_e_lrclk.hw, },
+	{ .hw = &aud_mst_f_lrclk.hw, },
+	{ .fw_name = "slv_lrclk0", },
+	{ .fw_name = "slv_lrclk1", },
+	{ .fw_name = "slv_lrclk2", },
+	{ .fw_name = "slv_lrclk3", },
+	{ .fw_name = "slv_lrclk4", },
+	{ .fw_name = "slv_lrclk5", },
+	{ .fw_name = "slv_lrclk6", },
+	{ .fw_name = "slv_lrclk7", },
+	{ .fw_name = "slv_lrclk8", },
+	{ .fw_name = "slv_lrclk9", },
 };
 
-#define AUD_TDM_LRLCK(_name, _reg)		       \
-	AUD_MUX(tdm##_name##_lrclk, _reg, 0xf, 20,     \
-		CLK_MUX_ROUND_CLOSEST,		       \
-		tdm_lrclk_parent_names, 0)
+#define AUD_TDM_LRLCK(_name, _reg)			\
+	AUD_MUX(tdm##_name##_lrclk, _reg, 0xf, 20,	\
+		CLK_MUX_ROUND_CLOSEST,			\
+		tdm_lrclk_parent_data, 0)
 
 static AUD_TDM_LRLCK(in_a,  AUDIO_CLK_TDMIN_A_CTRL);
 static AUD_TDM_LRLCK(in_b,  AUDIO_CLK_TDMIN_B_CTRL);
@@ -386,39 +424,51 @@ static AUD_TDM_LRLCK(out_c, AUDIO_CLK_TDMOUT_C_CTRL);
 	AUD_MUX(tdm_##_name, _reg, 0x7, _shift, 0, _parents,	\
 		CLK_SET_RATE_NO_REPARENT)
 
-static const char * const mclk_pad_ctrl_parent_names[] = {
-	"aud_mst_a_mclk", "aud_mst_b_mclk", "aud_mst_c_mclk",
-	"aud_mst_d_mclk", "aud_mst_e_mclk", "aud_mst_f_mclk",
+static const struct clk_parent_data mclk_pad_ctrl_parent_data[] = {
+	{ .hw = &aud_mst_a_mclk.hw },
+	{ .hw = &aud_mst_b_mclk.hw },
+	{ .hw = &aud_mst_c_mclk.hw },
+	{ .hw = &aud_mst_d_mclk.hw },
+	{ .hw = &aud_mst_e_mclk.hw },
+	{ .hw = &aud_mst_f_mclk.hw },
 };
 
 static AUD_TDM_PAD_CTRL(mclk_pad_0, AUDIO_MST_PAD_CTRL0, 0,
-			mclk_pad_ctrl_parent_names);
+			mclk_pad_ctrl_parent_data);
 static AUD_TDM_PAD_CTRL(mclk_pad_1, AUDIO_MST_PAD_CTRL0, 4,
-			mclk_pad_ctrl_parent_names);
-
-static const char * const lrclk_pad_ctrl_parent_names[] = {
-	"aud_mst_a_lrclk", "aud_mst_b_lrclk", "aud_mst_c_lrclk",
-	"aud_mst_d_lrclk", "aud_mst_e_lrclk", "aud_mst_f_lrclk",
+			mclk_pad_ctrl_parent_data);
+
+static const struct clk_parent_data lrclk_pad_ctrl_parent_data[] = {
+	{ .hw = &aud_mst_a_lrclk.hw },
+	{ .hw = &aud_mst_b_lrclk.hw },
+	{ .hw = &aud_mst_c_lrclk.hw },
+	{ .hw = &aud_mst_d_lrclk.hw },
+	{ .hw = &aud_mst_e_lrclk.hw },
+	{ .hw = &aud_mst_f_lrclk.hw },
 };
 
 static AUD_TDM_PAD_CTRL(lrclk_pad_0, AUDIO_MST_PAD_CTRL1, 16,
-			lrclk_pad_ctrl_parent_names);
+			lrclk_pad_ctrl_parent_data);
 static AUD_TDM_PAD_CTRL(lrclk_pad_1, AUDIO_MST_PAD_CTRL1, 20,
-			lrclk_pad_ctrl_parent_names);
+			lrclk_pad_ctrl_parent_data);
 static AUD_TDM_PAD_CTRL(lrclk_pad_2, AUDIO_MST_PAD_CTRL1, 24,
-			lrclk_pad_ctrl_parent_names);
-
-static const char * const sclk_pad_ctrl_parent_names[] = {
-	"aud_mst_a_sclk", "aud_mst_b_sclk", "aud_mst_c_sclk",
-	"aud_mst_d_sclk", "aud_mst_e_sclk", "aud_mst_f_sclk",
+			lrclk_pad_ctrl_parent_data);
+
+static const struct clk_parent_data sclk_pad_ctrl_parent_data[] = {
+	{ .hw = &aud_mst_a_sclk.hw },
+	{ .hw = &aud_mst_b_sclk.hw },
+	{ .hw = &aud_mst_c_sclk.hw },
+	{ .hw = &aud_mst_d_sclk.hw },
+	{ .hw = &aud_mst_e_sclk.hw },
+	{ .hw = &aud_mst_f_sclk.hw },
 };
 
 static AUD_TDM_PAD_CTRL(sclk_pad_0, AUDIO_MST_PAD_CTRL1, 0,
-			sclk_pad_ctrl_parent_names);
+			sclk_pad_ctrl_parent_data);
 static AUD_TDM_PAD_CTRL(sclk_pad_1, AUDIO_MST_PAD_CTRL1, 4,
-			sclk_pad_ctrl_parent_names);
+			sclk_pad_ctrl_parent_data);
 static AUD_TDM_PAD_CTRL(sclk_pad_2, AUDIO_MST_PAD_CTRL1, 8,
-			sclk_pad_ctrl_parent_names);
+			sclk_pad_ctrl_parent_data);
 
 /*
  * Array of all clocks provided by this provider
@@ -868,54 +918,6 @@ static int devm_clk_get_enable(struct device *dev, char *id)
 	return 0;
 }
 
-static int axg_register_clk_hw_input(struct device *dev,
-				     const char *name)
-{
-	char *clk_name;
-	struct clk_hw *hw;
-	int err = 0;
-
-	clk_name = kasprintf(GFP_KERNEL, "aud_%s", name);
-	if (!clk_name)
-		return -ENOMEM;
-
-	hw = meson_clk_hw_register_input(dev, name, clk_name, 0);
-	if (IS_ERR(hw)) {
-		/* It is ok if an input clock is missing */
-		if (PTR_ERR(hw) == -ENOENT) {
-			dev_dbg(dev, "%s not provided", name);
-		} else {
-			err = PTR_ERR(hw);
-			if (err != -EPROBE_DEFER)
-				dev_err(dev, "failed to get %s clock", name);
-		}
-	}
-
-	kfree(clk_name);
-	return err;
-}
-
-static int axg_register_clk_hw_inputs(struct device *dev,
-				      const char *basename,
-				      unsigned int count)
-{
-	char *name;
-	int i, ret;
-
-	for (i = 0; i < count; i++) {
-		name = kasprintf(GFP_KERNEL, "%s%d", basename, i);
-		if (!name)
-			return -ENOMEM;
-
-		ret = axg_register_clk_hw_input(dev, name);
-		kfree(name);
-		if (ret)
-			return ret;
-	}
-
-	return 0;
-}
-
 static const struct regmap_config axg_audio_regmap_cfg = {
 	.reg_bits	= 32,
 	.val_bits	= 32,
@@ -963,29 +965,6 @@ static int axg_audio_clkc_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	/* Register the peripheral input clock */
-	hw = meson_clk_hw_register_input(dev, "pclk", "audio_pclk", 0);
-	if (IS_ERR(hw))
-		return PTR_ERR(hw);
-
-	/* Register optional input master clocks */
-	ret = axg_register_clk_hw_inputs(dev, "mst_in",
-					 AUD_MST_IN_COUNT);
-	if (ret)
-		return ret;
-
-	/* Register optional input slave sclks */
-	ret = axg_register_clk_hw_inputs(dev, "slv_sclk",
-					 AUD_SLV_SCLK_COUNT);
-	if (ret)
-		return ret;
-
-	/* Register optional input slave lrclks */
-	ret = axg_register_clk_hw_inputs(dev, "slv_lrclk",
-					 AUD_SLV_LRCLK_COUNT);
-	if (ret)
-		return ret;
-
 	/* Populate regmap for the regmap backed clocks */
 	for (i = 0; i < ARRAY_SIZE(aud_clk_regmaps); i++)
 		aud_clk_regmaps[i]->map = map;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
