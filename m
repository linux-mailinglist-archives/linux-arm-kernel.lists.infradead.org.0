Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9135A16B013
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 20:13:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KSmXWm26ThmiBzRhvzRtq4iksctUATbST0xg8n3+p8o=; b=MmifdlWTHwYTkd
	osXvFIwd8ESwAb0PwAcj876vpwWTydJm1aj5qpGk2GOvXXcBOBT7O29knPDq2Gm2PRg67tIKKfnr9
	s07ZAXyTPkcu34koP1kSzWdpfyx7NSHPtuq7MEbIYdTBU09+NG3E04FKkHGZWjxXnytikjsZIBOc5
	tbRG9QOxsnImqPvtg8eL2kUy3pef34rFR/uOAOv367ACaoDz6K86IJ5AspDcMmMY3AIiT31Tk9S5T
	0NHIXfgsxrq2nVRknbPCNNBMq+Qf3teOQOtSUdi1wPLw1IQIjLWr85nCbGER2ZjCpdnCZOJy8gDPt
	ecQ4bhLI6UXaXe8DH1Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6JAl-0001fE-Q6; Mon, 24 Feb 2020 19:13:43 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6J9s-00013x-RN
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 19:12:50 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 0F8C481DB;
 Mon, 24 Feb 2020 19:13:31 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 3/3] bus: ti-sysc: Implement display subsystem reset quirk
Date: Mon, 24 Feb 2020 11:12:30 -0800
Message-Id: <20200224191230.30972-4-tony@atomide.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200224191230.30972-1-tony@atomide.com>
References: <20200224191230.30972-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_111248_934416_A56380E1 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 dri-devel@lists.freedesktop.org, Dave Gerlach <d-gerlach@ti.com>,
 Keerthy <j-keerthy@ti.com>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 linux-kernel@vger.kernel.org, Jyri Sarha <jsarha@ti.com>,
 "Andrew F . Davis" <afd@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Faiz Abbas <faiz_abbas@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Suman Anna <s-anna@ti.com>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The display subsystem (DSS) needs the child outputs disabled for reset.
In order to prepare to probe DSS without legacy platform data, let's
implement sysc_pre_reset_quirk_dss() similar to what we have for the
platform data with omap_dss_reset().

Note that we cannot directly use the old omap_dss_reset() without
platform data callbacks and updating omap_dss_reset() to understand
struct device. And we will be dropping omap_dss_reset() anyways when
all the SoCs are probing with device tree, so let's not mess with the
legacy code at all.

Cc: Jyri Sarha <jsarha@ti.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/bus/ti-sysc.c                 | 131 +++++++++++++++++++++++++-
 include/linux/platform_data/ti-sysc.h |   1 +
 2 files changed, 129 insertions(+), 3 deletions(-)

diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -1303,11 +1303,11 @@ static const struct sysc_revision_quirk sysc_revision_quirks[] = {
 	SYSC_QUIRK("dcan", 0x48480000, 0x20, -ENODEV, -ENODEV, 0xa3170504, 0xffffffff,
 		   SYSC_QUIRK_CLKDM_NOAUTO),
 	SYSC_QUIRK("dss", 0x4832a000, 0, 0x10, 0x14, 0x00000020, 0xffffffff,
-		   SYSC_QUIRK_OPT_CLKS_IN_RESET),
+		   SYSC_QUIRK_OPT_CLKS_IN_RESET | SYSC_MODULE_QUIRK_DSS_RESET),
 	SYSC_QUIRK("dss", 0x58000000, 0, -ENODEV, 0x14, 0x00000040, 0xffffffff,
-		   SYSC_QUIRK_OPT_CLKS_IN_RESET),
+		   SYSC_QUIRK_OPT_CLKS_IN_RESET | SYSC_MODULE_QUIRK_DSS_RESET),
 	SYSC_QUIRK("dss", 0x58000000, 0, -ENODEV, 0x14, 0x00000061, 0xffffffff,
-		   SYSC_QUIRK_OPT_CLKS_IN_RESET),
+		   SYSC_QUIRK_OPT_CLKS_IN_RESET | SYSC_MODULE_QUIRK_DSS_RESET),
 	SYSC_QUIRK("dwc3", 0x48880000, 0, 0x10, -ENODEV, 0x500a0200, 0xffffffff,
 		   SYSC_QUIRK_CLKDM_NOAUTO),
 	SYSC_QUIRK("dwc3", 0x488c0000, 0, 0x10, -ENODEV, 0x500a0200, 0xffffffff,
@@ -1468,6 +1468,128 @@ static void sysc_init_revision_quirks(struct sysc *ddata)
 	}
 }
 
+/*
+ * DSS needs dispc outputs disabled to reset modules. Returns mask of
+ * enabled DSS interrupts. Eventually we may be able to do this on
+ * dispc init rather than top-level DSS init.
+ */
+static u32 sysc_quirk_dispc(struct sysc *ddata, int dispc_offset,
+			    bool disable)
+{
+	bool lcd_en, digit_en, lcd2_en = false, lcd3_en = false;
+	const int lcd_en_mask = BIT(0), digit_en_mask = BIT(1);
+	int manager_count;
+	bool framedonetv_irq;
+	u32 val, irq_mask = 0;
+
+	switch (sysc_soc->soc) {
+	case SOC_2420 ... SOC_3630:
+		manager_count = 2;
+		framedonetv_irq = false;
+		break;
+	case SOC_4430 ... SOC_4470:
+		manager_count = 3;
+		break;
+	case SOC_5430:
+	case SOC_DRA7:
+		manager_count = 4;
+		break;
+	case SOC_AM4:
+		manager_count = 1;
+		break;
+	case SOC_UNKNOWN:
+	default:
+		return 0;
+	};
+
+	/* Remap the whole module range to be able to reset dispc outputs */
+	devm_iounmap(ddata->dev, ddata->module_va);
+	ddata->module_va = devm_ioremap(ddata->dev,
+					ddata->module_pa,
+					ddata->module_size);
+	if (!ddata->module_va)
+		return -EIO;
+
+	/* DISP_CONTROL */
+	val = sysc_read(ddata, dispc_offset + 0x40);
+	lcd_en = val & lcd_en_mask;
+	digit_en = val & digit_en_mask;
+	if (lcd_en)
+		irq_mask |= BIT(0);			/* FRAMEDONE */
+	if (digit_en) {
+		if (framedonetv_irq)
+			irq_mask |= BIT(24);		/* FRAMEDONETV */
+		else
+			irq_mask |= BIT(2) | BIT(3);	/* EVSYNC bits */
+	}
+	if (disable & (lcd_en | digit_en))
+		sysc_write(ddata, dispc_offset + 0x40,
+			   val & ~(lcd_en_mask | digit_en_mask));
+
+	if (manager_count <= 2)
+		return irq_mask;
+
+	/* DISPC_CONTROL2 */
+	val = sysc_read(ddata, dispc_offset + 0x238);
+	lcd2_en = val & lcd_en_mask;
+	if (lcd2_en)
+		irq_mask |= BIT(22);			/* FRAMEDONE2 */
+	if (disable && lcd2_en)
+		sysc_write(ddata, dispc_offset + 0x238,
+			   val & ~lcd_en_mask);
+
+	if (manager_count <= 3)
+		return irq_mask;
+
+	/* DISPC_CONTROL3 */
+	val = sysc_read(ddata, dispc_offset + 0x848);
+	lcd3_en = val & lcd_en_mask;
+	if (lcd3_en)
+		irq_mask |= BIT(30);			/* FRAMEDONE3 */
+	if (disable && lcd3_en)
+		sysc_write(ddata, dispc_offset + 0x848,
+			   val & ~lcd_en_mask);
+
+	return irq_mask;
+}
+
+/* DSS needs child outputs disabled and SDI registers cleared for reset */
+static void sysc_pre_reset_quirk_dss(struct sysc *ddata)
+{
+	const int dispc_offset = 0x1000;
+	int error;
+	u32 irq_mask, val;
+
+	/* Get enabled outputs */
+	irq_mask = sysc_quirk_dispc(ddata, dispc_offset, false);
+	if (!irq_mask)
+		return;
+
+	/* Clear IRQSTATUS */
+	sysc_write(ddata, 0x1000 + 0x18, irq_mask);
+
+	/* Disable outputs */
+	val = sysc_quirk_dispc(ddata, dispc_offset, true);
+
+	/* Poll IRQSTATUS */
+	error = readl_poll_timeout(ddata->module_va + dispc_offset + 0x18,
+				   val, val != irq_mask, 100, 50);
+	if (error)
+		dev_warn(ddata->dev, "%s: timed out %08x !+ %08x\n",
+			 __func__, val, irq_mask);
+
+	if (sysc_soc->soc == SOC_3430) {
+		/* Clear DSS_SDI_CONTROL */
+		sysc_write(ddata, dispc_offset + 0x44, 0);
+
+		/* Clear DSS_PLL_CONTROL */
+		sysc_write(ddata, dispc_offset + 0x48, 0);
+	}
+
+	/* Clear DSS_CONTROL to switch DSS clock sources to PRCM if not */
+	sysc_write(ddata, dispc_offset + 0x40, 0);
+}
+
 /* 1-wire needs module's internal clocks enabled for reset */
 static void sysc_pre_reset_quirk_hdq1w(struct sysc *ddata)
 {
@@ -1606,6 +1728,9 @@ static void sysc_init_module_quirks(struct sysc *ddata)
 	if (ddata->cfg.quirks & SYSC_MODULE_QUIRK_AESS)
 		ddata->module_enable_quirk = sysc_module_enable_quirk_aess;
 
+	if (ddata->cfg.quirks & SYSC_MODULE_QUIRK_DSS_RESET)
+		ddata->pre_reset_quirk = sysc_pre_reset_quirk_dss;
+
 	if (ddata->cfg.quirks & SYSC_MODULE_QUIRK_RTC_UNLOCK) {
 		ddata->module_unlock_quirk = sysc_module_unlock_quirk_rtc;
 		ddata->module_lock_quirk = sysc_module_lock_quirk_rtc;
diff --git a/include/linux/platform_data/ti-sysc.h b/include/linux/platform_data/ti-sysc.h
--- a/include/linux/platform_data/ti-sysc.h
+++ b/include/linux/platform_data/ti-sysc.h
@@ -49,6 +49,7 @@ struct sysc_regbits {
 	s8 emufree_shift;
 };
 
+#define SYSC_MODULE_QUIRK_DSS_RESET	BIT(23)
 #define SYSC_MODULE_QUIRK_RTC_UNLOCK	BIT(22)
 #define SYSC_QUIRK_CLKDM_NOAUTO		BIT(21)
 #define SYSC_QUIRK_FORCE_MSTANDBY	BIT(20)
-- 
2.25.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
