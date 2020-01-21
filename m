Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 831CB143C4C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 12:49:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MnjfpOZs9Q2bpI5XgH0dn5hosQR+pvQuZ8fU09ZU8Og=; b=J4Gkw+xAizmkLVfGOxsinZjNnR
	gmqK5bfxnnIjE4v+3yjFIbmJNkjiv3I++9C483mqsSn7rviEklWGsgMdNQ0aRdgtL4ruVgaMlaK5O
	9GnxtI8hnS8znv80lt2wgKnt19ymKpdXLBmcDw6OfeaxOBa6ZxNXGtZG/y/zCumnisx36ceMDSRkz
	MBHosWr68y8sIJ/pq/h8U9csZQMlojpENLYdr5NRo7O50sGPpmbxAh9qMCnENR117dioPnTkAxvyw
	hW8SbjrpoTZ1FrvLuSa2Ac9UbYxcM+VzU/MDGiZJ8pTie7vhXL1HkGQh5HV138edH5BIPDXx0LoOF
	pwewksMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1its2d-0008LL-3L; Tue, 21 Jan 2020 11:49:55 +0000
Received: from leibniz.telenet-ops.be ([2a02:1800:110:4::f00:d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqua-00029M-PZ
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:37:48 +0000
Received: from laurent.telenet-ops.be (laurent.telenet-ops.be
 [IPv6:2a02:1800:110:4::f00:19])
 by leibniz.telenet-ops.be (Postfix) with ESMTPS id 4824jk58FXzMqyRP
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 11:37:30 +0100 (CET)
Received: from ramsan ([84.195.182.253]) by laurent.telenet-ops.be with bizsmtp
 id sydS2100R5USYZQ01ydSJe; Tue, 21 Jan 2020 11:37:26 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1itquU-00011t-FO; Tue, 21 Jan 2020 11:37:26 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1itquU-0000Ua-E9; Tue, 21 Jan 2020 11:37:26 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Olof Johansson <olof@lixom.net>
Subject: [PATCH 18/20] ARM: realview: Drop unneeded select of multi-platform
 features
Date: Tue, 21 Jan 2020 11:37:20 +0100
Message-Id: <20200121103722.1781-18-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200121103722.1781-1-geert+renesas@glider.be>
References: <20200121103413.1337-1-geert+renesas@glider.be>
 <20200121103722.1781-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_023733_162962_55672421 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a02:1800:110:4:0:0:f00:d listed in] [list.dnswl.org]
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Linus Walleij <linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Support for ARM Ltd. RealView systems depends on ARCH_MULTIPLATFORM,
which selects USE_OF.
Support for ARMv6 and ARMv7 variants depends on ARCH_MULTI_V6 or
ARCH_MULTI_V7, which both select ARCH_MULTI_V6_V7 and thus
MIGHT_HAVE_CACHE_L2X0.
Support for ARMv7 variants depends on ARCH_MULTI_V7, which selects
HAVE_SMP.
Hence there is no need for the affected RealView-specific symbols to
select any of them.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Linus Walleij <linus.walleij@linaro.org>
---
All patches in this series are independent of each other.
Cover letter at https://lore.kernel.org/r/20200121103413.1337-1-geert+renesas@glider.be

 arch/arm/mach-realview/Kconfig | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/arm/mach-realview/Kconfig b/arch/arm/mach-realview/Kconfig
index 44ebbf9ec67364db..0f139a20e113d6c3 100644
--- a/arch/arm/mach-realview/Kconfig
+++ b/arch/arm/mach-realview/Kconfig
@@ -21,7 +21,6 @@ menuconfig ARCH_REALVIEW
 	select POWER_RESET_VERSATILE
 	select POWER_SUPPLY
 	select SOC_REALVIEW
-	select USE_OF
 	help
 	  This enables support for ARM Ltd RealView boards.
 
@@ -56,8 +55,6 @@ config REALVIEW_EB_ARM1176
 config REALVIEW_EB_A9MP
 	bool "Support Multicore Cortex-A9 Tile"
 	depends on MACH_REALVIEW_EB && ARCH_MULTI_V7
-	select HAVE_SMP
-	select MIGHT_HAVE_CACHE_L2X0
 	help
 	  Enable support for the Cortex-A9MPCore tile fitted to the
 	  Realview(R) Emulation Baseboard platform.
@@ -66,7 +63,6 @@ config REALVIEW_EB_ARM11MP
 	bool "Support ARM11MPCore Tile"
 	depends on MACH_REALVIEW_EB && ARCH_MULTI_V6
 	select HAVE_SMP
-	select MIGHT_HAVE_CACHE_L2X0
 	help
 	  Enable support for the ARM11MPCore tile fitted to the Realview(R)
 	  Emulation Baseboard platform.
@@ -75,7 +71,6 @@ config MACH_REALVIEW_PB11MP
 	bool "Support RealView(R) Platform Baseboard for ARM11MPCore"
 	depends on ARCH_MULTI_V6
 	select HAVE_SMP
-	select MIGHT_HAVE_CACHE_L2X0
 	help
 	  Include support for the ARM(R) RealView(R) Platform Baseboard for
 	  the ARM11MPCore.  This platform has an on-board ARM11MPCore and has
@@ -87,7 +82,6 @@ config MACH_REALVIEW_PB1176
 	depends on ARCH_MULTI_V6
 	select CPU_V6
 	select HAVE_TCM
-	select MIGHT_HAVE_CACHE_L2X0
 	help
 	  Include support for the ARM(R) RealView(R) Platform Baseboard for
 	  ARM1176JZF-S.
@@ -103,8 +97,6 @@ config MACH_REALVIEW_PBA8
 config MACH_REALVIEW_PBX
 	bool "Support RealView(R) Platform Baseboard Explore for Cortex-A9"
 	depends on ARCH_MULTI_V7
-	select HAVE_SMP
-	select MIGHT_HAVE_CACHE_L2X0
 	select ZONE_DMA
 	help
 	  Include support for the ARM(R) RealView(R) Platform Baseboard
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
