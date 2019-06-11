Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E9C3C8CB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 12:24:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N6SatI6ZCWu7Z2txhO9qIHx9u8c112CJ+MqFuHwHHFM=; b=qb9QEEVRQUHEc0
	eTHOog8eyveuRvrJ2KFfZ5HU06NI/P6frA6Vz6Rp2GffIJIwnyHzABIYVOqNG4LKgQdhguad2gb8W
	VXNY8VxkXbjGfwyUP0fT32qPDq3bdWOZ6bpSXiwmfYbRdKyp3qmw2wKL4FXBSbdBjrpATX6CVIgaW
	R/0Wm/WXy/4komxInJfKPuA5QqK53VZHJcJlt0Emq09Ly4YZCq4kqkptnG5XtcLeMZvEpZrRov4VL
	0rruqM9HTiOSUVyjKxXbu4PXUTkZL2ldNG4pQ5hknOdaW942ZTqnVXGnw83aEwZzVONQlgPt1RS0h
	F1JaoGjchE6BeTARfAdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadwr-0001lk-RL; Tue, 11 Jun 2019 10:24:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadqI-0001bU-6V
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 10:17:33 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 70B8B2175B;
 Tue, 11 Jun 2019 10:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560248245;
 bh=9M2CWTBDajph3liNCMQ1zO3nEAzcbL60QXlognK2zZQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ti8co0mWrNPMHt8orQW+xMMZwvzaI3zLdq6i177oKhynbAGXpr1Epw9pcFKnFWaay
 OJKJBu0E/Hj2UarjT77Af+0uIjVRN4YrXm0zTPIAk9Nm4paz1GTHfa9io6FALNUO1R
 ZOee6Miy0MVKuZqVpZJt3Fbq0yg/dN0m4KirxtFQ=
Received: by wens.tw (Postfix, from userid 1000)
 id B60D460CA9; Tue, 11 Jun 2019 18:17:18 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
Subject: [PATCH v2 25/25] clk: sunxi-ng: sun8i-r: Use local parent references
 for SUNXI_CCU_GATE
Date: Tue, 11 Jun 2019 18:16:58 +0800
Message-Id: <20190611101658.23855-26-wens@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190611101658.23855-1-wens@kernel.org>
References: <20190611101658.23855-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_031726_338371_6D024CB1 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Chen-Yu Tsai <wens@csie.org>, Chen-Yu Tsai <wens@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

With the new clk parenting code and SUNXI_CCU_GATE macros, we can
reference parents locally via pointers to struct clk_hw or DT
clock-names.

Convert existing SUNXI_CCU_GATE definitions to SUNXI_CCU_GATE_HWS
as the parent clock is internal to this clock unit.

To avoid duplication of clock definitions, we fix up the parent
reference for A83T in the A83T init function.

Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 drivers/clk/sunxi-ng/ccu-sun8i-r.c | 37 +++++++++++++++++++-----------
 1 file changed, 23 insertions(+), 14 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-r.c b/drivers/clk/sunxi-ng/ccu-sun8i-r.c
index 4a111c28b8c3..a7a21feaf143 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-r.c
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-r.c
@@ -73,20 +73,26 @@ static struct ccu_div apb0_clk = {
 
 static SUNXI_CCU_M(a83t_apb0_clk, "apb0", "ahb0", 0x0c, 0, 2, 0);
 
-static SUNXI_CCU_GATE(apb0_pio_clk,	"apb0-pio",	"apb0",
-		      0x28, BIT(0), 0);
-static SUNXI_CCU_GATE(apb0_ir_clk,	"apb0-ir",	"apb0",
-		      0x28, BIT(1), 0);
-static SUNXI_CCU_GATE(apb0_timer_clk,	"apb0-timer",	"apb0",
-		      0x28, BIT(2), 0);
-static SUNXI_CCU_GATE(apb0_rsb_clk,	"apb0-rsb",	"apb0",
-		      0x28, BIT(3), 0);
-static SUNXI_CCU_GATE(apb0_uart_clk,	"apb0-uart",	"apb0",
-		      0x28, BIT(4), 0);
-static SUNXI_CCU_GATE(apb0_i2c_clk,	"apb0-i2c",	"apb0",
-		      0x28, BIT(6), 0);
-static SUNXI_CCU_GATE(apb0_twd_clk,	"apb0-twd",	"apb0",
-		      0x28, BIT(7), 0);
+/*
+ * Define the parent as an array that can be reused to save space
+ * instead of having compound literals for each gate. Also have it
+ * non-const so we can change it on the A83T.
+ */
+static const struct clk_hw *apb0_gate_parent[] = { &apb0_clk.common.hw };
+static SUNXI_CCU_GATE_HWS(apb0_pio_clk,		"apb0-pio",
+			  apb0_gate_parent, 0x28, BIT(0), 0);
+static SUNXI_CCU_GATE_HWS(apb0_ir_clk,		"apb0-ir",
+			  apb0_gate_parent, 0x28, BIT(1), 0);
+static SUNXI_CCU_GATE_HWS(apb0_timer_clk,	"apb0-timer",
+			  apb0_gate_parent, 0x28, BIT(2), 0);
+static SUNXI_CCU_GATE_HWS(apb0_rsb_clk,		"apb0-rsb",
+			  apb0_gate_parent, 0x28, BIT(3), 0);
+static SUNXI_CCU_GATE_HWS(apb0_uart_clk,	"apb0-uart",
+			  apb0_gate_parent, 0x28, BIT(4), 0);
+static SUNXI_CCU_GATE_HWS(apb0_i2c_clk,		"apb0-i2c",
+			  apb0_gate_parent, 0x28, BIT(6), 0);
+static SUNXI_CCU_GATE_HWS(apb0_twd_clk,		"apb0-twd",
+			  apb0_gate_parent, 0x28, BIT(7), 0);
 
 static const char * const r_mod0_default_parents[] = { "osc32k", "osc24M" };
 static SUNXI_CCU_MP_WITH_MUX_GATE(ir_clk, "ir",
@@ -284,6 +290,9 @@ static void __init sunxi_r_ccu_init(struct device_node *node,
 
 static void __init sun8i_a83t_r_ccu_setup(struct device_node *node)
 {
+	/* Fix apb0 bus gate parents here */
+	apb0_gate_parent[0] = &a83t_apb0_clk.common.hw;
+
 	sunxi_r_ccu_init(node, &sun8i_a83t_r_ccu_desc);
 }
 CLK_OF_DECLARE(sun8i_a83t_r_ccu, "allwinner,sun8i-a83t-r-ccu",
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
