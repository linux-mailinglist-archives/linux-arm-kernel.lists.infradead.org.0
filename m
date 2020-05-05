Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B72B1C5AAF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 17:11:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/Lohub0GOTTVQYl5IxbvzvtrBxI3NAEiD1lhl8uyGO4=; b=X4ZM9m6PwFQsf/XWZBY8vLJY3+
	/OXUblknku0U96CX2DkA7dRTaXlNkXzv7KVzuf+pF6P0M7Zq7vkAGmu7TFrxf/4VrPFgTFcUFzDDP
	/TxFjF7uK4Ig4MbsRAqD6IX4CUr+OfiYR4gKZPsHalFgeA5FyLmq2c9v/NxcfKquGxWKA/Q9L8e9I
	xlIxyAkV87FVmzVJOUJQty19f1MuRtnW7vtVPulAuFaFDw0yAq/omNtAafzpStNlX1ndEw/As525b
	RVzQNQikJTO3mOxzgnJ8Tlwd3aFQ5MBjcfnVeeb6Qb4+TvqAjKBpO5r/Oqk3EmaiyMyeaPE0aswpo
	V6jjWcDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVzDt-0003qS-6c; Tue, 05 May 2020 15:11:05 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVzAg-0006rE-5S
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 15:07:49 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:bd97:8453:3b10:1832])
 by baptiste.telenet-ops.be with bizsmtp
 id b37U2200h3VwRR30137UdS; Tue, 05 May 2020 17:07:28 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jVzAO-00028c-7r; Tue, 05 May 2020 17:07:28 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jVzAO-0000R5-5s; Tue, 05 May 2020 17:07:28 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: soc@kernel.org
Subject: [PATCH v2 14/15] ARM: realview: Drop unneeded select of
 multi-platform features
Date: Tue,  5 May 2020 17:07:21 +0200
Message-Id: <20200505150722.1575-15-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505150722.1575-1-geert+renesas@glider.be>
References: <20200505150722.1575-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_080746_459747_504641FE 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:13 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Arnd Bergmann <arnd@arndb.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Olof Johansson <olof@lixom.net>,
 linux-arm-kernel@lists.infradead.org
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
Acked-by: Arnd Bergmann <arnd@arndb.de>
---
v2:
  - Add Acked-by.
---
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
