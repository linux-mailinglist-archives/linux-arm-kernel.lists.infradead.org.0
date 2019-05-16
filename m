Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B1120053
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 09:30:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8YCYZL43bl4NLrXT7pi2sxe/NKASZTJ3/eCrsxuIMWk=; b=YLPM+Vyclng5U5V/BhfrqdsPLI
	JgkFtVqmvRfjB9N+jvOmwciw/n8QKLLeIccFwXKqQ72rszLO1kyiBERYWYD0tiTqsmopmQrxhmF+6
	l9Em5Sh+VRe3CJ+D3PL2ZXSS+9bpSCMeqpiChVY3w2iP2/FwbdfqN0/f1X5Zjsc2LAZHLStYRIyLy
	HBimw/zMWTYkhOHgWSIszNWX6UUxCF3WGUqwC1k8uNLVe75QH3LyF6p59n5RjsPX4+/y7RJOASQfO
	Djj46du9t9eLSDtnhyoi8IUxrXJyS36j2rVXQurG2n6CLmPEwltHoKKXZOzEJeU/wrwnbRY74yYH6
	8aIvLAMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRAqD-00005W-0T; Thu, 16 May 2019 07:30:13 +0000
Received: from regular1.263xmail.com ([211.150.70.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRApC-0007Zm-6o; Thu, 16 May 2019 07:29:16 +0000
Received: from zhangqing?rock-chips.com (unknown [192.168.167.227])
 by regular1.263xmail.com (Postfix) with ESMTP id 987BA8C6;
 Thu, 16 May 2019 15:29:01 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P7747T139724561819392S1557991736066321_; 
 Thu, 16 May 2019 15:29:00 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <1056d08b8ce1b823a2dba9230b125724>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Elaine Zhang <zhangqing@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v2 1/6] clk: rockchip: Add supprot to limit input rate for
 fractional divider
Date: Thu, 16 May 2019 15:28:51 +0800
Message-Id: <1557991736-13580-2-git-send-email-zhangqing@rock-chips.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557991736-13580-1-git-send-email-zhangqing@rock-chips.com>
References: <1557991736-13580-1-git-send-email-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_002910_736058_CC5FF406 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: huangtao@rock-chips.com, xxx@rock-chips.com, xf@rock-chips.com,
 sboyd@kernel.org, mturquette@baylibre.com,
 Elaine Zhang <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Finley Xiao <finley.xiao@rock-chips.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Finley Xiao <finley.xiao@rock-chips.com>

From Rockchips fractional divider usage, some clocks can be generated
by fractional divider, but the input clock frequency of fractional
divider should be less than a specified value.

Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 drivers/clk/rockchip/clk-px30.c   | 29 +++++++++++++++--------------
 drivers/clk/rockchip/clk-rk3036.c | 13 ++++++++-----
 drivers/clk/rockchip/clk-rk3128.c | 15 +++++++++------
 drivers/clk/rockchip/clk-rk3188.c | 24 ++++++++++++++----------
 drivers/clk/rockchip/clk-rk3228.c | 18 +++++++++++-------
 drivers/clk/rockchip/clk-rk3288.c | 19 +++++++++++--------
 drivers/clk/rockchip/clk-rk3328.c | 17 ++++++++++-------
 drivers/clk/rockchip/clk-rk3368.c | 17 ++++++++++-------
 drivers/clk/rockchip/clk-rk3399.c | 32 +++++++++++++++++++-------------
 drivers/clk/rockchip/clk-rv1108.c | 14 ++++++++------
 drivers/clk/rockchip/clk.c        | 21 ++++++++++++++++++---
 drivers/clk/rockchip/clk.h        | 10 +++++++---
 include/linux/clk-provider.h      |  2 ++
 13 files changed, 142 insertions(+), 89 deletions(-)

diff --git a/drivers/clk/rockchip/clk-px30.c b/drivers/clk/rockchip/clk-px30.c
index 601a77f1af78..ccabce35580b 100644
--- a/drivers/clk/rockchip/clk-px30.c
+++ b/drivers/clk/rockchip/clk-px30.c
@@ -21,6 +21,7 @@
 #include "clk.h"
 
 #define PX30_GRF_SOC_STATUS0		0x480
+#define PX30_FRAC_MAX_PRATE		600000000
 
 enum px30_plls {
 	apll, dpll, cpll, npll, apll_b_h, apll_b_l,
@@ -428,7 +429,7 @@ enum px30_pmu_plls {
 	COMPOSITE_FRACMUX(0, "dclk_vopb_frac", "dclk_vopb_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(6), 0,
 			PX30_CLKGATE_CON(2), 3, GFLAGS,
-			&px30_dclk_vopb_fracmux),
+			&px30_dclk_vopb_fracmux, 0),
 	GATE(DCLK_VOPB, "dclk_vopb", "dclk_vopb_mux", CLK_SET_RATE_PARENT,
 			PX30_CLKGATE_CON(2), 4, GFLAGS),
 	COMPOSITE(0, "dclk_vopl_src", mux_npll_cpll_p, 0,
@@ -437,7 +438,7 @@ enum px30_pmu_plls {
 	COMPOSITE_FRACMUX(0, "dclk_vopl_frac", "dclk_vopl_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(9), 0,
 			PX30_CLKGATE_CON(2), 7, GFLAGS,
-			&px30_dclk_vopl_fracmux),
+			&px30_dclk_vopl_fracmux, 0),
 	GATE(DCLK_VOPL, "dclk_vopl", "dclk_vopl_mux", CLK_SET_RATE_PARENT,
 			PX30_CLKGATE_CON(2), 8, GFLAGS),
 
@@ -563,7 +564,7 @@ enum px30_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_pdm_frac", "clk_pdm_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(27), 0,
 			PX30_CLKGATE_CON(9), 10, GFLAGS,
-			&px30_pdm_fracmux),
+			&px30_pdm_fracmux, PX30_FRAC_MAX_PRATE),
 	GATE(SCLK_PDM, "clk_pdm", "clk_pdm_mux", CLK_SET_RATE_PARENT,
 			PX30_CLKGATE_CON(9), 11, GFLAGS),
 
@@ -573,7 +574,7 @@ enum px30_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_i2s0_tx_frac", "clk_i2s0_tx_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(29), 0,
 			PX30_CLKGATE_CON(9), 13, GFLAGS,
-			&px30_i2s0_tx_fracmux),
+			&px30_i2s0_tx_fracmux, PX30_FRAC_MAX_PRATE),
 	COMPOSITE_NODIV(SCLK_I2S0_TX, "clk_i2s0_tx", mux_i2s0_tx_rx_p, CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(28), 12, 1, MFLAGS,
 			PX30_CLKGATE_CON(9), 14, GFLAGS),
@@ -589,7 +590,7 @@ enum px30_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_i2s0_rx_frac", "clk_i2s0_rx_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(59), 0,
 			PX30_CLKGATE_CON(17), 1, GFLAGS,
-			&px30_i2s0_rx_fracmux),
+			&px30_i2s0_rx_fracmux, PX30_FRAC_MAX_PRATE),
 	COMPOSITE_NODIV(SCLK_I2S0_RX, "clk_i2s0_rx", mux_i2s0_rx_tx_p, CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(58), 12, 1, MFLAGS,
 			PX30_CLKGATE_CON(17), 2, GFLAGS),
@@ -605,7 +606,7 @@ enum px30_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_i2s1_frac", "clk_i2s1_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(31), 0,
 			PX30_CLKGATE_CON(10), 1, GFLAGS,
-			&px30_i2s1_fracmux),
+			&px30_i2s1_fracmux, PX30_FRAC_MAX_PRATE),
 	GATE(SCLK_I2S1, "clk_i2s1", "clk_i2s1_mux", CLK_SET_RATE_PARENT,
 			PX30_CLKGATE_CON(10), 2, GFLAGS),
 	COMPOSITE_NODIV(0, "clk_i2s1_out_pre", mux_i2s1_out_p, 0,
@@ -620,7 +621,7 @@ enum px30_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_i2s2_frac", "clk_i2s2_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(33), 0,
 			PX30_CLKGATE_CON(10), 5, GFLAGS,
-			&px30_i2s2_fracmux),
+			&px30_i2s2_fracmux, PX30_FRAC_MAX_PRATE),
 	GATE(SCLK_I2S2, "clk_i2s2", "clk_i2s2_mux", CLK_SET_RATE_PARENT,
 			PX30_CLKGATE_CON(10), 6, GFLAGS),
 	COMPOSITE_NODIV(0, "clk_i2s2_out_pre", mux_i2s2_out_p, 0,
@@ -638,7 +639,7 @@ enum px30_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_uart1_frac", "clk_uart1_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(36), 0,
 			PX30_CLKGATE_CON(10), 14, GFLAGS,
-			&px30_uart1_fracmux),
+			&px30_uart1_fracmux, PX30_FRAC_MAX_PRATE),
 	GATE(SCLK_UART1, "clk_uart1", "clk_uart1_mux", CLK_SET_RATE_PARENT,
 			PX30_CLKGATE_CON(10), 15, GFLAGS),
 
@@ -651,7 +652,7 @@ enum px30_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_uart2_frac", "clk_uart2_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(39), 0,
 			PX30_CLKGATE_CON(11), 2, GFLAGS,
-			&px30_uart2_fracmux),
+			&px30_uart2_fracmux, PX30_FRAC_MAX_PRATE),
 	GATE(SCLK_UART2, "clk_uart2", "clk_uart2_mux", CLK_SET_RATE_PARENT,
 			PX30_CLKGATE_CON(11), 3, GFLAGS),
 
@@ -664,7 +665,7 @@ enum px30_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_uart3_frac", "clk_uart3_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(42), 0,
 			PX30_CLKGATE_CON(11), 6, GFLAGS,
-			&px30_uart3_fracmux),
+			&px30_uart3_fracmux, PX30_FRAC_MAX_PRATE),
 	GATE(SCLK_UART3, "clk_uart3", "clk_uart3_mux", CLK_SET_RATE_PARENT,
 			PX30_CLKGATE_CON(11), 7, GFLAGS),
 
@@ -677,7 +678,7 @@ enum px30_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_uart4_frac", "clk_uart4_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(45), 0,
 			PX30_CLKGATE_CON(11), 10, GFLAGS,
-			&px30_uart4_fracmux),
+			&px30_uart4_fracmux, PX30_FRAC_MAX_PRATE),
 	GATE(SCLK_UART4, "clk_uart4", "clk_uart4_mux", CLK_SET_RATE_PARENT,
 			PX30_CLKGATE_CON(11), 11, GFLAGS),
 
@@ -690,7 +691,7 @@ enum px30_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_uart5_frac", "clk_uart5_src", CLK_SET_RATE_PARENT,
 			PX30_CLKSEL_CON(48), 0,
 			PX30_CLKGATE_CON(11), 14, GFLAGS,
-			&px30_uart5_fracmux),
+			&px30_uart5_fracmux, PX30_FRAC_MAX_PRATE),
 	GATE(SCLK_UART5, "clk_uart5", "clk_uart5_mux", CLK_SET_RATE_PARENT,
 			PX30_CLKGATE_CON(11), 15, GFLAGS),
 
@@ -887,7 +888,7 @@ enum px30_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_rtc32k_frac", "xin24m", CLK_IGNORE_UNUSED,
 			PX30_PMU_CLKSEL_CON(1), 0,
 			PX30_PMU_CLKGATE_CON(0), 13, GFLAGS,
-			&px30_rtc32k_pmu_fracmux),
+			&px30_rtc32k_pmu_fracmux, 0),
 
 	COMPOSITE_NOMUX(XIN24M_DIV, "xin24m_div", "xin24m", CLK_IGNORE_UNUSED,
 			PX30_PMU_CLKSEL_CON(0), 8, 5, DFLAGS,
@@ -909,7 +910,7 @@ enum px30_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_uart0_frac", "clk_uart0_pmu_src", CLK_SET_RATE_PARENT,
 			PX30_PMU_CLKSEL_CON(5), 0,
 			PX30_PMU_CLKGATE_CON(1), 2, GFLAGS,
-			&px30_uart0_pmu_fracmux),
+			&px30_uart0_pmu_fracmux, PX30_FRAC_MAX_PRATE),
 	GATE(SCLK_UART0_PMU, "clk_uart0_pmu", "clk_uart0_pmu_mux", CLK_SET_RATE_PARENT,
 			PX30_PMU_CLKGATE_CON(1), 3, GFLAGS),
 
diff --git a/drivers/clk/rockchip/clk-rk3036.c b/drivers/clk/rockchip/clk-rk3036.c
index c3001980dbdc..622f47ab3e25 100644
--- a/drivers/clk/rockchip/clk-rk3036.c
+++ b/drivers/clk/rockchip/clk-rk3036.c
@@ -24,6 +24,9 @@
 #include "clk.h"
 
 #define RK3036_GRF_SOC_STATUS0	0x14c
+#define RK3036_UART_FRAC_MAX_PRATE	600000000
+#define RK3036_I2S_FRAC_MAX_PRATE	600000000
+#define RK3036_SPDIF_FRAC_MAX_PRATE	600000000
 
 enum rk3036_plls {
 	apll, dpll, gpll,
@@ -256,15 +259,15 @@ enum rk3036_plls {
 	COMPOSITE_FRACMUX(0, "uart0_frac", "uart0_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(17), 0,
 			RK2928_CLKGATE_CON(1), 9, GFLAGS,
-			&rk3036_uart0_fracmux),
+			&rk3036_uart0_fracmux, RK3036_UART_FRAC_MAX_PRATE),
 	COMPOSITE_FRACMUX(0, "uart1_frac", "uart1_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(18), 0,
 			RK2928_CLKGATE_CON(1), 11, GFLAGS,
-			&rk3036_uart1_fracmux),
+			&rk3036_uart1_fracmux, RK3036_UART_FRAC_MAX_PRATE),
 	COMPOSITE_FRACMUX(0, "uart2_frac", "uart2_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(19), 0,
 			RK2928_CLKGATE_CON(1), 13, GFLAGS,
-			&rk3036_uart2_fracmux),
+			&rk3036_uart2_fracmux, RK3036_UART_FRAC_MAX_PRATE),
 
 	COMPOSITE(0, "aclk_vcodec", mux_pll_src_3plls_p, 0,
 			RK2928_CLKSEL_CON(32), 14, 2, MFLAGS, 8, 5, DFLAGS,
@@ -317,7 +320,7 @@ enum rk3036_plls {
 	COMPOSITE_FRACMUX(0, "i2s_frac", "i2s_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(7), 0,
 			RK2928_CLKGATE_CON(0), 10, GFLAGS,
-			&rk3036_i2s_fracmux),
+			&rk3036_i2s_fracmux, RK3036_I2S_FRAC_MAX_PRATE),
 	COMPOSITE_NODIV(SCLK_I2S_OUT, "i2s_clkout", mux_i2s_clkout_p, 0,
 			RK2928_CLKSEL_CON(3), 12, 1, MFLAGS,
 			RK2928_CLKGATE_CON(0), 13, GFLAGS),
@@ -330,7 +333,7 @@ enum rk3036_plls {
 	COMPOSITE_FRACMUX(0, "spdif_frac", "spdif_src", 0,
 			RK2928_CLKSEL_CON(9), 0,
 			RK2928_CLKGATE_CON(2), 12, GFLAGS,
-			&rk3036_spdif_fracmux),
+			&rk3036_spdif_fracmux, RK3036_SPDIF_FRAC_MAX_PRATE),
 
 	GATE(SCLK_OTGPHY0, "sclk_otgphy0", "xin12m", CLK_IGNORE_UNUSED,
 			RK2928_CLKGATE_CON(1), 5, GFLAGS),
diff --git a/drivers/clk/rockchip/clk-rk3128.c b/drivers/clk/rockchip/clk-rk3128.c
index 5970a50671b9..35387252ad68 100644
--- a/drivers/clk/rockchip/clk-rk3128.c
+++ b/drivers/clk/rockchip/clk-rk3128.c
@@ -21,6 +21,9 @@
 #include "clk.h"
 
 #define RK3128_GRF_SOC_STATUS0	0x14c
+#define RK3128_UART_FRAC_MAX_PRATE	600000000
+#define RK3128_I2S_FRAC_MAX_PRATE	600000000
+#define RK3128_SPDIF_FRAC_MAX_PRATE	600000000
 
 enum rk3128_plls {
 	apll, dpll, cpll, gpll,
@@ -367,7 +370,7 @@ enum rk3128_plls {
 	COMPOSITE_FRACMUX(0, "i2s0_frac", "i2s0_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(8), 0,
 			RK2928_CLKGATE_CON(4), 5, GFLAGS,
-			&rk3128_i2s0_fracmux),
+			&rk3128_i2s0_fracmux, RK3128_I2S_FRAC_MAX_PRATE),
 	GATE(SCLK_I2S0, "sclk_i2s0", "i2s0_pre", CLK_SET_RATE_PARENT,
 			RK2928_CLKGATE_CON(4), 6, GFLAGS),
 
@@ -377,7 +380,7 @@ enum rk3128_plls {
 	COMPOSITE_FRACMUX(0, "i2s1_frac", "i2s1_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(7), 0,
 			RK2928_CLKGATE_CON(0), 10, GFLAGS,
-			&rk3128_i2s1_fracmux),
+			&rk3128_i2s1_fracmux, RK3128_I2S_FRAC_MAX_PRATE),
 	GATE(SCLK_I2S1, "sclk_i2s1", "i2s1_pre", CLK_SET_RATE_PARENT,
 			RK2928_CLKGATE_CON(0), 14, GFLAGS),
 	COMPOSITE_NODIV(SCLK_I2S_OUT, "i2s_out", mux_i2s_out_p, 0,
@@ -390,7 +393,7 @@ enum rk3128_plls {
 	COMPOSITE_FRACMUX(0, "spdif_frac", "sclk_spdif_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(20), 0,
 			RK2928_CLKGATE_CON(2), 12, GFLAGS,
-			&rk3128_spdif_fracmux),
+			&rk3128_spdif_fracmux, RK3128_SPDIF_FRAC_MAX_PRATE),
 
 	GATE(0, "jtag", "ext_jtag", CLK_IGNORE_UNUSED,
 			RK2928_CLKGATE_CON(1), 3, GFLAGS),
@@ -427,15 +430,15 @@ enum rk3128_plls {
 	COMPOSITE_FRACMUX(0, "uart0_frac", "uart0_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(17), 0,
 			RK2928_CLKGATE_CON(1), 9, GFLAGS,
-			&rk3128_uart0_fracmux),
+			&rk3128_uart0_fracmux, RK3128_UART_FRAC_MAX_PRATE),
 	COMPOSITE_FRACMUX(0, "uart1_frac", "uart1_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(18), 0,
 			RK2928_CLKGATE_CON(1), 11, GFLAGS,
-			&rk3128_uart1_fracmux),
+			&rk3128_uart1_fracmux, RK3128_UART_FRAC_MAX_PRATE),
 	COMPOSITE_FRACMUX(0, "uart2_frac", "uart2_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(19), 0,
 			RK2928_CLKGATE_CON(1), 13, GFLAGS,
-			&rk3128_uart2_fracmux),
+			&rk3128_uart2_fracmux, RK3128_UART_FRAC_MAX_PRATE),
 
 	COMPOSITE(SCLK_MAC_SRC, "sclk_gmac_src", mux_pll_src_3plls_p, 0,
 			RK2928_CLKSEL_CON(5), 6, 2, MFLAGS, 0, 5, DFLAGS,
diff --git a/drivers/clk/rockchip/clk-rk3188.c b/drivers/clk/rockchip/clk-rk3188.c
index 5ecf28854876..985d3a0153d7 100644
--- a/drivers/clk/rockchip/clk-rk3188.c
+++ b/drivers/clk/rockchip/clk-rk3188.c
@@ -22,6 +22,10 @@
 
 #define RK3066_GRF_SOC_STATUS	0x15c
 #define RK3188_GRF_SOC_STATUS	0xac
+#define RK3188_UART_FRAC_MAX_PRATE	600000000
+#define RK3188_I2S_FRAC_MAX_PRATE	600000000
+#define RK3188_SPDIF_FRAC_MAX_PRATE	600000000
+#define RK3188_HSADC_FRAC_MAX_PRATE	300000000
 
 enum rk3188_plls {
 	apll, cpll, dpll, gpll,
@@ -371,7 +375,7 @@ enum rk3188_plls {
 	COMPOSITE_FRACMUX(0, "hsadc_frac", "hsadc_src", 0,
 			RK2928_CLKSEL_CON(23), 0,
 			RK2928_CLKGATE_CON(2), 7, GFLAGS,
-			&common_hsadc_out_fracmux),
+			&common_hsadc_out_fracmux, RK3188_HSADC_FRAC_MAX_PRATE),
 	INVERTER(SCLK_HSADC, "sclk_hsadc", "sclk_hsadc_out",
 			RK2928_CLKSEL_CON(22), 7, IFLAGS),
 
@@ -385,7 +389,7 @@ enum rk3188_plls {
 	COMPOSITE_FRACMUX(0, "spdif_frac", "spdif_pre", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(9), 0,
 			RK2928_CLKGATE_CON(0), 14, GFLAGS,
-			&common_spdif_fracmux),
+			&common_spdif_fracmux, RK3188_SPDIF_FRAC_MAX_PRATE),
 
 	/*
 	 * Clock-Architecture Diagram 4
@@ -419,28 +423,28 @@ enum rk3188_plls {
 	COMPOSITE_FRACMUX(0, "uart0_frac", "uart0_pre", 0,
 			RK2928_CLKSEL_CON(17), 0,
 			RK2928_CLKGATE_CON(1), 9, GFLAGS,
-			&common_uart0_fracmux),
+			&common_uart0_fracmux, RK3188_UART_FRAC_MAX_PRATE),
 	COMPOSITE_NOMUX(0, "uart1_pre", "uart_src", 0,
 			RK2928_CLKSEL_CON(14), 0, 7, DFLAGS,
 			RK2928_CLKGATE_CON(1), 10, GFLAGS),
 	COMPOSITE_FRACMUX(0, "uart1_frac", "uart1_pre", 0,
 			RK2928_CLKSEL_CON(18), 0,
 			RK2928_CLKGATE_CON(1), 11, GFLAGS,
-			&common_uart1_fracmux),
+			&common_uart1_fracmux, RK3188_UART_FRAC_MAX_PRATE),
 	COMPOSITE_NOMUX(0, "uart2_pre", "uart_src", 0,
 			RK2928_CLKSEL_CON(15), 0, 7, DFLAGS,
 			RK2928_CLKGATE_CON(1), 12, GFLAGS),
 	COMPOSITE_FRACMUX(0, "uart2_frac", "uart2_pre", 0,
 			RK2928_CLKSEL_CON(19), 0,
 			RK2928_CLKGATE_CON(1), 13, GFLAGS,
-			&common_uart2_fracmux),
+			&common_uart2_fracmux, RK3188_UART_FRAC_MAX_PRATE),
 	COMPOSITE_NOMUX(0, "uart3_pre", "uart_src", 0,
 			RK2928_CLKSEL_CON(16), 0, 7, DFLAGS,
 			RK2928_CLKGATE_CON(1), 14, GFLAGS),
 	COMPOSITE_FRACMUX(0, "uart3_frac", "uart3_pre", 0,
 			RK2928_CLKSEL_CON(20), 0,
 			RK2928_CLKGATE_CON(1), 15, GFLAGS,
-			&common_uart3_fracmux),
+			&common_uart3_fracmux, RK3188_UART_FRAC_MAX_PRATE),
 
 	GATE(SCLK_JTAG, "jtag", "ext_jtag", 0, RK2928_CLKGATE_CON(1), 3, GFLAGS),
 
@@ -626,21 +630,21 @@ enum rk3188_plls {
 	COMPOSITE_FRACMUX(0, "i2s0_frac", "i2s0_pre", 0,
 			RK2928_CLKSEL_CON(6), 0,
 			RK2928_CLKGATE_CON(0), 8, GFLAGS,
-			&rk3066a_i2s0_fracmux),
+			&rk3066a_i2s0_fracmux, RK3188_I2S_FRAC_MAX_PRATE),
 	COMPOSITE_NOMUX(0, "i2s1_pre", "i2s_src", 0,
 			RK2928_CLKSEL_CON(3), 0, 7, DFLAGS,
 			RK2928_CLKGATE_CON(0), 9, GFLAGS),
 	COMPOSITE_FRACMUX(0, "i2s1_frac", "i2s1_pre", 0,
 			RK2928_CLKSEL_CON(7), 0,
 			RK2928_CLKGATE_CON(0), 10, GFLAGS,
-			&rk3066a_i2s1_fracmux),
+			&rk3066a_i2s1_fracmux, RK3188_I2S_FRAC_MAX_PRATE),
 	COMPOSITE_NOMUX(0, "i2s2_pre", "i2s_src", 0,
 			RK2928_CLKSEL_CON(4), 0, 7, DFLAGS,
 			RK2928_CLKGATE_CON(0), 11, GFLAGS),
 	COMPOSITE_FRACMUX(0, "i2s2_frac", "i2s2_pre", 0,
 			RK2928_CLKSEL_CON(8), 0,
 			RK2928_CLKGATE_CON(0), 12, GFLAGS,
-			&rk3066a_i2s2_fracmux),
+			&rk3066a_i2s2_fracmux, RK3188_I2S_FRAC_MAX_PRATE),
 
 	GATE(HCLK_I2S1, "hclk_i2s1", "hclk_cpu", 0, RK2928_CLKGATE_CON(7), 3, GFLAGS),
 	GATE(HCLK_I2S2, "hclk_i2s2", "hclk_cpu", 0, RK2928_CLKGATE_CON(7), 4, GFLAGS),
@@ -734,7 +738,7 @@ enum rk3188_plls {
 	COMPOSITE_FRACMUX(0, "i2s0_frac", "i2s0_pre", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(7), 0,
 			RK2928_CLKGATE_CON(0), 10, GFLAGS,
-			&rk3188_i2s0_fracmux),
+			&rk3188_i2s0_fracmux, RK3188_I2S_FRAC_MAX_PRATE),
 
 	GATE(0, "hclk_imem0", "hclk_cpu", 0, RK2928_CLKGATE_CON(4), 14, GFLAGS),
 	GATE(0, "hclk_imem1", "hclk_cpu", 0, RK2928_CLKGATE_CON(4), 15, GFLAGS),
diff --git a/drivers/clk/rockchip/clk-rk3228.c b/drivers/clk/rockchip/clk-rk3228.c
index 7af48184b022..35e3be34f2f8 100644
--- a/drivers/clk/rockchip/clk-rk3228.c
+++ b/drivers/clk/rockchip/clk-rk3228.c
@@ -23,6 +23,10 @@
 
 #define RK3228_GRF_SOC_STATUS0	0x480
 
+#define RK3228_UART_FRAC_MAX_PRATE	600000000
+#define RK3228_SPDIF_FRAC_MAX_PRATE	600000000
+#define RK3228_I2S_FRAC_MAX_PRATE	600000000
+
 enum rk3228_plls {
 	apll, dpll, cpll, gpll,
 };
@@ -428,7 +432,7 @@ enum rk3228_plls {
 	COMPOSITE_FRACMUX(0, "i2s0_frac", "i2s0_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(8), 0,
 			RK2928_CLKGATE_CON(0), 4, GFLAGS,
-			&rk3228_i2s0_fracmux),
+			&rk3228_i2s0_fracmux, RK3228_I2S_FRAC_MAX_PRATE),
 	GATE(SCLK_I2S0, "sclk_i2s0", "i2s0_pre", CLK_SET_RATE_PARENT,
 			RK2928_CLKGATE_CON(0), 5, GFLAGS),
 
@@ -438,7 +442,7 @@ enum rk3228_plls {
 	COMPOSITE_FRACMUX(0, "i2s1_frac", "i2s1_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(7), 0,
 			RK2928_CLKGATE_CON(0), 11, GFLAGS,
-			&rk3228_i2s1_fracmux),
+			&rk3228_i2s1_fracmux, RK3228_I2S_FRAC_MAX_PRATE),
 	GATE(SCLK_I2S1, "sclk_i2s1", "i2s1_pre", CLK_SET_RATE_PARENT,
 			RK2928_CLKGATE_CON(0), 14, GFLAGS),
 	COMPOSITE_NODIV(SCLK_I2S_OUT, "i2s_out", mux_i2s_out_p, 0,
@@ -451,7 +455,7 @@ enum rk3228_plls {
 	COMPOSITE_FRACMUX(0, "i2s2_frac", "i2s2_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(30), 0,
 			RK2928_CLKGATE_CON(0), 8, GFLAGS,
-			&rk3228_i2s2_fracmux),
+			&rk3228_i2s2_fracmux, RK3228_I2S_FRAC_MAX_PRATE),
 	GATE(SCLK_I2S2, "sclk_i2s2", "i2s2_pre", CLK_SET_RATE_PARENT,
 			RK2928_CLKGATE_CON(0), 9, GFLAGS),
 
@@ -461,7 +465,7 @@ enum rk3228_plls {
 	COMPOSITE_FRACMUX(0, "spdif_frac", "sclk_spdif_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(20), 0,
 			RK2928_CLKGATE_CON(2), 12, GFLAGS,
-			&rk3228_spdif_fracmux),
+			&rk3228_spdif_fracmux, RK3228_SPDIF_FRAC_MAX_PRATE),
 
 	GATE(0, "jtag", "ext_jtag", CLK_IGNORE_UNUSED,
 			RK2928_CLKGATE_CON(1), 3, GFLAGS),
@@ -503,15 +507,15 @@ enum rk3228_plls {
 	COMPOSITE_FRACMUX(0, "uart0_frac", "uart0_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(17), 0,
 			RK2928_CLKGATE_CON(1), 9, GFLAGS,
-			&rk3228_uart0_fracmux),
+			&rk3228_uart0_fracmux, RK3228_UART_FRAC_MAX_PRATE),
 	COMPOSITE_FRACMUX(0, "uart1_frac", "uart1_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(18), 0,
 			RK2928_CLKGATE_CON(1), 11, GFLAGS,
-			&rk3228_uart1_fracmux),
+			&rk3228_uart1_fracmux, RK3228_UART_FRAC_MAX_PRATE),
 	COMPOSITE_FRACMUX(0, "uart2_frac", "uart2_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(19), 0,
 			RK2928_CLKGATE_CON(1), 13, GFLAGS,
-			&rk3228_uart2_fracmux),
+			&rk3228_uart2_fracmux, RK3228_UART_FRAC_MAX_PRATE),
 
 	COMPOSITE(SCLK_NANDC, "sclk_nandc", mux_pll_src_2plls_p, 0,
 			RK2928_CLKSEL_CON(2), 14, 1, MFLAGS, 8, 5, DFLAGS,
diff --git a/drivers/clk/rockchip/clk-rk3288.c b/drivers/clk/rockchip/clk-rk3288.c
index 5a67b7869960..8bee8ee51354 100644
--- a/drivers/clk/rockchip/clk-rk3288.c
+++ b/drivers/clk/rockchip/clk-rk3288.c
@@ -22,6 +22,9 @@
 
 #define RK3288_GRF_SOC_CON(x)	(0x244 + x * 4)
 #define RK3288_GRF_SOC_STATUS1	0x284
+#define RK3288_UART_FRAC_MAX_PRATE	600000000
+#define RK3288_I2S_FRAC_MAX_PRATE	600000000
+#define RK3288_SPDIF_FRAC_MAX_PRATE	600000000
 
 enum rk3288_plls {
 	apll, dpll, cpll, gpll, npll,
@@ -366,7 +369,7 @@ enum rk3288_plls {
 	COMPOSITE_FRACMUX(0, "i2s_frac", "i2s_src", CLK_SET_RATE_PARENT,
 			RK3288_CLKSEL_CON(8), 0,
 			RK3288_CLKGATE_CON(4), 2, GFLAGS,
-			&rk3288_i2s_fracmux),
+			&rk3288_i2s_fracmux, RK3288_I2S_FRAC_MAX_PRATE),
 	COMPOSITE_NODIV(SCLK_I2S0_OUT, "i2s0_clkout", mux_i2s_clkout_p, 0,
 			RK3288_CLKSEL_CON(4), 12, 1, MFLAGS,
 			RK3288_CLKGATE_CON(4), 0, GFLAGS),
@@ -381,7 +384,7 @@ enum rk3288_plls {
 	COMPOSITE_FRACMUX(0, "spdif_frac", "spdif_src", CLK_SET_RATE_PARENT,
 			RK3288_CLKSEL_CON(9), 0,
 			RK3288_CLKGATE_CON(4), 5, GFLAGS,
-			&rk3288_spdif_fracmux),
+			&rk3288_spdif_fracmux, RK3288_SPDIF_FRAC_MAX_PRATE),
 	GATE(SCLK_SPDIF, "sclk_spdif", "spdif_mux", CLK_SET_RATE_PARENT,
 			RK3288_CLKGATE_CON(4), 6, GFLAGS),
 	COMPOSITE_NOMUX(0, "spdif_8ch_pre", "spdif_src", CLK_SET_RATE_PARENT,
@@ -390,7 +393,7 @@ enum rk3288_plls {
 	COMPOSITE_FRACMUX(0, "spdif_8ch_frac", "spdif_8ch_pre", CLK_SET_RATE_PARENT,
 			RK3288_CLKSEL_CON(41), 0,
 			RK3288_CLKGATE_CON(4), 8, GFLAGS,
-			&rk3288_spdif_8ch_fracmux),
+			&rk3288_spdif_8ch_fracmux, RK3288_SPDIF_FRAC_MAX_PRATE),
 	GATE(SCLK_SPDIF8CH, "sclk_spdif_8ch", "spdif_8ch_mux", CLK_SET_RATE_PARENT,
 			RK3288_CLKGATE_CON(4), 9, GFLAGS),
 
@@ -593,7 +596,7 @@ enum rk3288_plls {
 	COMPOSITE_FRACMUX(0, "uart0_frac", "uart0_src", CLK_SET_RATE_PARENT,
 			RK3288_CLKSEL_CON(17), 0,
 			RK3288_CLKGATE_CON(1), 9, GFLAGS,
-			&rk3288_uart0_fracmux),
+			&rk3288_uart0_fracmux, RK3288_UART_FRAC_MAX_PRATE),
 	MUX(0, "uart_src", mux_pll_src_cpll_gpll_p, 0,
 			RK3288_CLKSEL_CON(13), 15, 1, MFLAGS),
 	COMPOSITE_NOMUX(0, "uart1_src", "uart_src", 0,
@@ -602,28 +605,28 @@ enum rk3288_plls {
 	COMPOSITE_FRACMUX(0, "uart1_frac", "uart1_src", CLK_SET_RATE_PARENT,
 			RK3288_CLKSEL_CON(18), 0,
 			RK3288_CLKGATE_CON(1), 11, GFLAGS,
-			&rk3288_uart1_fracmux),
+			&rk3288_uart1_fracmux, RK3288_UART_FRAC_MAX_PRATE),
 	COMPOSITE_NOMUX(0, "uart2_src", "uart_src", 0,
 			RK3288_CLKSEL_CON(15), 0, 7, DFLAGS,
 			RK3288_CLKGATE_CON(1), 12, GFLAGS),
 	COMPOSITE_FRACMUX(0, "uart2_frac", "uart2_src", CLK_SET_RATE_PARENT,
 			RK3288_CLKSEL_CON(19), 0,
 			RK3288_CLKGATE_CON(1), 13, GFLAGS,
-			&rk3288_uart2_fracmux),
+			&rk3288_uart2_fracmux, RK3288_UART_FRAC_MAX_PRATE),
 	COMPOSITE_NOMUX(0, "uart3_src", "uart_src", 0,
 			RK3288_CLKSEL_CON(16), 0, 7, DFLAGS,
 			RK3288_CLKGATE_CON(1), 14, GFLAGS),
 	COMPOSITE_FRACMUX(0, "uart3_frac", "uart3_src", CLK_SET_RATE_PARENT,
 			RK3288_CLKSEL_CON(20), 0,
 			RK3288_CLKGATE_CON(1), 15, GFLAGS,
-			&rk3288_uart3_fracmux),
+			&rk3288_uart3_fracmux, RK3288_UART_FRAC_MAX_PRATE),
 	COMPOSITE_NOMUX(0, "uart4_src", "uart_src", 0,
 			RK3288_CLKSEL_CON(3), 0, 7, DFLAGS,
 			RK3288_CLKGATE_CON(2), 12, GFLAGS),
 	COMPOSITE_FRACMUX(0, "uart4_frac", "uart4_src", CLK_SET_RATE_PARENT,
 			RK3288_CLKSEL_CON(7), 0,
 			RK3288_CLKGATE_CON(2), 13, GFLAGS,
-			&rk3288_uart4_fracmux),
+			&rk3288_uart4_fracmux, RK3288_UART_FRAC_MAX_PRATE),
 
 	COMPOSITE(0, "mac_pll_src", mux_pll_src_npll_cpll_gpll_p, 0,
 			RK3288_CLKSEL_CON(21), 0, 2, MFLAGS, 8, 5, DFLAGS,
diff --git a/drivers/clk/rockchip/clk-rk3328.c b/drivers/clk/rockchip/clk-rk3328.c
index 65ab5c2f48b0..8ebf0c46e17a 100644
--- a/drivers/clk/rockchip/clk-rk3328.c
+++ b/drivers/clk/rockchip/clk-rk3328.c
@@ -24,6 +24,9 @@
 #define RK3328_GRF_SOC_STATUS0		0x480
 #define RK3328_GRF_MAC_CON1		0x904
 #define RK3328_GRF_MAC_CON2		0x908
+#define RK3328_I2S_FRAC_MAX_PRATE       600000000
+#define RK3328_UART_FRAC_MAX_PRATE	600000000
+#define RK3328_SPDIF_FRAC_MAX_PRATE	600000000
 
 enum rk3328_plls {
 	apll, dpll, cpll, gpll, npll,
@@ -380,7 +383,7 @@ enum rk3328_plls {
 	COMPOSITE_FRACMUX(0, "clk_i2s0_frac", "clk_i2s0_div", CLK_SET_RATE_PARENT,
 			RK3328_CLKSEL_CON(7), 0,
 			RK3328_CLKGATE_CON(1), 2, GFLAGS,
-			&rk3328_i2s0_fracmux),
+			&rk3328_i2s0_fracmux, RK3328_I2S_FRAC_MAX_PRATE),
 	GATE(SCLK_I2S0, "clk_i2s0", "i2s0_pre", CLK_SET_RATE_PARENT,
 			RK3328_CLKGATE_CON(1), 3, GFLAGS),
 
@@ -390,7 +393,7 @@ enum rk3328_plls {
 	COMPOSITE_FRACMUX(0, "clk_i2s1_frac", "clk_i2s1_div", CLK_SET_RATE_PARENT,
 			RK3328_CLKSEL_CON(9), 0,
 			RK3328_CLKGATE_CON(1), 5, GFLAGS,
-			&rk3328_i2s1_fracmux),
+			&rk3328_i2s1_fracmux, RK3328_I2S_FRAC_MAX_PRATE),
 	GATE(SCLK_I2S1, "clk_i2s1", "i2s1_pre", CLK_SET_RATE_PARENT,
 			RK3328_CLKGATE_CON(1), 6, GFLAGS),
 	COMPOSITE_NODIV(SCLK_I2S1_OUT, "i2s1_out", mux_i2s1out_p, 0,
@@ -403,7 +406,7 @@ enum rk3328_plls {
 	COMPOSITE_FRACMUX(0, "clk_i2s2_frac", "clk_i2s2_div", CLK_SET_RATE_PARENT,
 			RK3328_CLKSEL_CON(11), 0,
 			RK3328_CLKGATE_CON(1), 9, GFLAGS,
-			&rk3328_i2s2_fracmux),
+			&rk3328_i2s2_fracmux, RK3328_I2S_FRAC_MAX_PRATE),
 	GATE(SCLK_I2S2, "clk_i2s2", "i2s2_pre", CLK_SET_RATE_PARENT,
 			RK3328_CLKGATE_CON(1), 10, GFLAGS),
 	COMPOSITE_NODIV(SCLK_I2S2_OUT, "i2s2_out", mux_i2s2out_p, 0,
@@ -416,7 +419,7 @@ enum rk3328_plls {
 	COMPOSITE_FRACMUX(0, "clk_spdif_frac", "clk_spdif_div", CLK_SET_RATE_PARENT,
 			RK3328_CLKSEL_CON(13), 0,
 			RK3328_CLKGATE_CON(1), 13, GFLAGS,
-			&rk3328_spdif_fracmux),
+			&rk3328_spdif_fracmux, RK3328_SPDIF_FRAC_MAX_PRATE),
 
 	/* PD_UART */
 	COMPOSITE(0, "clk_uart0_div", mux_2plls_u480m_p, 0,
@@ -431,15 +434,15 @@ enum rk3328_plls {
 	COMPOSITE_FRACMUX(0, "clk_uart0_frac", "clk_uart0_div", CLK_SET_RATE_PARENT,
 			RK3328_CLKSEL_CON(15), 0,
 			RK3328_CLKGATE_CON(1), 15, GFLAGS,
-			&rk3328_uart0_fracmux),
+			&rk3328_uart0_fracmux, RK3328_UART_FRAC_MAX_PRATE),
 	COMPOSITE_FRACMUX(0, "clk_uart1_frac", "clk_uart1_div", CLK_SET_RATE_PARENT,
 			RK3328_CLKSEL_CON(17), 0,
 			RK3328_CLKGATE_CON(2), 1, GFLAGS,
-			&rk3328_uart1_fracmux),
+			&rk3328_uart1_fracmux, RK3328_UART_FRAC_MAX_PRATE),
 	COMPOSITE_FRACMUX(0, "clk_uart2_frac", "clk_uart2_div", CLK_SET_RATE_PARENT,
 			RK3328_CLKSEL_CON(19), 0,
 			RK3328_CLKGATE_CON(2), 3, GFLAGS,
-			&rk3328_uart2_fracmux),
+			&rk3328_uart2_fracmux, RK3328_UART_FRAC_MAX_PRATE),
 
 	/*
 	 * Clock-Architecture Diagram 4
diff --git a/drivers/clk/rockchip/clk-rk3368.c b/drivers/clk/rockchip/clk-rk3368.c
index 7c4d242f19c1..67c2da5e7d61 100644
--- a/drivers/clk/rockchip/clk-rk3368.c
+++ b/drivers/clk/rockchip/clk-rk3368.c
@@ -20,6 +20,9 @@
 #include "clk.h"
 
 #define RK3368_GRF_SOC_STATUS0	0x480
+#define RK3368_I2S_FRAC_MAX_PRATE       600000000
+#define RK3368_UART_FRAC_MAX_PRATE	600000000
+#define RK3368_SPDIF_FRAC_MAX_PRATE	600000000
 
 enum rk3368_plls {
 	apllb, aplll, dpll, cpll, gpll, npll,
@@ -376,7 +379,7 @@ enum rk3368_plls {
 	COMPOSITE_FRACMUX(0, "i2s_8ch_frac", "i2s_8ch_src", CLK_SET_RATE_PARENT,
 			  RK3368_CLKSEL_CON(28), 0,
 			  RK3368_CLKGATE_CON(6), 2, GFLAGS,
-			  &rk3368_i2s_8ch_fracmux),
+			  &rk3368_i2s_8ch_fracmux, RK3368_I2S_FRAC_MAX_PRATE),
 	COMPOSITE_NODIV(SCLK_I2S_8CH_OUT, "i2s_8ch_clkout", mux_i2s_8ch_clkout_p, 0,
 			RK3368_CLKSEL_CON(27), 15, 1, MFLAGS,
 			RK3368_CLKGATE_CON(6), 0, GFLAGS),
@@ -388,7 +391,7 @@ enum rk3368_plls {
 	COMPOSITE_FRACMUX(0, "spdif_8ch_frac", "spdif_8ch_src", CLK_SET_RATE_PARENT,
 			  RK3368_CLKSEL_CON(32), 0,
 			  RK3368_CLKGATE_CON(6), 5, GFLAGS,
-			  &rk3368_spdif_8ch_fracmux),
+			  &rk3368_spdif_8ch_fracmux, RK3368_SPDIF_FRAC_MAX_PRATE),
 	GATE(SCLK_SPDIF_8CH, "sclk_spdif_8ch", "spdif_8ch_pre", CLK_SET_RATE_PARENT,
 	     RK3368_CLKGATE_CON(6), 6, GFLAGS),
 	COMPOSITE(0, "i2s_2ch_src", mux_pll_src_cpll_gpll_p, 0,
@@ -397,7 +400,7 @@ enum rk3368_plls {
 	COMPOSITE_FRACMUX(0, "i2s_2ch_frac", "i2s_2ch_src", CLK_SET_RATE_PARENT,
 			  RK3368_CLKSEL_CON(54), 0,
 			  RK3368_CLKGATE_CON(5), 14, GFLAGS,
-			  &rk3368_i2s_2ch_fracmux),
+			  &rk3368_i2s_2ch_fracmux, RK3368_I2S_FRAC_MAX_PRATE),
 	GATE(SCLK_I2S_2CH, "sclk_i2s_2ch", "i2s_2ch_pre", CLK_SET_RATE_PARENT,
 	     RK3368_CLKGATE_CON(5), 15, GFLAGS),
 
@@ -598,7 +601,7 @@ enum rk3368_plls {
 	COMPOSITE_FRACMUX(0, "uart0_frac", "uart0_src", CLK_SET_RATE_PARENT,
 			  RK3368_CLKSEL_CON(34), 0,
 			  RK3368_CLKGATE_CON(2), 1, GFLAGS,
-			  &rk3368_uart0_fracmux),
+			  &rk3368_uart0_fracmux, RK3368_UART_FRAC_MAX_PRATE),
 
 	COMPOSITE_NOMUX(0, "uart1_src", "uart_src", 0,
 			RK3368_CLKSEL_CON(35), 0, 7, DFLAGS,
@@ -606,7 +609,7 @@ enum rk3368_plls {
 	COMPOSITE_FRACMUX(0, "uart1_frac", "uart1_src", CLK_SET_RATE_PARENT,
 			  RK3368_CLKSEL_CON(36), 0,
 			  RK3368_CLKGATE_CON(2), 3, GFLAGS,
-			  &rk3368_uart1_fracmux),
+			  &rk3368_uart1_fracmux, RK3368_UART_FRAC_MAX_PRATE),
 
 	COMPOSITE_NOMUX(0, "uart3_src", "uart_src", 0,
 			RK3368_CLKSEL_CON(39), 0, 7, DFLAGS,
@@ -614,7 +617,7 @@ enum rk3368_plls {
 	COMPOSITE_FRACMUX(0, "uart3_frac", "uart3_src", CLK_SET_RATE_PARENT,
 			  RK3368_CLKSEL_CON(40), 0,
 			  RK3368_CLKGATE_CON(2), 7, GFLAGS,
-			  &rk3368_uart3_fracmux),
+			  &rk3368_uart3_fracmux, RK3368_UART_FRAC_MAX_PRATE),
 
 	COMPOSITE_NOMUX(0, "uart4_src", "uart_src", 0,
 			RK3368_CLKSEL_CON(41), 0, 7, DFLAGS,
@@ -622,7 +625,7 @@ enum rk3368_plls {
 	COMPOSITE_FRACMUX(0, "uart4_frac", "uart4_src", CLK_SET_RATE_PARENT,
 			  RK3368_CLKSEL_CON(42), 0,
 			  RK3368_CLKGATE_CON(2), 9, GFLAGS,
-			  &rk3368_uart4_fracmux),
+			  &rk3368_uart4_fracmux, RK3368_UART_FRAC_MAX_PRATE),
 
 	COMPOSITE(0, "mac_pll_src", mux_pll_src_npll_cpll_gpll_p, 0,
 			RK3368_CLKSEL_CON(43), 6, 2, MFLAGS, 0, 5, DFLAGS,
diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
index 5a628148f3f0..1d81382bd3e0 100644
--- a/drivers/clk/rockchip/clk-rk3399.c
+++ b/drivers/clk/rockchip/clk-rk3399.c
@@ -21,6 +21,12 @@
 #include <dt-bindings/clock/rk3399-cru.h>
 #include "clk.h"
 
+#define RK3399_I2S_FRAC_MAX_PRATE       600000000
+#define RK3399_UART_FRAC_MAX_PRATE	600000000
+#define RK3399_SPDIF_FRAC_MAX_PRATE	600000000
+#define RK3399_VOP_FRAC_MAX_PRATE	600000000
+#define RK3399_WIFI_FRAC_MAX_PRATE	600000000
+
 enum rk3399_plls {
 	lpll, bpll, dpll, cpll, gpll, npll, vpll,
 };
@@ -590,7 +596,7 @@ enum rk3399_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_spdif_frac", "clk_spdif_div", 0,
 			RK3399_CLKSEL_CON(99), 0,
 			RK3399_CLKGATE_CON(8), 14, GFLAGS,
-			&rk3399_spdif_fracmux),
+			&rk3399_spdif_fracmux, RK3399_SPDIF_FRAC_MAX_PRATE),
 	GATE(SCLK_SPDIF_8CH, "clk_spdif", "clk_spdif_mux", CLK_SET_RATE_PARENT,
 			RK3399_CLKGATE_CON(8), 15, GFLAGS),
 
@@ -604,7 +610,7 @@ enum rk3399_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_i2s0_frac", "clk_i2s0_div", 0,
 			RK3399_CLKSEL_CON(96), 0,
 			RK3399_CLKGATE_CON(8), 4, GFLAGS,
-			&rk3399_i2s0_fracmux),
+			&rk3399_i2s0_fracmux, RK3399_I2S_FRAC_MAX_PRATE),
 	GATE(SCLK_I2S0_8CH, "clk_i2s0", "clk_i2s0_mux", CLK_SET_RATE_PARENT,
 			RK3399_CLKGATE_CON(8), 5, GFLAGS),
 
@@ -614,7 +620,7 @@ enum rk3399_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_i2s1_frac", "clk_i2s1_div", 0,
 			RK3399_CLKSEL_CON(97), 0,
 			RK3399_CLKGATE_CON(8), 7, GFLAGS,
-			&rk3399_i2s1_fracmux),
+			&rk3399_i2s1_fracmux, RK3399_I2S_FRAC_MAX_PRATE),
 	GATE(SCLK_I2S1_8CH, "clk_i2s1", "clk_i2s1_mux", CLK_SET_RATE_PARENT,
 			RK3399_CLKGATE_CON(8), 8, GFLAGS),
 
@@ -624,7 +630,7 @@ enum rk3399_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_i2s2_frac", "clk_i2s2_div", 0,
 			RK3399_CLKSEL_CON(98), 0,
 			RK3399_CLKGATE_CON(8), 10, GFLAGS,
-			&rk3399_i2s2_fracmux),
+			&rk3399_i2s2_fracmux, RK3399_I2S_FRAC_MAX_PRATE),
 	GATE(SCLK_I2S2_8CH, "clk_i2s2", "clk_i2s2_mux", CLK_SET_RATE_PARENT,
 			RK3399_CLKGATE_CON(8), 11, GFLAGS),
 
@@ -643,7 +649,7 @@ enum rk3399_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_uart0_frac", "clk_uart0_div", 0,
 			RK3399_CLKSEL_CON(100), 0,
 			RK3399_CLKGATE_CON(9), 1, GFLAGS,
-			&rk3399_uart0_fracmux),
+			&rk3399_uart0_fracmux, RK3399_UART_FRAC_MAX_PRATE),
 
 	MUX(0, "clk_uart_src", mux_pll_src_cpll_gpll_p, 0,
 			RK3399_CLKSEL_CON(33), 15, 1, MFLAGS),
@@ -653,7 +659,7 @@ enum rk3399_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_uart1_frac", "clk_uart1_div", 0,
 			RK3399_CLKSEL_CON(101), 0,
 			RK3399_CLKGATE_CON(9), 3, GFLAGS,
-			&rk3399_uart1_fracmux),
+			&rk3399_uart1_fracmux, RK3399_UART_FRAC_MAX_PRATE),
 
 	COMPOSITE_NOMUX(0, "clk_uart2_div", "clk_uart_src", 0,
 			RK3399_CLKSEL_CON(35), 0, 7, DFLAGS,
@@ -661,7 +667,7 @@ enum rk3399_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_uart2_frac", "clk_uart2_div", 0,
 			RK3399_CLKSEL_CON(102), 0,
 			RK3399_CLKGATE_CON(9), 5, GFLAGS,
-			&rk3399_uart2_fracmux),
+			&rk3399_uart2_fracmux, RK3399_UART_FRAC_MAX_PRATE),
 
 	COMPOSITE_NOMUX(0, "clk_uart3_div", "clk_uart_src", 0,
 			RK3399_CLKSEL_CON(36), 0, 7, DFLAGS,
@@ -669,7 +675,7 @@ enum rk3399_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_uart3_frac", "clk_uart3_div", 0,
 			RK3399_CLKSEL_CON(103), 0,
 			RK3399_CLKGATE_CON(9), 7, GFLAGS,
-			&rk3399_uart3_fracmux),
+			&rk3399_uart3_fracmux, RK3399_UART_FRAC_MAX_PRATE),
 
 	COMPOSITE(PCLK_DDR, "pclk_ddr", mux_pll_src_cpll_gpll_p, CLK_IGNORE_UNUSED,
 			RK3399_CLKSEL_CON(6), 15, 1, MFLAGS, 8, 5, DFLAGS,
@@ -1172,7 +1178,7 @@ enum rk3399_pmu_plls {
 
 	COMPOSITE_FRACMUX_NOGATE(DCLK_VOP0_FRAC, "dclk_vop0_frac", "dclk_vop0_div", 0,
 			RK3399_CLKSEL_CON(106), 0,
-			&rk3399_dclk_vop0_fracmux),
+			&rk3399_dclk_vop0_fracmux, RK3399_VOP_FRAC_MAX_PRATE),
 
 	COMPOSITE(SCLK_VOP0_PWM, "clk_vop0_pwm", mux_pll_src_vpll_cpll_gpll_24m_p, 0,
 			RK3399_CLKSEL_CON(51), 6, 2, MFLAGS, 0, 5, DFLAGS,
@@ -1202,7 +1208,7 @@ enum rk3399_pmu_plls {
 
 	COMPOSITE_FRACMUX_NOGATE(DCLK_VOP1_FRAC, "dclk_vop1_frac", "dclk_vop1_div", 0,
 			RK3399_CLKSEL_CON(107), 0,
-			&rk3399_dclk_vop1_fracmux),
+			&rk3399_dclk_vop1_fracmux, RK3399_VOP_FRAC_MAX_PRATE),
 
 	COMPOSITE(SCLK_VOP1_PWM, "clk_vop1_pwm", mux_pll_src_vpll_cpll_gpll_24m_p, CLK_IGNORE_UNUSED,
 			RK3399_CLKSEL_CON(52), 6, 2, MFLAGS, 0, 5, DFLAGS,
@@ -1316,7 +1322,7 @@ enum rk3399_pmu_plls {
 			RK3399_CLKSEL_CON(58), 7, 1, MFLAGS),
 	COMPOSITE_FRAC(0, "clk_test_frac", "clk_test_pre", 0,
 			RK3399_CLKSEL_CON(105), 0,
-			RK3399_CLKGATE_CON(13), 9, GFLAGS),
+			RK3399_CLKGATE_CON(13), 9, GFLAGS, 0),
 
 	DIV(0, "clk_test_24m", "xin24m", 0,
 			RK3399_CLKSEL_CON(57), 6, 10, DFLAGS),
@@ -1421,7 +1427,7 @@ enum rk3399_pmu_plls {
 
 	COMPOSITE_FRACMUX_NOGATE(0, "clk_wifi_frac", "clk_wifi_div", 0,
 			RK3399_PMU_CLKSEL_CON(7), 0,
-			&rk3399_pmuclk_wifi_fracmux),
+			&rk3399_pmuclk_wifi_fracmux, RK3399_WIFI_FRAC_MAX_PRATE),
 
 	MUX(0, "clk_timer_src_pmu", mux_pll_p, CLK_IGNORE_UNUSED,
 			RK3399_PMU_CLKSEL_CON(1), 15, 1, MFLAGS),
@@ -1450,7 +1456,7 @@ enum rk3399_pmu_plls {
 	COMPOSITE_FRACMUX(0, "clk_uart4_frac", "clk_uart4_div", 0,
 			RK3399_PMU_CLKSEL_CON(6), 0,
 			RK3399_PMU_CLKGATE_CON(0), 6, GFLAGS,
-			&rk3399_uart4_pmu_fracmux),
+			&rk3399_uart4_pmu_fracmux, RK3399_UART_FRAC_MAX_PRATE),
 
 	DIV(PCLK_SRC_PMU, "pclk_pmu_src", "ppll", CLK_IGNORE_UNUSED,
 			RK3399_PMU_CLKSEL_CON(0), 0, 5, DFLAGS),
diff --git a/drivers/clk/rockchip/clk-rv1108.c b/drivers/clk/rockchip/clk-rv1108.c
index 089cb17925e5..17f78c9afb50 100644
--- a/drivers/clk/rockchip/clk-rv1108.c
+++ b/drivers/clk/rockchip/clk-rv1108.c
@@ -22,6 +22,8 @@
 #include "clk.h"
 
 #define RV1108_GRF_SOC_STATUS0	0x480
+#define RV1108_I2S_FRAC_MAX_RATE	600000000
+#define RV1108_UART_FRAC_MAX_RATE	600000000
 
 enum rv1108_plls {
 	apll, dpll, gpll,
@@ -512,7 +514,7 @@ enum rv1108_plls {
 	COMPOSITE_FRACMUX(0, "i2s0_frac", "i2s0_src", CLK_SET_RATE_PARENT,
 			RV1108_CLKSEL_CON(8), 0,
 			RV1108_CLKGATE_CON(2), 1, GFLAGS,
-			&rv1108_i2s0_fracmux),
+			&rv1108_i2s0_fracmux, RV1108_I2S_FRAC_MAX_RATE),
 	GATE(SCLK_I2S0, "sclk_i2s0", "i2s0_pre", CLK_SET_RATE_PARENT,
 			RV1108_CLKGATE_CON(2), 2, GFLAGS),
 	COMPOSITE_NODIV(0, "i2s_out", mux_i2s_out_p, 0,
@@ -525,7 +527,7 @@ enum rv1108_plls {
 	COMPOSITE_FRACMUX(0, "i2s1_frac", "i2s1_src", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(9), 0,
 			RK2928_CLKGATE_CON(2), 5, GFLAGS,
-			&rv1108_i2s1_fracmux),
+			&rv1108_i2s1_fracmux, RV1108_I2S_FRAC_MAX_RATE),
 	GATE(SCLK_I2S1, "sclk_i2s1", "i2s1_pre", CLK_SET_RATE_PARENT,
 			RV1108_CLKGATE_CON(2), 6, GFLAGS),
 
@@ -535,7 +537,7 @@ enum rv1108_plls {
 	COMPOSITE_FRACMUX(0, "i2s2_frac", "i2s2_src", CLK_SET_RATE_PARENT,
 			RV1108_CLKSEL_CON(10), 0,
 			RV1108_CLKGATE_CON(2), 9, GFLAGS,
-			&rv1108_i2s2_fracmux),
+			&rv1108_i2s2_fracmux, RV1108_I2S_FRAC_MAX_RATE),
 	GATE(SCLK_I2S2, "sclk_i2s2", "i2s2_pre", CLK_SET_RATE_PARENT,
 			RV1108_CLKGATE_CON(2), 10, GFLAGS),
 
@@ -601,15 +603,15 @@ enum rv1108_plls {
 	COMPOSITE_FRACMUX(0, "uart0_frac", "uart0_src", CLK_SET_RATE_PARENT,
 			RV1108_CLKSEL_CON(16), 0,
 			RV1108_CLKGATE_CON(3), 2, GFLAGS,
-			&rv1108_uart0_fracmux),
+			&rv1108_uart0_fracmux, RV1108_UART_FRAC_MAX_RATE),
 	COMPOSITE_FRACMUX(0, "uart1_frac", "uart1_src", CLK_SET_RATE_PARENT,
 			RV1108_CLKSEL_CON(17), 0,
 			RV1108_CLKGATE_CON(3), 4, GFLAGS,
-			&rv1108_uart1_fracmux),
+			&rv1108_uart1_fracmux, RV1108_UART_FRAC_MAX_RATE),
 	COMPOSITE_FRACMUX(0, "uart2_frac", "uart2_src", CLK_SET_RATE_PARENT,
 			RV1108_CLKSEL_CON(18), 0,
 			RV1108_CLKGATE_CON(3), 6, GFLAGS,
-			&rv1108_uart2_fracmux),
+			&rv1108_uart2_fracmux, RV1108_UART_FRAC_MAX_RATE),
 	GATE(PCLK_UART0, "pclk_uart0", "pclk_bus_pre", 0,
 			RV1108_CLKGATE_CON(13), 10, GFLAGS),
 	GATE(PCLK_UART1, "pclk_uart1", "pclk_bus_pre", 0,
diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index c3ad92965823..e04bf300ea0a 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -189,12 +189,26 @@ static void rockchip_fractional_approximation(struct clk_hw *hw,
 	unsigned long p_rate, p_parent_rate;
 	struct clk_hw *p_parent;
 	unsigned long scale;
+	u32 div;
 
 	p_rate = clk_hw_get_rate(clk_hw_get_parent(hw));
-	if ((rate * 20 > p_rate) && (p_rate % rate != 0)) {
+	if (((rate * 20 > p_rate) && (p_rate % rate != 0)) ||
+	    (fd->max_prate && fd->max_prate < p_rate)) {
 		p_parent = clk_hw_get_parent(clk_hw_get_parent(hw));
 		p_parent_rate = clk_hw_get_rate(p_parent);
 		*parent_rate = p_parent_rate;
+		if (fd->max_prate && p_parent_rate > fd->max_prate) {
+			div = DIV_ROUND_UP(p_parent_rate, fd->max_prate);
+			*parent_rate = p_parent_rate / div;
+		}
+
+		if (*parent_rate < rate * 20) {
+			pr_err("%s parent_rate(%ld) is low than rate(%ld)*20, fractional div is not allowed\n",
+			       clk_hw_get_name(hw), *parent_rate, rate);
+			*m = 0;
+			*n = 1;
+			return;
+		}
 	}
 
 	/*
@@ -217,7 +231,7 @@ static struct clk *rockchip_clk_register_frac_branch(
 		void __iomem *base, int muxdiv_offset, u8 div_flags,
 		int gate_offset, u8 gate_shift, u8 gate_flags,
 		unsigned long flags, struct rockchip_clk_branch *child,
-		spinlock_t *lock)
+		unsigned long max_prate, spinlock_t *lock)
 {
 	struct rockchip_clk_frac *frac;
 	struct clk *clk;
@@ -258,6 +272,7 @@ static struct clk *rockchip_clk_register_frac_branch(
 	div->nmask = GENMASK(div->nwidth - 1, 0) << div->nshift;
 	div->lock = lock;
 	div->approximation = rockchip_fractional_approximation;
+	div->max_prate = max_prate;
 	div_ops = &clk_fractional_divider_ops;
 
 	clk = clk_register_composite(NULL, name, parent_names, num_parents,
@@ -490,7 +505,7 @@ void __init rockchip_clk_register_branches(
 				list->div_flags,
 				list->gate_offset, list->gate_shift,
 				list->gate_flags, flags, list->child,
-				&ctx->lock);
+				list->max_prate, &ctx->lock);
 			break;
 		case branch_half_divider:
 			clk = rockchip_clk_register_halfdiv(list->name,
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index 6b53fff4cc96..3c827ec0965c 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -415,6 +415,7 @@ struct rockchip_clk_branch {
 	u8				gate_shift;
 	u8				gate_flags;
 	struct rockchip_clk_branch	*child;
+	unsigned long			max_prate;
 };
 
 #define COMPOSITE(_id, cname, pnames, f, mo, ms, mw, mf, ds, dw,\
@@ -532,7 +533,7 @@ struct rockchip_clk_branch {
 		.gate_offset	= -1,				\
 	}
 
-#define COMPOSITE_FRAC(_id, cname, pname, f, mo, df, go, gs, gf)\
+#define COMPOSITE_FRAC(_id, cname, pname, f, mo, df, go, gs, gf, prate)\
 	{							\
 		.id		= _id,				\
 		.branch_type	= branch_fraction_divider,	\
@@ -547,9 +548,10 @@ struct rockchip_clk_branch {
 		.gate_offset	= go,				\
 		.gate_shift	= gs,				\
 		.gate_flags	= gf,				\
+		.max_prate	= prate,			\
 	}
 
-#define COMPOSITE_FRACMUX(_id, cname, pname, f, mo, df, go, gs, gf, ch) \
+#define COMPOSITE_FRACMUX(_id, cname, pname, f, mo, df, go, gs, gf, ch, prate) \
 	{							\
 		.id		= _id,				\
 		.branch_type	= branch_fraction_divider,	\
@@ -565,9 +567,10 @@ struct rockchip_clk_branch {
 		.gate_shift	= gs,				\
 		.gate_flags	= gf,				\
 		.child		= ch,				\
+		.max_prate	= prate,			\
 	}
 
-#define COMPOSITE_FRACMUX_NOGATE(_id, cname, pname, f, mo, df, ch) \
+#define COMPOSITE_FRACMUX_NOGATE(_id, cname, pname, f, mo, df, ch, prate) \
 	{							\
 		.id		= _id,				\
 		.branch_type	= branch_fraction_divider,	\
@@ -581,6 +584,7 @@ struct rockchip_clk_branch {
 		.div_flags	= df,				\
 		.gate_offset	= -1,				\
 		.child		= ch,				\
+		.max_prate	= prate,			\
 	}
 
 #define COMPOSITE_DDRCLK(_id, cname, pnames, f, mo, ms, mw,	\
diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
index b7cf80a71293..b0a65fac1779 100644
--- a/include/linux/clk-provider.h
+++ b/include/linux/clk-provider.h
@@ -593,6 +593,7 @@ struct clk_hw *clk_hw_register_fixed_factor(struct device *dev,
  * @mwidth:	width of the numerator bit field
  * @nshift:	shift to the denominator bit field
  * @nwidth:	width of the denominator bit field
+ * @max_parent:	the maximum frequency of fractional divider parent clock
  * @lock:	register lock
  *
  * Clock with adjustable fractional divider affecting its output frequency.
@@ -613,6 +614,7 @@ struct clk_fractional_divider {
 	u8		nwidth;
 	u32		nmask;
 	u8		flags;
+	unsigned long	max_prate;
 	void		(*approximation)(struct clk_hw *hw,
 				unsigned long rate, unsigned long *parent_rate,
 				unsigned long *m, unsigned long *n);
-- 
1.9.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
