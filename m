Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88830A315B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 09:43:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ur9pYYK308dg+gdo1jDvEqDNQ/jiAx/ACrmJC+qn1AY=; b=naDfLhfXb2zZGm
	VqhGTucuKu9k4IU2JTNhMasPP8kR1vUf6nwlSt98QSi4VvLvGUfdDw+uE6bPuhpUaf+PWidatP/Lt
	wINh/eKGRqgSxWnvLkW1KSN+wKAEMV604KVcncxRoMozXX9JbP4sYVK/AZzwqW3Fr/leuec0lPr85
	pSm22F+CfF/GFwPA4Twi6EpRNBegwlYz+n/3YG0cm3ugeLvtIQ4m5WB/MEXsnvN0EWewjb8dkD4Bt
	QYs4KycFN6PSzoEJD2FJEH6cQDuba7eFYg7XFluuKLWMCitgXnaXLrnMq8GFD+w/dA92io/cOjQCb
	zKouV9Z2pceR8UK5vMJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3bYo-0004mU-TE; Fri, 30 Aug 2019 07:43:06 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3bWx-0003Dw-1I; Fri, 30 Aug 2019 07:41:12 +0000
X-UUID: 11e53ef0224141398e5bc402ec5764e1-20190829
X-UUID: 11e53ef0224141398e5bc402ec5764e1-20190829
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1691649561; Thu, 29 Aug 2019 23:41:11 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 30 Aug 2019 00:41:10 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 30 Aug 2019 15:41:07 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 30 Aug 2019 15:41:06 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH v3 4/7] usb: mtk-xhci: support ip-sleep wakeup for MT8183
Date: Fri, 30 Aug 2019 15:40:51 +0800
Message-ID: <1567150854-30033-5-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1567150854-30033-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1567150854-30033-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 0CC1AD750E0584FBAD4C3A1BDC6182D22AD563DBB0112078F6AB14F6D427608F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_004111_113841_8599AFAC 
X-CRM114-Status: GOOD (  12.25  )
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
 Mathias Nyman <mathias.nyman@intel.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chunfeng
 Yun <chunfeng.yun@mediatek.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Support USB wakeup by ip-sleep mode for MT8183, it's similar to
MT8173

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
v3: change micros define

v2: no changes
---
 drivers/usb/host/xhci-mtk.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/host/xhci-mtk.c b/drivers/usb/host/xhci-mtk.c
index 026fe18972d3..9b30a868a7ab 100644
--- a/drivers/usb/host/xhci-mtk.c
+++ b/drivers/usb/host/xhci-mtk.c
@@ -57,6 +57,12 @@
 #define CTRL_U2_FORCE_PLL_STB	BIT(28)
 
 /* usb remote wakeup registers in syscon */
+/* mt8183 etc */
+#define PERI_WK_CTRL0	0x20
+#define WC0_IS_C(x)	(((x) & 0xf) << 28)  /* cycle debounce */
+#define WC0_IS_P	BIT(12)	/* polarity */
+#define WC0_IS_EN	BIT(6)
+
 /* mt8173 etc */
 #define PERI_WK_CTRL1	0x4
 #define WC1_IS_C(x)	(((x) & 0xf) << 26)  /* cycle debounce */
@@ -69,7 +75,8 @@
 #define SSC_SPM_INT_EN		BIT(1)
 
 enum ssusb_uwk_vers {
-	SSUSB_UWK_V1 = 1,
+	SSUSB_UWK_V0 = 0,
+	SSUSB_UWK_V1,
 	SSUSB_UWK_V2,
 };
 
@@ -282,6 +289,11 @@ static void usb_wakeup_ip_sleep_set(struct xhci_hcd_mtk *mtk, bool enable)
 	u32 reg, msk, val;
 
 	switch (mtk->uwk_vers) {
+	case SSUSB_UWK_V0:
+		reg = mtk->uwk_reg_base + PERI_WK_CTRL0;
+		msk = WC0_IS_EN | WC0_IS_C(0xf) | WC0_IS_P;
+		val = enable ? (WC0_IS_EN | WC0_IS_C(0x8)) : 0;
+		break;
 	case SSUSB_UWK_V1:
 		reg = mtk->uwk_reg_base + PERI_WK_CTRL1;
 		msk = WC1_IS_EN | WC1_IS_C(0xf) | WC1_IS_P;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
