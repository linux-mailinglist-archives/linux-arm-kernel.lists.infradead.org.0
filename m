Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 201231C976A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 19:24:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7hUfD0KZk50IXcT8EMJy8BtzvHvBiLsTdQfpslksMjQ=; b=eEfz0iMQSh5ein
	Bd+Y1ecQZIf2Uf5+YtBOTB2uPsBKtyTlQE7vJRx/xiR4upHSn+s+qhtKezg82LO4cXRouaf3h1IVB
	Gj/nrEZgXwqANznxiye/S5PeIS7ym9TctuKj8ERfkwgeAKWW84fvfvAF6SL78GiRoizC1L0LFLI+H
	HDqnGQiUc1huYyOJIV6GBAmGF/B1srYZPyNU1NXsIK2n7m0Eu+GF0GcH340pjFkIDFNX/S73NuTm9
	CXpETqJFSL3klWhTWQKgj4Q81syGW/YqdaGV2YxD+GqASp8J83Ielk2tu/EIhXUno1EywHkB9CsIL
	ouCijn+bk6bft8SCl+kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWkFq-0002Ff-Ei; Thu, 07 May 2020 17:24:14 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWkFL-00025I-4W
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 17:23:44 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id B4C8980CD;
 Thu,  7 May 2020 17:24:26 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCHv3 00/14] Update omaps to use drivers/clocksource timers
Date: Thu,  7 May 2020 10:23:16 -0700
Message-Id: <20200507172330.18679-1-tony@atomide.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_102343_215632_7BC5404C 
X-CRM114-Status: GOOD (  12.93  )
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
Cc: Rob Herring <robh@kernel.org>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Lokesh Vutla <lokeshvutla@ti.com>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Graeme Smecher <gsmecher@threespeedlogic.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Tero Kristo <t-kristo@ti.com>,
 Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
 Andreas Kemnade <andreas@kemnade.info>, Keerthy <j-keerthy@ti.com>,
 linux-omap@vger.kernel.org, Adam Ford <aford173@gmail.com>,
 Brian Hutchinson <b.hutchman@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Here's v3 series to udpate omaps to use drivers/clocksource timers for
the 32k counter and dmtimer, and to remove the old legacy platform code.
Please review and test.

I've updated the timer-ti-dm-systimer.c patch based on the comments from
Daniel and Rob, and added support for selecting the preferred timers to
use.

Then for merging when folks are happy with this series, Daniel if you
can please apply the first three patches into an immutable branch it
would be great.

Regards,

Tony


Changes since v2:

- Drop extra compatible and use timer capabilities instead as suggested
  by Rob

- Add support for detecting the preferred system timers to use

Changes since v1:

- Updated to be self-contained based on comments from Daniel


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

 arch/arm/boot/dts/am33xx-l4.dtsi              |   6 +-
 arch/arm/boot/dts/am33xx.dtsi                 |  20 +
 arch/arm/boot/dts/am3517.dtsi                 |  24 +-
 arch/arm/boot/dts/am4372.dtsi                 |  20 +
 arch/arm/boot/dts/am437x-l4.dtsi              |   7 +-
 arch/arm/boot/dts/dm814x.dtsi                 |  74 +-
 arch/arm/boot/dts/dm816x.dtsi                 |  78 +-
 arch/arm/boot/dts/dra7-l4.dtsi                |   7 +-
 arch/arm/boot/dts/dra7.dtsi                   |  10 +
 arch/arm/boot/dts/omap2.dtsi                  |  31 +-
 arch/arm/boot/dts/omap2420.dtsi               |  68 +-
 arch/arm/boot/dts/omap2430.dtsi               |  68 +-
 arch/arm/boot/dts/omap3-beagle.dts            |  33 +
 arch/arm/boot/dts/omap3-devkit8000.dts        |  33 +
 arch/arm/boot/dts/omap3.dtsi                  | 134 +++-
 arch/arm/boot/dts/omap4-l4.dtsi               |   4 +-
 arch/arm/boot/dts/omap4.dtsi                  |  10 +
 arch/arm/boot/dts/omap5-l4.dtsi               |   4 +-
 arch/arm/boot/dts/omap5.dtsi                  |  10 +
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
 arch/arm/mach-omap2/omap_hwmod_3xxx_data.c    | 146 +---
 arch/arm/mach-omap2/omap_hwmod_43xx_data.c    |  45 --
 arch/arm/mach-omap2/omap_hwmod_44xx_data.c    |  90 ---
 arch/arm/mach-omap2/omap_hwmod_54xx_data.c    |  89 ---
 arch/arm/mach-omap2/omap_hwmod_7xx_data.c     | 176 -----
 arch/arm/mach-omap2/omap_hwmod_81xx_data.c    |  74 --
 arch/arm/mach-omap2/omap_hwmod_common_data.h  |   3 -
 arch/arm/mach-omap2/timer.c                   | 568 +-------------
 drivers/bus/ti-sysc.c                         |  25 +-
 drivers/clk/ti/clk-816x.c                     |   1 +
 drivers/clocksource/Makefile                  |   1 +
 drivers/clocksource/timer-ti-32k.c            |  48 +-
 drivers/clocksource/timer-ti-dm-systimer.c    | 731 ++++++++++++++++++
 43 files changed, 1372 insertions(+), 1485 deletions(-)
 create mode 100644 drivers/clocksource/timer-ti-dm-systimer.c

-- 
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
