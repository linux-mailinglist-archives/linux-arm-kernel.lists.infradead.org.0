Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 128D61AE2A8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 18:55:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p3zXpM6WDL7rZx5m0Nrlm+NPJE2coyCRoLHlWcWhbV0=; b=ZcijwXQOAxPzBH
	EzqDgZ0UoiT+NGSy2zTeWujguGrMlxFc0zhWv+VAfN4tuajhZ6nmDW6eZR71iWNOTVwKrrT+CnX9u
	lpS0rhUhF4hfI9EI8cKpnfbVpLz+LgceZWZfd2E1U51LJ/X+0FC0P4spqC+dpkfn/qKg0ei9i55mN
	sEF75O41VLtvMdzyC9g3Miwby8K7HZ5bi2dEeOqjg0AYGBP3zWIWAje9lj7eV3ZZw/ubWfW+ehFFr
	MYS2bDk5AOFVcJE9iphNgzZKrfDEqaIc9rCaDDK5a9x2b4rWtsgdaX39iizViGkxPiW1CuzM2rII1
	pTCEcJyeXL6EnxaplwEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPUHK-00045I-FM; Fri, 17 Apr 2020 16:55:46 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPUH9-000446-7d
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 16:55:36 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 3D9B48047;
 Fri, 17 Apr 2020 16:56:17 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 00/14] Update omaps to use drivers/clocksource timers
Date: Fri, 17 Apr 2020 09:55:05 -0700
Message-Id: <20200417165519.4979-1-tony@atomide.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_095535_320058_56B603AF 
X-CRM114-Status: GOOD (  13.14  )
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
Cc: devicetree@vger.kernel.org, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Lokesh Vutla <lokeshvutla@ti.com>, "H. Nikolaus Schaller" <hns@goldelico.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, Stephen Boyd <sboyd@kernel.org>,
 Andreas Kemnade <andreas@kemnade.info>, Keerthy <j-keerthy@ti.com>,
 Thomas Gleixner <tglx@linutronix.de>, Adam Ford <aford173@gmail.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Here's a series of changes to udpate omaps to use drivers/clocksource
timers for the 32k counter and dmtimer and to remove the old legacy
platform code. Please review and test.

Daniel, if the the first two patches look OK after review, maybe you
can again set up an immutable branch for the first two patches against
v5.7-rc1 that I can merge in?

Regards,

Tony


Tony Lindgren (14):
  clocksource/drivers/timer-ti-32k: Add support for initializing
    directly
  clocksource/drivers/timer-ti-dm: Add clockevent and clocksource
    support
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

 .../devicetree/bindings/timer/ti,timer.txt    |   2 +
 arch/arm/boot/dts/am33xx-l4.dtsi              |   2 -
 arch/arm/boot/dts/am33xx.dtsi                 |  12 +
 arch/arm/boot/dts/am3517.dtsi                 |  16 +-
 arch/arm/boot/dts/am4372.dtsi                 |  12 +
 arch/arm/boot/dts/am437x-l4.dtsi              |   3 -
 arch/arm/boot/dts/dm814x.dtsi                 |  66 +-
 arch/arm/boot/dts/dm816x.dtsi                 |  70 ++-
 arch/arm/boot/dts/dra7-l4.dtsi                |   5 -
 arch/arm/boot/dts/dra7.dtsi                   |   6 +
 arch/arm/boot/dts/omap2.dtsi                  |  38 +-
 arch/arm/boot/dts/omap2420.dtsi               |  65 +-
 arch/arm/boot/dts/omap2430.dtsi               |  65 +-
 arch/arm/boot/dts/omap3-beagle.dts            |  16 +
 arch/arm/boot/dts/omap3-devkit8000.dts        |  16 +
 arch/arm/boot/dts/omap3.dtsi                  | 130 +++-
 arch/arm/boot/dts/omap4-l4.dtsi               |   2 -
 arch/arm/boot/dts/omap4.dtsi                  |   6 +
 arch/arm/boot/dts/omap5-l4.dtsi               |   2 -
 arch/arm/boot/dts/omap5.dtsi                  |   6 +
 arch/arm/mach-omap2/Makefile                  |   4 +-
 arch/arm/mach-omap2/board-generic.c           |  32 +-
 arch/arm/mach-omap2/common.h                  |   7 +
 arch/arm/mach-omap2/omap_hwmod_2420_data.c    |  20 -
 arch/arm/mach-omap2/omap_hwmod_2430_data.c    |  19 -
 .../omap_hwmod_2xxx_interconnect_data.c       |   8 -
 .../mach-omap2/omap_hwmod_2xxx_ipblock_data.c |  47 --
 .../omap_hwmod_33xx_43xx_common_data.h        |   2 -
 .../omap_hwmod_33xx_43xx_interconnect_data.c  |   8 -
 .../omap_hwmod_33xx_43xx_ipblock_data.c       |  62 --
 arch/arm/mach-omap2/omap_hwmod_33xx_data.c    |  10 -
 arch/arm/mach-omap2/omap_hwmod_3xxx_data.c    | 146 +----
 arch/arm/mach-omap2/omap_hwmod_43xx_data.c    |  45 --
 arch/arm/mach-omap2/omap_hwmod_44xx_data.c    |  90 ---
 arch/arm/mach-omap2/omap_hwmod_54xx_data.c    |  89 ---
 arch/arm/mach-omap2/omap_hwmod_7xx_data.c     | 176 ------
 arch/arm/mach-omap2/omap_hwmod_81xx_data.c    |  74 ---
 arch/arm/mach-omap2/omap_hwmod_common_data.h  |   3 -
 arch/arm/mach-omap2/timer.c                   | 568 +-----------------
 drivers/bus/ti-sysc.c                         |  25 +-
 drivers/clk/ti/clk-816x.c                     |   1 +
 drivers/clocksource/Makefile                  |   1 +
 drivers/clocksource/timer-ti-32k.c            |  48 +-
 drivers/clocksource/timer-ti-dm-systimer.c    | 468 +++++++++++++++
 include/clocksource/timer-ti-dm.h             |   1 +
 45 files changed, 1016 insertions(+), 1478 deletions(-)
 create mode 100644 drivers/clocksource/timer-ti-dm-systimer.c

-- 
2.26.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
