Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6A36F937
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 07:58:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0PPu2PIYd/eKKpS8PLSrobV6iz2h7ko9Fh4QhTbIK1I=; b=oQfY4eXHr4j/5hAvPQB4tc4GP7
	FP7HUcOgejZ2gZMhYqnwgpmJfZHnecESQhjZjMlV1HNnbPgIccaqIB7I64WButuWFzUsg8kL8KQrG
	XXBCSvZEEiHYILBXZs4kriTubAQpfB8KX3IXDsf/6ak8nOk2/J9gCbR1YHoLyokM1Ik77STqMQ7Bw
	aNpHG1XtCu48qFpdsuTVxzcWB1dWA0ET/omicB0n7PX/mTVoERdgWkIIfcmN6KyDqjc8ozOWjDdT/
	sZ/YiLZwOsLfZkdKQl20YREh+tmeqhggKO3DWkJEOColuH7ZdPQ1GAV1op7zRkzzPZUh2W735cE9G
	9lMqHZlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpRLM-0007K0-GJ; Mon, 22 Jul 2019 05:58:40 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpRIj-0005GX-B0; Mon, 22 Jul 2019 05:56:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563774940;
 bh=cudRuspaqlYWwlEIcsrXp2GOPdVKrZrdrR8utXa8E3g=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=HuiV5EjI2gcNRdsUdlNDxAEXs8sR0gImRfXC/7DB3RP85yrabIDq5NQHncs3fvGtY
 65tQO9rI8TggHC1wfLEuNQO+RnlUJgnexz1rHSTNgeo0/jrRK+KFu7OAkGPmhFvVJ7
 eU6p/mPaXxFxNmdk4WwM6ilOz7j5hXXgv0ROwXVo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.98]) by mail.gmx.com (mrgmx102
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0MOTRh-1hjfzt0jkz-005ogW; Mon, 22
 Jul 2019 07:55:40 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Matthias Brugger <mbrugger@suse.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>
Subject: [PATCH 07/18] clk: bcm2835: Introduce SoC specific clock registration
Date: Mon, 22 Jul 2019 07:54:38 +0200
Message-Id: <1563774880-8061-8-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
References: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:eszUSIGiCy76Kio/7/F0P9aMkhMnVmVVhCnbqJnbUjxnKpYXKQW
 hNct85tJSdcfNPGx79cKYDJWr8eXg4hEWQD5k4VZg7wN6+dEtmrVRpviQMPGozerxdXvktH
 gft6gt6KLUpZ3XqDWVXeDl00dwpYp5NYpNy+T9TQ7v4jzoFzn+CoLmh2P/Ji82LbMURP57f
 MfAybwa64IQBruxP4MMJA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:mSt9ecxj8EQ=:9AxjYi6Uo0VUV42C3KRHif
 2CZzaq3fu+k32XDcnSij6ZlPneAlGvIrfA+6altCF3G2HE7DqO+9Df8Roe4SN4v+NkjjS+WI7
 Kq38XUkreOVTsihrZSD+dqU+C/SVhYgUoT+WcmvGU4weyjBDLLIVNYAMPjC2N6JEf/fGWViJ0
 In+xNJB9W9AcB96kUhb+SobmNRlIruoq9g6BNquerrn/rAlHxVQTBWwypvGxytEfP9MfgBgSX
 f+W/sfbdS9ocQO+ifDoapMv/AJPpulK9NgSMaupXPMKKWWz5nZW428LlyEk32DEwwMtQR4hIn
 uAF6ZsLoUzYuFbW/YYeYIfsTY3xU4OUgWUEINKkrjhv0xR0qouBgod3BVm3oBHl1c5lt/G8kU
 hMXNTAM5w35Nl/etP+EdvXRB0qgjLV7tlUbpGJpfAGQBryghEZyWKwROIHPH8WBTeRsUgVPiY
 ePa8PJ8IZtVilTm+ugQAxmcVfAo29Z+kQ0N0p+hBskPIo4/mxakfje4TlwUJErJHX8z2OmVHZ
 XUfajq7EeuFpgh+APk5X4yTy5HYu43mam5GXdqTttzwfJTWf+DN8QAem6btRk134+eIZZxJin
 3UNwEPwXheZ94Vw1SLydtv2TgQS5YKMYfs696JtdL3QijSqh3Z1oZRvk1QjAIIiRiH9Pc6Uvm
 j5hmc7ZF8NWkHuzC1rpneuDmD7iBuaN6MwnhUGj2JIN9mWCJg3EWR7at6QeSw3DCTfoibFK2L
 jg2VVnzVoBMmXJQ5MUXj8k9A3lTP3TLaG+egeRQrsYVj+vuARiN1xoZIgb6E4yVcg4vwso1Oz
 Lw3Mgu7bXfoW2fHkWxYs/GTxlgt8n8+X7ooLs/BJmRZSp4OTw/l8InlvzgLtiL6UUr4Gclrnj
 uZ+VXNsSY1/+ZQXdkoLtWIm/Ur1ga1+yNnsf65Ztvl5YskExLPmNAsscJAUWEsEoso5ucbLuM
 LG7MmmP56SgpfqjvFQ84rOd5RpDzwGb3xlNImekbQKMkX4Y4vGwNbUaNMmFqxHiSM8Jdcs65F
 sat4yKh/3v+2T17ZWsnzqY+IqyraP1JyLJ2o+mWqJ0goCwEjQvgTyFrVhA7PVKH3nTRrrvtwu
 +uUUyjquahfvTA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_225557_839420_055AD596 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to support SoC specific clocks (e.g. emmc2 for BCM2711), we
extend the description with a SoC support flag. This approach avoids long
and mostly redundant lists of clock IDs.

Suggested-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/clk/bcm/clk-bcm2835.c | 103 +++++++++++++++++++++++++++++++++++-------
 1 file changed, 86 insertions(+), 17 deletions(-)

diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
index 867ae3c..3231b76 100644
--- a/drivers/clk/bcm/clk-bcm2835.c
+++ b/drivers/clk/bcm/clk-bcm2835.c
@@ -31,7 +31,7 @@
 #include <linux/delay.h>
 #include <linux/io.h>
 #include <linux/module.h>
-#include <linux/of.h>
+#include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/slab.h>
 #include <dt-bindings/clock/bcm2835.h>
@@ -289,6 +289,9 @@
 #define LOCK_TIMEOUT_NS		100000000
 #define BCM2835_MAX_FB_RATE	1750000000u

+#define SOC_BCM2835		BIT(0)
+#define SOC_ALL			(SOC_BCM2835)
+
 /*
  * Names of clocks used within the driver that need to be replaced
  * with an external parent's name.  This array is in the order that
@@ -1451,22 +1454,28 @@ typedef struct clk_hw *(*bcm2835_clk_register)(struct bcm2835_cprman *cprman,
 					       const void *data);
 struct bcm2835_clk_desc {
 	bcm2835_clk_register clk_register;
+	unsigned int supported;
 	const void *data;
 };

 /* assignment helper macros for different clock types */
-#define _REGISTER(f, ...) { .clk_register = (bcm2835_clk_register)f, \
-			    .data = __VA_ARGS__ }
-#define REGISTER_PLL(...)	_REGISTER(&bcm2835_register_pll,	\
+#define _REGISTER(f, s, ...) { .clk_register = (bcm2835_clk_register)f, \
+			       .supported = s,				\
+			       .data = __VA_ARGS__ }
+#define REGISTER_PLL(s, ...)	_REGISTER(&bcm2835_register_pll,	\
+					  s,				\
 					  &(struct bcm2835_pll_data)	\
 					  {__VA_ARGS__})
-#define REGISTER_PLL_DIV(...)	_REGISTER(&bcm2835_register_pll_divider, \
-					  &(struct bcm2835_pll_divider_data) \
-					  {__VA_ARGS__})
-#define REGISTER_CLK(...)	_REGISTER(&bcm2835_register_clock,	\
+#define REGISTER_PLL_DIV(s, ...) _REGISTER(&bcm2835_register_pll_divider, \
+					   s,				  \
+					   &(struct bcm2835_pll_divider_data) \
+					   {__VA_ARGS__})
+#define REGISTER_CLK(s, ...)	_REGISTER(&bcm2835_register_clock,	\
+					  s,				\
 					  &(struct bcm2835_clock_data)	\
 					  {__VA_ARGS__})
-#define REGISTER_GATE(...)	_REGISTER(&bcm2835_register_gate,	\
+#define REGISTER_GATE(s, ...)	_REGISTER(&bcm2835_register_gate,	\
+					  s,				\
 					  &(struct bcm2835_gate_data)	\
 					  {__VA_ARGS__})

@@ -1480,7 +1489,8 @@ static const char *const bcm2835_clock_osc_parents[] = {
 	"testdebug1"
 };

-#define REGISTER_OSC_CLK(...)	REGISTER_CLK(				\
+#define REGISTER_OSC_CLK(s, ...)	REGISTER_CLK(			\
+	s,								\
 	.num_mux_parents = ARRAY_SIZE(bcm2835_clock_osc_parents),	\
 	.parents = bcm2835_clock_osc_parents,				\
 	__VA_ARGS__)
@@ -1497,7 +1507,8 @@ static const char *const bcm2835_clock_per_parents[] = {
 	"pllh_aux",
 };

-#define REGISTER_PER_CLK(...)	REGISTER_CLK(				\
+#define REGISTER_PER_CLK(s, ...)	REGISTER_CLK(			\
+	s,								\
 	.num_mux_parents = ARRAY_SIZE(bcm2835_clock_per_parents),	\
 	.parents = bcm2835_clock_per_parents,				\
 	__VA_ARGS__)
@@ -1522,7 +1533,8 @@ static const char *const bcm2835_pcm_per_parents[] = {
 	"-",
 };

-#define REGISTER_PCM_CLK(...)	REGISTER_CLK(				\
+#define REGISTER_PCM_CLK(s, ...)	REGISTER_CLK(			\
+	s,								\
 	.num_mux_parents = ARRAY_SIZE(bcm2835_pcm_per_parents),		\
 	.parents = bcm2835_pcm_per_parents,				\
 	__VA_ARGS__)
@@ -1541,7 +1553,8 @@ static const char *const bcm2835_clock_vpu_parents[] = {
 	"pllc_core2",
 };

-#define REGISTER_VPU_CLK(...)	REGISTER_CLK(				\
+#define REGISTER_VPU_CLK(s, ...)	REGISTER_CLK(			\
+	s,								\
 	.num_mux_parents = ARRAY_SIZE(bcm2835_clock_vpu_parents),	\
 	.parents = bcm2835_clock_vpu_parents,				\
 	__VA_ARGS__)
@@ -1577,12 +1590,14 @@ static const char *const bcm2835_clock_dsi1_parents[] = {
 	"dsi1_byte_inv",
 };

-#define REGISTER_DSI0_CLK(...)	REGISTER_CLK(				\
+#define REGISTER_DSI0_CLK(s, ...)	REGISTER_CLK(			\
+	s,								\
 	.num_mux_parents = ARRAY_SIZE(bcm2835_clock_dsi0_parents),	\
 	.parents = bcm2835_clock_dsi0_parents,				\
 	__VA_ARGS__)

-#define REGISTER_DSI1_CLK(...)	REGISTER_CLK(				\
+#define REGISTER_DSI1_CLK(s, ...)	REGISTER_CLK(			\
+	s,								\
 	.num_mux_parents = ARRAY_SIZE(bcm2835_clock_dsi1_parents),	\
 	.parents = bcm2835_clock_dsi1_parents,				\
 	__VA_ARGS__)
@@ -1602,6 +1617,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 	 * AUDIO domain is on.
 	 */
 	[BCM2835_PLLA]		= REGISTER_PLL(
+		SOC_ALL,
 		.name = "plla",
 		.cm_ctrl_reg = CM_PLLA,
 		.a2w_ctrl_reg = A2W_PLLA_CTRL,
@@ -1616,6 +1632,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.max_rate = 2400000000u,
 		.max_fb_rate = BCM2835_MAX_FB_RATE),
 	[BCM2835_PLLA_CORE]	= REGISTER_PLL_DIV(
+		SOC_ALL,
 		.name = "plla_core",
 		.source_pll = "plla",
 		.cm_reg = CM_PLLA,
@@ -1625,6 +1642,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.fixed_divider = 1,
 		.flags = CLK_SET_RATE_PARENT),
 	[BCM2835_PLLA_PER]	= REGISTER_PLL_DIV(
+		SOC_ALL,
 		.name = "plla_per",
 		.source_pll = "plla",
 		.cm_reg = CM_PLLA,
@@ -1634,6 +1652,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.fixed_divider = 1,
 		.flags = CLK_SET_RATE_PARENT),
 	[BCM2835_PLLA_DSI0]	= REGISTER_PLL_DIV(
+		SOC_ALL,
 		.name = "plla_dsi0",
 		.source_pll = "plla",
 		.cm_reg = CM_PLLA,
@@ -1642,6 +1661,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.hold_mask = CM_PLLA_HOLDDSI0,
 		.fixed_divider = 1),
 	[BCM2835_PLLA_CCP2]	= REGISTER_PLL_DIV(
+		SOC_ALL,
 		.name = "plla_ccp2",
 		.source_pll = "plla",
 		.cm_reg = CM_PLLA,
@@ -1663,6 +1683,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 	 * AUDIO domain is on.
 	 */
 	[BCM2835_PLLC]		= REGISTER_PLL(
+		SOC_ALL,
 		.name = "pllc",
 		.cm_ctrl_reg = CM_PLLC,
 		.a2w_ctrl_reg = A2W_PLLC_CTRL,
@@ -1677,6 +1698,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.max_rate = 3000000000u,
 		.max_fb_rate = BCM2835_MAX_FB_RATE),
 	[BCM2835_PLLC_CORE0]	= REGISTER_PLL_DIV(
+		SOC_ALL,
 		.name = "pllc_core0",
 		.source_pll = "pllc",
 		.cm_reg = CM_PLLC,
@@ -1686,6 +1708,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.fixed_divider = 1,
 		.flags = CLK_SET_RATE_PARENT),
 	[BCM2835_PLLC_CORE1]	= REGISTER_PLL_DIV(
+		SOC_ALL,
 		.name = "pllc_core1",
 		.source_pll = "pllc",
 		.cm_reg = CM_PLLC,
@@ -1695,6 +1718,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.fixed_divider = 1,
 		.flags = CLK_SET_RATE_PARENT),
 	[BCM2835_PLLC_CORE2]	= REGISTER_PLL_DIV(
+		SOC_ALL,
 		.name = "pllc_core2",
 		.source_pll = "pllc",
 		.cm_reg = CM_PLLC,
@@ -1704,6 +1728,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.fixed_divider = 1,
 		.flags = CLK_SET_RATE_PARENT),
 	[BCM2835_PLLC_PER]	= REGISTER_PLL_DIV(
+		SOC_ALL,
 		.name = "pllc_per",
 		.source_pll = "pllc",
 		.cm_reg = CM_PLLC,
@@ -1720,6 +1745,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 	 * AUDIO domain is on.
 	 */
 	[BCM2835_PLLD]		= REGISTER_PLL(
+		SOC_ALL,
 		.name = "plld",
 		.cm_ctrl_reg = CM_PLLD,
 		.a2w_ctrl_reg = A2W_PLLD_CTRL,
@@ -1734,6 +1760,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.max_rate = 2400000000u,
 		.max_fb_rate = BCM2835_MAX_FB_RATE),
 	[BCM2835_PLLD_CORE]	= REGISTER_PLL_DIV(
+		SOC_ALL,
 		.name = "plld_core",
 		.source_pll = "plld",
 		.cm_reg = CM_PLLD,
@@ -1743,6 +1770,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.fixed_divider = 1,
 		.flags = CLK_SET_RATE_PARENT),
 	[BCM2835_PLLD_PER]	= REGISTER_PLL_DIV(
+		SOC_ALL,
 		.name = "plld_per",
 		.source_pll = "plld",
 		.cm_reg = CM_PLLD,
@@ -1752,6 +1780,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.fixed_divider = 1,
 		.flags = CLK_SET_RATE_PARENT),
 	[BCM2835_PLLD_DSI0]	= REGISTER_PLL_DIV(
+		SOC_ALL,
 		.name = "plld_dsi0",
 		.source_pll = "plld",
 		.cm_reg = CM_PLLD,
@@ -1760,6 +1789,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.hold_mask = CM_PLLD_HOLDDSI0,
 		.fixed_divider = 1),
 	[BCM2835_PLLD_DSI1]	= REGISTER_PLL_DIV(
+		SOC_ALL,
 		.name = "plld_dsi1",
 		.source_pll = "plld",
 		.cm_reg = CM_PLLD,
@@ -1775,6 +1805,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 	 * It is in the HDMI power domain.
 	 */
 	[BCM2835_PLLH]		= REGISTER_PLL(
+		SOC_ALL,
 		"pllh",
 		.cm_ctrl_reg = CM_PLLH,
 		.a2w_ctrl_reg = A2W_PLLH_CTRL,
@@ -1789,6 +1820,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.max_rate = 3000000000u,
 		.max_fb_rate = BCM2835_MAX_FB_RATE),
 	[BCM2835_PLLH_RCAL]	= REGISTER_PLL_DIV(
+		SOC_ALL,
 		.name = "pllh_rcal",
 		.source_pll = "pllh",
 		.cm_reg = CM_PLLH,
@@ -1798,6 +1830,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.fixed_divider = 10,
 		.flags = CLK_SET_RATE_PARENT),
 	[BCM2835_PLLH_AUX]	= REGISTER_PLL_DIV(
+		SOC_ALL,
 		.name = "pllh_aux",
 		.source_pll = "pllh",
 		.cm_reg = CM_PLLH,
@@ -1807,6 +1840,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.fixed_divider = 1,
 		.flags = CLK_SET_RATE_PARENT),
 	[BCM2835_PLLH_PIX]	= REGISTER_PLL_DIV(
+		SOC_ALL,
 		.name = "pllh_pix",
 		.source_pll = "pllh",
 		.cm_reg = CM_PLLH,
@@ -1822,6 +1856,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {

 	/* One Time Programmable Memory clock.  Maximum 10Mhz. */
 	[BCM2835_CLOCK_OTP]	= REGISTER_OSC_CLK(
+		SOC_ALL,
 		.name = "otp",
 		.ctl_reg = CM_OTPCTL,
 		.div_reg = CM_OTPDIV,
@@ -1833,6 +1868,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 	 * bythe watchdog timer and the camera pulse generator.
 	 */
 	[BCM2835_CLOCK_TIMER]	= REGISTER_OSC_CLK(
+		SOC_ALL,
 		.name = "timer",
 		.ctl_reg = CM_TIMERCTL,
 		.div_reg = CM_TIMERDIV,
@@ -1843,12 +1879,14 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 	 * Generally run at 2Mhz, max 5Mhz.
 	 */
 	[BCM2835_CLOCK_TSENS]	= REGISTER_OSC_CLK(
+		SOC_ALL,
 		.name = "tsens",
 		.ctl_reg = CM_TSENSCTL,
 		.div_reg = CM_TSENSDIV,
 		.int_bits = 5,
 		.frac_bits = 0),
 	[BCM2835_CLOCK_TEC]	= REGISTER_OSC_CLK(
+		SOC_ALL,
 		.name = "tec",
 		.ctl_reg = CM_TECCTL,
 		.div_reg = CM_TECDIV,
@@ -1857,6 +1895,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {

 	/* clocks with vpu parent mux */
 	[BCM2835_CLOCK_H264]	= REGISTER_VPU_CLK(
+		SOC_ALL,
 		.name = "h264",
 		.ctl_reg = CM_H264CTL,
 		.div_reg = CM_H264DIV,
@@ -1864,6 +1903,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.frac_bits = 8,
 		.tcnt_mux = 1),
 	[BCM2835_CLOCK_ISP]	= REGISTER_VPU_CLK(
+		SOC_ALL,
 		.name = "isp",
 		.ctl_reg = CM_ISPCTL,
 		.div_reg = CM_ISPDIV,
@@ -1876,6 +1916,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 	 * in the SDRAM controller can't be used.
 	 */
 	[BCM2835_CLOCK_SDRAM]	= REGISTER_VPU_CLK(
+		SOC_ALL,
 		.name = "sdram",
 		.ctl_reg = CM_SDCCTL,
 		.div_reg = CM_SDCDIV,
@@ -1883,6 +1924,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.frac_bits = 0,
 		.tcnt_mux = 3),
 	[BCM2835_CLOCK_V3D]	= REGISTER_VPU_CLK(
+		SOC_ALL,
 		.name = "v3d",
 		.ctl_reg = CM_V3DCTL,
 		.div_reg = CM_V3DDIV,
@@ -1896,6 +1938,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 	 * in various hardware documentation.
 	 */
 	[BCM2835_CLOCK_VPU]	= REGISTER_VPU_CLK(
+		SOC_ALL,
 		.name = "vpu",
 		.ctl_reg = CM_VPUCTL,
 		.div_reg = CM_VPUDIV,
@@ -1907,6 +1950,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {

 	/* clocks with per parent mux */
 	[BCM2835_CLOCK_AVEO]	= REGISTER_PER_CLK(
+		SOC_ALL,
 		.name = "aveo",
 		.ctl_reg = CM_AVEOCTL,
 		.div_reg = CM_AVEODIV,
@@ -1914,6 +1958,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.frac_bits = 0,
 		.tcnt_mux = 38),
 	[BCM2835_CLOCK_CAM0]	= REGISTER_PER_CLK(
+		SOC_ALL,
 		.name = "cam0",
 		.ctl_reg = CM_CAM0CTL,
 		.div_reg = CM_CAM0DIV,
@@ -1921,6 +1966,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.frac_bits = 8,
 		.tcnt_mux = 14),
 	[BCM2835_CLOCK_CAM1]	= REGISTER_PER_CLK(
+		SOC_ALL,
 		.name = "cam1",
 		.ctl_reg = CM_CAM1CTL,
 		.div_reg = CM_CAM1DIV,
@@ -1928,12 +1974,14 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.frac_bits = 8,
 		.tcnt_mux = 15),
 	[BCM2835_CLOCK_DFT]	= REGISTER_PER_CLK(
+		SOC_ALL,
 		.name = "dft",
 		.ctl_reg = CM_DFTCTL,
 		.div_reg = CM_DFTDIV,
 		.int_bits = 5,
 		.frac_bits = 0),
 	[BCM2835_CLOCK_DPI]	= REGISTER_PER_CLK(
+		SOC_ALL,
 		.name = "dpi",
 		.ctl_reg = CM_DPICTL,
 		.div_reg = CM_DPIDIV,
@@ -1943,6 +1991,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {

 	/* Arasan EMMC clock */
 	[BCM2835_CLOCK_EMMC]	= REGISTER_PER_CLK(
+		SOC_ALL,
 		.name = "emmc",
 		.ctl_reg = CM_EMMCCTL,
 		.div_reg = CM_EMMCDIV,
@@ -1952,6 +2001,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {

 	/* General purpose (GPIO) clocks */
 	[BCM2835_CLOCK_GP0]	= REGISTER_PER_CLK(
+		SOC_ALL,
 		.name = "gp0",
 		.ctl_reg = CM_GP0CTL,
 		.div_reg = CM_GP0DIV,
@@ -1960,6 +2010,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.is_mash_clock = true,
 		.tcnt_mux = 20),
 	[BCM2835_CLOCK_GP1]	= REGISTER_PER_CLK(
+		SOC_ALL,
 		.name = "gp1",
 		.ctl_reg = CM_GP1CTL,
 		.div_reg = CM_GP1DIV,
@@ -1969,6 +2020,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.is_mash_clock = true,
 		.tcnt_mux = 21),
 	[BCM2835_CLOCK_GP2]	= REGISTER_PER_CLK(
+		SOC_ALL,
 		.name = "gp2",
 		.ctl_reg = CM_GP2CTL,
 		.div_reg = CM_GP2DIV,
@@ -1978,6 +2030,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {

 	/* HDMI state machine */
 	[BCM2835_CLOCK_HSM]	= REGISTER_PER_CLK(
+		SOC_ALL,
 		.name = "hsm",
 		.ctl_reg = CM_HSMCTL,
 		.div_reg = CM_HSMDIV,
@@ -1985,6 +2038,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.frac_bits = 8,
 		.tcnt_mux = 22),
 	[BCM2835_CLOCK_PCM]	= REGISTER_PCM_CLK(
+		SOC_ALL,
 		.name = "pcm",
 		.ctl_reg = CM_PCMCTL,
 		.div_reg = CM_PCMDIV,
@@ -1994,6 +2048,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.low_jitter = true,
 		.tcnt_mux = 23),
 	[BCM2835_CLOCK_PWM]	= REGISTER_PER_CLK(
+		SOC_ALL,
 		.name = "pwm",
 		.ctl_reg = CM_PWMCTL,
 		.div_reg = CM_PWMDIV,
@@ -2002,6 +2057,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.is_mash_clock = true,
 		.tcnt_mux = 24),
 	[BCM2835_CLOCK_SLIM]	= REGISTER_PER_CLK(
+		SOC_ALL,
 		.name = "slim",
 		.ctl_reg = CM_SLIMCTL,
 		.div_reg = CM_SLIMDIV,
@@ -2010,6 +2066,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.is_mash_clock = true,
 		.tcnt_mux = 25),
 	[BCM2835_CLOCK_SMI]	= REGISTER_PER_CLK(
+		SOC_ALL,
 		.name = "smi",
 		.ctl_reg = CM_SMICTL,
 		.div_reg = CM_SMIDIV,
@@ -2017,6 +2074,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.frac_bits = 8,
 		.tcnt_mux = 27),
 	[BCM2835_CLOCK_UART]	= REGISTER_PER_CLK(
+		SOC_ALL,
 		.name = "uart",
 		.ctl_reg = CM_UARTCTL,
 		.div_reg = CM_UARTDIV,
@@ -2026,6 +2084,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {

 	/* TV encoder clock.  Only operating frequency is 108Mhz.  */
 	[BCM2835_CLOCK_VEC]	= REGISTER_PER_CLK(
+		SOC_ALL,
 		.name = "vec",
 		.ctl_reg = CM_VECCTL,
 		.div_reg = CM_VECDIV,
@@ -2040,6 +2099,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {

 	/* dsi clocks */
 	[BCM2835_CLOCK_DSI0E]	= REGISTER_PER_CLK(
+		SOC_ALL,
 		.name = "dsi0e",
 		.ctl_reg = CM_DSI0ECTL,
 		.div_reg = CM_DSI0EDIV,
@@ -2047,6 +2107,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.frac_bits = 8,
 		.tcnt_mux = 18),
 	[BCM2835_CLOCK_DSI1E]	= REGISTER_PER_CLK(
+		SOC_ALL,
 		.name = "dsi1e",
 		.ctl_reg = CM_DSI1ECTL,
 		.div_reg = CM_DSI1EDIV,
@@ -2054,6 +2115,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.frac_bits = 8,
 		.tcnt_mux = 19),
 	[BCM2835_CLOCK_DSI0P]	= REGISTER_DSI0_CLK(
+		SOC_ALL,
 		.name = "dsi0p",
 		.ctl_reg = CM_DSI0PCTL,
 		.div_reg = CM_DSI0PDIV,
@@ -2061,6 +2123,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.frac_bits = 0,
 		.tcnt_mux = 12),
 	[BCM2835_CLOCK_DSI1P]	= REGISTER_DSI1_CLK(
+		SOC_ALL,
 		.name = "dsi1p",
 		.ctl_reg = CM_DSI1PCTL,
 		.div_reg = CM_DSI1PDIV,
@@ -2077,6 +2140,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 	 * non-stop vpu clock.
 	 */
 	[BCM2835_CLOCK_PERI_IMAGE] = REGISTER_GATE(
+		SOC_ALL,
 		.name = "peri_image",
 		.parent = "vpu",
 		.ctl_reg = CM_PERIICTL),
@@ -2109,9 +2173,14 @@ static int bcm2835_clk_probe(struct platform_device *pdev)
 	struct resource *res;
 	const struct bcm2835_clk_desc *desc;
 	const size_t asize = ARRAY_SIZE(clk_desc_array);
+	unsigned int soc;
 	size_t i;
 	int ret;

+	soc = (unsigned int)of_device_get_match_data(&pdev->dev);
+	if (!soc)
+		return -ENODEV;
+
 	cprman = devm_kzalloc(dev,
 			      struct_size(cprman, onecell.hws, asize),
 			      GFP_KERNEL);
@@ -2147,7 +2216,7 @@ static int bcm2835_clk_probe(struct platform_device *pdev)

 	for (i = 0; i < asize; i++) {
 		desc = &clk_desc_array[i];
-		if (desc->clk_register && desc->data)
+		if (desc->clk_register && desc->data && (desc->supported & soc))
 			hws[i] = desc->clk_register(cprman, desc->data);
 	}

@@ -2160,7 +2229,7 @@ static int bcm2835_clk_probe(struct platform_device *pdev)
 }

 static const struct of_device_id bcm2835_clk_of_match[] = {
-	{ .compatible = "brcm,bcm2835-cprman", },
+	{ .compatible = "brcm,bcm2835-cprman", .data = (void *)SOC_BCM2835 },
 	{}
 };
 MODULE_DEVICE_TABLE(of, bcm2835_clk_of_match);
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
