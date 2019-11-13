Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2438FB67F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 18:37:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SnjMd11pxslLVFVLd/ysriE/LE7UJN7uVGfwjjSEopo=; b=RR+pl9Hb3vI/CF
	9mUhbkSN6zml77S0saPNVpUjRopJwVtF1eKZGALnh6zIAHYC1arC40U81M4TVK5VIPte9xrLI0Xru
	aYopv3RdKvPqpkm4p97s2tcwROMddtDCUu/yf1OquLkOMNoAQNznG75+tiPwwIK2k2vbpCmVZjem8
	UpEXMCdAbdsVGi/Vl0azVh4ISojAFEmAMHyAxwYQGMYeOnu9jQVJHGehgFW82MNuTr7TitBYUvC0M
	KCnbzalqEvcxSZiNE8XK5sSQlAgRseh5RiabsQfbon8p2Mu5+5P88jRNhN5jO9WQdE72h4t7r64BF
	oS7QSBz1/PIfddjmBQqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUwa0-0003yU-4n; Wed, 13 Nov 2019 17:37:20 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUwZq-0003xg-6i
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 17:37:11 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 3C02580E2;
 Wed, 13 Nov 2019 17:37:42 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH] bus: ti-sysc: Add module enable quirk for audio AESS
Date: Wed, 13 Nov 2019 09:37:02 -0800
Message-Id: <20191113173702.57107-1-tony@atomide.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_093710_283654_6F92FE7A 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

We must set the autogating bit on enable for AESS (Audio Engine SubSystem)
when probed with ti-sysc interconnect target module driver. Otherwise it
won't idle properly.

Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/bus/ti-sysc.c                 | 14 +++++++++++++-
 include/linux/platform_data/ti-sysc.h |  1 +
 2 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -1248,6 +1248,8 @@ static const struct sysc_revision_quirk sysc_revision_quirks[] = {
 		   SYSC_QUIRK_SWSUP_SIDLE),
 
 	/* Quirks that need to be set based on detected module */
+	SYSC_QUIRK("aess", 0, 0, 0x10, -1, 0x40000000, 0xffffffff,
+		   SYSC_MODULE_QUIRK_AESS),
 	SYSC_QUIRK("hdq1w", 0, 0, 0x14, 0x18, 0x00000006, 0xffffffff,
 		   SYSC_MODULE_QUIRK_HDQ1W),
 	SYSC_QUIRK("hdq1w", 0, 0, 0x14, 0x18, 0x0000000a, 0xffffffff,
@@ -1276,7 +1278,6 @@ static const struct sysc_revision_quirk sysc_revision_quirks[] = {
 #ifdef DEBUG
 	SYSC_QUIRK("adc", 0, 0, 0x10, -1, 0x47300001, 0xffffffff, 0),
 	SYSC_QUIRK("atl", 0, 0, -1, -1, 0x0a070100, 0xffffffff, 0),
-	SYSC_QUIRK("aess", 0, 0, 0x10, -1, 0x40000000, 0xffffffff, 0),
 	SYSC_QUIRK("cm", 0, 0, -1, -1, 0x40000301, 0xffffffff, 0),
 	SYSC_QUIRK("control", 0, 0, 0x10, -1, 0x40000900, 0xffffffff, 0),
 	SYSC_QUIRK("cpgmac", 0, 0x1200, 0x1208, 0x1204, 0x4edb1902,
@@ -1408,6 +1409,14 @@ static void sysc_clk_enable_quirk_hdq1w(struct sysc *ddata)
 	sysc_write(ddata, offset, val);
 }
 
+/* AESS (Audio Engine SubSystem) needs autogating set after enable */
+static void sysc_module_enable_quirk_aess(struct sysc *ddata)
+{
+	int offset = 0x7c;	/* AESS_AUTO_GATING_ENABLE */
+
+	sysc_write(ddata, offset, 1);
+}
+
 /* I2C needs extra enable bit toggling for reset */
 static void sysc_clk_quirk_i2c(struct sysc *ddata, bool enable)
 {
@@ -1490,6 +1499,9 @@ static void sysc_init_module_quirks(struct sysc *ddata)
 		return;
 	}
 
+	if (ddata->cfg.quirks & SYSC_MODULE_QUIRK_AESS)
+		ddata->module_enable_quirk = sysc_module_enable_quirk_aess;
+
 	if (ddata->cfg.quirks & SYSC_MODULE_QUIRK_SGX)
 		ddata->module_enable_quirk = sysc_module_enable_quirk_sgx;
 
diff --git a/include/linux/platform_data/ti-sysc.h b/include/linux/platform_data/ti-sysc.h
--- a/include/linux/platform_data/ti-sysc.h
+++ b/include/linux/platform_data/ti-sysc.h
@@ -49,6 +49,7 @@ struct sysc_regbits {
 	s8 emufree_shift;
 };
 
+#define SYSC_MODULE_QUIRK_AESS		BIT(19)
 #define SYSC_MODULE_QUIRK_SGX		BIT(18)
 #define SYSC_MODULE_QUIRK_HDQ1W		BIT(17)
 #define SYSC_MODULE_QUIRK_I2C		BIT(16)
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
