Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E22E1A9581
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 10:04:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KPWZVQiCW+41ECoSVrqY5NXGaWST+XiUpPAIe8NCOd0=; b=CnnGTy72OWhuquCOUleG/OJGSv
	vhm7Z45NGX0efqiGnq/+SgO5/y1YPbPiTfU10fctcCeeoiECpyukSyhYwNe/g0kXPISSEXo6btiqu
	DqrbbeY7Sf2t5QkJ939HugWjU5JTrBFZAf5OuiO5GGDIboB66nkGc7Z8ngY8KZUzeOGcJGYjbn5nq
	i7rqgjwRPxwk7jFEZcCEzmCHv3xx9QOFGdIhfBDJWLnyLvDExQi5AiJd3VQwU7rPwRLh0PanH/UZn
	8O8RshSNkXZYI7PF/U0kSckGeqIsL9gsn0ui97cPQ5H3g3j68thiEzscH17fY1ARRxDzuJ7aXkv59
	pD9nH/dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOd26-00084h-NR; Wed, 15 Apr 2020 08:04:30 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOd0n-0006M9-SX
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 08:03:11 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B19412007BC;
 Wed, 15 Apr 2020 10:03:08 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id A2A952007B8;
 Wed, 15 Apr 2020 10:03:08 +0200 (CEST)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 11CFB202B0;
 Wed, 15 Apr 2020 10:03:08 +0200 (CEST)
From: Abel Vesa <abel.vesa@nxp.com>
To: Lee Jones <lee.jones@linaro.org>, Shawn Guo <shawnguo@kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Stephen Boyd <sboyd@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Anson Huang <anson.huang@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Jacky Bai <ping.bai@nxp.com>
Subject: [PATCH v3 05/13] clk: imx: gate2: Allow single bit gating clock
Date: Wed, 15 Apr 2020 11:02:45 +0300
Message-Id: <1586937773-5836-6-git-send-email-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586937773-5836-1-git-send-email-abel.vesa@nxp.com>
References: <1586937773-5836-1-git-send-email-abel.vesa@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_010310_190901_6AB4D915 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Audiomix on i.MX8MP registers two gates that share the same enable count
but use the same bit to control the gate instead of two bits. By adding
the flag IMX_CLK_GATE2_SINGLE_BIT we allow the gate2 to use the generic
gate ops for enable, disable and is_enabled.
For the disable_unused, nothing happens if this flag is specified.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 drivers/clk/imx/clk-gate2.c | 31 +++++++++++++++++++++++--------
 drivers/clk/imx/clk.h       | 13 +++++++++++++
 2 files changed, 36 insertions(+), 8 deletions(-)

diff --git a/drivers/clk/imx/clk-gate2.c b/drivers/clk/imx/clk-gate2.c
index ce0060e..b87ab3c 100644
--- a/drivers/clk/imx/clk-gate2.c
+++ b/drivers/clk/imx/clk-gate2.c
@@ -41,21 +41,26 @@ static int clk_gate2_enable(struct clk_hw *hw)
 	struct clk_gate2 *gate = to_clk_gate2(hw);
 	u32 reg;
 	unsigned long flags;
+	int ret = 0;
 
 	spin_lock_irqsave(gate->lock, flags);
 
 	if (gate->share_count && (*gate->share_count)++ > 0)
 		goto out;
 
-	reg = readl(gate->reg);
-	reg &= ~(3 << gate->bit_idx);
-	reg |= gate->cgr_val << gate->bit_idx;
-	writel(reg, gate->reg);
+	if (gate->flags & IMX_CLK_GATE2_SINGLE_BIT) {
+		ret = clk_gate_ops.enable(hw);
+	} else {
+		reg = readl(gate->reg);
+		reg &= ~(3 << gate->bit_idx);
+		reg |= gate->cgr_val << gate->bit_idx;
+		writel(reg, gate->reg);
+	}
 
 out:
 	spin_unlock_irqrestore(gate->lock, flags);
 
-	return 0;
+	return ret;
 }
 
 static void clk_gate2_disable(struct clk_hw *hw)
@@ -73,9 +78,13 @@ static void clk_gate2_disable(struct clk_hw *hw)
 			goto out;
 	}
 
-	reg = readl(gate->reg);
-	reg &= ~(3 << gate->bit_idx);
-	writel(reg, gate->reg);
+	if (gate->flags & IMX_CLK_GATE2_SINGLE_BIT) {
+		clk_gate_ops.disable(hw);
+	} else {
+		reg = readl(gate->reg);
+		reg &= ~(3 << gate->bit_idx);
+		writel(reg, gate->reg);
+	}
 
 out:
 	spin_unlock_irqrestore(gate->lock, flags);
@@ -95,6 +104,9 @@ static int clk_gate2_is_enabled(struct clk_hw *hw)
 {
 	struct clk_gate2 *gate = to_clk_gate2(hw);
 
+	if (gate->flags & IMX_CLK_GATE2_SINGLE_BIT)
+		return clk_gate_ops.is_enabled(hw);
+
 	return clk_gate2_reg_is_enabled(gate->reg, gate->bit_idx);
 }
 
@@ -104,6 +116,9 @@ static void clk_gate2_disable_unused(struct clk_hw *hw)
 	unsigned long flags;
 	u32 reg;
 
+	if (gate->flags & IMX_CLK_GATE2_SINGLE_BIT)
+		return;
+
 	spin_lock_irqsave(gate->lock, flags);
 
 	if (!gate->share_count || *gate->share_count == 0) {
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index f074dd8..01ff1db 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -5,6 +5,8 @@
 #include <linux/spinlock.h>
 #include <linux/clk-provider.h>
 
+#define IMX_CLK_GATE2_SINGLE_BIT	1
+
 extern spinlock_t imx_ccm_lock;
 
 void imx_check_clocks(struct clk *clks[], unsigned int count);
@@ -355,6 +357,17 @@ static inline struct clk_hw *imx_clk_hw_gate2_shared2(const char *name,
 				  &imx_ccm_lock, share_count);
 }
 
+static inline struct clk_hw *imx_dev_clk_hw_gate_shared(struct device *dev,
+				const char *name, const char *parent,
+				void __iomem *reg, u8 shift,
+				unsigned int *share_count)
+{
+	return clk_hw_register_gate2(NULL, name, parent, CLK_SET_RATE_PARENT |
+					CLK_OPS_PARENT_ENABLE, reg, shift, 0x3,
+					IMX_CLK_GATE2_SINGLE_BIT,
+					&imx_ccm_lock, share_count);
+}
+
 static inline struct clk *imx_clk_gate2_cgr(const char *name,
 		const char *parent, void __iomem *reg, u8 shift, u8 cgr_val)
 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
