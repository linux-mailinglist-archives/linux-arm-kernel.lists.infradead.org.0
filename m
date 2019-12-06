Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3FE11585A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 21:55:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wZuQB+5b1BsWJsFXsXhepUEnyagMt3GhE95Z1EJMTsI=; b=iTXxoljhhdqVuU
	OR8vxNwfimsNSZlLrtmA2zaOd/iJzQ7RqGfagvPIZIMoXhC7vQ/kelzjzjLYoFmyX6v5XhsF5Ptji
	b5yZM1ITc+L5s7d54VKHFiX+cQxc6VH6C9EtxDTTVnUwWHn0FfUf7nj5QkJxuenHlKCK6/AJ4Eib5
	+rpfvu173L41heCa6k5xIme3lho90cZEh0SbFMWeGRJ0KawzEBKJqtIz+vF5SOgg7MPw+PHGGukUW
	p1iG7lutnbYyq+jTDiRWHEuQq18nSJvZyO89YXsIRPfpGX5xX6t7Nd4HEb2gX2/rLqExHuzVCDntS
	yXTD+jZkhOz1MSlIoN6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idKdK-0006zt-Iw; Fri, 06 Dec 2019 20:55:26 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idKdC-0006zJ-Ep
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 20:55:20 +0000
Received: by mail-lj1-x242.google.com with SMTP id e10so9072041ljj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Dec 2019 12:55:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=dDOgMHYCPqZmG8t2SDXruDukUJ9qiXPdNP9vyd0xDfY=;
 b=ugKs6D08RnBJ4kkK3PkSVwkWgzxu1j3EYwx3fUTwwhRb3uQzVoENq///0waI2SAuPI
 ikI6naEo3ZKIJ3AJBmM3u0A8FZ/8hWc5rwuX3JGKZJVmV876aqid6qdMaz9JUBBAguw5
 MvoaBZpcz2KNXOXPqPccpFtHduSylbTIEdRagvxcf7zcxKduRzbgvRqaeZFoLKsJ+0hL
 /FHvCFKzPisWEsXc7YR8DoWaTnSGMHKBD+uXs5i/aF+KQAdZ6HkQH243zxDbpX2q2LfI
 7NMFIKkkDzqYAemktQvPIAvYXKsyF8wh/cbj6odSVzjqAXpAVetDHawsaL1kzAtoxOnT
 b7hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=dDOgMHYCPqZmG8t2SDXruDukUJ9qiXPdNP9vyd0xDfY=;
 b=uGpEfBk75iqAIboAzePNZXKcweZtP38CxYTlIAGH5WsOcUAV4PBF5e3EqvmRbSdr5k
 WgEUOhqmYzxQUz2aAxJ7NjH60x35RD9DGhEfrvgBOHXKjJ/9lbXDRa6G1Lpr5OGPQZJG
 pYkmp8k3OPYJkVGaKUcL2zJlwPJRga0J1HC88IBePfSXyj5kXayHT58KwQE7+FHgoT1r
 1mUayADXSueLxe3sPM38fJ8DdpoP0QJr3N4SrHw+JMTsTfz4UkGSkPwo3gGR3GR3CGUM
 VPPaaeKgAOaQtNP6wUE66ZCDIzTgFzJ92Dw2gjvfFwLVddfZIsAuwEK++XJSNoK1fKnn
 ee7Q==
X-Gm-Message-State: APjAAAWAieo04ZMrW6i7feocSZn8TVBifjhqzOSx/peTFtlw6M3RWC+U
 tXBUSgNfHoBPOcJg336drrjVTg==
X-Google-Smtp-Source: APXvYqw4IaZruuvC13wHL2WCQ7RC6Rt1umv+ac2nLMyugbm7EJr4gUIgnD1N0pEo+OTgyBjSCC6U9Q==
X-Received: by 2002:a2e:b4f6:: with SMTP id s22mr9927985ljm.218.1575665715945; 
 Fri, 06 Dec 2019 12:55:15 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id k24sm8331931ljj.27.2019.12.06.12.55.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 06 Dec 2019 12:55:13 -0800 (PST)
Date: Fri, 6 Dec 2019 12:53:58 -0800
From: Olof Johansson <olof@lixom.net>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] ARM: SoC fixes
Message-ID: <20191206205358.aifwgtflryjf6iao@localhost>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_125518_638275_91351EC6 
X-CRM114-Status: GOOD (  16.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: olof@lixom.net, soc@kernel.org, arm@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

The following changes since commit b08baef02b26cf7c2123e4a24a2fa1fb7a593ffb:

  Merge tag 'armsoc-defconfig' of git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc (2019-12-05 12:14:19 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes

for you to fetch changes up to 30f55eae47e4ad1b64d692865e6a4277447a33df:

  Merge tag 'arm-soc/for-5.5/devicetree-part2' of https://github.com/Broadcom/stblinux into arm/fixes (2019-12-06 08:29:56 -0800)

----------------------------------------------------------------
ARM: SoC fixes

A set of fixes that we've merged late, but for the most part that have
been sitting in -next for a while through platform maintainer trees.

 + Fixes to suspend/resume on Tegra, caused by the added features
   this merge window

 + Cleanups and minor fixes to TI additions this merge window

 + Tee fixes queued up late before the merge window, included here.

 + A handful of other fixlets

There's also a refresh of the shareed config files (multi_v* on 32-bit,
and defconfig on 64-bit), to avoid conflicts when we get new
contributions.

----------------------------------------------------------------
Adam Ford (2):
      ARM: dts: logicpd-torpedo-baseboard:  Enable HDQ
      ARM: dts: logicpd-torpedo: Remove unnecessary notes/comments

Andre Przywara (1):
      arm64: dts: juno: Fix UART frequency

Bibby Hsieh (1):
      soc: mediatek: cmdq: fixup wrong input order of write api

Dmitry Osipenko (1):
      memory: tegra30-emc: Fix panic on suspend

Faiz Abbas (1):
      ARM: dts: am57xx-beagle-x15: Update pinmux name to ddr_3_3v

Grygorii Strashko (1):
      ARM: dts: dra7: fix cpsw mdio fck clock

Jan Glauber (1):
      MAINTAINERS: update Cavium ThunderX drivers

Jarkko Nikula (1):
      ARM: dts: omap3-tao3530: Fix incorrect MMC card detection GPIO polarity

Jens Wiklander (1):
      tee: optee: fix device enumeration error handling

Linus Walleij (1):
      ARM: pxa: Fix resource properties

Luc Van Oostenryck (1):
      soc: aspeed: Fix snoop_file_poll()'s return type

Marek Szyprowski via Linux.Kernel.Org (1):
      ARM: multi_v7_defconfig: Restore debugfs support

Markus Elfring (1):
      bus: ti-sysc: Adjust exception handling in sysc_child_add_named_clock()

Nicolas Saenz Julienne (1):
      ARM: dts: bcm2711: force CMA into first GB of memory

Olof Johansson (14):
      Merge tag 'tee-fixes-for-v5.4' of git://git.linaro.org/people/jens.wiklander/linux-tee into arm/fixes
      Merge tag 'arm-soc/for-5.5/maintainers-part2' of https://github.com/Broadcom/stblinux into arm/fixes
      Merge tag 'juno-fixes-5.5' of git://git.kernel.org/.../sudeep.holla/linux into arm/fixes
      Merge tag 'scmi-fix-5.5-2' of git://git.kernel.org/.../sudeep.holla/linux into arm/fixes
      Merge mainline/master into arm/fixes
      arm64: defconfig: re-run savedefconfig
      ARM: defconfig: re-run savedefconfig on multi_v* configs
      Merge tag 'omap-for-v5.5/ti-sysc-late-signed' of git://git.kernel.org/.../tmlind/linux-omap into arm/fixes
      Merge tag 'omap-for-v5.5/dt-fixes-merge-window-signed' of git://git.kernel.org/.../tmlind/linux-omap into arm/fixes
      Merge tag 'socfpga_update_for_v5.5' of git://git.kernel.org/.../dinguyen/linux into arm/fixes
      Merge tag 'tegra-for-5.5-cpufreq' of git://git.kernel.org/.../tegra/linux into arm/fixes
      Merge tag 'tegra-for-5.5-soc-fixes' of git://git.kernel.org/.../tegra/linux into arm/fixes
      Merge tag 'tegra-for-5.5-memory-fixes' of git://git.kernel.org/.../tegra/linux into arm/fixes
      Merge tag 'arm-soc/for-5.5/devicetree-part2' of https://github.com/Broadcom/stblinux into arm/fixes

Robert Richter (1):
      MAINTAINERS: Switch to Marvell addresses

Simon Goldschmidt (1):
      arm: socfpga: execute cold reboot by default

Sowjanya Komatineni (1):
      cpufreq: tegra124: Add suspend and resume support

Stefan Wahren (2):
      ARM: dts: bcm2711-rpi-4: Enable GENET support
      MAINTAINERS: Make Nicolas Saenz Julienne the new bcm2835 maintainer

Sudeep Holla (1):
      Revert "arm64: dts: juno: add dma-ranges property"

Sumit Garg (1):
      tee: optee: Fix dynamic shm pool allocations

Thierry Reding (3):
      soc/tegra: pmc: Use lower-case for hexadecimal literals
      soc/tegra: pmc: Add missing IRQ callbacks on Tegra194
      soc/tegra: pmc: Add reset sources and levels on Tegra194

Tony Lindgren (6):
      bus: ti-sysc: Add module enable quirk for audio AESS
      ARM: OMAP2+: Drop useless gptimer option for omap4
      Merge tag 'omap-for-v5.5/soc-late-signed' into omap-for-v5.5/ti-sysc-late
      Merge branches 'omap-for-v5.5/soc' and 'omap-for-v5.5/ti-sysc' into omap-for-v5.5/ti-sysc-late
      ARM: dts: Fix vcsi regulator to be always-on for droid4 to prevent hangs
      ARM: dts: Fix sgx sysconfig register for omap4

Wen Yang (1):
      firmware: arm_scmi: Avoid double free in error flow

 .mailmap                                           |  3 ++
 MAINTAINERS                                        | 40 +++++++--------
 arch/arm/boot/dts/am57xx-beagle-x15-revb1.dts      |  2 +-
 arch/arm/boot/dts/am57xx-beagle-x15-revc.dts       |  2 +-
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts              | 17 +++++++
 arch/arm/boot/dts/bcm2711.dtsi                     | 46 +++++++++++++++++
 arch/arm/boot/dts/dra7-l4.dtsi                     |  2 +-
 .../boot/dts/logicpd-torpedo-37xx-devkit-28.dts    |  1 -
 arch/arm/boot/dts/logicpd-torpedo-baseboard.dtsi   | 13 ++++-
 arch/arm/boot/dts/motorola-cpcap-mapphone.dtsi     |  4 +-
 arch/arm/boot/dts/omap3-tao3530.dtsi               |  2 +-
 arch/arm/boot/dts/omap4.dtsi                       |  4 +-
 arch/arm/configs/multi_v4t_defconfig               | 13 ++---
 arch/arm/configs/multi_v5_defconfig                | 24 ++++-----
 arch/arm/configs/multi_v7_defconfig                | 32 +++++-------
 arch/arm/mach-omap2/timer.c                        |  4 +-
 arch/arm/mach-pxa/icontrol.c                       |  6 +--
 arch/arm/mach-socfpga/socfpga.c                    | 12 ++---
 arch/arm64/boot/dts/arm/juno-base.dtsi             |  1 -
 arch/arm64/boot/dts/arm/juno-clocks.dtsi           |  4 +-
 arch/arm64/configs/defconfig                       | 36 ++++---------
 drivers/bus/ti-sysc.c                              | 21 ++++++--
 drivers/cpufreq/tegra124-cpufreq.c                 | 59 ++++++++++++++++++++++
 drivers/firmware/arm_scmi/bus.c                    |  8 +--
 drivers/memory/tegra/tegra30-emc.c                 |  2 +-
 drivers/soc/aspeed/aspeed-lpc-snoop.c              |  4 +-
 drivers/soc/mediatek/mtk-cmdq-helper.c             |  2 +-
 drivers/soc/tegra/pmc.c                            | 47 ++++++++++++++++-
 drivers/tee/optee/call.c                           |  7 +++
 drivers/tee/optee/core.c                           | 20 +++++---
 drivers/tee/optee/shm_pool.c                       | 12 ++++-
 include/linux/platform_data/ti-sysc.h              |  1 +
 32 files changed, 312 insertions(+), 139 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
