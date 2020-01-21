Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1B6143B14
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:35:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=eWMBKSQ+Uev56sXDCEnwwdtjwzOS5z4XMQHCogu0e6I=; b=Qwa
	84hXY4ppy6NYSj3H0x6fBsZO19bLcFfIAqjKAIK+86+8WDsjRFE0jP7sRKSbqTZShmYDa0q6YPnf5
	rvqbkUQF+RkWNcsliCoU49LNWopG/1F6DMp1ysTUSMXDgGciK0lfzUk5VOUwI9/lFGfeGR8Fpufhj
	bKXmqMpbQmNIR5LOq5A6VfwGRiDJdloKK+OynMpY8eovkjqTouc0pudvdDQGoLv+UmC9OzpvXV/7d
	bf+Ra0YWhDeHGsq2LUopUWriaKTG/8OFMB16VQ89nadYrtoHDfDMuE1udFtySgglRQS3+jqYCAIQP
	AU9x5/cOBgrdfNgAlqc1kOI5PUKNGAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqs3-0000N1-93; Tue, 21 Jan 2020 10:34:55 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqrc-0000AW-M2
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:34:30 +0000
Received: from ramsan ([84.195.182.253]) by xavier.telenet-ops.be with bizsmtp
 id syaJ210175USYZQ01yaJ3s; Tue, 21 Jan 2020 11:34:19 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1itqrS-0000wf-RQ; Tue, 21 Jan 2020 11:34:18 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1itqrS-0000ML-PG; Tue, 21 Jan 2020 11:34:18 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Olof Johansson <olof@lixom.net>
Subject: [PATCH 00/20] ARM: Drop unneeded select of multi-platform selected
 options
Date: Tue, 21 Jan 2020 11:34:13 +0100
Message-Id: <20200121103413.1337-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_023428_878296_BE567422 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a02:1800:120:4:0:0:f00:14 listed in] [list.dnswl.org]
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
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

	Hi all,

This patch series drops select statements from the various
platform-specific Kconfig files, for symbols that are already selected
by the various multi-platform related config options
(ARCH_MULTIPLATFORM, ARCH_MULTI_V*, and ARM_SINGLE_ARMV7M).
This makes it easier to e.g. identify platforms that are not yet part of
multi-platform builds, but already use some multi-platform features
(e.g. "COMMON_CLK" is used by multi-platform + s3c24xx).

All patches in this series are independent of each other.

This has been tested by running "make oldconfig" on .config files
expanded before from all defconfig files, which triggered no changes.

Thanks!

Geert Uytterhoeven (20):
  ARM: actions: Drop unneeded select of COMMON_CLK
  ARM: alpine: Drop unneeded select of HAVE_SMP
  ARM: asm9260: Drop unneeded select of GENERIC_CLOCKEVENTS
  ARM: aspeed: Drop unneeded select of HAVE_SMP
  ARM: at91: Drop unneeded select of COMMON_CLK
  ARM: bcm: Drop unneeded select of PCI_DOMAINS_GENERIC, HAVE_SMP,
    TIMER_OF
  ARM: berlin: Drop unneeded select of HAVE_SMP
  ARM: clps711x: Drop unneeded select of multi-platform selected options
  ARM: davinci: Drop unneeded select of TIMER_OF
  ARM: exynos: Drop unneeded select of MIGHT_HAVE_CACHE_L2X0
  ARM: integrator: Drop unneeded select of SPARSE_IRQ
  ARM: meson: Drop unneeded select of COMMON_CLK
  ARM: mmp: Drop unneeded select of COMMON_CLK
  ARM: mvebu: Drop unneeded select of HAVE_SMP
  ARM: omap2plus: Drop unneeded select of MIGHT_HAVE_CACHE_L2X0
  ARM: orion5x: Drop unneeded select of PCI_DOMAINS_GENERIC
  ARM: prima2: Drop unneeded select of HAVE_SMP
  ARM: realview: Drop unneeded select of multi-platform features
  ARM: s3c64xx: Drop unneeded select of TIMER_OF
  ARM: socfpga: Drop unneeded select of PCI_DOMAINS_GENERIC

 arch/arm/mach-actions/Kconfig    | 1 -
 arch/arm/mach-alpine/Kconfig     | 1 -
 arch/arm/mach-asm9260/Kconfig    | 1 -
 arch/arm/mach-aspeed/Kconfig     | 1 -
 arch/arm/mach-at91/Kconfig       | 1 -
 arch/arm/mach-bcm/Kconfig        | 8 --------
 arch/arm/mach-berlin/Kconfig     | 1 -
 arch/arm/mach-clps711x/Kconfig   | 5 -----
 arch/arm/mach-davinci/Kconfig    | 1 -
 arch/arm/mach-exynos/Kconfig     | 1 -
 arch/arm/mach-integrator/Kconfig | 1 -
 arch/arm/mach-meson/Kconfig      | 1 -
 arch/arm/mach-mmp/Kconfig        | 1 -
 arch/arm/mach-mvebu/Kconfig      | 3 ---
 arch/arm/mach-omap2/Kconfig      | 1 -
 arch/arm/mach-orion5x/Kconfig    | 2 --
 arch/arm/mach-prima2/Kconfig     | 1 -
 arch/arm/mach-realview/Kconfig   | 8 --------
 arch/arm/mach-s3c64xx/Kconfig    | 1 -
 arch/arm/mach-socfpga/Kconfig    | 1 -
 20 files changed, 41 deletions(-)

-- 
2.17.1

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
