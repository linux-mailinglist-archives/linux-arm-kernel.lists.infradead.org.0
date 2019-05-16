Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 232341FFBF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 08:43:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PaVAnHz1gRqUy1wb2OUw7scmof2XtnjaGeyNk/ZEAvw=; b=ITV3D1rxh/1SMpNhG5x+gZoX04
	ymJxkOL19Zv59ZM5QkT0YiFdRW5fy7kFSlZUxUfc5g1R7K8hjkQRjEY90d0uZnZuWn/LyLO5twjKj
	fHpFjs5kR8iaJ25pZ66QPcmpHVHv/7AOflS7LtNpUpXlP1wVNRMijTQDuI43Ed9IwEAmE19sVmWfG
	Xnk+xeLM75TgxXIC+eN/SFnQ36BR4nafXTFJMpKtmBLX0BdnBsbla+X8LQKhb2Gou0Vbcw44k0hgE
	6jTm2VPMf8/qgnZ3JeY1L4qyyJppKW/qJ2Ebyu1EQKUEXKsmaZ53PSjk6qwg+27MhAiFV649x1Z7y
	QptQATag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRA7I-0004Qm-DO; Thu, 16 May 2019 06:43:49 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRA6z-0004Ct-EK
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 06:43:33 +0000
Received: by mail-pg1-x542.google.com with SMTP id h17so1070263pgv.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 23:43:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=LX7wMLtJ2rIARBNAFE0hsJemX4CMQOlgVh3KtQV3avg=;
 b=isGNnXmdjoQxHzpIjPWEB044D9sQ2z955g6P84fv9SmvXuVqTls8IELi3DHyVU2rGY
 lUoT9PlZDwD1wmzRJdzGtlB1HAEnlQNxcGUrTBQJ7dtdi81zK27KRYR/2cx8TqKYfy7Y
 8LOpv9GMF6R/sqkzmzDSYFILDkTwPwUwYvDr2CmbonT1rC4ULG1Ag3/RprTbB3DecHc+
 tIc+Mpq7HlmyFywCGPyW8Mq6oitGeCDdd+btY6UOmhRzgI/gkEsgCFJcqGizUZl3Irxg
 a0rrUocInSvGYPcb26oTK+sxFIj7IKT4Xac3sbLL61ibdt02/dZkfDfVwlHjSEGu729V
 kKPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=LX7wMLtJ2rIARBNAFE0hsJemX4CMQOlgVh3KtQV3avg=;
 b=ilt/CgZauYH6KIggntmK+cHSEqmKIEexxOD5MHxZ8255OwYGILhnsDDWsWN70bePK8
 muMjsEMpX1sI20oDC7kzFJ6jcl1R9s88uMTGa8ZBb/tsZwGgqm1+j7I7QXoHKSrSqtNI
 Dw0oJ+7WER4vrb78f8/uEd2kzbW5WX9p0go5BgbcCsuhJabNZE9bj11++T40bzxRplb3
 nHSR0LJrTdeHwisLOaBHJ/gb2LdASlPQI5rqNmHFgpjcsGtktBCIOFYDHFFpWFlHys/Y
 uJZl/GBtzLa3uoYBs7ve5b6N88FKnHyJdZyOtxJnaco1xl1FCQP+hntCPRRdQOEOMti6
 qggw==
X-Gm-Message-State: APjAAAXF6rIiyodHypI/EmylnWU4B0AnGSI1v/dDv2HR+sIcuDOPLSSH
 52qmHdokw66Qz3RRevFzjgKCLocmYcI=
X-Google-Smtp-Source: APXvYqzbTKZwDgwkxfd7QGGmHs/xnQz6cRYWQZQW49ybtvw/iBOWByGyqIUOcgVnYe/IingX679MuA==
X-Received: by 2002:a62:1c06:: with SMTP id c6mr41060723pfc.168.1557989008514; 
 Wed, 15 May 2019 23:43:28 -0700 (PDT)
Received: from localhost.localdomain
 (99-152-116-91.lightspeed.sntcca.sbcglobal.net. [99.152.116.91])
 by smtp.gmail.com with ESMTPSA id w194sm11196050pfd.56.2019.05.15.23.43.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 23:43:26 -0700 (PDT)
From: Olof Johansson <olof@lixom.net>
To: torvalds@linux-foundation.org
Subject: [GIT PULL 1/4] ARM: SoC platform updates
Date: Wed, 15 May 2019 23:43:01 -0700
Message-Id: <20190516064304.24057-2-olof@lixom.net>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190516064304.24057-1-olof@lixom.net>
References: <20190516064304.24057-1-olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_234329_483244_EDBEF0B7 
X-CRM114-Status: GOOD (  19.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Olof Johansson <olof@lixom.net>, arm@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SoC updates, mostly refactorings and cleanups of old legacy platforms.
Major themes this release:

- Conversion of ixp4xx to a modern platform (drivers, DT, bindings)
- Moving some of the ep93xx headers around to get it closer to multiplatform enabled.
- Cleanups of Davinci

This tag also contains a few patches that were queued up as fixes before
5.1 but I didn't get sent in before release.

----------------------------------------------------------------

The following changes since commit 83f3ef3de625a5766de2382f9e077d4daafd5bac:

  Merge tag 'libnvdimm-fixes-5.2-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/nvdimm/nvdimm

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-soc

for you to fetch changes up to 7a0c4c17089a8aff52f516f0f52002be52950aae:

  Merge branch 'fixes' into arm/soc

----------------------------------------------------------------

Adam Ford (2):
      ARM: dts: imx6q-logicpd: Reduce inrush current on start
      ARM: dts: imx6q-logicpd: Reduce inrush current on USBH1

Alexandre Belloni (1):
      ARM: lpc32xx: stop overwriting TEST_CLK_SEL

Andrew F. Davis (1):
      ARM: OMAP2+: Wakeupgen: AM43xx HS devices should save context like non-HS

Arnd Bergmann (6):
      ARM: ep93xx: move network platform data to separate header
      ARM: ep93xx: keypad: stop using mach/platform.h
      ARM: ep93xx: move pinctrl interfaces into include/linux/soc
      ARM: ep93xx: move private headers out of mach/*
      ARM: u300: regulator: add MODULE_LICENSE()
      ARM: debug-ll: add default address for digicolor

Bartosz Golaszewski (6):
      ARM: davinci: add missing sentinels to GPIO lookup tables
      usb: ohci-da8xx: let the regulator framework keep track of use count
      usb: ohci-da8xx: disable the regulator if the overcurrent irq fired
      ARM: davinci: omapl138-hawk: add a fixed regulator for ohci-da8xx
      ARM: davinci: da830-evm: add a fixed regulator for ohci-da8xx
      usb: ohci-da8xx: drop the vbus GPIO

Charles Keepax (1):
      ARM: s3c64xx: Tidy up handling of regulator GPIO lookups

Chen-Yu Tsai (1):
      arm64: dts: allwinner: a64: Rename hpvcc-supply to cpvdd-supply

Colin Ian King (1):
      Documentation: bus: ti-sysc: fix spelling mistakes "multipe" and "interconnet"

Dinh Nguyen (1):
      MAINTAINERS: Add arm64/intel entry for SoCFPGA

Dmitry Osipenko (7):
      ARM: trusted_foundations: Support L2 cache maintenance
      ARM: trusted_foundations: Make prepare_idle call to take mode argument
      ARM: trusted_foundations: Provide information about whether firmware is registered
      ARM: tegra: Set up L2 cache using Trusted Foundations firmware
      ARM: tegra: Don't apply CPU erratas in insecure mode
      ARM: tegra: Always boot CPU in ARM-mode
      ARM: tegra: Add firmware calls required for suspend-resume on Tegra30

Douglas Anderson (1):
      ARM: rockchip: Mark pm-init functions __init

Fabio Estevam (1):
      ARM: dts: imx: Fix the AR803X phy-mode

Joonyoung Shim (1):
      ARM: exynos: Add CPU state management for Exynos542x under secure firmware

Kabir Sahane (1):
      ARM: OMAP2+: pm33xx-core: Do not Turn OFF CEFUSE as PPA may be using it

Kevin Hilman (1):
      MAINTAINERS: update arch/arm/mach-davinci

Kohji Okuno (1):
      ARM: imx6: cpuidle: omit the unnecessary unmask of GINT

Linus Walleij (31):
      ARM: ixp4xx: Add myself as maintainer
      ARM: ixp4xx: Convert to MULTI_IRQ_HANDLER
      ARM: ixp4xx: Pass IRQ resource to beeper
      ARM: ixp4xx: Convert to SPARSE_IRQ
      irqchip: Add driver for IXP4xx
      gpio: ixp4xx: Add driver for the IXP4xx GPIO
      ARM: ixp4xx: Switch to use new IRQ+GPIO drivers
      clocksource/drivers/ixp4xx: Add driver
      ARM: ixp4xx: Switch to use new timer driver
      irqchip: ixp4xx: Add DT bindings
      irqchip: ixp4xx: Add OF initialization support
      clocksource/drivers/ixp4xx: Add DT bindings
      clocksource/drivers/ixp4xx: Add OF initialization support
      gpio: ixp4xx: Add DT bindings
      gpio: ixp4xx: Add OF probing support
      ARM: ixp4xx: Add DT bindings
      ARM: ixp4xx: Add device tree boot support
      ARM: dts: Add some initial IXP4xx device trees
      ARM: ixp4xx: Move NPE and QMGR to drivers/soc
      ARM: ixp4xx: Move IXP4xx QMGR and NPE headers
      ARM: ixp4xx: Turn the NPE into a platform device
      ARM: ixp4xx: Turn the QMGR into a platform device
      soc: ixp4xx: npe: Pass addresses as resources
      soc: ixp4xx: Uninline several functions
      soc: ixp4xx: Remove unused functions
      soc: ixp4xx: qmgr: Pass resources
      soc: ixp4xx: Add DT bindings for IXP4xx NPE
      soc: ixp4xx: npe: Add DT probe code
      soc: ixp4xx: qmgr: Add DT bindings for IXP4xx qmgr
      soc: ixp4xx: qmgr: Add DT probe code
      ARM: dts: Add queue manager and NPE to the IXP4xx DTSI

Ludovic Barre (1):
      ARM: stm32: add AMBA support for stm32 family

Marek Szyprowski (5):
      ARM: exynos: Move Exynos542x CPU state reset to pm_prepare()
      ARM: exynos: Add Exynos SMC values for secure memory write
      ARM: exynos: Fix undefined instruction during Exynos5422 resume
      ARM: exynos: Fix infinite loops on CPU powerup failure
      ARM: exynos: Set MCPM as mandatory for Exynos542x/5800 SoCs

Marek Vasut (1):
      ARM: shmobile: porter: enable R-Car Gen2 regulator quirk

Maxime Ripard (1):
      ARM: dts: sun8i: a33: Reintroduce default pinctrl muxing

Olof Johansson (17):
      Merge tag 'imx-fixes-5.1-2' of git://git.kernel.org/.../shawnguo/linux into fixes
      Merge tag 'sunxi-fixes-for-5.1' of https://git.kernel.org/.../sunxi/linux into fixes
      Merge tag 'imx-fixes-5.1-3' of git://git.kernel.org/.../shawnguo/linux into fixes
      Merge tag 'davinci-fixes-for-v5.1' of git://git.kernel.org/.../nsekhar/linux-davinci into fixes
      Merge tag 'omap-for-v5.2/soc-signed' of git://git.kernel.org/.../tmlind/linux-omap into arm/soc
      Merge tag 'omap-for-v5.2/ti-sysc-signed' of git://git.kernel.org/.../tmlind/linux-omap into arm/soc
      Merge tag 'samsung-soc-5.2' of https://git.kernel.org/.../krzk/linux into arm/soc
      Merge tag 'pxa-for-5.2' of https://github.com/rjarzmik/linux into arm/soc
      Merge tag 'davinci-for-v5.2/soc' of git://git.kernel.org/.../nsekhar/linux-davinci into arm/soc
      Merge tag 'maintainers_for_v5.2' of git://git.kernel.org/.../dinguyen/linux into arm/soc
      Merge tag 'tegra-for-5.2-firmware' of git://git.kernel.org/.../tegra/linux into arm/soc
      Merge tag 'renesas-arm-soc-for-v5.2' of https://git.kernel.org/.../horms/renesas into arm/soc
      Merge tag 'ixp4xx-for-armsoc' of git://git.kernel.org/.../linusw/linux-nomadik into arm/soc
      Merge tag 'lpc32xx-soc-for-5.2' of https://github.com/vzapolskiy/linux-lpc32xx into arm/soc
      Merge tag 'imx-soc-5.2' of git://git.kernel.org/.../shawnguo/linux into arm/soc
      Merge tag 'v5.2-rockchip-soc32-1' of git://git.kernel.org/.../mmind/linux-rockchip into arm/soc
      Merge branch 'fixes' into arm/soc

Roger Quadros (1):
      bus: ti-sysc: Add generic enable/disable functions

Thierry Reding (2):
      ARM: tegra: Sort dependencies alphabetically
      firmware: Move Trusted Foundations support

Tony Lindgren (38):
      ARM: OMAP2+: Fix potentially uninitialized return value for _setup_reset()
      ARM: OMAP2+: Make interconnect target module allocation functions static
      ARM: OMAP2+: Prepare class allocation for dynamically allocated modules
      ARM: OMAP2+: Define _HWMOD_STATE_DEFAULT and use it
      ARM: OMAP2+: Allocate struct omap_hwmod based on dts data
      ARM: OMAP2+: Remove hwmod .rev data and use local SoC checks instead
      ARM: OMAP2+: Handle reset quirks for dynamically allocated modules
      bus: ti-sysc: Fix sysc_unprepare() when no clocks have been allocated
      bus: ti-sysc: Handle missed no-idle property in addition to no-idle-on-init
      bus: ti-sysc: Make functions static
      bus: ti-sysc: Move legacy platform data idling into separate functions
      bus: ti-sysc: Add separate functions for handling clocks
      bus: ti-sysc: Enable all clocks directly during init to read revision
      bus: ti-sysc: Allocate mdata as needed and do platform data based init later
      bus: ti-sysc: Manage clocks for the interconnect target module in all cases
      bus: ti-sysc: Move rstctrl reset to happen later
      bus: ti-sysc: Add support for early quirks based on register address
      bus: ti-sysc: Add quirk handling for external optional functional clock
      bus: ti-sysc: Pass clockactivity quirk to platform functions
      bus: ti-sysc: Handle swsup idle mode quirks
      bus: ti-sysc: Detect DMIC for debugging
      ARM: OMAP2+: Drop mmc platform data for omap4
      ARM: OMAP2+: Drop i2c platform data for omap4
      ARM: OMAP2+: Drop gpio platform data for omap4
      ARM: OMAP2+: Drop uart platform data for omap4
      ARM: OMAP2+: Drop mmc platform data for am330x and am43xx
      ARM: OMAP2+: Drop i2c platform data for am33xx and am43xx
      ARM: OMAP2+: Drop gpio platform data for am33xx and am43xx
      ARM: OMAP2+: Drop uart platform data for am33xx and am43xx
      ARM: OMAP2+: Drop mmc platform data for omap5
      ARM: OMAP2+: Drop i2c platform data for omap5
      ARM: OMAP2+: Drop gpio platform data for omap5
      ARM: OMAP2+: Drop uart platform data for omap5
      ARM: OMAP2+: Drop mmc platform data for dra7
      ARM: OMAP2+: Drop i2c platform data for dra7
      ARM: OMAP2+: Drop gpio platform data for dra7
      ARM: OMAP2+: Drop uart platform data for dra7
      ARM: OMAP2+: Drop mcspi platform data for omap4

Vladimir Oltean (1):
      ARM: dts: ls1021: Fix SGMII PCS link remaining down after PHY disconnect

Vladimir Zapolskiy (3):
      ARM: lpc32xx: remove redundant included headers
      ARM: lpc32xx: remove platform data of SSP0 and SSP1 controllers
      ARM: lpc32xx: use SPDX license identifier

Wen Yang (5):
      ARM: sunxi: fix a leaked reference by adding missing of_node_put
      ARM: sunxi: fix a leaked reference by adding missing of_node_put
      ARM: shmobile: fix a leaked reference by adding missing of_node_put
      ARM: exynos: Fix a leaked reference by adding missing of_node_put
      ARM: rockchip: add missing of_node_put in rockchip_smp_prepare_pmu

YueHaibing (1):
      ARM: pxa: ssp: Fix "WARNING: invalid free of devm_ allocated data"


 .../devicetree/bindings/arm/intel-ixp4xx.yaml   |  22 +
 .../devicetree/bindings/bus/ti-sysc.txt         |   6 +-
 .../intel,ixp4xx-network-processing-engine.yaml |  44 +
 .../intel,ixp4xx-interrupt.yaml                 |  54 ++
 .../misc/intel,ixp4xx-queue-manager.yaml        |  49 ++
 .../bindings/timer/intel,ixp4xx-timer.yaml      |  42 +
 MAINTAINERS                                     |  21 +-
 arch/arm/Kconfig                                |   7 +-
 arch/arm/Kconfig.debug                          |   2 +
 arch/arm/Makefile                               |   1 -
 arch/arm/boot/dts/Makefile                      |   3 +
 arch/arm/boot/dts/imx6-logicpd-baseboard.dtsi   |   4 +-
 arch/arm/boot/dts/imx6dl-riotboard.dts          |   2 +-
 arch/arm/boot/dts/imx6q-ba16.dtsi               |   2 +-
 arch/arm/boot/dts/imx6q-marsboard.dts           |   2 +-
 arch/arm/boot/dts/imx6q-tbs2910.dts             |   2 +-
 arch/arm/boot/dts/imx6qdl-apf6.dtsi             |   2 +-
 arch/arm/boot/dts/imx6qdl-sabreauto.dtsi        |   2 +-
 arch/arm/boot/dts/imx6qdl-sabresd.dtsi          |   2 +-
 arch/arm/boot/dts/imx6qdl-sr-som.dtsi           |   2 +-
 arch/arm/boot/dts/imx6qdl-wandboard.dtsi        |   2 +-
 arch/arm/boot/dts/imx6sx-sabreauto.dts          |   2 +-
 arch/arm/boot/dts/imx6sx-sdb.dtsi               |   2 +-
 arch/arm/boot/dts/imx7d-pico.dtsi               |   2 +-
 .../arm/boot/dts/intel-ixp42x-linksys-nslu2.dts | 109 +++
 arch/arm/boot/dts/intel-ixp42x.dtsi             |  25 +
 .../boot/dts/intel-ixp43x-gateworks-gw2358.dts  |  94 ++
 arch/arm/boot/dts/intel-ixp43x.dtsi             |  15 +
 arch/arm/boot/dts/intel-ixp45x-ixp46x.dtsi      |  34 +
 arch/arm/boot/dts/intel-ixp4xx.dtsi             |  69 ++
 arch/arm/boot/dts/ls1021a-twr.dts               |   9 +-
 arch/arm/boot/dts/ls1021a.dtsi                  |  11 +-
 arch/arm/boot/dts/sun8i-a23-a33.dtsi            |   2 +
 arch/arm/configs/exynos_defconfig               |   1 -
 arch/arm/configs/multi_v7_defconfig             |   1 -
 arch/arm/firmware/Kconfig                       |  29 -
 arch/arm/firmware/Makefile                      |   4 -
 arch/arm/include/asm/firmware.h                 |   2 +-
 arch/arm/mach-davinci/board-da830-evm.c         |  51 +-
 arch/arm/mach-davinci/board-da850-evm.c         |   1 +
 arch/arm/mach-davinci/board-dm355-evm.c         |   1 +
 arch/arm/mach-davinci/board-dm644x-evm.c        |   1 +
 arch/arm/mach-davinci/board-omapl138-hawk.c     |  50 +-
 arch/arm/mach-ep93xx/adssphere.c                |   2 +-
 arch/arm/mach-ep93xx/clock.c                    |   3 +-
 arch/arm/mach-ep93xx/core.c                     |   8 +-
 arch/arm/mach-ep93xx/dma.c                      |   2 +-
 arch/arm/mach-ep93xx/edb93xx.c                  |   4 +-
 arch/arm/mach-ep93xx/gesbc9312.c                |   2 +-
 .../{include/mach => }/gpio-ep93xx.h            |   0
 .../mach-ep93xx/{include/mach => }/hardware.h   |   2 +-
 arch/arm/mach-ep93xx/micro9.c                   |   2 +-
 .../mach-ep93xx/{include/mach => }/platform.h   |  23 +-
 arch/arm/mach-ep93xx/simone.c                   |   4 +-
 arch/arm/mach-ep93xx/snappercl15.c              |   4 +-
 arch/arm/mach-ep93xx/ts72xx.c                   |   4 +-
 arch/arm/mach-ep93xx/vision_ep9307.c            |   4 +-
 arch/arm/mach-exynos/Kconfig                    |  12 +-
 arch/arm/mach-exynos/Makefile                   |   2 +-
 arch/arm/mach-exynos/common.h                   |   1 +
 arch/arm/mach-exynos/exynos.c                   |   3 +
 arch/arm/mach-exynos/firmware.c                 |   1 +
 arch/arm/mach-exynos/mcpm-exynos.c              |  13 +-
 arch/arm/mach-exynos/platsmp.c                  |   9 +-
 arch/arm/mach-exynos/smc.h                      |   7 +
 arch/arm/mach-exynos/suspend.c                  |  49 +-
 arch/arm/mach-imx/pm-imx6.c                     |   6 +-
 arch/arm/mach-ixp4xx/Kconfig                    |  27 +-
 arch/arm/mach-ixp4xx/Makefile                   |   5 +-
 arch/arm/mach-ixp4xx/avila-pci.c                |   2 +
 arch/arm/mach-ixp4xx/avila-setup.c              |   2 +
 arch/arm/mach-ixp4xx/common.c                   | 484 ++---------
 arch/arm/mach-ixp4xx/coyote-pci.c               |   2 +
 arch/arm/mach-ixp4xx/coyote-setup.c             |   2 +
 arch/arm/mach-ixp4xx/dsmg600-pci.c              |   2 +
 arch/arm/mach-ixp4xx/dsmg600-setup.c            |   5 +-
 arch/arm/mach-ixp4xx/fsg-pci.c                  |   2 +
 arch/arm/mach-ixp4xx/fsg-setup.c                |   2 +
 arch/arm/mach-ixp4xx/gateway7001-pci.c          |   2 +
 arch/arm/mach-ixp4xx/gateway7001-setup.c        |   2 +
 arch/arm/mach-ixp4xx/gtwx5715-pci.c             |   2 +
 arch/arm/mach-ixp4xx/gtwx5715-setup.c           |   2 +
 arch/arm/mach-ixp4xx/include/mach/entry-macro.S |  41 -
 arch/arm/mach-ixp4xx/include/mach/irqs.h        |  75 --
 arch/arm/mach-ixp4xx/include/mach/ixp4xx-regs.h |  94 --
 arch/arm/mach-ixp4xx/include/mach/qmgr.h        | 204 -----
 arch/arm/mach-ixp4xx/irqs.h                     |  68 ++
 arch/arm/mach-ixp4xx/ixdp425-pci.c              |   2 +
 arch/arm/mach-ixp4xx/ixdp425-setup.c            |   2 +
 arch/arm/mach-ixp4xx/ixdpg425-pci.c             |   2 +
 arch/arm/mach-ixp4xx/ixp4xx-of.c                |  60 ++
 arch/arm/mach-ixp4xx/nas100d-pci.c              |   2 +
 arch/arm/mach-ixp4xx/nas100d-setup.c            |   5 +-
 arch/arm/mach-ixp4xx/nslu2-pci.c                |   2 +
 arch/arm/mach-ixp4xx/nslu2-setup.c              |  12 +-
 arch/arm/mach-ixp4xx/wg302v2-pci.c              |   2 +
 arch/arm/mach-ixp4xx/wg302v2-setup.c            |   2 +
 arch/arm/mach-lpc32xx/phy3250.c                 |  42 +-
 arch/arm/mach-omap2/common.h                    |   9 +
 arch/arm/mach-omap2/i2c.c                       |  11 +-
 arch/arm/mach-omap2/io.c                        |   7 +-
 arch/arm/mach-omap2/mmc.h                       |   8 +
 arch/arm/mach-omap2/omap-wakeupgen.c            |   4 +-
 arch/arm/mach-omap2/omap_hwmod.c                | 210 ++++-
 arch/arm/mach-omap2/omap_hwmod.h                |   8 +-
 arch/arm/mach-omap2/omap_hwmod_2420_data.c      |   1 -
 arch/arm/mach-omap2/omap_hwmod_2430_data.c      |   1 -
 .../mach-omap2/omap_hwmod_2xxx_ipblock_data.c   |   1 -
 .../omap_hwmod_33xx_43xx_common_data.h          |  29 -
 .../omap_hwmod_33xx_43xx_interconnect_data.c    | 103 ---
 .../omap_hwmod_33xx_43xx_ipblock_data.c         | 255 ------
 arch/arm/mach-omap2/omap_hwmod_33xx_data.c      |  64 --
 arch/arm/mach-omap2/omap_hwmod_3xxx_data.c      |   4 -
 arch/arm/mach-omap2/omap_hwmod_43xx_data.c      | 113 ---
 arch/arm/mach-omap2/omap_hwmod_44xx_data.c      | 740 ----------------
 arch/arm/mach-omap2/omap_hwmod_54xx_data.c      | 748 ----------------
 arch/arm/mach-omap2/omap_hwmod_7xx_data.c       | 848 +------------------
 arch/arm/mach-omap2/omap_hwmod_81xx_data.c      |   1 -
 arch/arm/mach-omap2/pm33xx-core.c               |   8 +-
 arch/arm/mach-omap2/sr_device.c                 |   5 +-
 arch/arm/mach-rockchip/platsmp.c                |   1 +
 arch/arm/mach-rockchip/pm.c                     |   4 +-
 arch/arm/mach-s3c64xx/mach-crag6410-module.c    |  14 +-
 arch/arm/mach-shmobile/pm-rcar-gen2.c           |   1 +
 .../mach-shmobile/regulator-quirk-rcar-gen2.c   |   6 +-
 arch/arm/mach-stm32/Kconfig                     |   5 +-
 arch/arm/mach-sunxi/mc_smp.c                    |   5 +-
 arch/arm/mach-sunxi/platsmp.c                   |   4 +
 arch/arm/mach-tegra/Kconfig                     |   3 +-
 arch/arm/mach-tegra/cpuidle-tegra114.c          |   4 +-
 arch/arm/mach-tegra/pm.c                        |  50 ++
 arch/arm/mach-tegra/reset-handler.S             |  50 +-
 arch/arm/mach-tegra/reset.c                     |   4 +
 arch/arm/mach-tegra/reset.h                     |   9 +-
 arch/arm/mach-tegra/sleep-tegra20.S             |   4 +
 arch/arm/mach-tegra/sleep.S                     |  14 +-
 arch/arm/mach-tegra/tegra.c                     |   5 +-
 arch/arm/mach-u300/regulator.c                  |   2 +
 arch/arm/plat-pxa/ssp.c                         |   6 -
 .../dts/allwinner/sun50i-a64-bananapi-m64.dts   |   2 +-
 .../boot/dts/allwinner/sun50i-a64-pine64.dts    |   2 +-
 .../boot/dts/allwinner/sun50i-a64-pinebook.dts  |   2 +-
 .../boot/dts/allwinner/sun50i-a64-sopine.dtsi   |   2 +-
 drivers/ata/pata_ep93xx.c                       |   2 +-
 drivers/bus/ti-sysc.c                           | 661 ++++++++++++---
 drivers/clocksource/Kconfig                     |   7 +
 drivers/clocksource/Makefile                    |   1 +
 drivers/clocksource/timer-ixp4xx.c              | 284 +++++++
 drivers/crypto/ixp4xx_crypto.c                  |   4 +-
 drivers/firmware/Kconfig                        |  16 +
 drivers/firmware/Makefile                       |   1 +
 .../firmware/trusted_foundations.c              |  79 +-
 drivers/gpio/Kconfig                            |  13 +
 drivers/gpio/Makefile                           |   1 +
 drivers/gpio/gpio-ixp4xx.c                      | 474 +++++++++++
 drivers/input/keyboard/Kconfig                  |   2 +-
 drivers/input/keyboard/ep93xx_keypad.c          |   8 +-
 drivers/input/misc/ixp4xx-beeper.c              |  20 +-
 drivers/irqchip/Kconfig                         |   6 +
 drivers/irqchip/Makefile                        |   1 +
 drivers/irqchip/irq-ixp4xx.c                    | 403 +++++++++
 drivers/net/ethernet/cirrus/Kconfig             |   2 +-
 drivers/net/ethernet/cirrus/ep93xx_eth.c        |   2 +-
 drivers/net/ethernet/xscale/ixp4xx_eth.c        |  14 +-
 drivers/net/wan/ixp4xx_hss.c                    |   4 +-
 drivers/pwm/pwm-ep93xx.c                        |   2 +-
 drivers/soc/Kconfig                             |   1 +
 drivers/soc/Makefile                            |   1 +
 drivers/soc/ixp4xx/Kconfig                      |  16 +
 drivers/soc/ixp4xx/Makefile                     |   2 +
 .../soc/ixp4xx/ixp4xx-npe.c                     |  66 +-
 .../soc/ixp4xx/ixp4xx-qmgr.c                    | 186 +++-
 drivers/usb/host/ohci-da8xx.c                   |  42 +-
 drivers/watchdog/ixp4xx_wdt.c                   |   9 +
 .../linux/firmware}/trusted_foundations.h       |  27 +-
 include/linux/irqchip/irq-ixp4xx.h              |  12 +
 include/linux/platform_data/eth-ep93xx.h        |  10 +
 include/linux/platform_data/keypad-ep93xx.h     |   4 +-
 include/linux/platform_data/ti-sysc.h           |   9 +-
 include/linux/platform_data/timer-ixp4xx.h      |  11 +
 include/linux/soc/cirrus/ep93xx.h               |  37 +
 .../mach => include/linux/soc/ixp4xx}/npe.h     |   2 -
 include/linux/soc/ixp4xx/qmgr.h                 |  91 ++
 sound/soc/cirrus/edb93xx.c                      |   2 +-
 sound/soc/cirrus/ep93xx-ac97.c                  |   1 +
 sound/soc/cirrus/ep93xx-i2s.c                   |   3 +-
 sound/soc/cirrus/simone.c                       |   2 +-
 sound/soc/cirrus/snappercl15.c                  |   2 +-
 188 files changed, 3791 insertions(+), 4242 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
 create mode 100644 Documentation/devicetree/bindings/firmware/intel,ixp4xx-network-processing-engine.yaml
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/intel,ixp4xx-interrupt.yaml
 create mode 100644 Documentation/devicetree/bindings/misc/intel,ixp4xx-queue-manager.yaml
 create mode 100644 Documentation/devicetree/bindings/timer/intel,ixp4xx-timer.yaml
 create mode 100644 arch/arm/boot/dts/intel-ixp42x-linksys-nslu2.dts
 create mode 100644 arch/arm/boot/dts/intel-ixp42x.dtsi
 create mode 100644 arch/arm/boot/dts/intel-ixp43x-gateworks-gw2358.dts
 create mode 100644 arch/arm/boot/dts/intel-ixp43x.dtsi
 create mode 100644 arch/arm/boot/dts/intel-ixp45x-ixp46x.dtsi
 create mode 100644 arch/arm/boot/dts/intel-ixp4xx.dtsi
 delete mode 100644 arch/arm/firmware/Kconfig
 delete mode 100644 arch/arm/firmware/Makefile
 rename arch/arm/mach-ep93xx/{include/mach => }/gpio-ep93xx.h (100%)
 rename arch/arm/mach-ep93xx/{include/mach => }/hardware.h (96%)
 rename arch/arm/mach-ep93xx/{include/mach => }/platform.h (65%)
 delete mode 100644 arch/arm/mach-ixp4xx/include/mach/entry-macro.S
 delete mode 100644 arch/arm/mach-ixp4xx/include/mach/irqs.h
 delete mode 100644 arch/arm/mach-ixp4xx/include/mach/qmgr.h
 create mode 100644 arch/arm/mach-ixp4xx/irqs.h
 create mode 100644 arch/arm/mach-ixp4xx/ixp4xx-of.c
 create mode 100644 drivers/clocksource/timer-ixp4xx.c
 rename {arch/arm => drivers}/firmware/trusted_foundations.c (62%)
 create mode 100644 drivers/gpio/gpio-ixp4xx.c
 create mode 100644 drivers/irqchip/irq-ixp4xx.c
 create mode 100644 drivers/soc/ixp4xx/Kconfig
 create mode 100644 drivers/soc/ixp4xx/Makefile
 rename arch/arm/mach-ixp4xx/ixp4xx_npe.c => drivers/soc/ixp4xx/ixp4xx-npe.c (94%)
 rename arch/arm/mach-ixp4xx/ixp4xx_qmgr.c => drivers/soc/ixp4xx/ixp4xx-qmgr.c (66%)
 rename {arch/arm/include/asm => include/linux/firmware}/trusted_foundations.h (77%)
 create mode 100644 include/linux/irqchip/irq-ixp4xx.h
 create mode 100644 include/linux/platform_data/eth-ep93xx.h
 create mode 100644 include/linux/platform_data/timer-ixp4xx.h
 create mode 100644 include/linux/soc/cirrus/ep93xx.h
 rename {arch/arm/mach-ixp4xx/include/mach => include/linux/soc/ixp4xx}/npe.h (95%)
 create mode 100644 include/linux/soc/ixp4xx/qmgr.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
