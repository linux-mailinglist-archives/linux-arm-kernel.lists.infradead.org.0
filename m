Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 409F31771E5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 10:04:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/Cgkml5hO8aJcQXfEeQUtv/A2IqPSWCXE9Ls3W0Zkcw=; b=l3KFT3ZTCTjzf2oeaYChpY6Jwg
	Pc8tUJ8TsghCMdFm6UP/qo8Gju1x2gi/z1oPQ5t/fhbeVg9HEKG1h7BF6v7FKgPnFx+2ALrvFI7+4
	W/V9uwGoKTPRcOw6g6XdXM20Dd1ch98V9ZxC9+ZIyWwotdvWMjv0kaZdXSovkmzvmB2L4YcElMLnP
	XmVbfo/Afp/YzsEA+zawqTXoxY/xYz/wHbCjf0uradvfeqe++B/noTOaZvasG/wZqkJKOqj0MirLI
	mgV7mHIhUp2M24js/riakDrhqa48pdjWKMLD8aWRmXNGilBQGrx+7E9N4jnU8NpslgNSnz3diUNFo
	7nGSm3tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j93Td-00066o-1T; Tue, 03 Mar 2020 09:04:33 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j93So-0005ay-0O
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 09:03:44 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id CA6871A1469;
 Tue,  3 Mar 2020 10:03:40 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id BD7231A1465;
 Tue,  3 Mar 2020 10:03:40 +0100 (CET)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id C3DD920414;
 Tue,  3 Mar 2020 10:03:39 +0100 (CET)
From: Abel Vesa <abel.vesa@nxp.com>
To: Rob Herring <robh@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Mike Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, Anson Huang <anson.huang@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>
Subject: [RFC 04/11] clk: imx: Add gate shared for i.MX8MP audiomix
Date: Tue,  3 Mar 2020 11:03:19 +0200
Message-Id: <1583226206-19758-5-git-send-email-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583226206-19758-1-git-send-email-abel.vesa@nxp.com>
References: <1583226206-19758-1-git-send-email-abel.vesa@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_010342_342418_DF4D89D8 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The newer i.MX platform use some gates that have a shared control bit
between them.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 drivers/clk/imx/Makefile          |   2 +-
 drivers/clk/imx/clk-gate-shared.c | 111 ++++++++++++++++++++++++++++++++++++++
 drivers/clk/imx/clk.h             |   4 ++
 3 files changed, 116 insertions(+), 1 deletion(-)
 create mode 100644 drivers/clk/imx/clk-gate-shared.c

diff --git a/drivers/clk/imx/Makefile b/drivers/clk/imx/Makefile
index 928f874c..799a8ef 100644
--- a/drivers/clk/imx/Makefile
+++ b/drivers/clk/imx/Makefile
@@ -27,7 +27,7 @@ obj-$(CONFIG_MXC_CLK_SCU) += \
 
 obj-$(CONFIG_CLK_IMX8MM) += clk-imx8mm.o
 obj-$(CONFIG_CLK_IMX8MN) += clk-imx8mn.o
-obj-$(CONFIG_CLK_IMX8MP) += clk-imx8mp.o
+obj-$(CONFIG_CLK_IMX8MP) += clk-imx8mp.o clk-gate-shared.o
 obj-$(CONFIG_CLK_IMX8MQ) += clk-imx8mq.o
 obj-$(CONFIG_CLK_IMX8QXP) += clk-imx8qxp.o clk-imx8qxp-lpcg.o
 
diff --git a/drivers/clk/imx/clk-gate-shared.c b/drivers/clk/imx/clk-gate-shared.c
new file mode 100644
index 00000000..961a0e3
--- /dev/null
+++ b/drivers/clk/imx/clk-gate-shared.c
@@ -0,0 +1,111 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2019 NXP.
+ */
+
+#include <linux/clk-provider.h>
+#include <linux/err.h>
+#include <linux/io.h>
+#include <linux/slab.h>
+#include "clk.h"
+
+/**
+ * struct clk_gate_shared - i.MX specific gate clock having the gate flag
+ * shared with other gate clocks
+ */
+struct clk_gate_shared {
+	struct clk_gate	gate;
+	spinlock_t	*lock;
+	unsigned int	*share_count;
+};
+
+static int clk_gate_shared_enable(struct clk_hw *hw)
+{
+	struct clk_gate *gate = to_clk_gate(hw);
+	struct clk_gate_shared *shgate = container_of(gate,
+					struct clk_gate_shared, gate);
+	unsigned long flags = 0;
+	int ret = 0;
+
+	spin_lock_irqsave(shgate->lock, flags);
+
+	if (shgate->share_count && (*shgate->share_count)++ > 0)
+		goto out;
+
+	ret = clk_gate_ops.enable(hw);
+out:
+	spin_unlock_irqrestore(shgate->lock, flags);
+
+	return ret;
+}
+
+static void clk_gate_shared_disable(struct clk_hw *hw)
+{
+	struct clk_gate *gate = to_clk_gate(hw);
+	struct clk_gate_shared *shgate = container_of(gate,
+					struct clk_gate_shared, gate);
+	unsigned long flags = 0;
+
+	spin_lock_irqsave(shgate->lock, flags);
+
+	if (shgate->share_count) {
+		if (WARN_ON(*shgate->share_count == 0))
+			goto out;
+		else if (--(*shgate->share_count) > 0)
+			goto out;
+	}
+
+	clk_gate_ops.disable(hw);
+out:
+	spin_unlock_irqrestore(shgate->lock, flags);
+}
+
+static int clk_gate_shared_is_enabled(struct clk_hw *hw)
+{
+	return clk_gate_ops.is_enabled(hw);
+}
+
+static const struct clk_ops clk_gate_shared_ops = {
+	.enable = clk_gate_shared_enable,
+	.disable = clk_gate_shared_disable,
+	.is_enabled = clk_gate_shared_is_enabled,
+};
+
+struct clk_hw *imx_dev_clk_hw_gate_shared(struct device *dev, const char *name,
+				const char *parent, void __iomem *reg,
+				u8 shift, unsigned int *share_count)
+{
+	struct clk_gate_shared *shgate;
+	struct clk_gate *gate;
+	struct clk_hw *hw;
+	struct clk_init_data init;
+	int ret;
+
+	shgate = kzalloc(sizeof(*shgate), GFP_KERNEL);
+	if (!shgate)
+		return ERR_PTR(-ENOMEM);
+	gate = &shgate->gate;
+
+	init.name = name;
+	init.ops = &clk_gate_shared_ops;
+	init.flags = CLK_OPS_PARENT_ENABLE;
+	init.parent_names = parent ? &parent : NULL;
+	init.num_parents = parent ? 1 : 0;
+
+	gate->reg = reg;
+	gate->bit_idx = shift;
+	gate->lock = NULL;
+	gate->hw.init = &init;
+	shgate->lock = &imx_ccm_lock;
+	shgate->share_count = share_count;
+
+	hw = &gate->hw;
+
+	ret = clk_hw_register(NULL, hw);
+	if (ret) {
+		kfree(shgate);
+		return ERR_PTR(ret);
+	}
+
+	return hw;
+}
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index f074dd8..51d6c26 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -151,6 +151,10 @@ struct clk_hw *imx_clk_hw_sscg_pll(const char *name,
 				void __iomem *base,
 				unsigned long flags);
 
+struct clk_hw *imx_dev_clk_hw_gate_shared(struct device *dev, const char *name,
+				const char *parent, void __iomem *reg,
+				u8 shift, unsigned int *share_count);
+
 enum imx_pllv3_type {
 	IMX_PLLV3_GENERIC,
 	IMX_PLLV3_SYS,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
