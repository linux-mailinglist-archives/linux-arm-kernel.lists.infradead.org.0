Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D52143C4B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 12:49:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=f3NsnnVC/YyzRYPwNp5yFMs39dGjRriWMS3x++O7IsU=; b=HsgJSW3ZHCAptASJ+jvUvCkl6b
	NrPWViLyJKH5rgwmGYvnIZ7PhBvkY5SgZQFOOADd/vIFXiIda+g//8jNma2kvIgv4v8jVwuLhluvJ
	jvRaA7xK0mU8C8SLK/9HA8IWEauF09lWZxDz3QjAd+vITcDcdQxutTTYD0Q3llSNpYwWEz7y8L/J3
	MQoDBXci6MwvT3UtDDcrfwFtACbmC59ZGGcnBKuqRSgLgp0YSeImuhDjglgzPs1rlmU22HdhTfKkY
	ZmzFg2T7Ocgv4aqidDldwc1GVS4lR3UaJel7yR7G4uom82oyH1PQp1LMayFusfzvGFsqCRXr6XDta
	AAi571Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1its2K-00085B-6V; Tue, 21 Jan 2020 11:49:36 +0000
Received: from andre.telenet-ops.be ([2a02:1800:120:4::f00:15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itquZ-00028H-35
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:37:48 +0000
Received: from ramsan ([84.195.182.253]) by andre.telenet-ops.be with bizsmtp
 id sydS2100M5USYZQ01ydSK6; Tue, 21 Jan 2020 11:37:29 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1itquU-00011j-Cx; Tue, 21 Jan 2020 11:37:26 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1itquU-0000UR-Bk; Tue, 21 Jan 2020 11:37:26 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Olof Johansson <olof@lixom.net>
Subject: [PATCH 15/20] ARM: omap2plus: Drop unneeded select of
 MIGHT_HAVE_CACHE_L2X0
Date: Tue, 21 Jan 2020 11:37:17 +0100
Message-Id: <20200121103722.1781-15-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200121103722.1781-1-geert+renesas@glider.be>
References: <20200121103413.1337-1-geert+renesas@glider.be>
 <20200121103722.1781-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_023731_286969_051CD8DE 
X-CRM114-Status: UNSURE (   8.08  )
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
Cc: Tony Lindgren <tony@atomide.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-omap@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Support for TI AM43x SoCs depends on ARCH_MULTI_V7, which selects
ARCH_MULTI_V6_V7.
As the latter selects MIGHT_HAVE_CACHE_L2X0, there is no need for
SOC_AM43XX to select MIGHT_HAVE_CACHE_L2X0.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Tony Lindgren <tony@atomide.com>
Cc: linux-omap@vger.kernel.org
---
All patches in this series are independent of each other.
Cover letter at https://lore.kernel.org/r/20200121103413.1337-1-geert+renesas@glider.be

 arch/arm/mach-omap2/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/mach-omap2/Kconfig b/arch/arm/mach-omap2/Kconfig
index dca7d06c0b938619..ea23205bf70f4df6 100644
--- a/arch/arm/mach-omap2/Kconfig
+++ b/arch/arm/mach-omap2/Kconfig
@@ -66,7 +66,6 @@ config SOC_AM43XX
 	select ARCH_OMAP2PLUS
 	select ARM_GIC
 	select MACH_OMAP_GENERIC
-	select MIGHT_HAVE_CACHE_L2X0
 	select HAVE_ARM_SCU
 	select GENERIC_CLOCKEVENTS_BROADCAST
 	select HAVE_ARM_TWD
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
