Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F24143C48
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 12:48:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XxQJXuxc+O+JGHhKOepRlYnosN2h30OfknEY9SZZXhA=; b=EXh3lmLUe86ihv+utzaiDnto2S
	M2xr14e9cFTCW56+g00WUTOaEx98FwNo0uGCmedIGTaWJiOn5IYYuCHZ3CGxnl3CavTH8UjC80Uey
	sZmBYP9iXty2DCqMJoo0bjrLvG4nBiuP0dmbRXcPoEvDiANUeXWENIcLxVhPrZsgBnnpT1Cqddu4F
	9CMRNFawiSuWRKK0c6kDMJx0+pN0skvTNU8InAW2UA7uOG61EnYNXTAM6BUcHqYVueCutx3/ZGO7Y
	Ui5soWrJXeM7eUS3WP70FZRWLW6opWUyVWB4xz5gPxBLAbtBPZk4LGAffg/Iq/zMS99lYdMyKxqPt
	+AeUp9Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1its1d-0007Pn-Al; Tue, 21 Jan 2020 11:48:53 +0000
Received: from andre.telenet-ops.be ([2a02:1800:120:4::f00:15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itquY-00026L-JT
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:37:46 +0000
Received: from ramsan ([84.195.182.253]) by andre.telenet-ops.be with bizsmtp
 id sydS2100A5USYZQ01ydSJw; Tue, 21 Jan 2020 11:37:26 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1itquU-00011Q-6r; Tue, 21 Jan 2020 11:37:26 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1itquU-0000U6-5P; Tue, 21 Jan 2020 11:37:26 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Olof Johansson <olof@lixom.net>
Subject: [PATCH 08/20] ARM: clps711x: Drop unneeded select of multi-platform
 selected options
Date: Tue, 21 Jan 2020 11:37:10 +0100
Message-Id: <20200121103722.1781-8-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200121103722.1781-1-geert+renesas@glider.be>
References: <20200121103413.1337-1-geert+renesas@glider.be>
 <20200121103722.1781-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_023730_815982_7047FC35 
X-CRM114-Status: UNSURE (   7.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a02:1800:120:4:0:0:f00:15 listed in] [list.dnswl.org]
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Alexander Shiyan <shc_work@mail.ru>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Support for Cirrus Logic EP721x/EP731x-based SoCs depends on
ARCH_MULTI_V7, and thus on ARCH_MULTIPLATFORM.
As the latter selects AUTO_ZRELADDR, TIMER_OF, COMMON_CLK,
GENERIC_CLOCKEVENTS, and USE_OF, there is no need for ARCH_CLPS711X to
select any of them.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Alexander Shiyan <shc_work@mail.ru>
---
All patches in this series are independent of each other.
Cover letter at https://lore.kernel.org/r/20200121103413.1337-1-geert+renesas@glider.be

 arch/arm/mach-clps711x/Kconfig | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm/mach-clps711x/Kconfig b/arch/arm/mach-clps711x/Kconfig
index fc9188b54dd66a74..314de9477b84989e 100644
--- a/arch/arm/mach-clps711x/Kconfig
+++ b/arch/arm/mach-clps711x/Kconfig
@@ -2,15 +2,10 @@
 menuconfig ARCH_CLPS711X
 	bool "Cirrus Logic EP721x/EP731x-based"
 	depends on ARCH_MULTI_V4T
-	select AUTO_ZRELADDR
-	select TIMER_OF
 	select CLPS711X_TIMER
-	select COMMON_CLK
 	select CPU_ARM720T
-	select GENERIC_CLOCKEVENTS
 	select GPIOLIB
 	select MFD_SYSCON
 	select OF_IRQ
-	select USE_OF
 	help
 	  Select this if you use ARMv4T Cirrus Logic chips.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
