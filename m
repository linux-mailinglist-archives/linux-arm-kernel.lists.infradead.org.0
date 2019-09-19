Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68276B8704
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 00:33:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c+DqWpWf+8AqPLooHf22c7vV5TUADgposyWHa8NRLoA=; b=DJkx9IVBE3cq8I
	dm1R/ceyYa4zoKSk7BbO+dl31D9jyzlVfWuJyyB8EXA5WXxnS3VgmNZuu07bbi71hR7QAVvYHk2TH
	4y9sEOZoBpd3uDWrlS15A8jhHpvAQDlZkO9pStFP40tr9ITQbDF8yikmrQfTY+IHUPYGmfQ931n6J
	331mdhBfa6TNMZdHu8AcBt+4lUmi1m488x80Y5Qv9D68cK6pouGEeuggcwK7lE5shQ+PK4o0PqaB2
	oqSWFNgdgP26zQAXHhPtABfZFUzC1/7vaL/tzJPatq7GLGnlXWcngsyogVxiacIPeXuBzxmpVI0FV
	k0MVoaKDh5Ei9lyOwJfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB4zV-0006Xg-Lf; Thu, 19 Sep 2019 22:33:33 +0000
Received: from [2601:1c0:6280:3f0::9a1f]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB4zM-0006Wl-EL; Thu, 19 Sep 2019 22:33:24 +0000
From: Randy Dunlap <rdunlap@infradead.org>
Subject: [PATCH 1/2] soc: ti: big cleanup of Kconfig file
To: LKML <linux-kernel@vger.kernel.org>,
 LAK <linux-arm-kernel@lists.infradead.org>
Message-ID: <8437a1f9-18f2-dd03-4fea-de5ba71f25c9@infradead.org>
Date: Thu, 19 Sep 2019 15:33:23 -0700
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
Cc: Dave Gerlach <d-gerlach@ti.com>, Tony Lindgren <tony@atomide.com>,
 Keerthy <j-keerthy@ti.com>, Sandeep Nair <sandeep_n@ti.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Olof Johansson <olof@lixom.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Randy Dunlap <rdunlap@infradead.org>

Cleanup drivers/soc/ti/Kconfig:
- delete duplicate words
- end sentences with '.'
- fix typos/spellos
- Subsystem is one word
- capitalize acronyms
- reflow lines to be <= 80 columns

Fixes: 41f93af900a2 ("soc: ti: add Keystone Navigator QMSS driver")
Fixes: 88139ed03058 ("soc: ti: add Keystone Navigator DMA support")
Fixes: afe761f8d3e9 ("soc: ti: Add pm33xx driver for basic suspend support")
Fixes: 5a99ae0092fe ("soc: ti: pm33xx: AM437X: Add rtc_only with ddr in self-refresh support")
Fixes: a869b7b30dac ("soc: ti: Add Support for AM654 SoC config option")
Fixes: cff377f7897a ("soc: ti: Add Support for J721E SoC config option")
Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Olof Johansson <olof@lixom.net>
Cc: Santosh Shilimkar <ssantosh@kernel.org>
Cc: Sandeep Nair <sandeep_n@ti.com>
Cc: Dave Gerlach <d-gerlach@ti.com>
Cc: Keerthy <j-keerthy@ti.com>
Cc: Tony Lindgren <tony@atomide.com>
Cc: linux-kernel@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
@Santosh: MAINTAINERS says that you maintain drivers/soc/ti/*,
but there is more that Keystone-related code in that subdirectory
now... just in case you want to update that info.

 drivers/soc/ti/Kconfig |   20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

--- lnx-53.orig/drivers/soc/ti/Kconfig
+++ lnx-53/drivers/soc/ti/Kconfig
@@ -7,12 +7,12 @@ if ARCH_K3
 config ARCH_K3_AM6_SOC
 	bool "K3 AM6 SoC"
 	help
-	  Enable support for TI's AM6 SoC Family support
+	  Enable support for TI's AM6 SoC Family.
 
 config ARCH_K3_J721E_SOC
 	bool "K3 J721E SoC"
 	help
-	  Enable support for TI's J721E SoC Family support
+	  Enable support for TI's J721E SoC Family.
 
 endif
 
@@ -27,7 +27,7 @@ menuconfig SOC_TI
 if SOC_TI
 
 config KEYSTONE_NAVIGATOR_QMSS
-	tristate "Keystone Queue Manager Sub System"
+	tristate "Keystone Queue Manager Subsystem"
 	depends on ARCH_KEYSTONE
 	help
 	  Say y here to support the Keystone multicore Navigator Queue
@@ -42,9 +42,9 @@ config KEYSTONE_NAVIGATOR_DMA
 	tristate "TI Keystone Navigator Packet DMA support"
 	depends on ARCH_KEYSTONE
 	help
-	  Say y tp enable support for the Keystone Navigator Packet DMA on
-	  on Keystone family of devices. It sets up the dma channels for the
-	  Queue Manager Sub System.
+	  Say y to enable support for the Keystone Navigator Packet DMA on
+	  on Keystone family of devices. It sets up the DMA channels for the
+	  Queue Manager Subsystem.
 
 	  If unsure, say N.
 
@@ -53,10 +53,10 @@ config AMX3_PM
 	depends on SOC_AM33XX || SOC_AM43XX
 	depends on WKUP_M3_IPC && TI_EMIF_SRAM && SRAM && RTC_DRV_OMAP
 	help
-	  Enable power management on AM335x and AM437x. Required for suspend to mem
-	  and standby states on both AM335x and AM437x platforms and for deeper cpuidle
-	  c-states on AM335x. Also required for rtc and ddr in self-refresh low
-	  power mode on AM437x platforms.
+	  Enable power management on AM335x and AM437x. Required for suspend
+	  to mem and standby states on both AM335x and AM437x platforms and
+	  for deeper cpuidle c-states on AM335x. Also required for RTC and
+	  DDR in self-refresh low power mode on AM437x platforms.
 
 config WKUP_M3_IPC
 	tristate "TI AMx3 Wkup-M3 IPC Driver"


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
