Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A28651DEE9D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 19:49:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oQOH7ktM52hGHueiXvy7/cOKneiuY4U5hT/yOwmsrcg=; b=aNJ6DKRpvRV0yP
	aXaNn7uft1haE5+SFhPlc0JoFc/Qqn6yNYctp8/oXPMeVEKvF5Cnta067E0MmKwgrQOibV7MglSpD
	EU2QzlJD+Ajnm7bcJDorxpDlSwGAEfwZuRXFoHsT8uy/WTf5wx2tGPrw/MwpdMTC+bqDcvHOerRqa
	HHFhxOMbUGJ6JiVzL80FcXADn1amDOgwX6AD7AfM5FvBgiBwpmIcQd4oeE9CTlSzzvDjVSCb/Q7TC
	tXjghKOr+Q0BqrjO0M66kzBTg3eL9q+0xtX4Cqizj/DGWM+Kwk87y7xGcyKEZqkDL9GYVeECr5sZX
	FwQddBSPd/Fbcl7//mNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcBne-0007eg-HW; Fri, 22 May 2020 17:49:38 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcBnS-0007dY-B7
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 17:49:29 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 3ED088087;
 Fri, 22 May 2020 17:50:11 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL] System timer changes for omaps for v5.8
Date: Fri, 22 May 2020 10:49:13 -0700
Message-Id: <pull-1590169577-735045@atomide.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_104926_414801_575C3BA2 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 arm@kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Tony Lindgren" <tony@atomide.com>

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.8/timer-signed

for you to fetch changes up to 1a5428119bc36b0a882e87fe2620c769ba655763:

  bus: ti-sysc: Timers no longer need legacy quirk handling (2020-05-19 09:38:05 -0700)

----------------------------------------------------------------
System timer changes for omaps for v5.8 merge window

This series of changes finally gets the legacy omap dual-mode timer and
32k counter system timer updated to use drivers/clocksource and device
tree data. And we can now remove the unused legacy platform data.

These changes are based on an immutable clocksource branch set up by
Daniel Lezcano.

----------------------------------------------------------------
Tony Lindgren (15):
      clocksource/drivers/timer-ti-32k: Add support for initializing directly
      clocksource/drivers/timer-ti-dm: Add clockevent and clocksource support
      clocksource/drivers/timer-ti-dm: Fix warning for set but not used
      clk: ti: dm816: enable sysclk6_ck on init
      bus: ti-sysc: Ignore timer12 on secure omap3
      ARM: OMAP2+: Add omap_init_time_of()
      ARM: dts: Configure system timers for am335x
      ARM: dts: Configure system timers for am437x
      ARM: dts: Configure system timers for omap4
      ARM: dts: Configure system timers for omap5 and dra7
      ARM: dts: Configure system timers for omap3
      ARM: dts: Configure system timers for ti81xx
      ARM: dts: Configure system timers for omap2
      ARM: OMAP2+: Drop old timer code for dmtimer and 32k counter
      bus: ti-sysc: Timers no longer need legacy quirk handling

 arch/arm/boot/dts/am33xx-l4.dtsi                   |   6 +-
 arch/arm/boot/dts/am33xx.dtsi                      |  20 +
 arch/arm/boot/dts/am3517.dtsi                      |  24 +-
 arch/arm/boot/dts/am4372.dtsi                      |  20 +
 arch/arm/boot/dts/am437x-l4.dtsi                   |   7 +-
 arch/arm/boot/dts/dm814x.dtsi                      |  74 ++-
 arch/arm/boot/dts/dm816x.dtsi                      |  78 ++-
 arch/arm/boot/dts/dra7-l4.dtsi                     |   7 +-
 arch/arm/boot/dts/dra7.dtsi                        |  10 +
 arch/arm/boot/dts/omap2.dtsi                       |  31 +-
 arch/arm/boot/dts/omap2420.dtsi                    |  68 +-
 arch/arm/boot/dts/omap2430.dtsi                    |  68 +-
 arch/arm/boot/dts/omap3-beagle.dts                 |  33 +
 arch/arm/boot/dts/omap3-devkit8000.dts             |  33 +
 arch/arm/boot/dts/omap3.dtsi                       | 134 +++-
 arch/arm/boot/dts/omap4-l4.dtsi                    |   4 +-
 arch/arm/boot/dts/omap4.dtsi                       |  10 +
 arch/arm/boot/dts/omap5-l4.dtsi                    |   4 +-
 arch/arm/boot/dts/omap5.dtsi                       |  10 +
 arch/arm/mach-omap2/Makefile                       |   4 +-
 arch/arm/mach-omap2/board-generic.c                |  32 +-
 arch/arm/mach-omap2/common.h                       |   7 +
 arch/arm/mach-omap2/omap_hwmod_2420_data.c         |  20 -
 arch/arm/mach-omap2/omap_hwmod_2430_data.c         |  19 -
 .../mach-omap2/omap_hwmod_2xxx_interconnect_data.c |   8 -
 arch/arm/mach-omap2/omap_hwmod_2xxx_ipblock_data.c |  47 --
 .../mach-omap2/omap_hwmod_33xx_43xx_common_data.h  |   2 -
 .../omap_hwmod_33xx_43xx_interconnect_data.c       |   8 -
 .../mach-omap2/omap_hwmod_33xx_43xx_ipblock_data.c |  62 --
 arch/arm/mach-omap2/omap_hwmod_33xx_data.c         |  10 -
 arch/arm/mach-omap2/omap_hwmod_3xxx_data.c         | 146 +----
 arch/arm/mach-omap2/omap_hwmod_43xx_data.c         |  45 --
 arch/arm/mach-omap2/omap_hwmod_44xx_data.c         |  90 ---
 arch/arm/mach-omap2/omap_hwmod_54xx_data.c         |  89 ---
 arch/arm/mach-omap2/omap_hwmod_7xx_data.c          | 176 -----
 arch/arm/mach-omap2/omap_hwmod_81xx_data.c         |  74 ---
 arch/arm/mach-omap2/omap_hwmod_common_data.h       |   3 -
 arch/arm/mach-omap2/timer.c                        | 568 +---------------
 drivers/bus/ti-sysc.c                              |  25 +-
 drivers/clk/ti/clk-816x.c                          |   1 +
 drivers/clocksource/Makefile                       |   1 +
 drivers/clocksource/timer-ti-32k.c                 |  48 +-
 drivers/clocksource/timer-ti-dm-systimer.c         | 727 +++++++++++++++++++++
 43 files changed, 1368 insertions(+), 1485 deletions(-)
 create mode 100644 drivers/clocksource/timer-ti-dm-systimer.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
