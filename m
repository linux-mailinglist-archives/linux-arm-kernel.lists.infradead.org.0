Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD8C8BE5F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 18:23:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YS/hRwvk/YUFb/EAAM+M8xevCK0/Lfi/8UJS6/PbXv0=; b=VErjQhA+joboD5XCvbjy7rkQRX
	c8ZpYVRijUrXIBt2cpqwTqSiFgceydHg9BK+jQ69QDAzjHaCb+qQ+TMTwwCWiwDV3SVL0CYKyFtFJ
	PB/I3fORya4dd7k74kliUJn9R4amIF1uI3dg5yanXX+en5oyJCmwcrUDlL4VOud8Dep9DsXa6c5xE
	hnt/IEYjTvmZkxXzjqjq5EUKU20mv3pCcgmIMB77SFQBxPwY4da+kaqjUhirk4P/tleBBGJI2125k
	jvwpnxwEYp0T7eIJoOhGZ/1RYBft1esruHx8uzBOvd2zDbNinKmOD+ML12AcX7eMaYEIHyI71z9m+
	XIj4EGFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZa4-0001hm-8g; Tue, 13 Aug 2019 16:23:28 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZXn-0008Mw-D8; Tue, 13 Aug 2019 16:21:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565713258;
 bh=5xXNcJdFFZ+S5gMLdTGBWr3vJj0SZHQ8AcRblKnTVeU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=EbATM02FOCfvXPWBnBkMRhnaydp4mWxrBXt7ou4r9FoqFeB552RUKlgliXFeMellE
 Lj8KrLLWMHUDJOKq9M1e/Ynw28R/QLszKfd+rUQKSFwodOlkFpDA/oYk0lsG9+ji3g
 caCS7FvKqiO7unS22ecn8Rh4QOlbeR7oEOcdzq+U=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.106]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MirjS-1iTM3q1nee-00ex2O; Tue, 13 Aug 2019 18:20:58 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Wolfram Sang <wsa@the-dreams.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH V2 04/13] clk: bcm2835: Introduce SoC specific clock
 registration
Date: Tue, 13 Aug 2019 18:20:39 +0200
Message-Id: <1565713248-4906-5-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
References: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:RIDVhXcRVT4isap/NHV18ZbXIRl4PZQYl/I/rIYxiG9A7ehl427
 3kVmWfiib5gaikqyVfbLyq0lsEc/WLD3LLNLykaODIbGmsDBeLx2iv+Dv6+FA5Ln+lRenpw
 fU5WfotMBSzHqufBzr+L6gmIxYGWoTzXyt7pG7TqyZhAzlH+0QoEo0ucRmURyo4V3PMIrTG
 ZuHYpPFakG1TytZo3c9BA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZioBv5AE/w0=:IEVBt3pQxg3/xXQKcqRslG
 DFZoXp5Vk4oSjyHrQw6BLkTJ3Q1qjo6YO7jnpkR1o9QBC0hav9TKzJ307U4LNSBLNH+M8H0/6
 aS2Ty8bWXg3pY10W9jdCLYqrpy579+sz2D4G1/5H4UTnlZ7NmqhkZuq5bZwpB/mv1G/dXtGZa
 mx/OzUXqzFHn02VL9NajC21qiW1IcYW3OYUMwVZCJ/QNGZAAnTxJXINl3rA+q/If9kXdIoTJl
 UIDC6Na13lgvGcoiS7yTmBppNJhCGQlAY2M9C+Mz/vbb9fn3e+xffClHWEICzgz7S7tthAbwQ
 G+AS4LEfzwrzRPw0OUrIHJnN0cpuJlljv8S02+/FLMYN8CuzfXlKZAQSLmnZGLdd3qfzGg3Q9
 EaxLzKmLHI7sFWIE7WCJjj5CnxMgCdQZlGVd3fsATgDKsya5Rgp1TG4UvMHBOqsuGE6bqw35t
 Iba6fEb9FoUor3cqvCOOLaH+z6q7BwJxEasfKf/qscpPr/F5WlzXkOcangGqFUmL2uMEVWxbP
 sKcc/AoXkwdmT51fJJlgwd2EN+BvvoDTXJGJifzQOb0LNDxSMAeRNg4di6nvZ012md7jc9t56
 r/fPgFMnTh8Y6gE6akdJ8gMH0A5HpNnHnfkvRFh0JRmJIo6GopIivW6eHW2LG0yPjO5gC7SII
 R8HzEJocOBihBjPd+yYS6j4iL0frKVNOA+yvpI0kLanG21CmGfgZVPcpQsTrB+R2iYK6H9zpw
 KUhIc8lCceCKDyyS23Ru3KVvJIZivm3w4OJhoq22EQOvUeE+CHzNuT88lRGHaGVJlLGjgmqKk
 QlBZ7uBSEl208+WEvLq/4CYWdu99WWJyqpfa1IF7upTdSlRPYqYnsyRzjZsA2KO+P+sX4ZuVw
 lW8PZ60AXTq9BvvdCQlFX4rfunXcnW6NbUnqTcv0T6IgDyg0Z5sZx3y1UcMLW3jtcdlpQlJjk
 5t3t+BvUkCLdm9i++22setfjtel3bU9AxBALBlDc8Z81oxoCo32qe8D2x25YIkd+ES6L4GFHM
 X242SroQNCbfOimrAgVDL9aGHbpXEVYh/w6tNVdzKAeP40CO8lMZAnICI+Xu1RW5qBYMO/k7+
 +d+KyiEGihy7q2NC3qVsGKq5nY9WNU2UddUE7JKxx8T2P8yp7LCkqiFGg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_092107_883869_F27469B9 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
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
Cc: devicetree@vger.kernel.org, Stefan Wahren <wahrenst@gmx.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to support SoC specific clocks (e.g. emmc2 for BCM2711), we
extend the description with a SoC support flag. This approach avoids long
and mostly redundant lists of clock IDs. Since only PLLH is specific to
BCM2835, we register the rest of the clocks as common to all SoC.

Suggested-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Reviewed-by: Matthias Brugger <mbrugger@suse.com>
Acked-by: Eric Anholt <eric@anholt.net>
---
 drivers/clk/bcm/clk-bcm2835.c | 113 +++++++++++++++++++++++++++++++++++-------
 1 file changed, 96 insertions(+), 17 deletions(-)

diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
index 867ae3c..21cd952 100644
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
@@ -320,6 +323,10 @@ struct bcm2835_cprman {
 	struct clk_hw_onecell_data onecell;
 };

+struct cprman_plat_data {
+	unsigned int soc;
+};
+
 static inline void cprman_write(struct bcm2835_cprman *cprman, u32 reg, u32 val)
 {
 	writel(CM_PASSWORD | val, cprman->regs + reg);
@@ -1451,22 +1458,28 @@ typedef struct clk_hw *(*bcm2835_clk_register)(struct bcm2835_cprman *cprman,
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

@@ -1480,7 +1493,8 @@ static const char *const bcm2835_clock_osc_parents[] = {
 	"testdebug1"
 };

-#define REGISTER_OSC_CLK(...)	REGISTER_CLK(				\
+#define REGISTER_OSC_CLK(s, ...)	REGISTER_CLK(			\
+	s,								\
 	.num_mux_parents = ARRAY_SIZE(bcm2835_clock_osc_parents),	\
 	.parents = bcm2835_clock_osc_parents,				\
 	__VA_ARGS__)
@@ -1497,7 +1511,8 @@ static const char *const bcm2835_clock_per_parents[] = {
 	"pllh_aux",
 };

-#define REGISTER_PER_CLK(...)	REGISTER_CLK(				\
+#define REGISTER_PER_CLK(s, ...)	REGISTER_CLK(			\
+	s,								\
 	.num_mux_parents = ARRAY_SIZE(bcm2835_clock_per_parents),	\
 	.parents = bcm2835_clock_per_parents,				\
 	__VA_ARGS__)
@@ -1522,7 +1537,8 @@ static const char *const bcm2835_pcm_per_parents[] = {
 	"-",
 };

-#define REGISTER_PCM_CLK(...)	REGISTER_CLK(				\
+#define REGISTER_PCM_CLK(s, ...)	REGISTER_CLK(			\
+	s,								\
 	.num_mux_parents = ARRAY_SIZE(bcm2835_pcm_per_parents),		\
 	.parents = bcm2835_pcm_per_parents,				\
 	__VA_ARGS__)
@@ -1541,7 +1557,8 @@ static const char *const bcm2835_clock_vpu_parents[] = {
 	"pllc_core2",
 };

-#define REGISTER_VPU_CLK(...)	REGISTER_CLK(				\
+#define REGISTER_VPU_CLK(s, ...)	REGISTER_CLK(			\
+	s,								\
 	.num_mux_parents = ARRAY_SIZE(bcm2835_clock_vpu_parents),	\
 	.parents = bcm2835_clock_vpu_parents,				\
 	__VA_ARGS__)
@@ -1577,12 +1594,14 @@ static const char *const bcm2835_clock_dsi1_parents[] = {
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
@@ -1602,6 +1621,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 	 * AUDIO domain is on.
 	 */
 	[BCM2835_PLLA]		= REGISTER_PLL(
+		SOC_ALL,
 		.name = "plla",
 		.cm_ctrl_reg = CM_PLLA,
 		.a2w_ctrl_reg = A2W_PLLA_CTRL,
@@ -1616,6 +1636,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.max_rate = 2400000000u,
 		.max_fb_rate = BCM2835_MAX_FB_RATE),
 	[BCM2835_PLLA_CORE]	= REGISTER_PLL_DIV(
+		SOC_ALL,
 		.name = "plla_core",
 		.source_pll = "plla",
 		.cm_reg = CM_PLLA,
@@ -1625,6 +1646,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.fixed_divider = 1,
 		.flags = CLK_SET_RATE_PARENT),
 	[BCM2835_PLLA_PER]	= REGISTER_PLL_DIV(
+		SOC_ALL,
 		.name = "plla_per",
 		.source_pll = "plla",
 		.cm_reg = CM_PLLA,
@@ -1634,6 +1656,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.fixed_divider = 1,
 		.flags = CLK_SET_RATE_PARENT),
 	[BCM2835_PLLA_DSI0]	= REGISTER_PLL_DIV(
+		SOC_ALL,
 		.name = "plla_dsi0",
 		.source_pll = "plla",
 		.cm_reg = CM_PLLA,
@@ -1642,6 +1665,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.hold_mask = CM_PLLA_HOLDDSI0,
 		.fixed_divider = 1),
 	[BCM2835_PLLA_CCP2]	= REGISTER_PLL_DIV(
+		SOC_ALL,
 		.name = "plla_ccp2",
 		.source_pll = "plla",
 		.cm_reg = CM_PLLA,
@@ -1663,6 +1687,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 	 * AUDIO domain is on.
 	 */
 	[BCM2835_PLLC]		= REGISTER_PLL(
+		SOC_ALL,
 		.name = "pllc",
 		.cm_ctrl_reg = CM_PLLC,
 		.a2w_ctrl_reg = A2W_PLLC_CTRL,
@@ -1677,6 +1702,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.max_rate = 3000000000u,
 		.max_fb_rate = BCM2835_MAX_FB_RATE),
 	[BCM2835_PLLC_CORE0]	= REGISTER_PLL_DIV(
+		SOC_ALL,
 		.name = "pllc_core0",
 		.source_pll = "pllc",
 		.cm_reg = CM_PLLC,
@@ -1686,6 +1712,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.fixed_divider = 1,
 		.flags = CLK_SET_RATE_PARENT),
 	[BCM2835_PLLC_CORE1]	= REGISTER_PLL_DIV(
+		SOC_ALL,
 		.name = "pllc_core1",
 		.source_pll = "pllc",
 		.cm_reg = CM_PLLC,
@@ -1695,6 +1722,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.fixed_divider = 1,
 		.flags = CLK_SET_RATE_PARENT),
 	[BCM2835_PLLC_CORE2]	= REGISTER_PLL_DIV(
+		SOC_ALL,
 		.name = "pllc_core2",
 		.source_pll = "pllc",
 		.cm_reg = CM_PLLC,
@@ -1704,6 +1732,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.fixed_divider = 1,
 		.flags = CLK_SET_RATE_PARENT),
 	[BCM2835_PLLC_PER]	= REGISTER_PLL_DIV(
+		SOC_ALL,
 		.name = "pllc_per",
 		.source_pll = "pllc",
 		.cm_reg = CM_PLLC,
@@ -1720,6 +1749,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 	 * AUDIO domain is on.
 	 */
 	[BCM2835_PLLD]		= REGISTER_PLL(
+		SOC_ALL,
 		.name = "plld",
 		.cm_ctrl_reg = CM_PLLD,
 		.a2w_ctrl_reg = A2W_PLLD_CTRL,
@@ -1734,6 +1764,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.max_rate = 2400000000u,
 		.max_fb_rate = BCM2835_MAX_FB_RATE),
 	[BCM2835_PLLD_CORE]	= REGISTER_PLL_DIV(
+		SOC_ALL,
 		.name = "plld_core",
 		.source_pll = "plld",
 		.cm_reg = CM_PLLD,
@@ -1743,6 +1774,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.fixed_divider = 1,
 		.flags = CLK_SET_RATE_PARENT),
 	[BCM2835_PLLD_PER]	= REGISTER_PLL_DIV(
+		SOC_ALL,
 		.name = "plld_per",
 		.source_pll = "plld",
 		.cm_reg = CM_PLLD,
@@ -1752,6 +1784,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.fixed_divider = 1,
 		.flags = CLK_SET_RATE_PARENT),
 	[BCM2835_PLLD_DSI0]	= REGISTER_PLL_DIV(
+		SOC_ALL,
 		.name = "plld_dsi0",
 		.source_pll = "plld",
 		.cm_reg = CM_PLLD,
@@ -1760,6 +1793,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.hold_mask = CM_PLLD_HOLDDSI0,
 		.fixed_divider = 1),
 	[BCM2835_PLLD_DSI1]	= REGISTER_PLL_DIV(
+		SOC_ALL,
 		.name = "plld_dsi1",
 		.source_pll = "plld",
 		.cm_reg = CM_PLLD,
@@ -1775,6 +1809,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 	 * It is in the HDMI power domain.
 	 */
 	[BCM2835_PLLH]		= REGISTER_PLL(
+		SOC_BCM2835,
 		"pllh",
 		.cm_ctrl_reg = CM_PLLH,
 		.a2w_ctrl_reg = A2W_PLLH_CTRL,
@@ -1789,6 +1824,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.max_rate = 3000000000u,
 		.max_fb_rate = BCM2835_MAX_FB_RATE),
 	[BCM2835_PLLH_RCAL]	= REGISTER_PLL_DIV(
+		SOC_BCM2835,
 		.name = "pllh_rcal",
 		.source_pll = "pllh",
 		.cm_reg = CM_PLLH,
@@ -1798,6 +1834,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.fixed_divider = 10,
 		.flags = CLK_SET_RATE_PARENT),
 	[BCM2835_PLLH_AUX]	= REGISTER_PLL_DIV(
+		SOC_BCM2835,
 		.name = "pllh_aux",
 		.source_pll = "pllh",
 		.cm_reg = CM_PLLH,
@@ -1807,6 +1844,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.fixed_divider = 1,
 		.flags = CLK_SET_RATE_PARENT),
 	[BCM2835_PLLH_PIX]	= REGISTER_PLL_DIV(
+		SOC_BCM2835,
 		.name = "pllh_pix",
 		.source_pll = "pllh",
 		.cm_reg = CM_PLLH,
@@ -1822,6 +1860,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {

 	/* One Time Programmable Memory clock.  Maximum 10Mhz. */
 	[BCM2835_CLOCK_OTP]	= REGISTER_OSC_CLK(
+		SOC_ALL,
 		.name = "otp",
 		.ctl_reg = CM_OTPCTL,
 		.div_reg = CM_OTPDIV,
@@ -1833,6 +1872,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 	 * bythe watchdog timer and the camera pulse generator.
 	 */
 	[BCM2835_CLOCK_TIMER]	= REGISTER_OSC_CLK(
+		SOC_ALL,
 		.name = "timer",
 		.ctl_reg = CM_TIMERCTL,
 		.div_reg = CM_TIMERDIV,
@@ -1843,12 +1883,14 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
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
@@ -1857,6 +1899,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {

 	/* clocks with vpu parent mux */
 	[BCM2835_CLOCK_H264]	= REGISTER_VPU_CLK(
+		SOC_ALL,
 		.name = "h264",
 		.ctl_reg = CM_H264CTL,
 		.div_reg = CM_H264DIV,
@@ -1864,6 +1907,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.frac_bits = 8,
 		.tcnt_mux = 1),
 	[BCM2835_CLOCK_ISP]	= REGISTER_VPU_CLK(
+		SOC_ALL,
 		.name = "isp",
 		.ctl_reg = CM_ISPCTL,
 		.div_reg = CM_ISPDIV,
@@ -1876,6 +1920,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 	 * in the SDRAM controller can't be used.
 	 */
 	[BCM2835_CLOCK_SDRAM]	= REGISTER_VPU_CLK(
+		SOC_ALL,
 		.name = "sdram",
 		.ctl_reg = CM_SDCCTL,
 		.div_reg = CM_SDCDIV,
@@ -1883,6 +1928,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.frac_bits = 0,
 		.tcnt_mux = 3),
 	[BCM2835_CLOCK_V3D]	= REGISTER_VPU_CLK(
+		SOC_ALL,
 		.name = "v3d",
 		.ctl_reg = CM_V3DCTL,
 		.div_reg = CM_V3DDIV,
@@ -1896,6 +1942,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 	 * in various hardware documentation.
 	 */
 	[BCM2835_CLOCK_VPU]	= REGISTER_VPU_CLK(
+		SOC_ALL,
 		.name = "vpu",
 		.ctl_reg = CM_VPUCTL,
 		.div_reg = CM_VPUDIV,
@@ -1907,6 +1954,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {

 	/* clocks with per parent mux */
 	[BCM2835_CLOCK_AVEO]	= REGISTER_PER_CLK(
+		SOC_ALL,
 		.name = "aveo",
 		.ctl_reg = CM_AVEOCTL,
 		.div_reg = CM_AVEODIV,
@@ -1914,6 +1962,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.frac_bits = 0,
 		.tcnt_mux = 38),
 	[BCM2835_CLOCK_CAM0]	= REGISTER_PER_CLK(
+		SOC_ALL,
 		.name = "cam0",
 		.ctl_reg = CM_CAM0CTL,
 		.div_reg = CM_CAM0DIV,
@@ -1921,6 +1970,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.frac_bits = 8,
 		.tcnt_mux = 14),
 	[BCM2835_CLOCK_CAM1]	= REGISTER_PER_CLK(
+		SOC_ALL,
 		.name = "cam1",
 		.ctl_reg = CM_CAM1CTL,
 		.div_reg = CM_CAM1DIV,
@@ -1928,12 +1978,14 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
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
@@ -1943,6 +1995,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {

 	/* Arasan EMMC clock */
 	[BCM2835_CLOCK_EMMC]	= REGISTER_PER_CLK(
+		SOC_ALL,
 		.name = "emmc",
 		.ctl_reg = CM_EMMCCTL,
 		.div_reg = CM_EMMCDIV,
@@ -1952,6 +2005,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {

 	/* General purpose (GPIO) clocks */
 	[BCM2835_CLOCK_GP0]	= REGISTER_PER_CLK(
+		SOC_ALL,
 		.name = "gp0",
 		.ctl_reg = CM_GP0CTL,
 		.div_reg = CM_GP0DIV,
@@ -1960,6 +2014,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.is_mash_clock = true,
 		.tcnt_mux = 20),
 	[BCM2835_CLOCK_GP1]	= REGISTER_PER_CLK(
+		SOC_ALL,
 		.name = "gp1",
 		.ctl_reg = CM_GP1CTL,
 		.div_reg = CM_GP1DIV,
@@ -1969,6 +2024,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.is_mash_clock = true,
 		.tcnt_mux = 21),
 	[BCM2835_CLOCK_GP2]	= REGISTER_PER_CLK(
+		SOC_ALL,
 		.name = "gp2",
 		.ctl_reg = CM_GP2CTL,
 		.div_reg = CM_GP2DIV,
@@ -1978,6 +2034,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {

 	/* HDMI state machine */
 	[BCM2835_CLOCK_HSM]	= REGISTER_PER_CLK(
+		SOC_ALL,
 		.name = "hsm",
 		.ctl_reg = CM_HSMCTL,
 		.div_reg = CM_HSMDIV,
@@ -1985,6 +2042,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.frac_bits = 8,
 		.tcnt_mux = 22),
 	[BCM2835_CLOCK_PCM]	= REGISTER_PCM_CLK(
+		SOC_ALL,
 		.name = "pcm",
 		.ctl_reg = CM_PCMCTL,
 		.div_reg = CM_PCMDIV,
@@ -1994,6 +2052,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.low_jitter = true,
 		.tcnt_mux = 23),
 	[BCM2835_CLOCK_PWM]	= REGISTER_PER_CLK(
+		SOC_ALL,
 		.name = "pwm",
 		.ctl_reg = CM_PWMCTL,
 		.div_reg = CM_PWMDIV,
@@ -2002,6 +2061,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.is_mash_clock = true,
 		.tcnt_mux = 24),
 	[BCM2835_CLOCK_SLIM]	= REGISTER_PER_CLK(
+		SOC_ALL,
 		.name = "slim",
 		.ctl_reg = CM_SLIMCTL,
 		.div_reg = CM_SLIMDIV,
@@ -2010,6 +2070,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.is_mash_clock = true,
 		.tcnt_mux = 25),
 	[BCM2835_CLOCK_SMI]	= REGISTER_PER_CLK(
+		SOC_ALL,
 		.name = "smi",
 		.ctl_reg = CM_SMICTL,
 		.div_reg = CM_SMIDIV,
@@ -2017,6 +2078,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.frac_bits = 8,
 		.tcnt_mux = 27),
 	[BCM2835_CLOCK_UART]	= REGISTER_PER_CLK(
+		SOC_ALL,
 		.name = "uart",
 		.ctl_reg = CM_UARTCTL,
 		.div_reg = CM_UARTDIV,
@@ -2026,6 +2088,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {

 	/* TV encoder clock.  Only operating frequency is 108Mhz.  */
 	[BCM2835_CLOCK_VEC]	= REGISTER_PER_CLK(
+		SOC_ALL,
 		.name = "vec",
 		.ctl_reg = CM_VECCTL,
 		.div_reg = CM_VECDIV,
@@ -2040,6 +2103,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {

 	/* dsi clocks */
 	[BCM2835_CLOCK_DSI0E]	= REGISTER_PER_CLK(
+		SOC_ALL,
 		.name = "dsi0e",
 		.ctl_reg = CM_DSI0ECTL,
 		.div_reg = CM_DSI0EDIV,
@@ -2047,6 +2111,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.frac_bits = 8,
 		.tcnt_mux = 18),
 	[BCM2835_CLOCK_DSI1E]	= REGISTER_PER_CLK(
+		SOC_ALL,
 		.name = "dsi1e",
 		.ctl_reg = CM_DSI1ECTL,
 		.div_reg = CM_DSI1EDIV,
@@ -2054,6 +2119,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.frac_bits = 8,
 		.tcnt_mux = 19),
 	[BCM2835_CLOCK_DSI0P]	= REGISTER_DSI0_CLK(
+		SOC_ALL,
 		.name = "dsi0p",
 		.ctl_reg = CM_DSI0PCTL,
 		.div_reg = CM_DSI0PDIV,
@@ -2061,6 +2127,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.frac_bits = 0,
 		.tcnt_mux = 12),
 	[BCM2835_CLOCK_DSI1P]	= REGISTER_DSI1_CLK(
+		SOC_ALL,
 		.name = "dsi1p",
 		.ctl_reg = CM_DSI1PCTL,
 		.div_reg = CM_DSI1PDIV,
@@ -2077,6 +2144,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 	 * non-stop vpu clock.
 	 */
 	[BCM2835_CLOCK_PERI_IMAGE] = REGISTER_GATE(
+		SOC_ALL,
 		.name = "peri_image",
 		.parent = "vpu",
 		.ctl_reg = CM_PERIICTL),
@@ -2109,9 +2177,14 @@ static int bcm2835_clk_probe(struct platform_device *pdev)
 	struct resource *res;
 	const struct bcm2835_clk_desc *desc;
 	const size_t asize = ARRAY_SIZE(clk_desc_array);
+	const struct cprman_plat_data *pdata;
 	size_t i;
 	int ret;

+	pdata = of_device_get_match_data(&pdev->dev);
+	if (!pdata)
+		return -ENODEV;
+
 	cprman = devm_kzalloc(dev,
 			      struct_size(cprman, onecell.hws, asize),
 			      GFP_KERNEL);
@@ -2147,8 +2220,10 @@ static int bcm2835_clk_probe(struct platform_device *pdev)

 	for (i = 0; i < asize; i++) {
 		desc = &clk_desc_array[i];
-		if (desc->clk_register && desc->data)
+		if (desc->clk_register && desc->data &&
+		    (desc->supported & pdata->soc)) {
 			hws[i] = desc->clk_register(cprman, desc->data);
+		}
 	}

 	ret = bcm2835_mark_sdc_parent_critical(hws[BCM2835_CLOCK_SDRAM]->clk);
@@ -2159,8 +2234,12 @@ static int bcm2835_clk_probe(struct platform_device *pdev)
 				      &cprman->onecell);
 }

+static const struct cprman_plat_data cprman_bcm2835_plat_data = {
+	.soc = SOC_BCM2835,
+};
+
 static const struct of_device_id bcm2835_clk_of_match[] = {
-	{ .compatible = "brcm,bcm2835-cprman", },
+	{ .compatible = "brcm,bcm2835-cprman", .data = &cprman_bcm2835_plat_data },
 	{}
 };
 MODULE_DEVICE_TABLE(of, bcm2835_clk_of_match);
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
