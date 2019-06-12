Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E670241BD0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 07:56:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rVvHh4Ya0F5tXVO9pxTwQCs8eq5YV+WWsSdxTMp1DFY=; b=AOBruYDF05FMLb
	Q7I2Y0gsEIT29AlgVois66Ht24aR3EOsUHGtCWBnl7US77pnQdTwBWCk+Xllm4NB5YNIjgtpaD8+Y
	mM4MHvtaH7Oy8fJI2MHdeRcPAYRrDYABKBrWre+h7FQs+3/QF4jB7k2UsqcjE4pozyZY3414aj1oZ
	Nen5SoTLG+VpsIJEjpPhvt4gjmqkF173RFe26Qg/myZYh1e0JU9MffSment4++ANlBKHAOWUBx2u0
	vJnbKs0oal1KQkPJf0poogofGpwd//gzVxvREavmk5ppvaGTZfAFzQkOCBylV92qkSkJx3BkdkBmB
	bOQfUcsV2Ke27labzKoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hawFY-0003z9-3q; Wed, 12 Jun 2019 05:56:44 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hawEz-0003fH-DL; Wed, 12 Jun 2019 05:56:11 +0000
X-UUID: 34a071fa91bd49a2a18e47b4b18c3f82-20190611
X-UUID: 34a071fa91bd49a2a18e47b4b18c3f82-20190611
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 625688226; Tue, 11 Jun 2019 21:55:54 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Jun 2019 22:55:52 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Jun 2019 13:55:49 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 12 Jun 2019 13:55:48 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH 5/5] usb: xhci-mtk: add an optional xhci_ck clock
Date: Wed, 12 Jun 2019 13:55:21 +0800
Message-ID: <41bb0198ef2a4059685a8736b54c88487864a517.1560246390.git.chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <5e06482a0be15476c7b5825f155accf98275afa8.1560246390.git.chunfeng.yun@mediatek.com>
References: <5e06482a0be15476c7b5825f155accf98275afa8.1560246390.git.chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_225609_458254_F7ACFC53 
X-CRM114-Status: GOOD (  12.44  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, Jumin
 Li <jumin.li@mediatek.com>, Mathias Nyman <mathias.nyman@intel.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, Chunfeng
 Yun <chunfeng.yun@mediatek.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some SoCs may have an optional clock xhci_ck (125M or 200M), it
usually uses the same PLL as sys_ck, so support it.

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
 drivers/usb/host/xhci-mtk.c | 13 +++++++++++++
 drivers/usb/host/xhci-mtk.h |  1 +
 2 files changed, 14 insertions(+)

diff --git a/drivers/usb/host/xhci-mtk.c b/drivers/usb/host/xhci-mtk.c
index 026fe18972d3..b18a6baef204 100644
--- a/drivers/usb/host/xhci-mtk.c
+++ b/drivers/usb/host/xhci-mtk.c
@@ -216,6 +216,10 @@ static int xhci_mtk_clks_get(struct xhci_hcd_mtk *mtk)
 		return PTR_ERR(mtk->sys_clk);
 	}
 
+	mtk->xhci_clk = devm_clk_get_optional(dev, "xhci_ck");
+	if (IS_ERR(mtk->xhci_clk))
+		return PTR_ERR(mtk->xhci_clk);
+
 	mtk->ref_clk = devm_clk_get_optional(dev, "ref_ck");
 	if (IS_ERR(mtk->ref_clk))
 		return PTR_ERR(mtk->ref_clk);
@@ -244,6 +248,12 @@ static int xhci_mtk_clks_enable(struct xhci_hcd_mtk *mtk)
 		goto sys_clk_err;
 	}
 
+	ret = clk_prepare_enable(mtk->xhci_clk);
+	if (ret) {
+		dev_err(mtk->dev, "failed to enable xhci_clk\n");
+		goto xhci_clk_err;
+	}
+
 	ret = clk_prepare_enable(mtk->mcu_clk);
 	if (ret) {
 		dev_err(mtk->dev, "failed to enable mcu_clk\n");
@@ -261,6 +271,8 @@ static int xhci_mtk_clks_enable(struct xhci_hcd_mtk *mtk)
 dma_clk_err:
 	clk_disable_unprepare(mtk->mcu_clk);
 mcu_clk_err:
+	clk_disable_unprepare(mtk->xhci_clk);
+xhci_clk_err:
 	clk_disable_unprepare(mtk->sys_clk);
 sys_clk_err:
 	clk_disable_unprepare(mtk->ref_clk);
@@ -272,6 +284,7 @@ static void xhci_mtk_clks_disable(struct xhci_hcd_mtk *mtk)
 {
 	clk_disable_unprepare(mtk->dma_clk);
 	clk_disable_unprepare(mtk->mcu_clk);
+	clk_disable_unprepare(mtk->xhci_clk);
 	clk_disable_unprepare(mtk->sys_clk);
 	clk_disable_unprepare(mtk->ref_clk);
 }
diff --git a/drivers/usb/host/xhci-mtk.h b/drivers/usb/host/xhci-mtk.h
index 8be8c5f7ff62..5ac458b7d2e0 100644
--- a/drivers/usb/host/xhci-mtk.h
+++ b/drivers/usb/host/xhci-mtk.h
@@ -139,6 +139,7 @@ struct xhci_hcd_mtk {
 	struct regulator *vusb33;
 	struct regulator *vbus;
 	struct clk *sys_clk;	/* sys and mac clock */
+	struct clk *xhci_clk;
 	struct clk *ref_clk;
 	struct clk *mcu_clk;
 	struct clk *dma_clk;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
