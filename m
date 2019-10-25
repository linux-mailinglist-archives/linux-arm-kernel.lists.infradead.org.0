Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E8EE4A62
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 13:50:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5I82olF6+7VkXtFrqm/ouRE18HeBmvtrRAFWoRWsz4A=; b=P72xq3npUAdvlW
	O1XggJj2shq7IjPAXqdL3W71iBDAiC0DDSt4MvyCcP3F5ixIuVM+9d4WuK3dN0CM6cJ0htJRVdWQu
	sqYYHUOgARLQN61eWkQNaf8QVjh9lsixvNtFtMbOEN8vj/XLnOU7+Hf1HpdGRzNsPdBh33whJjg+z
	bfsq9gjdtxDrJt2IF+sfiX+zXaGn20X5QDuKaw5Peum9/OnzA9jLtWQVFDYP/fJxa+xH//W8T23XG
	5V3Ok/3lQLcqhmgmUpezr5VCMWN4SF0g3RkpnrtqlPiz1tQzZ8xi6nXYiwP40Gz1aoBRjptDBHMR1
	n/+3LIaFPmmuI0zKL3FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNy78-00089S-Lr; Fri, 25 Oct 2019 11:50:42 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNy6A-0006IU-DF; Fri, 25 Oct 2019 11:49:44 +0000
Received: from localhost.localdomain (10.28.8.19) by mail-sz.amlogic.com
 (10.28.11.5) with Microsoft SMTP Server id 15.1.1591.10; Fri, 25 Oct 2019
 19:49:48 +0800
From: Qianggui Song <qianggui.song@amlogic.com>
To: Linus Walleij <linus.walleij@linaro.org>, <linux-gpio@vger.kernel.org>
Subject: [PATCH v4 2/4] pinctrl: meson: add a new callback for SoCs fixup
Date: Fri, 25 Oct 2019 19:49:25 +0800
Message-ID: <1572004167-24150-3-git-send-email-qianggui.song@amlogic.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1572004167-24150-1-git-send-email-qianggui.song@amlogic.com>
References: <1572004167-24150-1-git-send-email-qianggui.song@amlogic.com>
MIME-Version: 1.0
X-Originating-IP: [10.28.8.19]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_044942_480958_7407381F 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Qianggui Song <qianggui.song@amlogic.com>,
 Mark Rutland <mark.rutland@arm.com>, Hanjie Lin <hanjie.lin@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Carlo Caione <carlo@caione.org>, linux-amlogic@lists.infradead.org,
 Xingyu Chen <xingyu.chen@amlogic.com>, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In meson_pinctrl_parse_dt, it contains two parts: reg parsing and
SoC relative fixup for AO. Several fixups in the same code make it hard
to maintain, so move all fixups to each SoC's callback and make
meson_pinctrl_parse_dt just do the reg parsing, separate these two
parts.Overview of all current Meson SoCs fixup is as below:

+------+--------------------------------------+--------------------------+
|      |                                      |                          |
| SoC  |                EE domain             |        AO domain         |
+------+--------------------------------------+--------------------------+
|m8    | parse regs:                          | parse regs:              |
|m8b   |   gpio,mux,pull,pull-enable(skip ds) |    gpio,mux,pull(skip ds)|
|gxl   | fixup:                               | fixup:                   |
|gxbb  |   no                                 |     pull-enable = pull   |
|axg   |                                      |                          |
+------+--------------------------------------+--------------------------+
|g12a  | parse regs:                          | parse regs:              |
|sm1   |   gpio,mux,pull,pull-enable,ds       |   gpio,mux,ds            |
|      | fixup:                               | fixup:                   |
|      |   no                                 |   pull = gpio            |
|      |                                      |   pull-enable = gpio     |
+------+--------------------------------------+--------------------------+
|a1 or | parse regs:                                                     |
|later |  gpio/mux (without ao domain)                                   |
|SoCs  | fixup:                                                          |
|      |  pull=gpio; pull-enable=gpio; ds=gpio                           |
+------+-----------------------------------------------------------------+

Signed-off-by: Qianggui Song <qianggui.song@amlogic.com>
---
 drivers/pinctrl/meson/pinctrl-meson-axg.c  | 11 +++++++++++
 drivers/pinctrl/meson/pinctrl-meson-g12a.c |  9 +++++++++
 drivers/pinctrl/meson/pinctrl-meson-gxbb.c | 11 +++++++++++
 drivers/pinctrl/meson/pinctrl-meson-gxl.c  | 11 +++++++++++
 drivers/pinctrl/meson/pinctrl-meson.c      |  9 +++++----
 drivers/pinctrl/meson/pinctrl-meson.h      |  3 +++
 drivers/pinctrl/meson/pinctrl-meson8.c     | 11 +++++++++++
 drivers/pinctrl/meson/pinctrl-meson8b.c    | 11 +++++++++++
 8 files changed, 72 insertions(+), 4 deletions(-)

diff --git a/drivers/pinctrl/meson/pinctrl-meson-axg.c b/drivers/pinctrl/meson/pinctrl-meson-axg.c
index ad502eda4afa..9c07f4423c37 100644
--- a/drivers/pinctrl/meson/pinctrl-meson-axg.c
+++ b/drivers/pinctrl/meson/pinctrl-meson-axg.c
@@ -1040,6 +1040,16 @@
 	.num_pmx_banks = ARRAY_SIZE(meson_axg_aobus_pmx_banks),
 };
 
+static int meson_axg_aobus_parse_dt_extra(struct meson_pinctrl *pc)
+{
+	if (!pc->reg_pull)
+		return -EINVAL;
+
+	pc->reg_pullen = pc->reg_pull;
+
+	return 0;
+}
+
 static struct meson_pinctrl_data meson_axg_periphs_pinctrl_data = {
 	.name		= "periphs-banks",
 	.pins		= meson_axg_periphs_pins,
@@ -1066,6 +1076,7 @@
 	.num_banks	= ARRAY_SIZE(meson_axg_aobus_banks),
 	.pmx_ops	= &meson_axg_pmx_ops,
 	.pmx_data	= &meson_axg_aobus_pmx_banks_data,
+	.parse_dt	= meson_axg_aobus_parse_dt_extra,
 };
 
 static const struct of_device_id meson_axg_pinctrl_dt_match[] = {
diff --git a/drivers/pinctrl/meson/pinctrl-meson-g12a.c b/drivers/pinctrl/meson/pinctrl-meson-g12a.c
index 582665fd362a..41850e3c0091 100644
--- a/drivers/pinctrl/meson/pinctrl-meson-g12a.c
+++ b/drivers/pinctrl/meson/pinctrl-meson-g12a.c
@@ -1362,6 +1362,14 @@
 	.num_pmx_banks	= ARRAY_SIZE(meson_g12a_aobus_pmx_banks),
 };
 
+static int meson_g12a_aobus_parse_dt_extra(struct meson_pinctrl *pc)
+{
+	pc->reg_pull = pc->reg_gpio;
+	pc->reg_pullen = pc->reg_gpio;
+
+	return 0;
+}
+
 static struct meson_pinctrl_data meson_g12a_periphs_pinctrl_data = {
 	.name		= "periphs-banks",
 	.pins		= meson_g12a_periphs_pins,
@@ -1388,6 +1396,7 @@
 	.num_banks	= ARRAY_SIZE(meson_g12a_aobus_banks),
 	.pmx_ops	= &meson_axg_pmx_ops,
 	.pmx_data	= &meson_g12a_aobus_pmx_banks_data,
+	.parse_dt	= meson_g12a_aobus_parse_dt_extra,
 };
 
 static const struct of_device_id meson_g12a_pinctrl_dt_match[] = {
diff --git a/drivers/pinctrl/meson/pinctrl-meson-gxbb.c b/drivers/pinctrl/meson/pinctrl-meson-gxbb.c
index 5bfa56f3847e..f5494a948200 100644
--- a/drivers/pinctrl/meson/pinctrl-meson-gxbb.c
+++ b/drivers/pinctrl/meson/pinctrl-meson-gxbb.c
@@ -827,6 +827,16 @@
 	BANK("AO",   GPIOAO_0,  GPIOAO_13, 0, 13, 0,  16, 0, 0,   0,  0,  0, 16,  1,  0),
 };
 
+static int meson_gxbb_aobus_parse_dt_extra(struct meson_pinctrl *pc)
+{
+	if (!pc->reg_pull)
+		return -EINVAL;
+
+	pc->reg_pullen = pc->reg_pull;
+
+	return 0;
+}
+
 static struct meson_pinctrl_data meson_gxbb_periphs_pinctrl_data = {
 	.name		= "periphs-banks",
 	.pins		= meson_gxbb_periphs_pins,
@@ -851,6 +861,7 @@
 	.num_funcs	= ARRAY_SIZE(meson_gxbb_aobus_functions),
 	.num_banks	= ARRAY_SIZE(meson_gxbb_aobus_banks),
 	.pmx_ops	= &meson8_pmx_ops,
+	.parse_dt	= meson_gxbb_aobus_parse_dt_extra,
 };
 
 static const struct of_device_id meson_gxbb_pinctrl_dt_match[] = {
diff --git a/drivers/pinctrl/meson/pinctrl-meson-gxl.c b/drivers/pinctrl/meson/pinctrl-meson-gxl.c
index 72c5373c8dc1..943fb27dab08 100644
--- a/drivers/pinctrl/meson/pinctrl-meson-gxl.c
+++ b/drivers/pinctrl/meson/pinctrl-meson-gxl.c
@@ -796,6 +796,16 @@
 	BANK("AO",   GPIOAO_0,  GPIOAO_9, 0, 9, 0,  16, 0, 0,   0,  0,  0, 16,  1,  0),
 };
 
+static int meson_gxl_aobus_parse_dt_extra(struct meson_pinctrl *pc)
+{
+	if (!pc->reg_pull)
+		return -EINVAL;
+
+	pc->reg_pullen = pc->reg_pull;
+
+	return 0;
+}
+
 static struct meson_pinctrl_data meson_gxl_periphs_pinctrl_data = {
 	.name		= "periphs-banks",
 	.pins		= meson_gxl_periphs_pins,
@@ -820,6 +830,7 @@
 	.num_funcs	= ARRAY_SIZE(meson_gxl_aobus_functions),
 	.num_banks	= ARRAY_SIZE(meson_gxl_aobus_banks),
 	.pmx_ops	= &meson8_pmx_ops,
+	.parse_dt 	= meson_gxl_aobus_parse_dt_extra,
 };
 
 static const struct of_device_id meson_gxl_pinctrl_dt_match[] = {
diff --git a/drivers/pinctrl/meson/pinctrl-meson.c b/drivers/pinctrl/meson/pinctrl-meson.c
index 8bba9d053d9f..e182583422a4 100644
--- a/drivers/pinctrl/meson/pinctrl-meson.c
+++ b/drivers/pinctrl/meson/pinctrl-meson.c
@@ -677,14 +677,12 @@ static int meson_pinctrl_parse_dt(struct meson_pinctrl *pc,
 	}
 
 	pc->reg_pull = meson_map_resource(pc, gpio_np, "pull");
-	/* Use gpio region if pull one is not present */
 	if (IS_ERR(pc->reg_pull))
-		pc->reg_pull = pc->reg_gpio;
+		pc->reg_pull = NULL;
 
 	pc->reg_pullen = meson_map_resource(pc, gpio_np, "pull-enable");
-	/* Use pull region if pull-enable one is not present */
 	if (IS_ERR(pc->reg_pullen))
-		pc->reg_pullen = pc->reg_pull;
+		pc->reg_pullen = NULL;
 
 	pc->reg_ds = meson_map_resource(pc, gpio_np, "ds");
 	if (IS_ERR(pc->reg_ds)) {
@@ -692,6 +690,9 @@ static int meson_pinctrl_parse_dt(struct meson_pinctrl *pc,
 		pc->reg_ds = NULL;
 	}
 
+	if (pc->data->parse_dt)
+		return pc->data->parse_dt(pc);
+
 	return 0;
 }
 
diff --git a/drivers/pinctrl/meson/pinctrl-meson.h b/drivers/pinctrl/meson/pinctrl-meson.h
index c696f3241a36..d570f7c53045 100644
--- a/drivers/pinctrl/meson/pinctrl-meson.h
+++ b/drivers/pinctrl/meson/pinctrl-meson.h
@@ -11,6 +11,8 @@
 #include <linux/regmap.h>
 #include <linux/types.h>
 
+struct meson_pinctrl;
+
 /**
  * struct meson_pmx_group - a pinmux group
  *
@@ -114,6 +116,7 @@ struct meson_pinctrl_data {
 	unsigned int num_banks;
 	const struct pinmux_ops *pmx_ops;
 	void *pmx_data;
+	int (*parse_dt)(struct meson_pinctrl *pc);
 };
 
 struct meson_pinctrl {
diff --git a/drivers/pinctrl/meson/pinctrl-meson8.c b/drivers/pinctrl/meson/pinctrl-meson8.c
index 0b97befa6335..65c70c9b7070 100644
--- a/drivers/pinctrl/meson/pinctrl-meson8.c
+++ b/drivers/pinctrl/meson/pinctrl-meson8.c
@@ -1079,6 +1079,16 @@
 	BANK("AO",   GPIOAO_0, GPIO_TEST_N, 0, 13, 0, 16,  0,  0,  0,  0,  0, 16,  1,  0),
 };
 
+static int meson8_aobus_parse_dt_extra(struct meson_pinctrl *pc)
+{
+	if (!pc->reg_pull)
+		return -EINVAL;
+
+	pc->reg_pullen = pc->reg_pull;
+
+	return 0;
+}
+
 static struct meson_pinctrl_data meson8_cbus_pinctrl_data = {
 	.name		= "cbus-banks",
 	.pins		= meson8_cbus_pins,
@@ -1103,6 +1113,7 @@
 	.num_funcs	= ARRAY_SIZE(meson8_aobus_functions),
 	.num_banks	= ARRAY_SIZE(meson8_aobus_banks),
 	.pmx_ops	= &meson8_pmx_ops,
+	.parse_dt	= &meson8_aobus_parse_dt_extra,
 };
 
 static const struct of_device_id meson8_pinctrl_dt_match[] = {
diff --git a/drivers/pinctrl/meson/pinctrl-meson8b.c b/drivers/pinctrl/meson/pinctrl-meson8b.c
index a7de388388e6..85dc12e0c839 100644
--- a/drivers/pinctrl/meson/pinctrl-meson8b.c
+++ b/drivers/pinctrl/meson/pinctrl-meson8b.c
@@ -938,6 +938,16 @@
 	BANK("AO",   GPIOAO_0, GPIO_TEST_N, 0, 13, 0,  16, 0, 0,  0,  0,  0, 16,  1,  0),
 };
 
+static int meson8b_aobus_parse_dt_extra(struct meson_pinctrl *pc)
+{
+	if (!pc->reg_pull)
+		return -EINVAL;
+
+	pc->reg_pullen = pc->reg_pull;
+
+	return 0;
+}
+
 static struct meson_pinctrl_data meson8b_cbus_pinctrl_data = {
 	.name		= "cbus-banks",
 	.pins		= meson8b_cbus_pins,
@@ -962,6 +972,7 @@
 	.num_funcs	= ARRAY_SIZE(meson8b_aobus_functions),
 	.num_banks	= ARRAY_SIZE(meson8b_aobus_banks),
 	.pmx_ops	= &meson8_pmx_ops,
+	.parse_dt	= &meson8b_aobus_parse_dt_extra,
 };
 
 static const struct of_device_id meson8b_pinctrl_dt_match[] = {
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
