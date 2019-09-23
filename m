Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE24BAC56
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 03:11:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SY1qR0IdHcARYHW+cX9JvlXGidgznIMg4QaRb+5wtCc=; b=oqdRHaYjqs2Dla
	QEju1J/Hf/O7s+rgSy/cdk400kXmylxmB1W13K2i6/ArPNfff9n3wJRkBuuoYR8u8IV8O4esVt2Mx
	2ffIBW0ux2aYcHI4my84iWc4tFTgnFvd5UZ8Df4wavt7vjMIeP87RKI5ZWgigGNIPs+Fr1MzKzxrw
	+1yx9++g2PnDuS0fTWcquh2M1eaq7L5+Q96mx8tYYVQSwfCBHR9kN+T+gP4tocoxah56JZy4ilory
	Ams+bMGfyHj1Lg1DnayUNKAPoNzCPL7V3QdlKIKiEMU8Y9FvdwTaVi7mFcNBckMZnM9JtIGcpE2q8
	3QvYd4aYrGviSiR/cZBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCCtE-0001v2-39; Mon, 23 Sep 2019 01:11:44 +0000
Received: from [2601:1c0:6280:3f0::9a1f]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCCso-0001um-Dc; Mon, 23 Sep 2019 01:11:18 +0000
To: LKML <linux-kernel@vger.kernel.org>,
 LAK <linux-arm-kernel@lists.infradead.org>,
 Santosh Shilimkar <ssantosh@kernel.org>
From: Randy Dunlap <rdunlap@infradead.org>
Subject: [PATCH v2] soc: ti: move 2 driver config options into the TI SOC
 drivers menu
Message-ID: <66f8dce5-4aac-ad8f-d5de-65643b5aa459@infradead.org>
Date: Sun, 22 Sep 2019 18:11:16 -0700
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
 Tony Lindgren <tony@atomide.com>, Tero Kristo <t-kristo@ti.com>
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
Cc: Santosh Shilimkar <ssantosh@kernel.org>
Cc: Olof Johansson <olof@lixom.net>
Cc: Nishanth Menon <nm@ti.com>
#Cc: Benjamin Fair <b-fair@ti.com>
Cc: Tony Lindgren <tony@atomide.com>
Cc: Tero Kristo <t-kristo@ti.com>
Cc: linux-kernel@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
v2: add Santosh (maintainer) for merging
    drop Benjamin Fair (email address bounces)

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
