Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0BFD179E1E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 04:08:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9Z6+CTJqvUhh79jL+CBVO7Hx/2/LsQ9sZaai+beBrk8=; b=ojx
	ES3zre6DZPkf4Pfbah0uEVVzIjdXIPhCQ9QvWuXNmkjIUlB72BJbU3LgHgYKcvsul4Rp/SyIaTfR/
	ywW3hGckt8dXCfn28KkIqQIZXlk+B//J7HO5hH1VlCe08yULRjzsxWtLX5f+AMAEEHqsdU8YWnOt8
	Onv3hcyDMGdh7cd14qa2dK/LKTOmfTmy3NtOKBnA186spLU+b4v44nkGpwJy7X04HG2Lhna9x/gLB
	vP0OBDwVQm0P+t7H/CsMdHEd7ZMvQwn+YltclOOFx/iGkmjMR77RuGK/YxHyCII75w/GwDwjDFj5J
	rQTnXA7y5T01h4n46BGwT9Iw/pLrK8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9gsV-00078z-GQ; Thu, 05 Mar 2020 03:08:51 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9gsL-00078F-9f; Thu, 05 Mar 2020 03:08:43 +0000
Received: by mail-lf1-x141.google.com with SMTP id b13so3278471lfb.12;
 Wed, 04 Mar 2020 19:08:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=yLfnyzUb3vAE2zCLZJ4NDnXCxB5CWKtyYNcQrygdd6I=;
 b=dArcfVqAvs50GC508TofPui8uF3KPxcULIvwUp1b1dkTFi1egJYYXGepmfIbTFxr52
 hflv6Nto2HhNussppipVVfkQCLKa0nkJLTRZDReJyKCBWjUHGZmetsx8cOhT7wyGkHxc
 nBeUqwRdcQvTHN9sejW3y3wxHtFV4yjyv2NVJj8AbNcGYveKHeKqkeGQ0N+zh99Sonyq
 sZsfVVDXwifrxUvH2361lFf2+aPv8FMwyIB3vF/JUQXSOrFef9yML8UhEA+rb71eZqUd
 ed0ooYjXs1w825BACX3y3YjFftzvapPNv7vQplSnC/4wf5ZRHVKdczbjG84EJrtKnUDs
 o+0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=yLfnyzUb3vAE2zCLZJ4NDnXCxB5CWKtyYNcQrygdd6I=;
 b=jR5mUUVCjvwkJTIZZi1fD8+iFDkWvd6/CMNhZ2EuxSWIET43IjG3g1JzCjh5GziRmq
 vZJrKqcEvJxNE1fv3TiFhWvLSn0LTJI45XBXMtA2lVu4tIruYSFe6/j90zPib9E79gl+
 BAFLGslPr+tXDGI9gz26lPC/ZkumSzwtBM4MQFze7BcsuiFcTp171MlhoeVX5DgNzDub
 K4Y76lxDKq+N6E5hqP6V29HwXxRS+Feglh0Lqhokt+6P8/+Rm4CDW4AtkVKXF9wFDIJ+
 0QcTq9PwXQlr3QrecJ1tf0wdRRKUH7uiBnPqZVX0W8fxXyGhdPfEEuv4HwuM92c+RQJz
 fXSQ==
X-Gm-Message-State: ANhLgQ0eYjYUEtr+h4lZVdVw9Xvuzlo4VKnxdrt4/TuKy9oWo8mz+HZt
 iLLemWvy6FyBCb+XQMfXN0A=
X-Google-Smtp-Source: ADFU+vt+Jm4ucrFxl9SERHNI/DtgSE59nJMeaEOBQxZgNHf4ngDQT0zBBwOvZWOmZuLchRvG5trDDA==
X-Received: by 2002:ac2:4c39:: with SMTP id u25mr3766817lfq.195.1583377716763; 
 Wed, 04 Mar 2020 19:08:36 -0800 (PST)
Received: from localhost.localdomain ([37.76.255.38])
 by smtp.gmail.com with ESMTPSA id u4sm1518lfo.79.2020.03.04.19.08.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 04 Mar 2020 19:08:35 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] pinctrl: meson: add tsin pinctrl for meson gxbb/gxl/gxm
Date: Thu,  5 Mar 2020 07:07:46 +0400
Message-Id: <1583377666-13378-1-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_190841_362273_B1922929 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Christian Hewitt <christianshewitt@gmail.com>,
 Igor Vavro <afl2001@gmail.com>, Otto Meier <gf435@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Igor Vavro <afl2001@gmail.com>

Add the tsin pinctrl definitions needed for integrated DVB hardware
support on Meson GXBB/GXL/GXM boards.

changes in v2
- fix ordering and numbering of uart_c ping flagged by Otto in [1]

[1] http://lists.infradead.org/pipermail/linux-amlogic/2020-March/015906.html

Signed-off-by: Igor Vavro <afl2001@gmail.com>
[updated commit message]
Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 drivers/pinctrl/meson/pinctrl-meson-gxbb.c | 35 ++++++++++++++++++++++++++++++
 drivers/pinctrl/meson/pinctrl-meson-gxl.c  | 27 +++++++++++++++++++++++
 2 files changed, 62 insertions(+)

diff --git a/drivers/pinctrl/meson/pinctrl-meson-gxbb.c b/drivers/pinctrl/meson/pinctrl-meson-gxbb.c
index 926b999..d130c63 100644
--- a/drivers/pinctrl/meson/pinctrl-meson-gxbb.c
+++ b/drivers/pinctrl/meson/pinctrl-meson-gxbb.c
@@ -231,10 +231,24 @@ static const unsigned int hdmi_hpd_pins[]	= { GPIOH_0 };
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
@@ -437,12 +451,22 @@ static struct meson_pmx_group meson_gxbb_periphs_groups[] = {
 	GROUP(pwm_a_x,		3,	17),
 	GROUP(pwm_e,		2,	30),
 	GROUP(pwm_f_x,		3,	18),
+	GROUP(tsin_b_d_valid,	3,	9),
+	GROUP(tsin_b_sop,	3,	8),
+	GROUP(tsin_b_clk,	3,	10),
+	GROUP(tsin_b_d0,	3,	7),
 
 	/* Bank Y */
 	GROUP(uart_cts_c,	1,	17),
 	GROUP(uart_rts_c,	1,	16),
 	GROUP(uart_tx_c,	1,	19),
 	GROUP(uart_rx_c,	1,	18),
+	GROUP(tsin_a_fail,	3,	3),
+	GROUP(tsin_a_d_valid,	3,	2),
+	GROUP(tsin_a_sop,	3,	1),
+	GROUP(tsin_a_clk,	3,	0),
+	GROUP(tsin_a_d0,	3,	4),
+	GROUP(tsin_a_dp,	3,	5),
 	GROUP(pwm_a_y,		1,	21),
 	GROUP(pwm_f_y,		1,	20),
 	GROUP(i2s_out_ch23_y,	1,	5),
@@ -601,6 +625,15 @@ static const char * const gpio_periphs_groups[] = {
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
@@ -792,6 +825,8 @@ static struct meson_pmx_func meson_gxbb_periphs_functions[] = {
 	FUNCTION(i2s_out),
 	FUNCTION(spdif_out),
 	FUNCTION(gen_clk_out),
+	FUNCTION(tsin_a),
+	FUNCTION(tsin_b),
 };
 
 static struct meson_pmx_func meson_gxbb_aobus_functions[] = {
diff --git a/drivers/pinctrl/meson/pinctrl-meson-gxl.c b/drivers/pinctrl/meson/pinctrl-meson-gxl.c
index 1b6e864..45d5831 100644
--- a/drivers/pinctrl/meson/pinctrl-meson-gxl.c
+++ b/drivers/pinctrl/meson/pinctrl-meson-gxl.c
@@ -241,6 +241,17 @@ static const unsigned int tsin_a_dp_pins[] = {
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
@@ -438,6 +449,11 @@ static struct meson_pmx_group meson_gxl_periphs_groups[] = {
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
@@ -454,6 +470,10 @@ static struct meson_pmx_group meson_gxl_periphs_groups[] = {
 	GROUP(i2s_out_lr_clk,	6,	24),
 	GROUP(i2s_out_ch01,	6,	23),
 	GROUP(spdif_out_h,	6,	28),
+	GROUP(tsin_b_d0,	6,	17),
+	GROUP(tsin_b_sop,	6,	18),
+	GROUP(tsin_b_d_valid,	6,	19),
+	GROUP(tsin_b_clk,	6,	20),
 
 	/* Bank DV */
 	GROUP(uart_tx_b,	2,	16),
@@ -689,6 +709,12 @@ static const char * const tsin_a_groups[] = {
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
@@ -764,6 +790,7 @@ static struct meson_pmx_func meson_gxl_periphs_functions[] = {
 	FUNCTION(spdif_out),
 	FUNCTION(eth_led),
 	FUNCTION(tsin_a),
+	FUNCTION(tsin_b),
 };
 
 static struct meson_pmx_func meson_gxl_aobus_functions[] = {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
