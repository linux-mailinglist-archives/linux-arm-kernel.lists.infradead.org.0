Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5949A7BB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 08:41:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yw3MQRxnzGNfqmyYO7ryNJIXcqsfrcsRiXh9jrP/0G4=; b=ej0pVCQz30je1x
	FXCvZZjyo2j/2NEx1gPkOvQhVBe6RQct47MF1sKbs/NOd7tGYuEiWIpTZujjaaR9qSO6eiiHTzfGh
	1NFx1ZjL8IfcA17DbiP3DjR4RdSQKAlRCoqVxM60BZrWt9ek03u3izywTi8GZYM3OoFHVCu6Zc9q9
	1OXfwQVm0vYcLUewjplEe6sGvC4ADFmJME/vX8kflXBEiAyO62PNi1nZir8CYkFLCWh5PlOXHSFOv
	e18hcgx3LSf1Q9W7vlwR6szSjktK+jLYLQYXDm4JAnjyhOJ7pLtPPR/eub6cvKjBHODR/NfpW5DMc
	IFW03zO+4kHagTqQqgiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i13G2-0000RP-TP; Fri, 23 Aug 2019 06:41:11 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i13Fa-0000FL-OG; Fri, 23 Aug 2019 06:40:44 +0000
X-UUID: 4f2d410b90144502a1c62e6857339b1c-20190822
X-UUID: 4f2d410b90144502a1c62e6857339b1c-20190822
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 444473117; Thu, 22 Aug 2019 22:40:31 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 23:40:29 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 23 Aug 2019 14:40:25 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 23 Aug 2019 14:40:24 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Mathias Nyman <mathias.nyman@intel.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Rob Herring <robh+dt@kernel.org>
Subject: [RESEND PATCH v2 2/2] usb: xhci-mtk: add an optional xhci_ck clock
Date: Fri, 23 Aug 2019 14:40:25 +0800
Message-ID: <1566542425-20082-2-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1566542425-20082-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1566542425-20082-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: D5F0782D299C7618816412C070776E5DD47733EB89CD07D1E2052908E45C089E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_234042_868815_6F778148 
X-CRM114-Status: GOOD (  11.42  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ian Campbell <ijc+devicetree@hellion.org.uk>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some SoCs may have an optional clock xhci_ck (125M or 200M), it
usually uses the same PLL as sys_ck, so support it.

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
v2 no changes
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
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
