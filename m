Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A17A2DB5DB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 20:22:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lnQJ4/eprwTDym3XrolU12gSmJ+1Y2rAT6ysBTAE3cs=; b=Jw8v///Nwj1VLQ
	TfmjUwHVSV4vnn47Dnxq8FGp5kpnTwvXasGE0FckwqMJclEeK3/hFvwcI0ZCCFbxrLY3tabKqbfBC
	qHiNEAJbCREiJQa+VJN2QU7wEvq61roORCwwUL1rfXlpo1lLQSXaRSwageG4Z6KT5oH8AnBgeEaTG
	J2+G7ZXZIOSz4ihYmmYkeXITPK/1xO/J89JUqxojy9MsaQDGfw3/V5qhY8u+uwZJBQVAE9rYYL+Kj
	F6tPlcIpl6FwMFiR4HJ+f6jSExs7sosYS+6AGgHkCmSO+xcm1J/oIuyLWYd3zfC2Fr7pw6upiBJ57
	yd3Zij4M5JAbzEduKEVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLAPS-0007AQ-At; Thu, 17 Oct 2019 18:22:02 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLAPI-000799-JU
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 18:21:54 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id E581C804F;
 Thu, 17 Oct 2019 18:22:21 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH] bus: ti-sysc: Fix watchdog quirk handling
Date: Thu, 17 Oct 2019 11:21:44 -0700
Message-Id: <20191017182144.10175-1-tony@atomide.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_112152_679069_181D075E 
X-CRM114-Status: GOOD (  12.34  )
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I noticed that when probed with ti-sysc, watchdog can trigger on am3, am4
and dra7 causing a device reset.

Turns out I made several mistakes implementing the watchdog quirk handling:

1. We must do both writes to spr register

2. We must also call the reset quirk on disable

3. On am3 and am4 we need to also set swsup quirk flag

I probably only tested this earlier with watchdog service running when the
watchdog never gets disabled.

Fixes: 4e23be473e30 ("bus: ti-sysc: Add support for module specific reset quirks")
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/bus/ti-sysc.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -74,6 +74,7 @@ static const char * const clock_names[SYSC_MAX_CLOCKS] = {
  * @clk_disable_quirk: module specific clock disable quirk
  * @reset_done_quirk: module specific reset done quirk
  * @module_enable_quirk: module specific enable quirk
+ * @module_disable_quirk: module specific disable quirk
  */
 struct sysc {
 	struct device *dev;
@@ -100,6 +101,7 @@ struct sysc {
 	void (*clk_disable_quirk)(struct sysc *sysc);
 	void (*reset_done_quirk)(struct sysc *sysc);
 	void (*module_enable_quirk)(struct sysc *sysc);
+	void (*module_disable_quirk)(struct sysc *sysc);
 };
 
 static void sysc_parse_dts_quirks(struct sysc *ddata, struct device_node *np,
@@ -959,6 +961,9 @@ static int sysc_disable_module(struct device *dev)
 	if (ddata->offsets[SYSC_SYSCONFIG] == -ENODEV)
 		return 0;
 
+	if (ddata->module_disable_quirk)
+		ddata->module_disable_quirk(ddata);
+
 	regbits = ddata->cap->regbits;
 	reg = sysc_read(ddata, ddata->offsets[SYSC_SYSCONFIG]);
 
@@ -1248,6 +1253,9 @@ static const struct sysc_revision_quirk sysc_revision_quirks[] = {
 		   SYSC_MODULE_QUIRK_SGX),
 	SYSC_QUIRK("wdt", 0, 0, 0x10, 0x14, 0x502a0500, 0xfffff0f0,
 		   SYSC_MODULE_QUIRK_WDT),
+	/* Watchdog on am3 and am4 */
+	SYSC_QUIRK("wdt", 0x44e35000, 0, 0x10, 0x14, 0x502a0500, 0xfffff0f0,
+		   SYSC_MODULE_QUIRK_WDT | SYSC_QUIRK_SWSUP_SIDLE),
 
 #ifdef DEBUG
 	SYSC_QUIRK("adc", 0, 0, 0x10, -1, 0x47300001, 0xffffffff, 0),
@@ -1440,14 +1448,14 @@ static void sysc_reset_done_quirk_wdt(struct sysc *ddata)
 				   !(val & 0x10), 100,
 				   MAX_MODULE_SOFTRESET_WAIT);
 	if (error)
-		dev_warn(ddata->dev, "wdt disable spr failed\n");
+		dev_warn(ddata->dev, "wdt disable step1 failed\n");
 
-	sysc_write(ddata, wps, 0x5555);
+	sysc_write(ddata, spr, 0x5555);
 	error = readl_poll_timeout(ddata->module_va + wps, val,
 				   !(val & 0x10), 100,
 				   MAX_MODULE_SOFTRESET_WAIT);
 	if (error)
-		dev_warn(ddata->dev, "wdt disable wps failed\n");
+		dev_warn(ddata->dev, "wdt disable step2 failed\n");
 }
 
 static void sysc_init_module_quirks(struct sysc *ddata)
@@ -1471,8 +1479,10 @@ static void sysc_init_module_quirks(struct sysc *ddata)
 	if (ddata->cfg.quirks & SYSC_MODULE_QUIRK_SGX)
 		ddata->module_enable_quirk = sysc_module_enable_quirk_sgx;
 
-	if (ddata->cfg.quirks & SYSC_MODULE_QUIRK_WDT)
+	if (ddata->cfg.quirks & SYSC_MODULE_QUIRK_WDT) {
 		ddata->reset_done_quirk = sysc_reset_done_quirk_wdt;
+		ddata->module_disable_quirk = sysc_reset_done_quirk_wdt;
+	}
 }
 
 static int sysc_clockdomain_init(struct sysc *ddata)
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
