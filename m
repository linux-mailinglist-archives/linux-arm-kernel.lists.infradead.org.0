Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6DF22DFC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 10:09:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lB9xXOxJybGNWvBLUKoV4kfRUfjKb5xXLAT4MDLXCRk=; b=M6MANNrI/f/8Ca
	7qavNBoxDcshHmxI42FgtWJucUZZqgrCSnwCOipEP8BpzUf+RXlOO2exCmGn9w/1yMooo8X19TleA
	WUHieW/maeCTyHg8M8JYK21eCcWt+a7HSwnYjqagGx+7kD9IEdepxXHQm2VNhbHQ58P5mauQu4m92
	N7eovZyDH6fEgpVlgD1DrEQLgQAbHX1dZqsHyfl6jWh1hkUDrNUjhrwTr7Ro1OBwC9H97PPasnArS
	8UoFEwgO7wtT7GCSw9nf0FNqyA/JHYALv005VRqoR038HbgmsO8OTthVez/BLRIfzO0NCDkWPstsW
	mz+5sDGJ7X3e02em9xxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSdM8-0005Yn-KY; Mon, 20 May 2019 08:09:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSdIj-0001NB-0i
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 08:05:56 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 849C121743;
 Mon, 20 May 2019 08:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558339539;
 bh=raAt8ipYjBhGFbDlGMuzDJpgi0ln4BsxFF01Er+hiOc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jdYWZljd+XAmUtm4/Z1mZgnln1MY3TLs3bGN2c3jBzfPq+orINhXfSAKftcTlfG42
 G2+RG50MhGqJnLEouQF/taYE5GkqfuaPqKJurtmjX5r8y3xw5u0RtkjwIXLmgBy8t9
 0EKyN9ENR6AglhM0KnypGVLs62aHiDQoRQizQPXU=
Received: by wens.tw (Postfix, from userid 1000)
 id 07DF46586A; Mon, 20 May 2019 16:05:32 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
Subject: [PATCH 25/25] clk: sunxi-ng: sun8i-r: Use local parent references for
 SUNXI_CCU_GATE
Date: Mon, 20 May 2019 16:04:21 +0800
Message-Id: <20190520080421.12575-26-wens@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520080421.12575-1-wens@kernel.org>
References: <20190520080421.12575-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_010541_647852_BA61956F 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Chen-Yu Tsai <wens@csie.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
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
