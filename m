Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8ECA143C49
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 12:49:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pW/MpeN9J79xtJ3P7jEVFMgt836sy/koMOyrCnw1WLg=; b=ADFg1eVJVYBXqIaidtfKsVGNsO
	uzskfoUfd2MCDFSX9B4jFY6qxhq3BJ1gOSEDjGdSSEwUwOcqB9l/T52eIG81yl4UK8NDUa4EDTVPu
	8cAHMRb1zpt0C8RbBMDN0nuDKI+IPT8+zb28gLOUEu3FFnnMwAbFAIuJbei+iNCYbTK04iSn9Pw9w
	EN53a02X5XRt6s8KZd9odKGEh+0HJc9MRSTNhxXmNXeKiLWtSMiaD+E8nM9Adi4Awi6g+2SmDiDdD
	7ZeKbR81lEqudrnXTA8KnCsXQhyppLla0lYt8hvPDGb0ZQAYRkLOI7kYOWZnSZByTL5KygmWsBbmG
	s6ZU3HxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1its1p-0007dK-T8; Tue, 21 Jan 2020 11:49:05 +0000
Received: from andre.telenet-ops.be ([2a02:1800:120:4::f00:15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itquY-00026K-JV
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:37:47 +0000
Received: from ramsan ([84.195.182.253]) by andre.telenet-ops.be with bizsmtp
 id sydS2100P5USYZQ01ydSJy; Tue, 21 Jan 2020 11:37:27 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1itquU-00011n-Du; Tue, 21 Jan 2020 11:37:26 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1itquU-0000UT-CZ; Tue, 21 Jan 2020 11:37:26 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Olof Johansson <olof@lixom.net>
Subject: [PATCH 16/20] ARM: orion5x: Drop unneeded select of
 PCI_DOMAINS_GENERIC
Date: Tue, 21 Jan 2020 11:37:18 +0100
Message-Id: <20200121103722.1781-16-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200121103722.1781-1-geert+renesas@glider.be>
References: <20200121103413.1337-1-geert+renesas@glider.be>
 <20200121103722.1781-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_023730_819051_D4917DE5 
X-CRM114-Status: UNSURE (   7.67  )
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

Support for Marvell Orion SoCs depends on ARCH_MULTI_V5, and thus on
ARCH_MULTIPLATFORM.
As the latter selects GENERIC_CLOCKEVENTS and USE_OF, there is no need
for ARCH_ORION5X and ARCH_ORION5X_DT to select any of them.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Jason Cooper <jason@lakedaemon.net>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Gregory Clement <gregory.clement@bootlin.com>
---
All patches in this series are independent of each other.
Cover letter at https://lore.kernel.org/r/20200121103413.1337-1-geert+renesas@glider.be

 arch/arm/mach-orion5x/Kconfig | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/mach-orion5x/Kconfig b/arch/arm/mach-orion5x/Kconfig
index cf9cb3d2590ec19b..e94a61901ffd86b4 100644
--- a/arch/arm/mach-orion5x/Kconfig
+++ b/arch/arm/mach-orion5x/Kconfig
@@ -3,7 +3,6 @@ menuconfig ARCH_ORION5X
 	bool "Marvell Orion"
 	depends on MMU && ARCH_MULTI_V5
 	select CPU_FEROCEON
-	select GENERIC_CLOCKEVENTS
 	select GPIOLIB
 	select MVEBU_MBUS
 	select FORCE_PCI
@@ -18,7 +17,6 @@ if ARCH_ORION5X
 
 config ARCH_ORION5X_DT
 	bool "Marvell Orion5x Flattened Device Tree"
-	select USE_OF
 	select ORION_CLK
 	select ORION_IRQCHIP
 	select ORION_TIMER
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
