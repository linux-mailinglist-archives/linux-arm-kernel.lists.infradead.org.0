Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9873A1803CC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 17:44:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hWzok/OfE5N2NOQE7sLEOYkz9pJ9KrqkwpQb+1I7kiM=; b=kBqLE+395T1N+j
	/FtVYtrYqzUE8WJwe3CLwuiCB/H05m0sPgzJzOAx3MB6725MbsNp86X8IA4wU5sgmnRRQdUWL/ct8
	VQTLhNDH7k0jP+MBR9TX4m12hwtD5FdlZ8je3tNggs8wiwQe1PxUoFV6+QCju4NTuVEW2Z9+vQ01r
	dgxrCxU6HgkMfVicFt85kZYq+ezt1XkSkykl/dpRK6zVkcPM+4qKztqK+SEZ5fmze9hjoje7sIZhv
	/u6CLUY0C5uAqn0xWxUpmHMaOKPU/E2rU3eE9KxEY9l8CmAwVl/1I3xbYxXgFFwVZMeD/vN+4OfiC
	CnV07m08ZjAXhYdicLLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBhz7-0004mE-4w; Tue, 10 Mar 2020 16:44:01 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBhyy-0004lI-Lx
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 16:43:54 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 58E9F810A;
 Tue, 10 Mar 2020 16:44:35 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL] drop more legacy platform data for omaps for v5.7
Date: Tue, 10 Mar 2020 09:43:46 -0700
Message-Id: <pull-1583858385-416921@atomide.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_094352_756382_9B7A6B31 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

The following changes since commit b2745d92bb015cc4454d4195c4ce6e2852db397e:

  bus: ti-sysc: Add support for PRUSS SYSC type (2020-03-04 07:54:57 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.7/ti-sysc-drop-pdata-signed

for you to fetch changes up to 104d56b3e3766931ff1a1d786d2fcce908daaaf7:

  ARM: OMAP2+: Drop legacy platform data for dra7 edma (2020-03-06 07:20:04 -0800)

----------------------------------------------------------------
Drop legacy platform data for omaps for v5.7

This series of changes continues dropping legacy platform data for
omaps by updating devices to probe with ti-sysc interconnect target
module driver:

- Update omap4, omap5, am437x, and dra7 display subsystem (DSS)
  to probe with device tree data only

- Update am335x, am437x and dra7 to probe EDMA to probe with
  device tree data only

- Drop legacy platform data for am335x and am437x PRUSS as the
  current code just keeps the devices in reset

- Drop legacy platform data for omap4 DSP and IPU as the current
  code just keeps the devices in reset

- Configure am437x and dra7 PRU-ICSS to probe with device tree
  data

For the dropped omap4 DSP and IPU platform data, there will be patches
coming later on to configure the accelerators using the omap remoteproc
bindings so hopefully folks can actually use these devices eventually.

----------------------------------------------------------------
Suman Anna (6):
      ARM: OMAP2+: Drop hwmod data for am3 and am4 PRUSS
      ARM: OMAP2+: Drop legacy platform data for OMAP4 DSP
      ARM: OMAP4: hwmod_data: Remove OMAP4 IPU hwmod data
      ARM: dts: AM33xx-l4: Update PRUSS interconnect target-module node
      ARM: dts: AM4372: Add the PRU-ICSS interconnect target-module node
      ARM: dts: dra7: Add PRU-ICSS interconnect target-module nodes

Tony Lindgren (37):
      ARM: dts: Configure interconnect target module for omap4 dss
      ARM: dts: Configure interconnect target module for omap4 dispc
      ARM: dts: Configure interconnect target module for omap4 rfbi
      ARM: dts: Configure interconnect target module for omap4 venc
      ARM: dts: Configure interconnect target module for omap4 dsi1
      ARM: dts: Configure interconnect target module for omap4 dsi2
      ARM: dts: Configure interconnect target module for omap4 hdmi
      ARM: dts: Configure interconnect target module for omap5 dss
      ARM: dts: Configure interconnect target module for omap5 dispc
      ARM: dts: Configure interconnect target module for omap5 rfbi
      ARM: dts: Configure interconnect target module for omap5 dsi1
      ARM: dts: Configure interconnect target module for omap5 dsi2
      ARM: dts: Configure interconnect target module for omap5 hdmi
      ARM: dts: Configure interconnect target module for dra7 dss
      ARM: dts: Configure interconnect target module for dra7 dispc
      ARM: dts: Configure interconnect target module for dra7 hdmi
      ARM: dts: Move am437x dss to the interconnect target module in l4
      ARM: dts: Configure interconnect target module for am437x dispc
      ARM: dts: Configure interconnect target module for am437x rfbi
      ARM: OMAP2+: Drop legacy platform data for omap4 dss
      ARM: OMAP2+: Drop legacy platform data for omap5 DSS
      ARM: OMAP2+: Drop legacy platform data for dra7 DSS
      ARM: OMAP2+: Drop legacy platform data for am437x DSS
      Merge branch 'omap-for-v5.7/accelerators' into omap-for-v5.7/ti-sysc-drop-pdata
      ARM: dts: Configure interconnect target module for am3 tpcc
      ARM: dts: Configure interconnect target module for am3 tptc0
      ARM: dts: Configure interconnect target module for am3 tptc1
      ARM: dts: Configure interconnect target module for am3 tptc2
      ARM: dts: Configure interconnect target module for am4 tpcc
      ARM: dts: Configure interconnect target module for am4 tptc0
      ARM: dts: Configure interconnect target module for am4 tptc1
      ARM: dts: Configure interconnect target module for am4 tptc2
      ARM: dts: Configure interconnect target module for dra7 tpcc
      ARM: dts: Configure interconnect target module for dra7 tptc0
      ARM: dts: Configure interconnect target module for dra7 tptc1
      ARM: OMAP2+: Drop legacy platform data for am3 and am4 edma
      ARM: OMAP2+: Drop legacy platform data for dra7 edma

 arch/arm/boot/dts/am33xx-l4.dtsi                   |  21 +-
 arch/arm/boot/dts/am33xx.dtsi                      | 121 +++--
 arch/arm/boot/dts/am4372.dtsi                      | 179 ++++---
 arch/arm/boot/dts/am437x-l4.dtsi                   |  77 ++-
 arch/arm/boot/dts/am57-pruss.dtsi                  |  50 ++
 arch/arm/boot/dts/am5718.dtsi                      |   1 +
 arch/arm/boot/dts/am5728.dtsi                      |   1 +
 arch/arm/boot/dts/am5748.dtsi                      |   1 +
 arch/arm/boot/dts/dra7.dtsi                        | 219 ++++++---
 arch/arm/boot/dts/dra72x.dtsi                      |   6 +-
 arch/arm/boot/dts/dra74x.dtsi                      |  10 +-
 arch/arm/boot/dts/omap4-l4.dtsi                    |   1 +
 arch/arm/boot/dts/omap4.dtsi                       | 279 ++++++++---
 arch/arm/boot/dts/omap5.dtsi                       | 241 +++++++---
 .../mach-omap2/omap_hwmod_33xx_43xx_common_data.h  |  10 -
 .../omap_hwmod_33xx_43xx_interconnect_data.c       |  40 --
 .../mach-omap2/omap_hwmod_33xx_43xx_ipblock_data.c | 115 -----
 arch/arm/mach-omap2/omap_hwmod_33xx_data.c         |  14 -
 arch/arm/mach-omap2/omap_hwmod_43xx_data.c         | 114 -----
 arch/arm/mach-omap2/omap_hwmod_44xx_data.c         | 531 ---------------------
 arch/arm/mach-omap2/omap_hwmod_54xx_data.c         | 288 -----------
 arch/arm/mach-omap2/omap_hwmod_7xx_data.c          | 251 ----------
 22 files changed, 884 insertions(+), 1686 deletions(-)
 create mode 100644 arch/arm/boot/dts/am57-pruss.dtsi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
