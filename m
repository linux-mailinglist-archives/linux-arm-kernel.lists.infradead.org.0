Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8159E241B4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 22:04:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=skSSt/kEpVxmGVFDLsEJrSJsC6HJU7lKlmeYVPBVse0=; b=bALR3oYlpXXJHi
	cLFghnxVkRa0+Y6ky0XsimpyXatc8WwI06wsMy9PcU344ejscyUQAORqoneRSnpAXwX6xpVckO7qD
	lAqoAj7GIqvXCTaZCqBSKok95fl39QjxwplodqQBIU+rMJ+H1B6SChpghRgPdHC9D8xcBRopG0Ngr
	xKdd2sVKRaS2In4f6R2z2jqjL9wGFikkOR2juilKIbfIi7iB4WFjboSL+SOc8pNLPI3QRnAScq8BD
	ojxiJ7Dx9OkpO5kdfAFQxt7cW/lZbp45tVX6BCwLFE3XH1SAtc/4jBSyo6kBNaCEblHgCwpaiGwrM
	HD26FzTpvjVlhrnYmaqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSoW1-00028q-MW; Mon, 20 May 2019 20:04:09 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSoVQ-0001YI-39; Mon, 20 May 2019 20:03:33 +0000
Received: by mail-wm1-x344.google.com with SMTP id q15so580741wmj.0;
 Mon, 20 May 2019 13:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QLXKcquZu+aVrTNlY+uDoKerdJmaoxc+CHk+wGkwZvA=;
 b=buBCL3E26Hq+Re61P//BTXlsKczFg+dMIiqF4D9VQMazw31IdlPU393GS8io7OyUv5
 dQWx9I0vPHKFErYlvl/9Xhlp6BQvmvms0tLx5j/SeyJo0f1eLaL6RNARf36bEqofZwPO
 soIQAwzI1xfnrqNZV5dlEo5Y/IFjHM3DGGCLMuYi5MIZv+IpLkACDXw/7Ezhilsz39eT
 Mb/H93eXkvZmczg9Ezteuv3FOLj2KG/kBSSVjDM7oi1jbJ06HhaBIjcAhCLnnU3pEMJk
 5ckK/MWlW41msUrr5PtvxJlSDhLCI/orOuUQjb5/Zr/pSwgyhKgGzJ9A2dvsnnIzYcdk
 Zz+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QLXKcquZu+aVrTNlY+uDoKerdJmaoxc+CHk+wGkwZvA=;
 b=f85lFY2xmm0bZXu56WdNM5nXXTfvTMml+guWjTiGGlg1+WcJAgF943neZrBVrt89/1
 UfeRFz+tA7zz8/7Q9SAd8+3/ZNHx58GNNZp3GNOAgZ/xTgA110PuNTzaoA62uan+T5wK
 hiMg7J8B9TNe0P5Jk6zusYdkKEj3GfPNqLosEyADXYDFWQNvcFvX6vuFw5nENN1YsnO+
 WRGC2VymhhltjT+Co7Vm/DSp8M968EFjQtXT+QMoxc11dI82PNsEjCsWoEV09VM6y5wy
 8Htd8U/R8gBDAIxI8vaXbuOXfceWtwrBR3yM8w54gqaG653s2ol6QcUF1Xq4av3Z5hjS
 pVoA==
X-Gm-Message-State: APjAAAVHUIqRJ2crUbDe3KhsEBWv2oQPSGdRYDB8o2mCBoghFco8JN0B
 pXrGv2GzVpRo96mYoEHrYLU=
X-Google-Smtp-Source: APXvYqxoxXW3d+qwj9JuiVIShzKwfZs9av0Uz0mGHl4ZnmOu8ScvXBBl4tHDB57OwHUoQ4legiLwLg==
X-Received: by 2002:a1c:be0b:: with SMTP id o11mr622654wmf.63.1558382610669;
 Mon, 20 May 2019 13:03:30 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133EE71009C356FA1F0E19AF9.dip0.t-ipconnect.de.
 [2003:f1:33ee:7100:9c35:6fa1:f0e1:9af9])
 by smtp.googlemail.com with ESMTPSA id t7sm23583379wrq.76.2019.05.20.13.03.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 13:03:30 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: narmstrong@baylibre.com, jbrunet@baylibre.com,
 linux-amlogic@lists.infradead.org
Subject: [PATCH 2/4] clk: meson: meson8b: add the cts_amclk clocks
Date: Mon, 20 May 2019 22:03:17 +0200
Message-Id: <20190520200319.9265-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520200319.9265-1-martin.blumenstingl@googlemail.com>
References: <20190520200319.9265-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_130332_141483_BB90C1AA 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the I2S master clock also referred as cts_amclk. The setup for this
clock is identical to GXBB, so this ports commit 4087bd4b21702d ("clk:
meson: gxbb: add cts_amclk") to the Meson8/Meson8b/Meson8m2 clock
driver.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/clk/meson/meson8b.c | 65 +++++++++++++++++++++++++++++++++++++
 drivers/clk/meson/meson8b.h |  5 ++-
 2 files changed, 69 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/meson/meson8b.c b/drivers/clk/meson/meson8b.c
index 62cd3a7f1f65..e00f42e7fc46 100644
--- a/drivers/clk/meson/meson8b.c
+++ b/drivers/clk/meson/meson8b.c
@@ -2153,6 +2153,59 @@ static struct clk_regmap meson8b_vdec_hevc = {
 	},
 };
 
+/* TODO: the clock at index 0 is "DDR_PLL" which we don't support yet */
+static const char * const meson8b_cts_amclk_parent_names[] = {
+	"mpll0", "mpll1", "mpll2"
+};
+
+static u32 meson8b_cts_amclk_mux_table[] = { 1, 2, 3 };
+
+static struct clk_regmap meson8b_cts_amclk_sel = {
+	.data = &(struct clk_regmap_mux_data){
+		.offset = HHI_AUD_CLK_CNTL,
+		.mask = 0x3,
+		.shift = 9,
+		.table = meson8b_cts_amclk_mux_table,
+		.flags = CLK_MUX_ROUND_CLOSEST,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "cts_amclk_sel",
+		.ops = &clk_regmap_mux_ops,
+		.parent_names = meson8b_cts_amclk_parent_names,
+		.num_parents = ARRAY_SIZE(meson8b_cts_amclk_parent_names),
+	},
+};
+
+static struct clk_regmap meson8b_cts_amclk_div = {
+	.data = &(struct clk_regmap_div_data) {
+		.offset = HHI_AUD_CLK_CNTL,
+		.shift = 0,
+		.width = 8,
+		.flags = CLK_DIVIDER_ROUND_CLOSEST,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "cts_amclk_div",
+		.ops = &clk_regmap_divider_ops,
+		.parent_names = (const char *[]){ "cts_amclk_sel" },
+		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
+	},
+};
+
+static struct clk_regmap meson8b_cts_amclk = {
+	.data = &(struct clk_regmap_gate_data){
+		.offset = HHI_AUD_CLK_CNTL,
+		.bit_idx = 8,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "cts_amclk",
+		.ops = &clk_regmap_gate_ops,
+		.parent_names = (const char *[]){ "cts_amclk_div" },
+		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
+	},
+};
+
 /* Everything Else (EE) domain gates */
 
 static MESON_GATE(meson8b_ddr, HHI_GCLK_MPEG0, 0);
@@ -2432,6 +2485,9 @@ static struct clk_hw_onecell_data meson8_hw_onecell_data = {
 		[CLKID_VDEC_HEVC_DIV]	    = &meson8b_vdec_hevc_div.hw,
 		[CLKID_VDEC_HEVC_EN]	    = &meson8b_vdec_hevc_en.hw,
 		[CLKID_VDEC_HEVC]	    = &meson8b_vdec_hevc.hw,
+		[CLKID_CTS_AMCLK_SEL]	    = &meson8b_cts_amclk_sel.hw,
+		[CLKID_CTS_AMCLK_DIV]	    = &meson8b_cts_amclk_div.hw,
+		[CLKID_CTS_AMCLK]	    = &meson8b_cts_amclk.hw,
 		[CLK_NR_CLKS]		    = NULL,
 	},
 	.num = CLK_NR_CLKS,
@@ -2641,6 +2697,9 @@ static struct clk_hw_onecell_data meson8b_hw_onecell_data = {
 		[CLKID_VDEC_HEVC_DIV]	    = &meson8b_vdec_hevc_div.hw,
 		[CLKID_VDEC_HEVC_EN]	    = &meson8b_vdec_hevc_en.hw,
 		[CLKID_VDEC_HEVC]	    = &meson8b_vdec_hevc.hw,
+		[CLKID_CTS_AMCLK_SEL]	    = &meson8b_cts_amclk_sel.hw,
+		[CLKID_CTS_AMCLK_DIV]	    = &meson8b_cts_amclk_div.hw,
+		[CLKID_CTS_AMCLK]	    = &meson8b_cts_amclk.hw,
 		[CLK_NR_CLKS]		    = NULL,
 	},
 	.num = CLK_NR_CLKS,
@@ -2852,6 +2911,9 @@ static struct clk_hw_onecell_data meson8m2_hw_onecell_data = {
 		[CLKID_VDEC_HEVC_DIV]	    = &meson8b_vdec_hevc_div.hw,
 		[CLKID_VDEC_HEVC_EN]	    = &meson8b_vdec_hevc_en.hw,
 		[CLKID_VDEC_HEVC]	    = &meson8b_vdec_hevc.hw,
+		[CLKID_CTS_AMCLK_SEL]	    = &meson8b_cts_amclk_sel.hw,
+		[CLKID_CTS_AMCLK_DIV]	    = &meson8b_cts_amclk_div.hw,
+		[CLKID_CTS_AMCLK]	    = &meson8b_cts_amclk.hw,
 		[CLK_NR_CLKS]		    = NULL,
 	},
 	.num = CLK_NR_CLKS,
@@ -3041,6 +3103,9 @@ static struct clk_regmap *const meson8b_clk_regmaps[] = {
 	&meson8b_vdec_hevc_div,
 	&meson8b_vdec_hevc_en,
 	&meson8b_vdec_hevc,
+	&meson8b_cts_amclk,
+	&meson8b_cts_amclk_sel,
+	&meson8b_cts_amclk_div,
 };
 
 static const struct meson8b_clk_reset_line {
diff --git a/drivers/clk/meson/meson8b.h b/drivers/clk/meson/meson8b.h
index ed37196187e6..03efa47e800f 100644
--- a/drivers/clk/meson/meson8b.h
+++ b/drivers/clk/meson/meson8b.h
@@ -30,6 +30,7 @@
 #define HHI_SYS_CPU_CLK_CNTL1		0x15c /* 0x57 offset in data sheet */
 #define HHI_VID_CLK_DIV			0x164 /* 0x59 offset in data sheet */
 #define HHI_MPEG_CLK_CNTL		0x174 /* 0x5d offset in data sheet */
+#define HHI_AUD_CLK_CNTL		0x178 /* 0x5e offset in data sheet */
 #define HHI_VID_CLK_CNTL		0x17c /* 0x5f offset in data sheet */
 #define HHI_VID_CLK_CNTL2		0x194 /* 0x65 offset in data sheet */
 #define HHI_VID_DIVIDER_CNTL		0x198 /* 0x66 offset in data sheet */
@@ -171,8 +172,10 @@
 #define CLKID_VDEC_HEVC_SEL	203
 #define CLKID_VDEC_HEVC_DIV	204
 #define CLKID_VDEC_HEVC_EN	205
+#define CLKID_CTS_AMCLK_SEL	207
+#define CLKID_CTS_AMCLK_DIV	208
 
-#define CLK_NR_CLKS		207
+#define CLK_NR_CLKS		210
 
 /*
  * include the CLKID and RESETID that have
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
