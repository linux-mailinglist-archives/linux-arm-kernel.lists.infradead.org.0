Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF7D1C9845
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 19:47:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tDFsMdls3GqhLF6ypLRmCbZPzGOnWcFPF7mpPV+c75c=; b=GAX4PUSfQbVXem
	7AU6VWf9rWbWvukVj3aX6Wutv6/XkuotWprwlt3np8h2Rx6AT792vq24g55inuFk6Tl60SNL1RW0N
	oJEXU9M/zpALHxhvVslPHdLaJF5TBXANaEPvRDirPftzkwKLQwp6eNJq3SL42OHB4WV9UlrkESK63
	Wr8l2LJQ6LodSVqpIQUcrM4dxbbIgwQDu5cE1+H/Pj/26Jb0Gl2/HPVcJB6qJeiugriw6KGOMj9pm
	iqveWguV61TveBVYaqK4SmcrQ1/2JU2j9q6ESICNDuPp2usUTQp6JSqyM2BnVfGRXfrG7CvDEv13z
	Kxi8Q78cGsKnNAjSJysw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWkch-0000RG-P1; Thu, 07 May 2020 17:47:51 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWkcX-0000Qt-S1
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 17:47:43 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id DCA1180CD;
 Thu,  7 May 2020 17:48:30 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL] Devicetree changes for omaps for v5.8
Date: Thu,  7 May 2020 10:47:38 -0700
Message-Id: <pull-1588873628-477615@atomide.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_104741_957887_BD97BA27 
X-CRM114-Status: GOOD (  13.30  )
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
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Tony Lindgren" <tony@atomide.com>

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.8/dt-signed

for you to fetch changes up to e88ba436e5615f5bb94deecbbb924227b15bbebb:

  ARM: OMAP5: Make L4SEC clock domain SWSUP only (2020-05-05 11:16:06 -0700)

----------------------------------------------------------------
DTS changes for omaps for v5.8 merge window

We add support for beaglebone-ai board that's am5729 based devices.

Then we have a series changes to configure more hardware acceletators found
on omap variants. With the recent ti-sysc related changes, we can now better
configure the accelerators with help of the clock framework and reset driver.
So with a series of changes from Suman Anna and Tero Kristo, let's configure
IPUs and DSPs for dra7 devices like beagle-x15. And let's also configure the
missing crypto accelerators for omap5 as those have been missing.

Note that there are still some pending driver related patches to use IPU and
DSP related features with mainline kernel, but those are independent of the
devicetree changes.

Then there is a display related change for am57xx-idk for tc358778 bridge,
and a change to configure the missing clock source for some PWM timers.

----------------------------------------------------------------
Jason Kridner (1):
      ARM: dts: am5729: beaglebone-ai: adding device tree

Lokesh Vutla (1):
      ARM: dts: Add 32KHz clock as default clock source

Suman Anna (16):
      ARM: dts: DRA7: Add common IPU and DSP nodes
      ARM: dts: DRA74x: Add DSP2 processor device node
      ARM: dts: DRA74x: Add aliases for rproc nodes
      ARM: dts: DRA72x: Add aliases for rproc nodes
      ARM: dts: dra7-ipu-dsp-common: Move mailboxes into common files
      ARM: dts: dra7-ipu-dsp-common: Add mailboxes to IPU and DSP nodes
      ARM: dts: dra7-ipu-dsp-common: Add timers to IPU and DSP nodes
      ARM: dts: dra7-evm: Add CMA pools and enable IPU & DSP rprocs
      ARM: dts: dra72-evm: Add CMA pools and enable IPUs & DSP1 rprocs
      ARM: dts: dra72-evm-revc: Add CMA pools and enable IPUs & DSP1 rprocs
      ARM: dts: dra71-evm: Add CMA pools and enable IPUs & DSP1 rprocs
      ARM: dts: dra76-evm: Add CMA pools and enable IPU & DSP rprocs
      ARM: dts: beagle-x15-common: Add CMA pools and enable IPU & DSP rprocs
      ARM: dts: am572x-idk-common: Add CMA pools and enable IPU & DSP rprocs
      ARM: dts: am571x-idk: Add CMA pools and enable IPUs & DSP1 rprocs
      ARM: dts: dra7-ipu-dsp-common: Add watchdog timers to IPU and DSP nodes

Tero Kristo (7):
      ARM: dts: dra7: add timer_sys_ck entries for IPU/DSP timers
      ARM: dts: omap5: add aes1 entry
      ARM: dts: omap5: add aes2 entry
      ARM: dts: omap5: add SHA crypto accelerator node
      ARM: dts: omap5: add DES crypto accelerator node
      ARM: OMAP4: Make L4SEC clock domain SWSUP only
      ARM: OMAP5: Make L4SEC clock domain SWSUP only

Tomi Valkeinen (1):
      ARM: dts: am57xx-idk-common: add tc358778 bridge

Tony Lindgren (1):
      Merge branch 'omap-for-v5.8/dt-timer' into omap-for-v5.8/dt

 arch/arm/boot/dts/Makefile                       |   1 +
 arch/arm/boot/dts/am335x-guardian.dts            |   1 +
 arch/arm/boot/dts/am3517-evm.dts                 |   1 +
 arch/arm/boot/dts/am571x-idk.dts                 |  48 +-
 arch/arm/boot/dts/am5729-beagleboneai.dts        | 731 +++++++++++++++++++++++
 arch/arm/boot/dts/am572x-idk-common.dtsi         |  63 +-
 arch/arm/boot/dts/am57xx-beagle-x15-common.dtsi  |  63 +-
 arch/arm/boot/dts/am57xx-idk-common.dtsi         |  58 ++
 arch/arm/boot/dts/dra7-evm-common.dtsi           |   1 +
 arch/arm/boot/dts/dra7-evm.dts                   |  54 ++
 arch/arm/boot/dts/dra7-ipu-dsp-common.dtsi       |  39 ++
 arch/arm/boot/dts/dra7-l4.dtsi                   |  50 +-
 arch/arm/boot/dts/dra7.dtsi                      |  36 ++
 arch/arm/boot/dts/dra71-evm.dts                  |  42 ++
 arch/arm/boot/dts/dra72-evm-common.dtsi          |  18 +-
 arch/arm/boot/dts/dra72-evm-revc.dts             |  42 ++
 arch/arm/boot/dts/dra72-evm.dts                  |  42 ++
 arch/arm/boot/dts/dra72x.dtsi                    |   6 +
 arch/arm/boot/dts/dra74-ipu-dsp-common.dtsi      |  18 +
 arch/arm/boot/dts/dra74x.dtsi                    |  21 +
 arch/arm/boot/dts/dra76-evm.dts                  |  54 ++
 arch/arm/boot/dts/logicpd-torpedo-baseboard.dtsi |   1 +
 arch/arm/boot/dts/omap3-gta04.dtsi               |   1 +
 arch/arm/boot/dts/omap5-l4.dtsi                  |  31 +
 arch/arm/boot/dts/omap5.dtsi                     |  86 +++
 arch/arm/mach-omap2/clockdomains44xx_data.c      |   2 +-
 arch/arm/mach-omap2/clockdomains54xx_data.c      |   2 +-
 27 files changed, 1430 insertions(+), 82 deletions(-)
 create mode 100644 arch/arm/boot/dts/am5729-beagleboneai.dts
 create mode 100644 arch/arm/boot/dts/dra7-ipu-dsp-common.dtsi
 create mode 100644 arch/arm/boot/dts/dra74-ipu-dsp-common.dtsi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
