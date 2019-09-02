Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B22ACA526C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 11:01:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DclLrQEx56sjKD473U8NiPGnBtpmT8zavO0Z0DGe0eo=; b=TVRLol7gm5np6d
	yb+jteJuQzNc5e/qcCcQBxMIGrrQKe6WO3q5ZIvMqQJLc1gaOgSI7jHNWpUZK0iStX6nYy4cO2gob
	lX5GHTLFroRB6mLCF/GvqS59inEp4Q4lV2qY8Gja5kZAT76CVMlJ5SPOTMGkqBRW77isVyy8DcH5u
	8xlJduYJvPJHyDk7kQGsEcv5Qrm5vvasp2Ce08xpQLg24xqu1mg8qgJ6cCORRUbWvsKUoAIzL1bTD
	AN4m7OqiHVdXS/rrwGvBTMX6IsYB5y6KYq5wNQkXsjjp4vs9msNRaF8Z3wG74OOv9bQa3t7pr91xW
	wIuViFdBeYGZoCVnxY5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4iDV-0006kz-8O; Mon, 02 Sep 2019 09:01:41 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4iCy-0006VX-Ch; Mon, 02 Sep 2019 09:01:09 +0000
X-UUID: 0b8a51b851f64a5ab60b1d56f9ad2244-20190902
X-UUID: 0b8a51b851f64a5ab60b1d56f9ad2244-20190902
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1405933741; Mon, 02 Sep 2019 01:01:05 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Sep 2019 02:01:03 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Sep 2019 17:01:02 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 2 Sep 2019 17:01:02 +0800
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring
 <robh@kernel.org>
Subject: [RESEND PATCH v1 1/3] clk: mediatek: Register clock gate with device
Date: Mon, 2 Sep 2019 17:00:57 +0800
Message-ID: <1567414859-3244-2-git-send-email-weiyi.lu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1567414859-3244-1-git-send-email-weiyi.lu@mediatek.com>
References: <1567414859-3244-1-git-send-email-weiyi.lu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_020108_432214_E8C3ECB0 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: James Liao <jamesjj.liao@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Fan Chen <fan.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 CK Hu <ck.hu@mediatek.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allow those clocks under a power domain to do the runtime pm operation
by forwarding the struct device pointer from clock provider.

Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
---
 drivers/clk/mediatek/clk-gate.c |  5 +++--
 drivers/clk/mediatek/clk-gate.h |  3 ++-
 drivers/clk/mediatek/clk-mtk.c  | 16 +++++++++++++---
 drivers/clk/mediatek/clk-mtk.h  |  5 +++++
 4 files changed, 23 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/mediatek/clk-gate.c b/drivers/clk/mediatek/clk-gate.c
index 803bf0a..a35cf0b 100644
--- a/drivers/clk/mediatek/clk-gate.c
+++ b/drivers/clk/mediatek/clk-gate.c
@@ -150,7 +150,8 @@ struct clk *mtk_clk_register_gate(
 		int sta_ofs,
 		u8 bit,
 		const struct clk_ops *ops,
-		unsigned long flags)
+		unsigned long flags,
+		struct device *dev)
 {
 	struct mtk_clk_gate *cg;
 	struct clk *clk;
@@ -174,7 +175,7 @@ struct clk *mtk_clk_register_gate(
 
 	cg->hw.init = &init;
 
-	clk = clk_register(NULL, &cg->hw);
+	clk = clk_register(dev, &cg->hw);
 	if (IS_ERR(clk))
 		kfree(cg);
 
diff --git a/drivers/clk/mediatek/clk-gate.h b/drivers/clk/mediatek/clk-gate.h
index e05c736..3c3329e 100644
--- a/drivers/clk/mediatek/clk-gate.h
+++ b/drivers/clk/mediatek/clk-gate.h
@@ -40,7 +40,8 @@ struct clk *mtk_clk_register_gate(
 		int sta_ofs,
 		u8 bit,
 		const struct clk_ops *ops,
-		unsigned long flags);
+		unsigned long flags,
+		struct device *dev);
 
 #define GATE_MTK_FLAGS(_id, _name, _parent, _regs, _shift,	\
 			_ops, _flags) {				\
diff --git a/drivers/clk/mediatek/clk-mtk.c b/drivers/clk/mediatek/clk-mtk.c
index d28790c..cec1c8a 100644
--- a/drivers/clk/mediatek/clk-mtk.c
+++ b/drivers/clk/mediatek/clk-mtk.c
@@ -12,6 +12,7 @@
 #include <linux/delay.h>
 #include <linux/clkdev.h>
 #include <linux/mfd/syscon.h>
+#include <linux/device.h>
 
 #include "clk-mtk.h"
 #include "clk-gate.h"
@@ -93,9 +94,10 @@ void mtk_clk_register_factors(const struct mtk_fixed_factor *clks,
 	}
 }
 
-int mtk_clk_register_gates(struct device_node *node,
+int mtk_clk_register_gates_with_dev(struct device_node *node,
 		const struct mtk_gate *clks,
-		int num, struct clk_onecell_data *clk_data)
+		int num, struct clk_onecell_data *clk_data,
+		struct device *dev)
 {
 	int i;
 	struct clk *clk;
@@ -122,7 +124,7 @@ int mtk_clk_register_gates(struct device_node *node,
 				gate->regs->set_ofs,
 				gate->regs->clr_ofs,
 				gate->regs->sta_ofs,
-				gate->shift, gate->ops, gate->flags);
+				gate->shift, gate->ops, gate->flags, dev);
 
 		if (IS_ERR(clk)) {
 			pr_err("Failed to register clk %s: %ld\n",
@@ -136,6 +138,14 @@ int mtk_clk_register_gates(struct device_node *node,
 	return 0;
 }
 
+int mtk_clk_register_gates(struct device_node *node,
+		const struct mtk_gate *clks,
+		int num, struct clk_onecell_data *clk_data)
+{
+	return mtk_clk_register_gates_with_dev(node,
+		clks, num, clk_data, NULL);
+}
+
 struct clk *mtk_clk_register_composite(const struct mtk_composite *mc,
 		void __iomem *base, spinlock_t *lock)
 {
diff --git a/drivers/clk/mediatek/clk-mtk.h b/drivers/clk/mediatek/clk-mtk.h
index 733a11d..0f8ada7 100644
--- a/drivers/clk/mediatek/clk-mtk.h
+++ b/drivers/clk/mediatek/clk-mtk.h
@@ -169,6 +169,11 @@ int mtk_clk_register_gates(struct device_node *node,
 			const struct mtk_gate *clks, int num,
 			struct clk_onecell_data *clk_data);
 
+int mtk_clk_register_gates_with_dev(struct device_node *node,
+		const struct mtk_gate *clks,
+		int num, struct clk_onecell_data *clk_data,
+		struct device *dev);
+
 struct mtk_clk_divider {
 	int id;
 	const char *name;
-- 
1.8.1.1.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
