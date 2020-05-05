Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4E51C5AB4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 17:11:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KUwgYSFzrO+Z3oOBmVmaKQmKoEz3MT/32LlDu9SBYYM=; b=E3+A1qcInFEYfl
	XgrEZgNgGfrVbUedNqxbidhKgd/QsWA+BfI96irvpOX0HyBiWBphVrWDGiMDUlpwqiwRciMAyXu8G
	zxw8gs+okc5gt3SYShH1s7swYWyEChfhfSvaR2cdoF2o1FDZIh3fQ4KQ7H+RFWfdP9vI57/EgsB+/
	QmQEfLF8kXZN3fUk5TaakmU2UXMtdsbTTqbZY6wSncUQiwMXavCgdMZ2UNAX8jCOr0hKkslo75Lce
	PfB+fSX+D572G8EqMpJz+Ht98nM4l5uFYgQb22raawX6c/dGrwpfbyg7NR8ziQbUwtbOG/Nbg0Mby
	rlaqb0UYALdc0LEYnXWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVzET-0004Nc-Qd; Tue, 05 May 2020 15:11:41 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVzAk-0006rG-FQ
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 15:07:52 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:bd97:8453:3b10:1832])
 by baptiste.telenet-ops.be with bizsmtp
 id b37T2200Y3VwRR30137TdA; Tue, 05 May 2020 17:07:28 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jVzAN-00027v-KP; Tue, 05 May 2020 17:07:27 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jVzAN-0000QN-HZ; Tue, 05 May 2020 17:07:27 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: soc@kernel.org
Subject: [PATCH v2 00/15] ARM: Drop unneeded select of multi-platform selected
 options
Date: Tue,  5 May 2020 17:07:07 +0200
Message-Id: <20200505150722.1575-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_080750_702940_F6A47D13 
X-CRM114-Status: GOOD (  11.10  )
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
 Kevin Hilman <khilman@kernel.org>, linux-kernel@vger.kernel.org,
 Olof Johansson <olof@lixom.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

	Hi arm-soc folks,

This patch series drops select statements from the various
platform-specific Kconfig files, for symbols that are already selected
by the various multi-platform related config options
(ARCH_MULTIPLATFORM, ARCH_MULTI_V*, and ARM_SINGLE_ARMV7M).
This makes it easier to e.g. identify platforms that are not yet part of
multi-platform builds, but already use some multi-platform features
(e.g. "COMMON_CLK" is used by multi-platform + s3c24xx).

This series contains the patches from [1] and [2] that haven't been
applied yet.

Changes compared to v1:
  - Add Acked-by, Reviewed-by.

Thanks for applying!

[1] "[PATCH] ARM: arch timer: Drop unneeded select GENERIC_CLOCKEVENTS"
    https://lore.kernel.org/r/20200121100608.32218-1-geert+renesas@glider.be
[2] "[PATCH 00/20] ARM: Drop unneeded select of multi-platform selected
     options"
    https://lore.kernel.org/r/20200121103413.1337-1-geert+renesas@glider.be

Geert Uytterhoeven (15):
  ARM: arch timer: Drop unneeded select GENERIC_CLOCKEVENTS
  ARM: actions: Drop unneeded select of COMMON_CLK
  ARM: alpine: Drop unneeded select of HAVE_SMP
  ARM: asm9260: Drop unneeded select of GENERIC_CLOCKEVENTS
  ARM: aspeed: Drop unneeded select of HAVE_SMP
  ARM: berlin: Drop unneeded select of HAVE_SMP
  ARM: clps711x: Drop unneeded select of multi-platform selected options
  ARM: davinci: Drop unneeded select of TIMER_OF
  ARM: integrator: Drop unneeded select of SPARSE_IRQ
  ARM: mmp: Drop unneeded select of COMMON_CLK
  ARM: mvebu: Drop unneeded select of HAVE_SMP
  ARM: omap2plus: Drop unneeded select of MIGHT_HAVE_CACHE_L2X0
  ARM: prima2: Drop unneeded select of HAVE_SMP
  ARM: realview: Drop unneeded select of multi-platform features
  ARM: socfpga: Drop unneeded select of PCI_DOMAINS_GENERIC

 arch/arm/Kconfig                 | 1 -
 arch/arm/mach-actions/Kconfig    | 1 -
 arch/arm/mach-alpine/Kconfig     | 1 -
 arch/arm/mach-asm9260/Kconfig    | 1 -
 arch/arm/mach-aspeed/Kconfig     | 1 -
 arch/arm/mach-berlin/Kconfig     | 1 -
 arch/arm/mach-clps711x/Kconfig   | 5 -----
 arch/arm/mach-davinci/Kconfig    | 1 -
 arch/arm/mach-integrator/Kconfig | 1 -
 arch/arm/mach-mmp/Kconfig        | 1 -
 arch/arm/mach-mvebu/Kconfig      | 3 ---
 arch/arm/mach-omap2/Kconfig      | 1 -
 arch/arm/mach-prima2/Kconfig     | 1 -
 arch/arm/mach-realview/Kconfig   | 8 --------
 arch/arm/mach-socfpga/Kconfig    | 1 -
 15 files changed, 28 deletions(-)

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
