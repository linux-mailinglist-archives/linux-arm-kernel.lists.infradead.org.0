Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E6F143C4A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 12:49:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fHCGp5MAECYX50YQNz74hKKag8TOQXSOnAxsNG9q90E=; b=ZmCI9v2dfNNPWvy9HRm3Uun6cd
	KQL817Z0LIfk5z1kaQR3yDU40UUujuc4XxRuCEMCzH37e685pzGWg7MBHMJUWSLUH6MvgJ0r7oPKq
	/Um/rpgEUnsbNjljIis40bOjnyQtc8yLamd91JLKT91eZfqP6+cIlWwv1wQ06al2NQbyg+GCU9hGO
	r48wrK2fsDsV59M36CU4jysYHoTMUmncAB+D+xYvnkjxkH4Neqb9AsnMDf4DOi0STk0H+Z7BnhJHO
	8BkD1pCPwVwAMD5unG1AvEfVuICNkxn6X00WaiJ02DGKEugKqy6JIwiOI10lP70ERXJDyewXoqBjW
	/yD1QEfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1its1z-0007re-Kk; Tue, 21 Jan 2020 11:49:15 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itquY-00027u-OB
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:37:47 +0000
Received: from ramsan ([84.195.182.253]) by michel.telenet-ops.be with bizsmtp
 id sydS2100R5USYZQ06ydSyE; Tue, 21 Jan 2020 11:37:26 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1itquU-00011i-Cd; Tue, 21 Jan 2020 11:37:26 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1itquU-0000UO-Au; Tue, 21 Jan 2020 11:37:26 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Olof Johansson <olof@lixom.net>
Subject: [PATCH 14/20] ARM: mvebu: Drop unneeded select of HAVE_SMP
Date: Tue, 21 Jan 2020 11:37:16 +0100
Message-Id: <20200121103722.1781-14-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200121103722.1781-1-geert+renesas@glider.be>
References: <20200121103413.1337-1-geert+renesas@glider.be>
 <20200121103722.1781-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_023730_941946_3DA9E226 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a02:1800:110:4:0:0:f00:18 listed in] [list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Gregory Clement <gregory.clement@bootlin.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Support for Marvell Armada 375, 380, 385, and 39x SoCs depends on
ARCH_MULTI_V7.
As the latter selects HAVE_SMP, there is no need for MACH_ARMADA_375,
MACH_ARMADA_38X, and MACH_ARMADA_39X to select HAVE_SMP.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Jason Cooper <jason@lakedaemon.net>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Gregory Clement <gregory.clement@bootlin.com>
Cc: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
All patches in this series are independent of each other.
Cover letter at https://lore.kernel.org/r/20200121103413.1337-1-geert+renesas@glider.be

 arch/arm/mach-mvebu/Kconfig | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
index 7a5629b9bede4e3f..34dbeaab94b07e52 100644
--- a/arch/arm/mach-mvebu/Kconfig
+++ b/arch/arm/mach-mvebu/Kconfig
@@ -47,7 +47,6 @@ config MACH_ARMADA_375
 	select ARMADA_375_CLK
 	select HAVE_ARM_SCU
 	select HAVE_ARM_TWD if SMP
-	select HAVE_SMP
 	select MACH_MVEBU_V7
 	select PINCTRL_ARMADA_375
 	help
@@ -66,7 +65,6 @@ config MACH_ARMADA_38X
 	select ARMADA_38X_CLK
 	select HAVE_ARM_SCU
 	select HAVE_ARM_TWD if SMP
-	select HAVE_SMP
 	select MACH_MVEBU_V7
 	select PINCTRL_ARMADA_38X
 	help
@@ -82,7 +80,6 @@ config MACH_ARMADA_39X
 	select CACHE_L2X0
 	select HAVE_ARM_SCU
 	select HAVE_ARM_TWD if SMP
-	select HAVE_SMP
 	select MACH_MVEBU_V7
 	select PINCTRL_ARMADA_39X
 	help
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
