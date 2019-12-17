Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E424121F58
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 01:20:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2VTAp1is7P67aqTg0BvbF3d5PJMmcbkpnTFJiCjzkeA=; b=MoBIMvBxz28Kpf
	v39zmzdpYvDbn5/lDp6G8/oMjNme0VEU1hYZbfT3KwnpzJ0kOazsFpWgH0EOWomt1Rrlwh4IjGCbG
	7Cj8/xrU8UNstnRhKjcm0r+ZP6MhVoHdO14SSmzCmdaROLLRJNkukd8xkARmeffJIE9q0sAVViMuA
	FFcURy39o2nLAMW5C968LGHnMTZ7AiMh5YmwGk14zdk+9K3KzsQ267UMTOF+UFMnVSSCHQf88l3dm
	vj6vOF+HnyleBP1gCZOxabRfRAhOW1V9eeiuf3TJMuUb/0QjFbSTeLjgPIpCghapmKNjbnpkyMCVN
	3+/dxAc0/rr3LKDPjjtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih0aw-00019n-ET; Tue, 17 Dec 2019 00:20:10 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih0aV-000184-Ed
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 00:19:45 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 2B888810D;
 Tue, 17 Dec 2019 00:20:22 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 00/14] Remove legacy sdma code for dt booting omaps
Date: Mon, 16 Dec 2019 16:19:11 -0800
Message-Id: <20191217001925.44558-1-tony@atomide.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_161943_533306_B9D484F7 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Vinod Koul <vinod.koul@intel.com>,
 Vinod Koul <vkoul@kernel.org>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

This series finally removes the legacy sdma code for omaps booting with
devicetree. The legacy sdma code is still left for omap1, but makes
further work a bit easier.

We do the removal of legacy sdma code with the following steps:

- Prepare for platform data removal by probing sdma with device tree
  data for the interconnect target module

- Drop unused code and legacy interrupt code for omap2 and later

- Update dmaengine driver to use device tree match data and add
  missing features

- Allocate logical channels directly in the dmaengine driver

- Drop legacy platform init and data

The patches are against v5.5-rc1, and need the following fixes:

2c81f0f6d3f5 ("bus: ti-sysc: Fix iterating over clocks")
e709ed70d122 ("bus: ti-sysc: Fix missing reset delay handling")
93c60483b5fe ("bus: ti-sysc: Fix missing force mstandby quirk handling")
90bdfa0b05e3 ("ARM: OMAP2+: Fix ti_sysc_find_one_clockdomain to check for to_clk_hw_omap")

To make testing easier, I've also pushed out a testing branch at [0][1].

Regards,

Tony


[0] git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap.git omap-for-v5.6/sdma-testing
[1] https://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap.git/log/?h=omap-for-v5.6/sdma-testing


Tony Lindgren (14):
  ARM: dts: Add generic compatible for omap sdma instances
  ARM: dts: Configure interconnect target module for omap2 sdma
  ARM: dts: Configure interconnect target module for omap3 sdma
  ARM: OMAP2+: Drop unused sdma functions
  ARM: OMAP2+: Drop sdma interrupt handling for mach-omap2
  ARM: OMAP2+: Configure sdma capabilities directly
  ARM: OMAP2+: Configure dma_plat_info directly and drop dma_dev_attr
  dmaengine: ti: omap-dma: Add device tree match data and use it for
    cpu_pm
  dmaengine: ti: omap-dma: Configure global priority register directly
  dmaengine: ti: omap-dma: Pass sdma auxdata to driver and use it
  dmaengine: ti: omap-dma: Allocate channels directly
  dmaengine: ti: omap-dma: Use cpu notifier to block idle for omap2
  ARM: OMAP2+: Drop legacy init for sdma
  ARM: OMAP2+: Drop legacy platform data for sdma

 arch/arm/boot/dts/dra7-l4.dtsi                |   3 +-
 arch/arm/boot/dts/omap2.dtsi                  |  43 +-
 arch/arm/boot/dts/omap2430.dtsi               |   4 +
 arch/arm/boot/dts/omap3-n900.dts              |   5 +
 arch/arm/boot/dts/omap3.dtsi                  |  46 +-
 arch/arm/boot/dts/omap36xx.dtsi               |   4 +
 arch/arm/boot/dts/omap4-l4.dtsi               |   3 +-
 arch/arm/boot/dts/omap5-l4.dtsi               |   3 +-
 arch/arm/mach-omap2/common.h                  |   3 +
 arch/arm/mach-omap2/dma.c                     | 119 +----
 arch/arm/mach-omap2/omap_device.c             | 170 -------
 arch/arm/mach-omap2/omap_device.h             |   4 -
 arch/arm/mach-omap2/omap_hwmod_2420_data.c    |  34 --
 arch/arm/mach-omap2/omap_hwmod_2430_data.c    |  34 --
 .../mach-omap2/omap_hwmod_2xxx_ipblock_data.c |  18 -
 arch/arm/mach-omap2/omap_hwmod_3xxx_data.c    |  61 ---
 arch/arm/mach-omap2/omap_hwmod_44xx_data.c    |  69 ---
 arch/arm/mach-omap2/omap_hwmod_54xx_data.c    |  61 ---
 arch/arm/mach-omap2/omap_hwmod_7xx_data.c     |  61 ---
 arch/arm/mach-omap2/omap_hwmod_common_data.h  |   1 -
 arch/arm/mach-omap2/pdata-quirks.c            |   1 +
 arch/arm/mach-omap2/pm24xx.c                  |  22 +-
 arch/arm/mach-omap2/pm34xx.c                  |   5 -
 arch/arm/plat-omap/dma.c                      | 471 +-----------------
 drivers/dma/ti/omap-dma.c                     | 288 ++++++++++-
 include/linux/omap-dma.h                      |  18 -
 26 files changed, 391 insertions(+), 1160 deletions(-)

-- 
2.24.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
