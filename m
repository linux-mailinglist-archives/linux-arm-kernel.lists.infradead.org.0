Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B2D241B8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 22:04:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3/M6Rs0Ku1wvdt5GcDYM70E823hRIgjd1sMedDbRKt0=; b=qpV4QQjaNrsKJ0
	/sqPI6NAxedbLS3XK0NfkYyy/1y+wWHe1AbcW/wtpE4IsMGtKlls5A11bD2TNbG9NFb5AUTJDY+4b
	bNvPo8LChjdQ4xTc4aII7cZQcLipbSs+r1rxiJMJ5m/uoCmeNnJuCrueEDd2WbiNO1Qo82FuVDLtQ
	x0IXqIFKyD0DbtGWUB7xmVtIgRcFF5zSrraYe3MfEnO5IJdYsH1VldX2B8u1dHBkoayaBsbBADZVM
	y17E0YYsvFyUjhTybHjj0jW0warBjj93BPaN5b8EyMuFynT7D0Pbalrc3y3T/QDKoeTy1sDNX8zVa
	sqbfp+Y2Ca7hGy/sTjJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSoWG-0002Sd-4B; Mon, 20 May 2019 20:04:24 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSoVR-0001Yr-HG; Mon, 20 May 2019 20:03:38 +0000
Received: by mail-wr1-x443.google.com with SMTP id e15so15993932wrs.4;
 Mon, 20 May 2019 13:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QQEWFaKOfrbORxHzOKdVjgIQUsHfT25oNZs4Yqx/FkM=;
 b=KJFzMSWh2cIQNFSJdUCU0nuU+/GUgdCA6sEdeqwMvanTcXc/REVb/x6G5Xr4pdMvkx
 7eGo5ipth/sUOzLEjza7zN9g7BAPGqnoyMUDe3MGRqDM/yhgM5Wn/pZYWwi82ncTWe2v
 1z5ccZQfrGfCHBS0nMcQCfpugx4FwLTs55ja3DjQaN3QHB0Y8q+rIdD9cyVhGoNfCv94
 G73nqG8x3FqKmKtvokPJmDtsbdYa24Fq9qC2b+JPnkLdCxVuHEd9gHgzr7LLeHSwTWuI
 LHamhvFmxCMsQ/MdOHV6vtTeVb/vESyaKmV/7npOSNYf7hyr1PicWNGuzd2/2FJah4/9
 bGkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QQEWFaKOfrbORxHzOKdVjgIQUsHfT25oNZs4Yqx/FkM=;
 b=f7g8GPOy0De8KlYhDVLnGBj/FxzSEXulUl7Mz0BjIRd4ErvLzcOVPjw9b4ZiOw30xk
 nVwbbHzLbe7qmbSS21KGVkCajs79Zi5TXYPRKkuP/7wyaOzN4XYDlEzHZBXe1634Dieb
 J9ctcY9wOsMkNkWCJON/ONmwhFfaScPsR0gtKTsqZHZlOJcTx3xawU6IJ4mjyl7x+tcU
 I2WtpCQp9cjj0fhHlJ+2VsNPzMQzsFwHbbxus5CKMVirs9gSJ1i4xZVRKbYMGhCHHPkE
 LAP0HPa+4gvF3ngNp9qckbdVdNvda0mkR/RUbUv239wMIKIyXxSM/JgR4Fv4nHKKuW51
 omVw==
X-Gm-Message-State: APjAAAUxNM4ezVDZek3AKHvzCg9+WC3TWwWOZLFdMldZjFyLslIju7r/
 Foc7woBG7yUwQUlXfbuEvSI=
X-Google-Smtp-Source: APXvYqyvZjwm7oAgYaaB/R0+9iOVDbGrMUs0Madc7vxHYanOE9pqG4mpy2xeBDW9DZL7JLwGOLn4sQ==
X-Received: by 2002:a5d:4f0b:: with SMTP id c11mr9569827wru.35.1558382611949; 
 Mon, 20 May 2019 13:03:31 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133EE71009C356FA1F0E19AF9.dip0.t-ipconnect.de.
 [2003:f1:33ee:7100:9c35:6fa1:f0e1:9af9])
 by smtp.googlemail.com with ESMTPSA id t7sm23583379wrq.76.2019.05.20.13.03.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 13:03:31 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: narmstrong@baylibre.com, jbrunet@baylibre.com,
 linux-amlogic@lists.infradead.org
Subject: [PATCH 3/4] clk: meson: meson8b: add the cts_mclk_i958 clocks
Date: Mon, 20 May 2019 22:03:18 +0200
Message-Id: <20190520200319.9265-4-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520200319.9265-1-martin.blumenstingl@googlemail.com>
References: <20190520200319.9265-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_130333_748049_C08D72B7 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

Add the SPDIF master clock also referred as cts_mclk_i958. The setup for
this clock is identical to GXBB, so this ports commit 3c277c247eabeb
("clk: meson: gxbb: add cts_mclk_i958") to the Meson8/Meson8b/Meson8m2
clock driver.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/clk/meson/meson8b.c | 65 +++++++++++++++++++++++++++++++++++++
 drivers/clk/meson/meson8b.h |  5 ++-
 2 files changed, 69 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/meson/meson8b.c b/drivers/clk/meson/meson8b.c
index e00f42e7fc46..13ce1783eead 100644
--- a/drivers/clk/meson/meson8b.c
+++ b/drivers/clk/meson/meson8b.c
@@ -2206,6 +2206,59 @@ static struct clk_regmap meson8b_cts_amclk = {
 	},
 };
 
+/* TODO: the clock at index 0 is "DDR_PLL" which we don't support yet */
+static const char * const meson8b_cts_mclk_i958_parent_names[] = {
+	"mpll0", "mpll1", "mpll2"
+};
+
+static u32 meson8b_cts_mclk_i958_mux_table[] = { 1, 2, 3 };
+
+static struct clk_regmap meson8b_cts_mclk_i958_sel = {
+	.data = &(struct clk_regmap_mux_data){
+		.offset = HHI_AUD_CLK_CNTL2,
+		.mask = 0x3,
+		.shift = 25,
+		.table = meson8b_cts_mclk_i958_mux_table,
+		.flags = CLK_MUX_ROUND_CLOSEST,
+	},
+	.hw.init = &(struct clk_init_data) {
+		.name = "cts_mclk_i958_sel",
+		.ops = &clk_regmap_mux_ops,
+		.parent_names = meson8b_cts_mclk_i958_parent_names,
+		.num_parents = ARRAY_SIZE(meson8b_cts_mclk_i958_parent_names),
+	},
+};
+
+static struct clk_regmap meson8b_cts_mclk_i958_div = {
+	.data = &(struct clk_regmap_div_data){
+		.offset = HHI_AUD_CLK_CNTL2,
+		.shift = 16,
+		.width = 8,
+		.flags = CLK_DIVIDER_ROUND_CLOSEST,
+	},
+	.hw.init = &(struct clk_init_data) {
+		.name = "cts_mclk_i958_div",
+		.ops = &clk_regmap_divider_ops,
+		.parent_names = (const char *[]){ "cts_mclk_i958_sel" },
+		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
+	},
+};
+
+static struct clk_regmap meson8b_cts_mclk_i958 = {
+	.data = &(struct clk_regmap_gate_data){
+		.offset = HHI_AUD_CLK_CNTL2,
+		.bit_idx = 24,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "cts_mclk_i958",
+		.ops = &clk_regmap_gate_ops,
+		.parent_names = (const char *[]){ "cts_mclk_i958_div" },
+		.num_parents = 1,
+		.flags = CLK_SET_RATE_PARENT,
+	},
+};
+
 /* Everything Else (EE) domain gates */
 
 static MESON_GATE(meson8b_ddr, HHI_GCLK_MPEG0, 0);
@@ -2488,6 +2541,9 @@ static struct clk_hw_onecell_data meson8_hw_onecell_data = {
 		[CLKID_CTS_AMCLK_SEL]	    = &meson8b_cts_amclk_sel.hw,
 		[CLKID_CTS_AMCLK_DIV]	    = &meson8b_cts_amclk_div.hw,
 		[CLKID_CTS_AMCLK]	    = &meson8b_cts_amclk.hw,
+		[CLKID_CTS_MCLK_I958_SEL]   = &meson8b_cts_mclk_i958_sel.hw,
+		[CLKID_CTS_MCLK_I958_DIV]   = &meson8b_cts_mclk_i958_div.hw,
+		[CLKID_CTS_MCLK_I958]	    = &meson8b_cts_mclk_i958.hw,
 		[CLK_NR_CLKS]		    = NULL,
 	},
 	.num = CLK_NR_CLKS,
@@ -2700,6 +2756,9 @@ static struct clk_hw_onecell_data meson8b_hw_onecell_data = {
 		[CLKID_CTS_AMCLK_SEL]	    = &meson8b_cts_amclk_sel.hw,
 		[CLKID_CTS_AMCLK_DIV]	    = &meson8b_cts_amclk_div.hw,
 		[CLKID_CTS_AMCLK]	    = &meson8b_cts_amclk.hw,
+		[CLKID_CTS_MCLK_I958_SEL]   = &meson8b_cts_mclk_i958_sel.hw,
+		[CLKID_CTS_MCLK_I958_DIV]   = &meson8b_cts_mclk_i958_div.hw,
+		[CLKID_CTS_MCLK_I958]	    = &meson8b_cts_mclk_i958.hw,
 		[CLK_NR_CLKS]		    = NULL,
 	},
 	.num = CLK_NR_CLKS,
@@ -2914,6 +2973,9 @@ static struct clk_hw_onecell_data meson8m2_hw_onecell_data = {
 		[CLKID_CTS_AMCLK_SEL]	    = &meson8b_cts_amclk_sel.hw,
 		[CLKID_CTS_AMCLK_DIV]	    = &meson8b_cts_amclk_div.hw,
 		[CLKID_CTS_AMCLK]	    = &meson8b_cts_amclk.hw,
+		[CLKID_CTS_MCLK_I958_SEL]   = &meson8b_cts_mclk_i958_sel.hw,
+		[CLKID_CTS_MCLK_I958_DIV]   = &meson8b_cts_mclk_i958_div.hw,
+		[CLKID_CTS_MCLK_I958]	    = &meson8b_cts_mclk_i958.hw,
 		[CLK_NR_CLKS]		    = NULL,
 	},
 	.num = CLK_NR_CLKS,
@@ -3106,6 +3168,9 @@ static struct clk_regmap *const meson8b_clk_regmaps[] = {
 	&meson8b_cts_amclk,
 	&meson8b_cts_amclk_sel,
 	&meson8b_cts_amclk_div,
+	&meson8b_cts_mclk_i958_sel,
+	&meson8b_cts_mclk_i958_div,
+	&meson8b_cts_mclk_i958,
 };
 
 static const struct meson8b_clk_reset_line {
diff --git a/drivers/clk/meson/meson8b.h b/drivers/clk/meson/meson8b.h
index 03efa47e800f..c3787418088e 100644
--- a/drivers/clk/meson/meson8b.h
+++ b/drivers/clk/meson/meson8b.h
@@ -32,6 +32,7 @@
 #define HHI_MPEG_CLK_CNTL		0x174 /* 0x5d offset in data sheet */
 #define HHI_AUD_CLK_CNTL		0x178 /* 0x5e offset in data sheet */
 #define HHI_VID_CLK_CNTL		0x17c /* 0x5f offset in data sheet */
+#define HHI_AUD_CLK_CNTL2		0x190 /* 0x64 offset in data sheet */
 #define HHI_VID_CLK_CNTL2		0x194 /* 0x65 offset in data sheet */
 #define HHI_VID_DIVIDER_CNTL		0x198 /* 0x66 offset in data sheet */
 #define HHI_SYS_CPU_CLK_CNTL0		0x19c /* 0x67 offset in data sheet */
@@ -174,8 +175,10 @@
 #define CLKID_VDEC_HEVC_EN	205
 #define CLKID_CTS_AMCLK_SEL	207
 #define CLKID_CTS_AMCLK_DIV	208
+#define CLKID_CTS_MCLK_I958_SEL	210
+#define CLKID_CTS_MCLK_I958_DIV	211
 
-#define CLK_NR_CLKS		210
+#define CLK_NR_CLKS		213
 
 /*
  * include the CLKID and RESETID that have
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
