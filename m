Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7051B1F6B11
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 17:32:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ujKa+nX26Q9U3O2giXrZgXMTR/TZ1vvDFRLk0u/jPgA=; b=N1cMLf2R79ciE3
	4bFHgFBv5LcAvpYtd1f18T+DD0XspLGrSmHDBzWwHYqK1sSsTRXV+hmm416lA43ASxeAXZwZU1jS/
	0wn+LdBkr1UfMX82b8MaCuGDJY1KSAhcr6Sarw67GkQ5CrQNhYEKiUvrD3+zoAY7Rcl1uTKfiEDJC
	iLXsuiLfkDIXCBIBdl5sWvKFY80VQtYw6wiF6VZYyR9uIIn7i0VwQxCwwyKMjIMkIt8CAIDbvjFm+
	K/2mMZwuzFtSaG/aAwgfQwBdszVKE9x0CD5ZQDtIFm9Qpo5IJKIKMHOgT0TfxDAMME+UVKxp/fWkP
	ZSn/QdYnSpm+EUbAoi+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjPBY-0006Qx-NB; Thu, 11 Jun 2020 15:32:08 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjPBS-0006Qc-7e
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 15:32:03 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 6A8848102;
 Thu, 11 Jun 2020 15:32:53 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL] Fixes for omaps for v5.8
Date: Thu, 11 Jun 2020 08:31:47 -0700
Message-Id: <pull-1591889257-410830@atomide.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_083202_313467_155CABA4 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Tony Lindgren <tony@atomide.com>, linux-omap@vger.kernel.org,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Tony Lindgren" <tony@atomide.com>

The following changes since commit 3d77e6a8804abcc0504c904bd6e5cdf3a5cf8162:

  Linux 5.7 (2020-05-31 16:49:15 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.8/fixes-merge-window-signed

for you to fetch changes up to e4a8fc054340f4df761f6a73335f8fdc0b7ac4fd:

  Revert "bus: ti-sysc: Increase max softreset wait" (2020-06-10 15:31:54 -0700)

Note that there are no changes to am5729-beagleboneai.dts, but I could
not make that go away from the stats withtout merging in more branches
already upstream. The i2c2 softreset timeout I had to revert as it does
not seem to be a proper fix.

----------------------------------------------------------------
Fixes for omaps for v5.8

The recent display subsystem (DSS) related platform data changes caused
display related regressions for suspend and resume. Looks like I only
tested suspend and resume before dropping the legacy platform data, and
forgot to test it after dropping it. Turns out the main issue was that
we no longer have platform code calling pm_runtime_suspend for DSS like
we did for the legacy platform data case, and that fix is still being
discussed on the dri-devel list and will get merged separately. The DSS
related testing exposed a pile other other display related issues that
also need fixing though:

- Fix ti-sysc optional clock handling and reset status checks
  for devices that reset automatically in idle like DSS

- Ignore ti-sysc clockactivity bit unless separately requested
  to avoid unexpected performance issues

- Init ti-sysc framedonetv_irq to true and disable for am4

- Avoid duplicate DSS reset for legacy mode with dts data

- Remove LCD timings for am4 as they cause warnings now that we're
  using generic panels

Then there is a pile of other fixes not related to the DSS:

- Fix omap_prm reset deassert as we still have drivers setting the
  pm_runtime_irq_safe() flag

- Flush posted write for ti-sysc enable and disable

- Fix droid4 spi related errors with spi flags

- Fix am335x USB range and a typo for softreset

- Fix dra7 timer nodes for clocks for IPU and DSP

- Drop duplicate mailboxes after mismerge for dra7

----------------------------------------------------------------
Jason Kridner (1):
      ARM: dts: am5729: beaglebone-ai: adding device tree

Oskar Holmlund (2):
      ARM: dts: Fix am33xx.dtsi USB ranges length
      ARM: dts: Fix am33xx.dtsi ti,sysc-mask wrong softreset flag

Suman Anna (2):
      ARM: dts: dra7: Fix timer nodes properly for timer_sys_ck clocks
      ARM: dts: dra7-evm-common: Fix duplicate mailbox nodes

Tero Kristo (2):
      ARM: dts: dra7: add timer_sys_ck entries for IPU/DSP timers
      soc: ti: omap-prm: use atomic iopoll instead of sleeping one

Tomi Valkeinen (4):
      ARM: dts: am57xx-idk-common: add tc358778 bridge
      ARM: dts: am437x-sk-evm: remove lcd timings
      ARM: dts: am437x-gp-evm: remove lcd timings
      ARM: dts: am437x-epos-evm: remove lcd timings

Tony Lindgren (11):
      Merge branch 'omap-for-v5.8/dt-timer' into omap-for-v5.8/dt
      bus: ti-sysc: Flush posted write on enable and disable
      ARM: dts: omap4-droid4: Fix spi configuration and increase rate
      bus: ti-sysc: Use optional clocks on for enable and wait for softreset bit
      bus: ti-sysc: Ignore clockactivity unless specified as a quirk
      bus: ti-sysc: Fix uninitialized framedonetv_irq
      ARM: OMAP2+: Fix legacy mode dss_reset
      bus: ti-sysc: Increase max softreset wait
      Merge commit '5390130f3b288db7d67de5e6c29d0de70d327ff0' into fixes-v5.7
      Merge branch 'fixes-v5.7' into fixes
      Revert "bus: ti-sysc: Increase max softreset wait"

 arch/arm/boot/dts/Makefile                       |   1 +
 arch/arm/boot/dts/am335x-guardian.dts            |   1 +
 arch/arm/boot/dts/am33xx.dtsi                    |   4 +-
 arch/arm/boot/dts/am3517-evm.dts                 |   1 +
 arch/arm/boot/dts/am437x-gp-evm.dts              |  16 -
 arch/arm/boot/dts/am437x-sk-evm.dts              |  16 -
 arch/arm/boot/dts/am43x-epos-evm.dts             |  16 -
 arch/arm/boot/dts/am5729-beagleboneai.dts        | 731 +++++++++++++++++++++++
 arch/arm/boot/dts/am57xx-idk-common.dtsi         |  58 ++
 arch/arm/boot/dts/dra7-evm-common.dtsi           |  20 -
 arch/arm/boot/dts/dra7-l4.dtsi                   |  56 +-
 arch/arm/boot/dts/logicpd-torpedo-baseboard.dtsi |   1 +
 arch/arm/boot/dts/motorola-cpcap-mapphone.dtsi   |   4 +-
 arch/arm/boot/dts/omap3-gta04.dtsi               |   1 +
 arch/arm/mach-omap2/omap_hwmod.c                 |   2 +-
 drivers/bus/ti-sysc.c                            |  98 ++-
 drivers/soc/ti/omap_prm.c                        |   8 +-
 17 files changed, 906 insertions(+), 128 deletions(-)
 create mode 100644 arch/arm/boot/dts/am5729-beagleboneai.dts

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
