Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C4B8E418
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 06:49:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IWOPlD/Ckf00AIJOcRZPHkfWX1NCsnnOEqWqvlKEFlo=; b=caDQbbgV2UxEED
	PGAlZJTdZEuNi7vVZcHiD9JSnP//unnwQzr1AxxXDf/Cnjt81TBUPGINVF1pYT8RqC3x1GkdmPB7T
	RCZnr+1M8y8262riqjVZz4O6/MJik3NlkRjmY5stoDjA7669TZJE8iUNZSGuDfeVUBOyT7lO+tPSO
	Dl+WP+nAnvXT3YM1okOIJI5TprhdawNGbaWlicFSHQu6kplh6qoMWu6fsi1eo44S4NPOjnFvz+XEs
	3C0CYJ4dLcfm7M7Gek1d0E3PuB4KKIrsZon8KmbLUH9OHMTqQFjIEPtL3WKwPpDu/jYjqpw/nfngR
	NwvJ3G7q4iDnt2vs2HCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy7hV-0006vo-4d; Thu, 15 Aug 2019 04:49:25 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hy7hJ-0006vV-74
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 04:49:15 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 51FD380C8;
 Thu, 15 Aug 2019 04:49:39 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL] fixes for omap variants for v5.3-rc cycle
Date: Wed, 14 Aug 2019 21:49:08 -0700
Message-Id: <pull-1565844391-332885@atomide.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_214913_299191_4B8A3F3A 
X-CRM114-Status: GOOD (  12.23  )
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
Cc: Tony Lindgren <tony@atomide.com>, linux-omap@vger.kernel.org,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Tony Lindgren" <tony@atomide.com>

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.3/fixes-rc4

for you to fetch changes up to 4a65bbb9109ed7edd4b6ed7168ced48abb8561a2:

  soc: ti: pm33xx: Make two symbols static (2019-08-13 05:05:38 -0700)

----------------------------------------------------------------
Fixes for omap variants for v5.3-rc cycle

We have another fix to disable voltage switching for am57xx SDIO as
the bootrom cannot handle all the voltages after a reset that thought
I had already sent a pull request for earlier but forgot. And we also
update dra74x iodelay configuration for mmc3 to use the recommended
values.

Then I noticed we had introduced few new boot warnings with the various
recent ti-sysc changes and wanted to fix those. I also noticed we still
have too many warnings to be able to spot the real ones easily and fixed
up few of those. Sure some of the warnings have been around for a long
time and few of the fixes could have waited for the merge window, but
having more usable dmesg log level output is a valuable.

Other fixes are IO size correction for am335x UARTs that cause issues
for at least FreeBSD using the same device tree file that checks that
the child IO range is not larger than the parent has.

For omap1 ams-delta keyboard we need to fix a irq ack that broke with
all the recent gpio changes.

And there are also few static checker warning fixes for recent am335x
PM changes and ti-sysc driver and one switch fall-though update.

----------------------------------------------------------------
Emmanuel Vadot (1):
      ARM: dts: am335x: Fix UARTs length

Faiz Abbas (2):
      ARM: dts: am57xx: Disable voltage switching for SD card
      ARM: dts: dra74x: Fix iodelay configuration for mmc3

Gustavo A. R. Silva (1):
      ARM: OMAP: dma: Mark expected switch fall-throughs

Janusz Krzysztofik (1):
      ARM: OMAP1: ams-delta-fiq: Fix missing irq_ack

Keerthy (1):
      soc: ti: pm33xx: Fix static checker warnings

Suman Anna (1):
      bus: ti-sysc: Simplify cleanup upon failures in sysc_probe()

Tony Lindgren (10):
      Merge commit '79499bb11db508' into fixes
      ARM: OMAP2+: Fix missing SYSC_HAS_RESET_STATUS for dra7 epwmss
      bus: ti-sysc: Fix handling of forced idle
      bus: ti-sysc: Fix using configured sysc mask value
      ARM: dts: Fix flags for gpio7
      ARM: dts: Fix incorrect dcan register mapping for am3, am4 and dra7
      ARM: OMAP2+: Fix omap4 errata warning on other SoCs
      Merge branch 'ti-sysc-fixes' into fixes
      ARM: dts: Fix incomplete dts data for am3 and am4 mmc
      Merge branch 'ti-sysc-fixes' into fixes

YueHaibing (1):
      soc: ti: pm33xx: Make two symbols static

 arch/arm/boot/dts/am33xx-l4.dtsi                | 16 +++++---
 arch/arm/boot/dts/am33xx.dtsi                   | 32 +++++++++++++---
 arch/arm/boot/dts/am4372.dtsi                   | 32 +++++++++++++---
 arch/arm/boot/dts/am437x-l4.dtsi                |  4 ++
 arch/arm/boot/dts/am571x-idk.dts                |  7 +---
 arch/arm/boot/dts/am572x-idk.dts                |  7 +---
 arch/arm/boot/dts/am574x-idk.dts                |  7 +---
 arch/arm/boot/dts/am57xx-beagle-x15-common.dtsi |  3 +-
 arch/arm/boot/dts/am57xx-beagle-x15-revb1.dts   |  7 +---
 arch/arm/boot/dts/am57xx-beagle-x15-revc.dts    |  7 +---
 arch/arm/boot/dts/dra7-evm.dts                  |  2 +-
 arch/arm/boot/dts/dra7-l4.dtsi                  |  6 +--
 arch/arm/boot/dts/dra74x-mmc-iodelay.dtsi       | 50 ++++++++++++-------------
 arch/arm/mach-omap1/ams-delta-fiq-handler.S     |  3 +-
 arch/arm/mach-omap1/ams-delta-fiq.c             |  4 +-
 arch/arm/mach-omap2/omap4-common.c              |  3 ++
 arch/arm/mach-omap2/omap_hwmod_7xx_data.c       |  3 +-
 arch/arm/plat-omap/dma.c                        | 14 +++----
 drivers/bus/ti-sysc.c                           | 24 ++++++------
 drivers/soc/ti/pm33xx.c                         | 19 ++++++----
 20 files changed, 138 insertions(+), 112 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
