Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB38343340
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 09:19:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WvfKfu1QldRWwcJ3d9Sdk0dU0SkVixiCH3BkpQX7lTY=; b=fh2ghR5HKZCi18
	13zJ1l4rTciajOQobEi/Sp6bBN7sRvG9Do5hIpTRblkfftfQQXNnKA4zRTP0JmAUVravksdCr2jiP
	gVGYwQxz6YLRBdLSW7/tJ0NcRowTZLNTrWj/I/Wn7g1MMAZZp8ATT9LJCFsSjYe4rR9fgb61ZpD0i
	2uJnAXJu54PqfiilKTYb6Jfi7RPf6DOiBBqyroPmFRDzxwATPE1MVD2CzjFa4rdk2Kg0Jp+Um5vpO
	vLolKLeoPVmYyGogaq5uwqMCLbFen4JysART+t5y466VRVhy1O5Ayi1nX8KTeW8G6J69NWDa/E5cy
	5zm5TvWU5zlDZMv98XOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbK0f-0005Vj-Lk; Thu, 13 Jun 2019 07:18:57 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbJt0-0006RR-Eg
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 07:11:06 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 210398160;
 Thu, 13 Jun 2019 07:11:22 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: arm@kernel.org
Subject: [GIT PULL 2/4] dts changes for omap variants for v5.3
Date: Thu, 13 Jun 2019 00:10:51 -0700
Message-Id: <pull-1560399818-512977@atomide.com-2>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <pull-1560399818-512977@atomide.com>
References: <pull-1560399818-512977@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_001102_799626_9467FEA0 
X-CRM114-Status: GOOD (  11.63  )
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Tony Lindgren" <tony@atomide.com>

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.3/dt-signed

for you to fetch changes up to 8f62581f820d32eec9698e477ddff21ebfbe0541:

  Merge branch 'baltos' into omap-for-v5.3/dt (2019-06-12 00:57:27 -0700)

----------------------------------------------------------------
dts changes for omap variants for v5.3

This series of changes improves support for few boards:

- configure another lcd type for logicpd torpedo devkit

- a series of updates for am335x phytec boards

- configure mmc card detect pin for am335x-baltos

----------------------------------------------------------------
Adam Ford (1):
      ARM: dts: Add LCD type 28 support to LogicPD Torpedo DM3730 devkit

Daniel Schultz (1):
      ARM: dts: am335x-phycore-som: Add emmc node

Teresa Remmet (5):
      ARM: dts: am335x phytec boards: Remove regulator node
      ARM: dts: am335x-phycore-som: Enable gpmc node in dts files
      ARM: dts: am335x-pcm-953: Update user led names
      ARM: dts: am335x-pcm-953: Remove eth phy delay
      ARM: dts: Add support for phyBOARD-REGOR-AM335x

Tony Lindgren (1):
      Merge branch 'baltos' into omap-for-v5.3/dt

Yegor Yefremov (2):
      ARM: dts: am335x-baltos: Fix PHY mode for ethernet
      ARM: dts: am335x-baltos: add support for MMC1 CD pin

 .../devicetree/bindings/arm/omap/omap.txt          |   3 +
 arch/arm/boot/dts/Makefile                         |   1 +
 arch/arm/boot/dts/am335x-baltos-ir2110.dts         |  14 +-
 arch/arm/boot/dts/am335x-baltos-ir3220.dts         |  14 +-
 arch/arm/boot/dts/am335x-baltos-ir5221.dts         |  13 +-
 arch/arm/boot/dts/am335x-pcm-953.dtsi              |  22 +-
 arch/arm/boot/dts/am335x-phycore-rdk.dts           |   4 +
 arch/arm/boot/dts/am335x-phycore-som.dtsi          |  47 +++--
 arch/arm/boot/dts/am335x-regor-rdk.dts             |  24 +++
 arch/arm/boot/dts/am335x-regor.dtsi                | 223 +++++++++++++++++++++
 arch/arm/boot/dts/am335x-wega-rdk.dts              |   4 +
 arch/arm/boot/dts/am335x-wega.dtsi                 |  16 +-
 .../boot/dts/logicpd-torpedo-37xx-devkit-28.dts    |  32 +++
 13 files changed, 372 insertions(+), 45 deletions(-)
 create mode 100644 arch/arm/boot/dts/am335x-regor-rdk.dts
 create mode 100644 arch/arm/boot/dts/am335x-regor.dtsi
 create mode 100644 arch/arm/boot/dts/logicpd-torpedo-37xx-devkit-28.dts

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
