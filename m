Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A85F2118D59
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 17:14:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZrOa8e4keCJj7TmLVXz9VitU1G0p5JjKrN0MrkiCyzw=; b=lsHhMD6GB9iTUv
	QoKRizpCuSYaWjchoqXAenTJakUOK8sseVTXuSaKhhtfA4E42ut7tkW3SYzxlVVH2Bs8wWtR+aQDH
	cmdOndP0yLFI6oEaG1OWDompLKtxki20RD+DCkPdyQH0uiZih5u7ng5jFtt4aGEJkxSLbT7QzL1T2
	v/v7Z6+vkiZyxr+a0cnXrP2jb/0kdd9JI+CeQciWclaZpjVGENjiCgqiNaERaBpWoqAu9//u2yIVx
	VTyIWsftQUpcV4CiHsI46aZZDfGFAr+2Y4kguiEWWYYIsgS9DKET88ZQPJMraW/hchxy91v6uVeCk
	xjFIipOqgA5uKhHV9UrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iei93-00010N-RQ; Tue, 10 Dec 2019 16:13:53 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iei8w-000103-Hs
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 16:13:48 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 4935E80E1;
 Tue, 10 Dec 2019 16:14:24 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH] bus: ti-sysc: Implement quirk handling for CLKDM_NOAUTO
Date: Tue, 10 Dec 2019 08:13:42 -0800
Message-Id: <20191210161342.15142-1-tony@atomide.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_081346_631261_23ECD8B5 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 Dave Gerlach <d-gerlach@ti.com>, Keerthy <j-keerthy@ti.com>,
 linux-kernel@vger.kernel.org, "Andrew F . Davis" <afd@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Suman Anna <s-anna@ti.com>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For dra7 dcan and dwc3 instances we need to block clockdomain autoidle.
Let's do this with CLKDM_NOAUTO quirk flag and enable it for dcan and
dwc3.

Cc: Keerthy <j-keerthy@ti.com>
Cc: Roger Quadros <rogerq@ti.com>
Cc: Tero Kristo <t-kristo@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/bus/ti-sysc.c                 | 10 ++++++++--
 include/linux/platform_data/ti-sysc.h |  1 +
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -473,7 +473,7 @@ static void sysc_clkdm_deny_idle(struct sysc *ddata)
 {
 	struct ti_sysc_platform_data *pdata;
 
-	if (ddata->legacy_mode)
+	if (ddata->legacy_mode || (ddata->cfg.quirks & SYSC_QUIRK_CLKDM_NOAUTO))
 		return;
 
 	pdata = dev_get_platdata(ddata->dev);
@@ -485,7 +485,7 @@ static void sysc_clkdm_allow_idle(struct sysc *ddata)
 {
 	struct ti_sysc_platform_data *pdata;
 
-	if (ddata->legacy_mode)
+	if (ddata->legacy_mode || (ddata->cfg.quirks & SYSC_QUIRK_CLKDM_NOAUTO))
 		return;
 
 	pdata = dev_get_platdata(ddata->dev);
@@ -1245,6 +1245,12 @@ static const struct sysc_revision_quirk sysc_revision_quirks[] = {
 	/* Quirks that need to be set based on detected module */
 	SYSC_QUIRK("aess", 0, 0, 0x10, -1, 0x40000000, 0xffffffff,
 		   SYSC_MODULE_QUIRK_AESS),
+	SYSC_QUIRK("dcan", 0x48480000, 0x20, -1, -1, 0xa3170504, 0xffffffff,
+		   SYSC_QUIRK_CLKDM_NOAUTO),
+	SYSC_QUIRK("dwc3", 0x48880000, 0, 0x10, -1, 0x500a0200, 0xffffffff,
+		   SYSC_QUIRK_CLKDM_NOAUTO),
+	SYSC_QUIRK("dwc3", 0x488c0000, 0, 0x10, -1, 0x500a0200, 0xffffffff,
+		   SYSC_QUIRK_CLKDM_NOAUTO),
 	SYSC_QUIRK("hdq1w", 0, 0, 0x14, 0x18, 0x00000006, 0xffffffff,
 		   SYSC_MODULE_QUIRK_HDQ1W),
 	SYSC_QUIRK("hdq1w", 0, 0, 0x14, 0x18, 0x0000000a, 0xffffffff,
diff --git a/include/linux/platform_data/ti-sysc.h b/include/linux/platform_data/ti-sysc.h
--- a/include/linux/platform_data/ti-sysc.h
+++ b/include/linux/platform_data/ti-sysc.h
@@ -49,6 +49,7 @@ struct sysc_regbits {
 	s8 emufree_shift;
 };
 
+#define SYSC_QUIRK_CLKDM_NOAUTO		BIT(21)
 #define SYSC_QUIRK_FORCE_MSTANDBY	BIT(20)
 #define SYSC_MODULE_QUIRK_AESS		BIT(19)
 #define SYSC_MODULE_QUIRK_SGX		BIT(18)
-- 
2.24.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
