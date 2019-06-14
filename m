Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C72346BCF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 23:23:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kH08cFv2Xfsi5uNEYiPJpQTX/Ll42TXG/ALwofKGeXU=; b=IPT
	DykvzsjXTHqgpceNxWeWEREM+sIwIAjqw0RMpXV+YxG+tmnPrxaavQmoXaRZL5kPROhDeqhSy2f0x
	hHW0t2xk74N5pp37akuMgWZCZ8FnmuSXm1K97OvrT+VqVkwDFf1QdtVwRMvmYfLpBmOe79Zg7pXSG
	l4ywdrNFGog/E20S6VWK7tJ8CQQIeg06vySa6OX9n1wEUhgbPv7n4gk2M0qzUyxaSxJL/ReCFVbf5
	G//7L6cIqnMPFdTm12hKle/W/keMNjzGS3CIoc6tdSd6ss6LWJQB2hQQGB/XDSwZCEzhOAY5l9Hek
	7uGMmOJF98mqGtAT8eiUx/cjx8fKItQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbtf7-0003Xz-WC; Fri, 14 Jun 2019 21:23:06 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbtev-0003UX-TX
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 21:22:55 +0000
Received: by mail-wr1-x442.google.com with SMTP id n9so3949463wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 14:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=ggui5tKQFGyDOgYvoTOX6NnpsBmDVkYhESGR6zzTFdU=;
 b=QjRWeywivdHvHDAoGBCCXBT170hPajz7S/w19mf8DN+NfrZeeUdtVoqHMfCGWeqZ5l
 ziWAV/zxscwHziKCuNGHI7FX1J/etV4pWH67X3v00seyuvNxKLgY543E7q+xVtv4LKEo
 1EvhhNOmOwil6FBc7oxjDcgMRYwQ+qC8YkAZGhnicdl1KM5E1QU9hbdh5MhnUv45L52L
 bFQPVVONCocXcSFAXAl5yN7g7PEnhBEhwyWUlHe39NXg7OPo/VHv7LmzPwiBk70iviYB
 Ck8+bvsE2Lq0A9Q3S2/8Cy1IjqTgh0yxAiSjOGET84BEMtg8GkrKWcVJvzibGCt2YYBf
 ObRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ggui5tKQFGyDOgYvoTOX6NnpsBmDVkYhESGR6zzTFdU=;
 b=m2HVW2RbL32iCYsWYp9qawvF2ikOVMtU92TYJmX/ypG+unm5oAIEXvCe0GznMuouDE
 B9Ge0HOIWeV9zVRhqbMyLbhfrq83OfP/ew/MftRKj7LK9zzYNebr2XQK3MlLH6VJ7/bW
 J8vnhAitIUDaP6LH0jwMepwZp24GTe4etRf0JD3cJosXZwSHH+0HF4Yw5GwS6HHWi+Dk
 lhtjoQFkKLKjGn1C4RJUUShYze4bpBxf1nMkP5AufWNtsTiXRQGQXsl/s2wTl5u7anKS
 N58O0IKtiYLFaN6yoVMA8yARxY1WVS4GDYzntmwO2HXo9zsiQ8OKri67tJa4EyFy2rXG
 erIw==
X-Gm-Message-State: APjAAAX8QgRiaCzKs312dvYgdFTxAhwR+6xvJXX/EjGTB5znZfMKv5tC
 /rA0O4jjbNvVzLgF9S3OvdvIiAZu
X-Google-Smtp-Source: APXvYqwE2Tow7KxAcNFUsPV6cy71f0kByvLio62p8Jl3js1h9LATnm/etuHPQ78Opp/I0LZgTI3hDw==
X-Received: by 2002:a5d:4d06:: with SMTP id z6mr40521121wrt.343.1560547371615; 
 Fri, 14 Jun 2019 14:22:51 -0700 (PDT)
Received: from afl1.intra.ditec.sk (adsl-dyn95.78-98-50.t-com.sk.
 [78.98.50.95])
 by smtp.googlemail.com with ESMTPSA id r4sm1501727wra.96.2019.06.14.14.22.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 14:22:51 -0700 (PDT)
From: afl1 <afl2001@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] pinctrl: meson: add missing tsin pinctrl for meson gxbb/gxl
Date: Fri, 14 Jun 2019 23:22:45 +0200
Message-Id: <20190614212245.14805-1-afl2001@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_142253_987233_82D4EA66 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (afl2001[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (afl2001[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: afl1 <afl2001@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds missing tsin pinctrl definitions
for meson gxbb and gxl/gxm.

Signed-off-by: afl1 <afl2001@gmail.com>
---
 drivers/pinctrl/meson/pinctrl-meson-gxbb.c | 35 ++++++++++++++++++++++
 drivers/pinctrl/meson/pinctrl-meson-gxl.c  | 27 +++++++++++++++++
 2 files changed, 62 insertions(+)

diff --git a/drivers/pinctrl/meson/pinctrl-meson-gxbb.c b/drivers/pinctrl/meson/pinctrl-meson-gxbb.c
index 4edeb4cae72a..63a25b5bc4c0 100644
--- a/drivers/pinctrl/meson/pinctrl-meson-gxbb.c
+++ b/drivers/pinctrl/meson/pinctrl-meson-gxbb.c
@@ -237,10 +237,24 @@ static const unsigned int hdmi_hpd_pins[]	= { GPIOH_0 };
 static const unsigned int hdmi_sda_pins[]	= { GPIOH_1 };
 static const unsigned int hdmi_scl_pins[]	= { GPIOH_2 };
 
+static const unsigned int tsin_a_d_valid_pins[] = { GPIOY_0 };
+static const unsigned int tsin_a_sop_pins[]	= { GPIOY_1 };
+static const unsigned int tsin_a_clk_pins[]	= { GPIOY_2 };
+static const unsigned int tsin_a_d0_pins[]	= { GPIOY_3 };
+static const unsigned int tsin_a_dp_pins[]	= {
+	GPIOY_4, GPIOY_5, GPIOY_6, GPIOY_7, GPIOY_8, GPIOY_9, GPIOY_10
+};
+
+static const unsigned int tsin_a_fail_pins[]	= { GPIOY_11 };
 static const unsigned int i2s_out_ch23_y_pins[]	= { GPIOY_8 };
 static const unsigned int i2s_out_ch45_y_pins[]	= { GPIOY_9 };
 static const unsigned int i2s_out_ch67_y_pins[]	= { GPIOY_10 };
 
+static const unsigned int tsin_b_d_valid_pins[] = { GPIOX_6 };
+static const unsigned int tsin_b_sop_pins[]	= { GPIOX_7 };
+static const unsigned int tsin_b_clk_pins[]	= { GPIOX_8 };
+static const unsigned int tsin_b_d0_pins[]	= { GPIOX_9 };
+
 static const unsigned int spdif_out_y_pins[]	= { GPIOY_12 };
 
 static const unsigned int gen_clk_out_pins[]	= { GPIOY_15 };
@@ -443,8 +457,18 @@ static struct meson_pmx_group meson_gxbb_periphs_groups[] = {
 	GROUP(pwm_a_x,		3,	17),
 	GROUP(pwm_e,		2,	30),
 	GROUP(pwm_f_x,		3,	18),
+	GROUP(tsin_b_d_valid,	3,	9),
+	GROUP(tsin_b_sop,	3,	8),
+	GROUP(tsin_b_clk,	3,	10),
+	GROUP(tsin_b_d0,	3,	7),
 
 	/* Bank Y */
+	GROUP(tsin_a_fail,	3,	3),
+	GROUP(tsin_a_d_valid,	3,	2),
+	GROUP(tsin_a_sop,	3,	1),
+	GROUP(tsin_a_clk,	3,	0),
+	GROUP(tsin_a_d0,	3,	4),
+	GROUP(tsin_a_dp,	3,	5),
 	GROUP(uart_cts_c,	1,	19),
 	GROUP(uart_rts_c,	1,	18),
 	GROUP(uart_tx_c,	1,	17),
@@ -607,6 +631,15 @@ static const char * const gpio_periphs_groups[] = {
 	"GPIOX_20", "GPIOX_21", "GPIOX_22",
 };
 
+static const char * const tsin_a_groups[] = {
+	"tsin_a_clk", "tsin_a_sop", "tsin_a_d_valid", "tsin_a_d0",
+	"tsin_a_dp", "tsin_a_fail",
+};
+
+static const char * const tsin_b_groups[] = {
+	"tsin_b_clk", "tsin_b_sop", "tsin_b_d_valid", "tsin_b_d0",
+};
+
 static const char * const emmc_groups[] = {
 	"emmc_nand_d07", "emmc_clk", "emmc_cmd", "emmc_ds",
 };
@@ -798,6 +831,8 @@ static struct meson_pmx_func meson_gxbb_periphs_functions[] = {
 	FUNCTION(i2s_out),
 	FUNCTION(spdif_out),
 	FUNCTION(gen_clk_out),
+	FUNCTION(tsin_a),
+	FUNCTION(tsin_b),
 };
 
 static struct meson_pmx_func meson_gxbb_aobus_functions[] = {
diff --git a/drivers/pinctrl/meson/pinctrl-meson-gxl.c b/drivers/pinctrl/meson/pinctrl-meson-gxl.c
index 0c0a5018102b..984d0e2086a5 100644
--- a/drivers/pinctrl/meson/pinctrl-meson-gxl.c
+++ b/drivers/pinctrl/meson/pinctrl-meson-gxl.c
@@ -247,6 +247,17 @@ static const unsigned int tsin_a_dp_pins[] = {
 	GPIODV_1, GPIODV_2, GPIODV_3, GPIODV_4, GPIODV_5, GPIODV_6, GPIODV_7,
 };
 
+static const unsigned int tsin_b_clk_pins[]	= { GPIOH_6 };
+static const unsigned int tsin_b_d0_pins[]	= { GPIOH_7 };
+static const unsigned int tsin_b_sop_pins[]	= { GPIOH_8 };
+static const unsigned int tsin_b_d_valid_pins[] = { GPIOH_9 };
+
+static const unsigned int tsin_b_fail_z4_pins[] = { GPIOZ_4 };
+static const unsigned int tsin_b_clk_z3_pins[]	= { GPIOZ_3 };
+static const unsigned int tsin_b_d0_z2_pins[]	= { GPIOZ_2 };
+static const unsigned int tsin_b_sop_z1_pins[]	= { GPIOZ_1 };
+static const unsigned int tsin_b_d_valid_z0_pins[] = { GPIOZ_0 };
+
 static const struct pinctrl_pin_desc meson_gxl_aobus_pins[] = {
 	MESON_PIN(GPIOAO_0),
 	MESON_PIN(GPIOAO_1),
@@ -444,6 +455,11 @@ static struct meson_pmx_group meson_gxl_periphs_groups[] = {
 	GROUP(eth_txd1,		4,	12),
 	GROUP(eth_txd2,		4,	11),
 	GROUP(eth_txd3,		4,	10),
+	GROUP(tsin_b_fail_z4,	3,	15),
+	GROUP(tsin_b_clk_z3,	3,	16),
+	GROUP(tsin_b_d0_z2,	3,	17),
+	GROUP(tsin_b_sop_z1,	3,	18),
+	GROUP(tsin_b_d_valid_z0, 3,	19),
 	GROUP(pwm_c,		3,	20),
 	GROUP(i2s_out_ch23_z,	3,	26),
 	GROUP(i2s_out_ch45_z,	3,	25),
@@ -460,6 +476,10 @@ static struct meson_pmx_group meson_gxl_periphs_groups[] = {
 	GROUP(i2s_out_lr_clk,	6,	24),
 	GROUP(i2s_out_ch01,	6,	23),
 	GROUP(spdif_out_h,	6,	28),
+	GROUP(tsin_b_d0,	6,	17),
+	GROUP(tsin_b_sop,	6,	18),
+	GROUP(tsin_b_d_valid,	6,	19),
+	GROUP(tsin_b_clk,	6,	20),
 
 	/* Bank DV */
 	GROUP(uart_tx_b,	2,	16),
@@ -695,6 +715,12 @@ static const char * const tsin_a_groups[] = {
 	"tsin_a_dp", "tsin_a_fail",
 };
 
+static const char * const tsin_b_groups[] = {
+	"tsin_b_clk", "tsin_b_sop", "tsin_b_d_valid", "tsin_b_d0",
+	"tsin_b_clk_z3", "tsin_b_sop_z1", "tsin_b_d_valid_z0", "tsin_b_d0_z2",
+	"tsin_b_fail_z4",
+};
+
 static const char * const gpio_aobus_groups[] = {
 	"GPIOAO_0", "GPIOAO_1", "GPIOAO_2", "GPIOAO_3", "GPIOAO_4",
 	"GPIOAO_5", "GPIOAO_6", "GPIOAO_7", "GPIOAO_8", "GPIOAO_9",
@@ -770,6 +796,7 @@ static struct meson_pmx_func meson_gxl_periphs_functions[] = {
 	FUNCTION(spdif_out),
 	FUNCTION(eth_led),
 	FUNCTION(tsin_a),
+	FUNCTION(tsin_b),
 };
 
 static struct meson_pmx_func meson_gxl_aobus_functions[] = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
