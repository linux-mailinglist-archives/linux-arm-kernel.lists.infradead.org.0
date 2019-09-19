Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A443AB8708
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 00:33:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f8ygd6M6vNBtVOt+Ja57JCzDQ9EHqjtsPWPF07C3V5w=; b=dxmMFJh59VU1S6
	PZQcRRHpfNXvnGtKaDr0glSgPfkRYSvm4rA+3WkUQI2icEujzSuNAj2+LoxMH9kW4vunQsZf8+kaO
	4pi93uDmDmwKCHG1/gBRGFFDbarzmv0v3IXRCphfp/dKSgOQckFKvHetiIEZm2LXFSUzXI/tHUx2I
	GV53xpn6GJ4khMwsi2rUGpj/qGdrOXYq3awFrBIZcPqN2RkXVClBjV4idLydxZaSDA/gZlizqptnm
	kunGdE18BGuSpdpjt2IHTF8jHxZQegX12SSQVCuWOParAmHsAFB3CP0aiVSKAMuo1U0EYOndA/4wP
	edv1udeN4oiuZGs7sPFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB4zn-0006lT-UM; Thu, 19 Sep 2019 22:33:52 +0000
Received: from [2601:1c0:6280:3f0::9a1f]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB4zZ-0006j5-V0; Thu, 19 Sep 2019 22:33:38 +0000
From: Randy Dunlap <rdunlap@infradead.org>
Subject: [PATCH 2/2] soc: ti: move 2 driver config options into the TI SOC
 drivers menu
To: LKML <linux-kernel@vger.kernel.org>,
 LAK <linux-arm-kernel@lists.infradead.org>
Message-ID: <ae4b494c-9723-1bc2-e471-e0e9f7df6e8f@infradead.org>
Date: Thu, 19 Sep 2019 15:33:37 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
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
Cc: Olof Johansson <olof@lixom.net>, Nishanth Menon <nm@ti.com>,
 Benjamin Fair <b-fair@ti.com>, Tony Lindgren <tony@atomide.com>,
 Tero Kristo <t-kristo@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Randy Dunlap <rdunlap@infradead.org>

Move the AM654 and J721E SOC config options inside the "TI SOC drivers"
menu with the other TI SOC drivers.

Fixes: a869b7b30dac ("soc: ti: Add Support for AM654 SoC config option")
Fixes: cff377f7897a ("soc: ti: Add Support for J721E SoC config option")
Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Olof Johansson <olof@lixom.net>
Cc: Nishanth Menon <nm@ti.com>
Cc: Benjamin Fair <b-fair@ti.com>
Cc: Tony Lindgren <tony@atomide.com>
Cc: Tero Kristo <t-kristo@ti.com>
Cc: linux-kernel@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/soc/ti/Kconfig |   20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

--- lnx-53.orig/drivers/soc/ti/Kconfig
+++ lnx-53/drivers/soc/ti/Kconfig
@@ -1,4 +1,12 @@
 # SPDX-License-Identifier: GPL-2.0-only
+
+# TI SOC drivers
+#
+menuconfig SOC_TI
+	bool "TI SOC drivers support"
+
+if SOC_TI
+
 # 64-bit ARM SoCs from TI
 if ARM64
 
@@ -14,17 +22,9 @@ config ARCH_K3_J721E_SOC
 	help
 	  Enable support for TI's J721E SoC Family.
 
-endif
+endif # ARCH_K3
 
-endif
-
-#
-# TI SOC drivers
-#
-menuconfig SOC_TI
-	bool "TI SOC drivers support"
-
-if SOC_TI
+endif # ARM64
 
 config KEYSTONE_NAVIGATOR_QMSS
 	tristate "Keystone Queue Manager Subsystem"



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
