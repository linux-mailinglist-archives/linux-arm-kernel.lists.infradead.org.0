Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50871E3816
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 18:37:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SR5bItPWm08LEBiVFDuQMU2/JYBS3Fjq6HBk4F2L2DE=; b=SvoAEjKtiqs+dF
	vAyokXINcuo2ygeYurYo8bCV5d67l5F12KohOolOQThIBXxsKHBCYakx4GndmENoQX5QdVwLOWFUx
	Ztp+A5Wdhp5voL/Tyq3zuDboZmKvJWUGZgN+J2MocWTAABXMAohDFCPvBDZJlS8aTg6bjb749MYmg
	j27765Yon7LxQH3r+qG4xCNM0e2JDf6zM8FeZ+88fnGO8Ncl8u3AEhtrRFMEkCQgCdcHTGe11r7lh
	pyVlMB4PTQp/Cc8GRGb8wElZ+UOGiGZgStaapaxtroXtp9p502Vclcvl2BN2+RMgP5SqxPXqyEhV7
	jUZLE3cdky2LHnl1mL8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNg7E-0004mO-FF; Thu, 24 Oct 2019 16:37:36 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNg6g-0004Zt-Sq
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 16:37:04 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 2DB0C80C5;
 Thu, 24 Oct 2019 16:37:35 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL 1/3] soc changes for omaps for v5.5
Date: Thu, 24 Oct 2019 09:36:53 -0700
Message-Id: <pull-1571934890-285615@atomide.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_093702_973775_DA4ADBC5 
X-CRM114-Status: GOOD (  12.38  )
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

The following changes since commit 17a9e5bbbfe5a5a6356e47cdc1c1656e1e5e1f62:

  Merge tag 'wlcore-fix' into fixes (2019-10-11 09:15:35 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.5/soc-signed

for you to fetch changes up to bc794744cdc56f53b495debbe054946d1b620441:

  Merge branch 'omap-for-v5.5/pm' into omap-for-v5.5/soc (2019-10-23 10:42:39 -0700)

----------------------------------------------------------------
SoC changes for omaps for v5.5

This series of changes contains SoC related clean-up, and some PM
improvments:

- SoC clean-up to drop unused enable_wakeup and disable_wakeup,
  simplify clkdm_clock_enable and disable, and few sparse fixes

- Drop pdata-quirks for TI bluetooth, this is now handled by a serdev
  driver

- A series of PM changes to re-enable core oswr (open switch retention)
  for omap4 that got disabled earlier because of various gpio-omap issues
  that have been fixed earlier this year. We want to do this in small
  steps for the pwrdm_set_logic_retst() changes so we can identify the
  domain in case of unexpected issues

- A series of PM changes to configure voltage controller for droid4.
  Eventually the voltage controller configuration should use device tree,
  but we want to get things working first. These changes bring down
  down the idle power consumption for droid4 with LCD blanked, WLAN
  connected, USB disabled, and modem disabled to about 32 to 35mW from
  about 39 to 45 mW

----------------------------------------------------------------
Ben Dooks (4):
      ARM: OMAP2+: do not export am43xx_control functions
      ARM: OMAP2+: make dra7xx_sha0_hwmod static
      ARM: OMAP2+: prm44xx: make prm_{save,restore}_context static
      ARM: OMAP2+: make omap44xx_sha0_hwmod and omap44xx_l3_main_2__des static

Sebastian Reichel (1):
      ARM: OMAP2+: pdata-quirks: drop TI_ST/KIM support

Tony Lindgren (13):
      ARM: OMAP2+: Remove unused wakeup_cpu
      ARM: OMAP2+: Drop bogus wkup domain oswr setting
      ARM: OMAP2+: Remove bogus warnings for machines without twl PMIC
      ARM: OMAP2+: Update 4430 voltage controller operating points
      ARM: OMAP2+: Configure voltage controller for cpcap
      ARM: OMAP2+: Allow per oswr for omap4
      ARM: OMAP2+: Allow core oswr for omap4
      ARM: OMAP2+: Initialize voltage controller for omap4
      ARM: OMAP2+: Drop unused enable_wakeup and disable_wakeup
      ARM: OMAP2+: Simplify code for clkdm_clock_enable and disable
      ARM: OMAP2+: Configure voltage controller for retention
      ARM: OMAP2+: Configure voltage controller for cpcap to low-speed
      Merge branch 'omap-for-v5.5/pm' into omap-for-v5.5/soc

YueHaibing (2):
      ARM: OMAP2+: Make some functions static
      ARM: OMAP2+: Remove duplicated include from pmic-cpcap.c

 arch/arm/mach-omap2/Makefile               |   5 +
 arch/arm/mach-omap2/clockdomain.c          |  78 +++------
 arch/arm/mach-omap2/control.c              |   4 +-
 arch/arm/mach-omap2/control.h              |   1 +
 arch/arm/mach-omap2/omap-mpuss-lowpower.c  |   2 -
 arch/arm/mach-omap2/omap_hwmod.c           |  97 -----------
 arch/arm/mach-omap2/omap_hwmod.h           |   3 -
 arch/arm/mach-omap2/omap_hwmod_44xx_data.c |   4 +-
 arch/arm/mach-omap2/omap_hwmod_7xx_data.c  |   2 +-
 arch/arm/mach-omap2/omap_twl.c             |   8 +-
 arch/arm/mach-omap2/opp4xxx_data.c         |  16 +-
 arch/arm/mach-omap2/pdata-quirks.c         |  52 ------
 arch/arm/mach-omap2/pm.c                   |   1 +
 arch/arm/mach-omap2/pm.h                   |  14 ++
 arch/arm/mach-omap2/pm44xx.c               |  13 +-
 arch/arm/mach-omap2/pmic-cpcap.c           | 271 +++++++++++++++++++++++++++++
 arch/arm/mach-omap2/prm44xx.c              |   4 +-
 arch/arm/mach-omap2/vc.c                   |  57 +++++-
 arch/arm/mach-omap2/vc.h                   |   2 +-
 19 files changed, 389 insertions(+), 245 deletions(-)
 create mode 100644 arch/arm/mach-omap2/pmic-cpcap.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
