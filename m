Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6DE61310D1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 11:49:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nxA2HkqKBxYgbuiW1IjUicrgBPDnsCQvzr+7aVdZnPg=; b=d0/sPovvSzU01GVyeWVer6i/xn
	V1+vKuuD1DLEN/WmUdRtTIqyOYAg3utZinXvndy1zHy0oOAkMD7fuiyTmcHPSdwzxtDeSZz5/AeU3
	n5NcsHPO2xwLlkMNPw9NP2SIKJ3Gt2FhR33tpTtfAQ+WYKzsvWwR9ZoK9WCHvnDPzAVjUJIk0eM+l
	x2Es25dmKPX+7VInsw537U7VJYUf41pFDeXoqmEz8iAKafGl4WmyH3uFMTG2KPgEovCtdF/+Lqcko
	vPMEG1IbefgnZlDxhw7bcB5+xSy3N0DccVnpEpaZ0e9HbUAHKmVcYV66qtNJFRCxELMCBHlJpplwt
	VuXNTHnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioPxH-0003th-AC; Mon, 06 Jan 2020 10:49:51 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioPwg-0003TM-Qe
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 10:49:18 +0000
Received: from ramsan ([84.195.182.253]) by michel.telenet-ops.be with bizsmtp
 id myp52100S5USYZQ06yp5RR; Mon, 06 Jan 2020 11:49:09 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1ioPwX-0001yi-LC; Mon, 06 Jan 2020 11:49:05 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1ioPwX-0002Bt-KK; Mon, 06 Jan 2020 11:49:05 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [GIT PULL 2/5] Renesas ARM DT updates for v5.6
Date: Mon,  6 Jan 2020 11:48:54 +0100
Message-Id: <20200106104857.8361-3-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200106104857.8361-1-geert+renesas@glider.be>
References: <20200106104857.8361-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_024915_037446_D22902E2 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a02:1800:110:4:0:0:f00:18 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-arm-dt-for-v5.6-tag1

for you to fetch changes up to fe4a76fafdb4d072e0842d55cccfa141a1912457:

  ARM: dts: sh73a0: Add missing clock-frequency for fixed clocks (2019-12-31 10:33:41 +0100)

----------------------------------------------------------------
Renesas ARM DT updates for v5.6

  - Touch screen support for the iwg20d board,
  - ARM global timer support on Cortex-A9 MPCore SoCs,
  - Miscellaneous fixes for issues detected by "make dtbs_check".

----------------------------------------------------------------
Fabrizio Castro (1):
      ARM: dts: iwg20d-q7-common: Add LCD support

Geert Uytterhoeven (10):
      ARM: dts: sh73a0: Rename twd clock to periph clock
      ARM: dts: sh73a0: Add device node for ARM global timer
      ARM: dts: r8a7779: Add device node for ARM global timer
      ARM: dts: renesas: Group tuples in regulator-gpio states properties
      ARM: dts: renesas: Group tuples in interrupt properties
      ARM: dts: renesas: Group tuples in pci ranges and dma-ranges properties
      ARM: dts: rcar-gen2: Fix PCI high address in interrupt-map-mask
      ARM: dts: rcar-gen2: Add missing mmio-sram bus properties
      ARM: dts: r8a7778: Add missing clock-frequency for fixed clocks
      ARM: dts: sh73a0: Add missing clock-frequency for fixed clocks

 arch/arm/boot/dts/iwg20d-q7-common.dtsi       |  88 +++++++++++++-
 arch/arm/boot/dts/iwg20d-q7-dbcm-ca.dtsi      |   1 -
 arch/arm/boot/dts/r7s72100.dtsi               |  18 +--
 arch/arm/boot/dts/r8a73a4.dtsi                |  42 +++----
 arch/arm/boot/dts/r8a7740-armadillo800eva.dts |   3 +-
 arch/arm/boot/dts/r8a7740.dtsi                | 102 ++++++++--------
 arch/arm/boot/dts/r8a7743.dtsi                | 162 +++++++++++++------------
 arch/arm/boot/dts/r8a7744.dtsi                | 162 +++++++++++++------------
 arch/arm/boot/dts/r8a7745-iwg22d-sodimm.dts   |   3 +-
 arch/arm/boot/dts/r8a7745.dtsi                | 122 ++++++++++---------
 arch/arm/boot/dts/r8a77470-iwg23s-sbc.dts     |   3 +-
 arch/arm/boot/dts/r8a77470.dtsi               |  86 +++++++------
 arch/arm/boot/dts/r8a7778.dtsi                |  11 +-
 arch/arm/boot/dts/r8a7779-marzen.dts          |   3 +-
 arch/arm/boot/dts/r8a7779.dtsi                |  16 ++-
 arch/arm/boot/dts/r8a7790-lager.dts           |   6 +-
 arch/arm/boot/dts/r8a7790.dtsi                | 167 +++++++++++++-------------
 arch/arm/boot/dts/r8a7791-koelsch.dts         |   9 +-
 arch/arm/boot/dts/r8a7791-porter.dts          |   6 +-
 arch/arm/boot/dts/r8a7791.dtsi                | 159 ++++++++++++------------
 arch/arm/boot/dts/r8a7792.dtsi                |  67 ++++++-----
 arch/arm/boot/dts/r8a7793-gose.dts            |   9 +-
 arch/arm/boot/dts/r8a7793.dtsi                | 123 ++++++++++---------
 arch/arm/boot/dts/r8a7794-alt.dts             |   6 +-
 arch/arm/boot/dts/r8a7794-silk.dts            |   3 +-
 arch/arm/boot/dts/r8a7794.dtsi                | 111 ++++++++---------
 arch/arm/boot/dts/sh73a0.dtsi                 | 139 +++++++++++----------
 27 files changed, 878 insertions(+), 749 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
