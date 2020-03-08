Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F81317D739
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 00:59:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EIZxqr5Tk/+Raow5ZVS+VhOgg+KI+QVF3saTxezr23A=; b=tiQNjXCncFBrqB
	JHTxrG51ooilv7aTDjHvqan9bue3VkP5QgZ1suVZ2UD4YtrCV3/76KZZUsizzfeAn7M3crdEpd4Kz
	cQ51O2jg2v3wT4ogwLCMF7b93PXVbCHDW7outlnU7IZTrGAQm3ryAM+YbW1gslW1jgMnE2D4T2pnw
	gjJbg/F2K4WZeFIXqv5TsE3loGQ1Sjzfkb+1uUCx5PN6M16rx+0eQa+zYBn0U4qyCkXcbaoPGzu8w
	s4rR/wWscipt5/FUs/+nqMLJbjOFTYgDXiCRz857B2tvAJEj62azEvJNODq7xONFL4F/yxxEybN99
	s2aU+lrkMYT1DjT+ZUmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jB5pK-0006Ow-Ew; Sun, 08 Mar 2020 23:59:22 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jB5pE-0006OV-4E
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 23:59:18 +0000
Received: by mail-lf1-x142.google.com with SMTP id i19so249258lfl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 08 Mar 2020 16:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=gpfW1kUuFhM7182RqjH19xKhw6BpdKRMuJE8branGb8=;
 b=qmnOYPvbLSFxeFDZg9tF8SXT03m1xMLOL8luWMan+ePCfC+LcCoZR4OKrAz7fvowVK
 eKKv8z/veXcdC3e7wW4uOne7gt6DA0HR/Z/MwOX/UsuBb383LEaNlFlR3BwFShRpurh5
 /5UMlgaj6ROwAUk3S6lB2o6h7+an3LUnA4Ppvf9n6DXEwFty59FEqCcwCEYZnDY+7QLu
 EyKBWADm2vy7G0Used1W70DSKNgHHAXUWui1Ns0Ce5LdwtZQII+IfA9G+ScMmInCV8KE
 qBwfs5f5Mw2FIwUzDFuctwuXrh1vp+ZFRrisyGx/MQFJuigTgIslNT4IQRkXpGGU8ezk
 ZPng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=gpfW1kUuFhM7182RqjH19xKhw6BpdKRMuJE8branGb8=;
 b=RWtjnqkLfAkROlX1F27BC4OytaRTeuUlUCxSG8XIF/j131yqbT71ScTGerZcS3GNV9
 7SvM30rwgbRcz6M6Az/UTrPN10jWuXwUrRI7W4QijbjtjQNilEoi5bk4GLTsDpItdXU+
 1WQEanPBzh7HnH4JGDskCCGLvd8FGpUaj1JdBXt3BnX+aIV+tvONAwEnw/XfAGKwrhAX
 u85Qn4E9YVEr+CDLQUG+mqaijSxbBTm+Gv5s8nn95/fb4Op8NmrRUaKPpTPZgbpMGU0m
 wBo50eO1SNnCsvFH/Ct1U2Tsx/0pVruI6IOMwF86DI42xdLmdxS+Du1fVuBT6qElVWER
 TwCA==
X-Gm-Message-State: ANhLgQ1MjTiZGUvV6e6khQONLSlq2OWk4V3g6C/kL/RaAW0L5Hyn15Or
 mNuWc0nm0HNOUctU4UerxwwUJA==
X-Google-Smtp-Source: ADFU+vtOl9nxzMfXncxrYriF9/aFjAXydSWXX5geSQ1Ta9p9xopwmbK9NSfQDRDWy5wpsuHEZS9wCQ==
X-Received: by 2002:ac2:4c15:: with SMTP id t21mr3584816lfq.117.1583711952334; 
 Sun, 08 Mar 2020 16:59:12 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id r186sm6551310lff.66.2020.03.08.16.59.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 08 Mar 2020 16:59:10 -0700 (PDT)
Date: Sun, 8 Mar 2020 16:58:42 -0700
From: Olof Johansson <olof@lixom.net>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] ARM: SoC fixes
Message-ID: <20200308235842.gjmjv5ag4yma4exc@localhost>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_165916_222344_13E6C717 
X-CRM114-Status: GOOD (  19.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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

The following changes since commit 98d54f81e36ba3bf92172791eba5ca5bd813989b:

  Linux 5.6-rc4 (2020-03-01 16:38:46 -0600)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes

for you to fetch changes up to d4d89e25fc7b4225211c217491e5525b00cf3961:

  Merge tag 'socfpga_defconfig_fix_for_v5.6' of git://git.kernel.org/pub/scm/linux/kernel/git/dinguyen/linux into arm/fixes (2020-03-04 08:51:55 -0800)

----------------------------------------------------------------
ARM: SoC fixes

We've been accruing these for a couple of weeks, so the batch is a bit
bigger than usual.

Largest delta is due to a led-bl driver that is added -- there was
a miscommunication before the merge window and the driver didn't make it
in. Due to this, the platforms needing it regressed. At this point, it
seemed easier to add the new driver than unwind the changes.

Besides that, there are a handful of various fixes:

 - AMD tee memory leak fix

 - A handful of fixlets for i.MX SCU communication

 - A few maintainers woke up and realized DEBUG_FS had been missing for
   a while, so a few updates of that.

 ... and the usual collection of smaller fixes to various platforms.

----------------------------------------------------------------
Ahmad Fatoum (1):
      ARM: imx: build v7_cpu_resume() unconditionally

Brendan Higgins (2):
      reset: brcmstb-rescal: add unspecified HAS_IOMEM dependency
      reset: intel: add unspecified HAS_IOMEM dependency

Christian Hewitt (1):
      arm64: dts: meson: fix gxm-khadas-vim2 wifi

Dan Carpenter (1):
      tee: amdtee: fix memory leak in amdtee_open_session()

Dinh Nguyen (1):
      ARM: socfpga_defconfig: Add back DEBUG_FS

Fabio Estevam (1):
      arm64: dts: imx8qxp-mek: Remove unexisting Ethernet PHY

Faiz Abbas (1):
      arm: dts: dra76x: Fix mmc3 max-frequency

Geert Uytterhoeven (3):
      arm64: defconfig: Replace ARCH_R8A7796 by ARCH_R8A77960
      ARM: dts: r8a7779: Remove deprecated "renesas, rcar-sata" compatible value
      ARM: meson: Drop unneeded select of COMMON_CLK

Grygorii Strashko (1):
      ARM: dts: dra7-l4: mark timer13-16 as pwm capable

Guillaume La Roque (1):
      arm64: dts: meson-sm1-sei610: add missing interrupt-names

Johan Hovold (1):
      ARM: dts: imx6dl-colibri-eval-v3: fix sram compatible properties

Kishon Vijay Abraham I (1):
      ARM: dts: dra7: Add "dma-ranges" property to PCIe RC DT nodes

Leonard Crestez (5):
      firmware: imx: scu: Ensure sequential TX
      firmware: imx: misc: Align imx sc msg structs to 4
      firmware: imx: scu-pd: Align imx sc msg structs to 4
      firmware: imx: Align imx_sc_msg_req_cpu_start to 4
      soc: imx-scu: Align imx sc msg structs to 4

Ley Foon Tan (1):
      arm64: dts: socfpga: agilex: Fix gmac compatible

Lukas Bulwahn (1):
      MAINTAINERS: fix style in RESET CONTROLLER FRAMEWORK

Marco Felsch (1):
      ARM: dts: imx6: phycore-som: fix emmc supply

Nicolas Saenz Julienne (1):
      ARM: dts: bcm2711: Add pcie0 alias

Oleksandr Suvorov (1):
      ARM: dts: imx7-colibri: Fix frequency for sd/mmc

Olof Johansson (11):
      Merge tag 'reset-fixes-for-v5.6' of git://git.pengutronix.de/git/pza/linux into arm/fixes
      Merge tag 'omap-for-v5.6/droid4-lcd-fix-signed' of git://git.kernel.org/.../tmlind/linux-omap into arm/fixes
      Merge tag 'imx-fixes-5.6' of git://git.kernel.org/.../shawnguo/linux into arm/fixes
      Merge tag 'renesas-fixes-for-v5.6-tag1' of git://git.kernel.org/.../geert/renesas-devel into arm/fixes
      Merge tag 'tee-amdtee-fix-for-5.6' of https://git.linaro.org/people/jens.wiklander/linux-tee into arm/fixes
      Merge tag 'omap-for-v5.6/fixes-rc3-signed' of git://git.kernel.org/.../tmlind/linux-omap into arm/fixes
      Merge tag 'arm-soc/for-5.6/devicetree-fixes' of https://github.com/Broadcom/stblinux into arm/fixes
      Merge tag 'amlogic-fixes' of https://git.kernel.org/.../khilman/linux-amlogic into arm/fixes
      Merge tag 'arm-soc/for-5.6/defconfig-fixes' of https://github.com/Broadcom/stblinux into arm/fixes
      Merge tag 'socfpga_dts_fix_for_v5.6_v2' of git://git.kernel.org/.../dinguyen/linux into arm/fixes
      Merge tag 'socfpga_defconfig_fix_for_v5.6' of git://git.kernel.org/.../dinguyen/linux into arm/fixes

Peng Fan (1):
      ARM: dts: imx7d: fix opp-supported-hw

Peter Ujfalusi (1):
      ARM: dts: dra7-evm: Rename evm_3v3 regulator to vsys_3v3

Rob Herring (1):
      dt-bindings: reset: intel,rcu-gw: Fix intel,global-reset schema

Stefan Wahren (2):
      ARM: dts: bcm283x: Add missing properties to the PWR LED
      ARM: bcm2835_defconfig: Explicitly restore CONFIG_DEBUG_FS

Suman Anna (2):
      ARM: dts: am437x-idk-evm: Fix incorrect OPP node names
      ARM: dts: dra7xx-clocks: Fixup IPU1 mux clock parent source

Tomi Valkeinen (1):
      backlight: add led-backlight driver

Tony Lindgren (4):
      ARM: dts: droid4: Configure LED backlight for lm3532
      bus: ti-sysc: Fix 1-wire reset quirk
      Merge tag 'hdq-fix' into omap-for-v5.6/fixes-rc2
      ARM: OMAP2+: Fix compile if CONFIG_HAVE_ARM_SMCCC is not set

Vladimir Oltean (1):
      ARM: dts: ls1021a: Restore MDIO compatible to gianfar

 .../devicetree/bindings/reset/intel,rcu-gw.yaml    |   6 +-
 MAINTAINERS                                        |   2 +-
 arch/arm/boot/dts/am437x-idk-evm.dts               |   4 +-
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts              |   3 +
 arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts         |   2 +
 arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts         |   2 +
 arch/arm/boot/dts/dra7-evm.dts                     |   4 +-
 arch/arm/boot/dts/dra7-l4.dtsi                     |   4 +
 arch/arm/boot/dts/dra7.dtsi                        |   2 +
 arch/arm/boot/dts/dra76x.dtsi                      |   5 +
 arch/arm/boot/dts/dra7xx-clocks.dtsi               |  12 +-
 arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts       |   4 +-
 arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi  |   1 -
 arch/arm/boot/dts/imx7-colibri.dtsi                |   1 -
 arch/arm/boot/dts/imx7d.dtsi                       |   6 +-
 arch/arm/boot/dts/ls1021a.dtsi                     |   4 +-
 arch/arm/boot/dts/motorola-mapphone-common.dtsi    |  13 +-
 arch/arm/boot/dts/r8a7779.dtsi                     |   2 +-
 arch/arm/configs/bcm2835_defconfig                 |   1 +
 arch/arm/configs/omap2plus_defconfig               |   1 +
 arch/arm/configs/socfpga_defconfig                 |   1 +
 arch/arm/mach-imx/Makefile                         |   2 +
 arch/arm/mach-imx/common.h                         |   4 +-
 arch/arm/mach-imx/resume-imx6.S                    |  24 ++
 arch/arm/mach-imx/suspend-imx6.S                   |  14 --
 arch/arm/mach-meson/Kconfig                        |   1 -
 arch/arm/mach-omap2/Makefile                       |   2 +-
 arch/arm/mach-omap2/io.c                           |   2 -
 .../boot/dts/amlogic/meson-gxm-khadas-vim2.dts     |   2 +-
 arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts   |   1 +
 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts      |   5 -
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi      |   6 +-
 arch/arm64/configs/defconfig                       |   2 +-
 drivers/bus/ti-sysc.c                              |   4 +-
 drivers/firmware/imx/imx-scu.c                     |  27 +++
 drivers/firmware/imx/misc.c                        |   8 +-
 drivers/firmware/imx/scu-pd.c                      |   2 +-
 drivers/reset/Kconfig                              |   3 +-
 drivers/soc/imx/soc-imx-scu.c                      |   2 +-
 drivers/tee/amdtee/core.c                          |  48 ++--
 drivers/video/backlight/Kconfig                    |   7 +
 drivers/video/backlight/Makefile                   |   1 +
 drivers/video/backlight/led_bl.c                   | 260 +++++++++++++++++++++
 43 files changed, 416 insertions(+), 91 deletions(-)
 create mode 100644 arch/arm/mach-imx/resume-imx6.S
 create mode 100644 drivers/video/backlight/led_bl.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
