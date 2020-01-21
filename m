Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 402A0143C41
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 12:47:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+rgMIjHfIx4UrtPi/jWLeimMH9DKJYXxpnLDG8qVDJE=; b=Q+pHpHFst9Bnmm+v3CgE+YJasI
	Bfac1FURhrqOFsw+dsyxetkzlNCy3erZ+SbGOUbaA34X/nE+xTnUHPPDZDQWbSZraOh536geZzAZv
	KUOeDX/HglM7E5+Z4AzC6OJ9HKjgQKdyWbCYViG8CBXr5xLvQte5LbjaBjTb/LALNflq6IVEFe1hb
	lLdll2Y0NW2GG9lAaJWrHRkrFU0utlTHmyc44mBVjaFWKnNLobzzBN7yqJFqsKAnmiTZWBIdH+yqT
	3Pe7J11iNyCVJUnmL6jvMrsZc3Mwch0gwJmzzwrUzUB+uzFa/RCisAhcrpsvk2+7eELLCft17cNlN
	Dt95lPjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1its0g-0006YF-7O; Tue, 21 Jan 2020 11:47:54 +0000
Received: from albert.telenet-ops.be ([2a02:1800:110:4::f00:1a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itquW-00025k-9z
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:37:44 +0000
Received: from ramsan ([84.195.182.253]) by albert.telenet-ops.be with bizsmtp
 id sydS2100A5USYZQ06ydSnu; Tue, 21 Jan 2020 11:37:26 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1itquU-00011K-4p; Tue, 21 Jan 2020 11:37:26 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1itquU-0000Tz-3H; Tue, 21 Jan 2020 11:37:26 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Olof Johansson <olof@lixom.net>
Subject: [PATCH 06/20] ARM: bcm: Drop unneeded select of PCI_DOMAINS_GENERIC,
 HAVE_SMP, TIMER_OF
Date: Tue, 21 Jan 2020 11:37:08 +0100
Message-Id: <20200121103722.1781-6-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200121103722.1781-1-geert+renesas@glider.be>
References: <20200121103413.1337-1-geert+renesas@glider.be>
 <20200121103722.1781-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_023728_555040_9A96C4D6 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a02:1800:110:4:0:0:f00:1a listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Support for Broadcom SoCs depends on ARCH_MULTI_V6_V7, and thus on
ARCH_MULTIPLATFORM, which selects PCI_DOMAINS_GENERIC and TIMER_OF.
Support for the various Broadcom IPROC architected SoCs depends on
ARCH_MULTI_V7, which selects HAVE_SMP.
Hence there is no need for the Broadcom-specific symbols to select any
of them.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Florian Fainelli <f.fainelli@gmail.com>
Cc: Ray Jui <rjui@broadcom.com>
Cc: Scott Branden <sbranden@broadcom.com>
Cc: bcm-kernel-feedback-list@broadcom.com
---
All patches in this series are independent of each other.
Cover letter at https://lore.kernel.org/r/20200121103413.1337-1-geert+renesas@glider.be

 arch/arm/mach-bcm/Kconfig | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/arm/mach-bcm/Kconfig b/arch/arm/mach-bcm/Kconfig
index fcfe2a0e805896e9..6aa938b949db2fec 100644
--- a/arch/arm/mach-bcm/Kconfig
+++ b/arch/arm/mach-bcm/Kconfig
@@ -20,7 +20,6 @@ config ARCH_BCM_IPROC
 	select GPIOLIB
 	select ARM_AMBA
 	select PINCTRL
-	select PCI_DOMAINS_GENERIC if PCI
 	help
 	  This enables support for systems based on Broadcom IPROC architected SoCs.
 	  The IPROC complex contains one or more ARM CPUs along with common
@@ -54,7 +53,6 @@ config ARCH_BCM_NSP
 	select ARM_ERRATA_754322
 	select ARM_ERRATA_775420
 	select ARM_ERRATA_764369 if SMP
-	select HAVE_SMP
 	select THERMAL
 	select THERMAL_OF
 	help
@@ -73,7 +71,6 @@ config ARCH_BCM_5301X
 	select ARM_ERRATA_754322
 	select ARM_ERRATA_775420
 	select ARM_ERRATA_764369 if SMP
-	select HAVE_SMP
 
 	help
 	  Support for Broadcom BCM470X and BCM5301X SoCs with ARM CPU cores.
@@ -109,7 +106,6 @@ config ARCH_BCM_281XX
 	bool "Broadcom BCM281XX SoC family"
 	depends on ARCH_MULTI_V7
 	select ARCH_BCM_MOBILE
-	select HAVE_SMP
 	help
 	  Enable support for the BCM281XX family, which includes
 	  BCM11130, BCM11140, BCM11351, BCM28145 and BCM28155
@@ -119,7 +115,6 @@ config ARCH_BCM_21664
 	bool "Broadcom BCM21664 SoC family"
 	depends on ARCH_MULTI_V7
 	select ARCH_BCM_MOBILE
-	select HAVE_SMP
 	help
 	  Enable support for the BCM21664 family, which includes
 	  BCM21663 and BCM21664 variants.
@@ -128,7 +123,6 @@ config ARCH_BCM_23550
 	bool "Broadcom BCM23550 SoC"
 	depends on ARCH_MULTI_V7
 	select ARCH_BCM_MOBILE
-	select HAVE_SMP
 	help
 	  Enable support for the BCM23550.
 
@@ -165,7 +159,6 @@ config ARCH_BCM2835
 	select ZONE_DMA if ARCH_MULTI_V7
 	select ARM_TIMER_SP804
 	select HAVE_ARM_ARCH_TIMER if ARCH_MULTI_V7
-	select TIMER_OF
 	select BCM2835_TIMER
 	select PINCTRL
 	select PINCTRL_BCM2835
@@ -201,7 +194,6 @@ config ARCH_BCM_63XX
 	select HAVE_ARM_ARCH_TIMER
 	select HAVE_ARM_TWD if SMP
 	select HAVE_ARM_SCU if SMP
-	select HAVE_SMP
 	help
 	  This enables support for systems based on Broadcom DSL SoCs.
 	  It currently supports the 'BCM63XX' ARM-based family, which includes
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
