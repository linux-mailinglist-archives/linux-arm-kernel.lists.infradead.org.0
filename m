Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C46C4195FDF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 21:34:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UHgtaUDhGgdvea+dx5ksVeZIscGRsHUgJxLyWSBd72Q=; b=ebbC5eVEjfD5La
	uZzln0SVQ5zPvr+GQIUVEmiThhQMTyCJeb7UuB5H04akps5Q9mcOkU5ZgStrvnGBxnEFc/124Bma1
	MSnzYpaXFemtYGImBdSPpisNyNoIkXFQ8t9/Ccba9fPx2WtUyCT232F8J6f3W/rW+oYNRztegQLQm
	FLCfjlzjsOUH75VSWn+QO7U/2LQlt9JSJ8kC/qBbQOQgaH58JMuWFKhiwGpSKswaGS4T8ycP/Qd4f
	kmaR8NjtuntV0iCssMTeKScDnio9Z9bbwozxtKByO7I37ZP/AiZpMQ7u5v9vJ+/qFLuRgjEMYBOLg
	TA2WzXHHYgNKnQARxTlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHvgM-0004QM-D4; Fri, 27 Mar 2020 20:34:22 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHvgD-0004MP-9J
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 20:34:15 +0000
Received: from mail-qt1-f172.google.com ([209.85.160.172]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MD9CZ-1j9MyO0kE5-009B14 for <linux-arm-kernel@lists.infradead.org>; Fri,
 27 Mar 2020 21:34:09 +0100
Received: by mail-qt1-f172.google.com with SMTP id t17so9731238qtn.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 13:34:08 -0700 (PDT)
X-Gm-Message-State: ANhLgQ1aqMiycZhHhUqXVJ6kAZZM5RMmDEoWTgLFJxra8xlyc8Xxaj0v
 fMh0u/D0xRoXBYBvmB0Rk2UFb7XDMemuNa1/hME=
X-Google-Smtp-Source: ADFU+vv7Rw+/QBCn1L8d+JbTZ0HVXHcl8cGk4kzuGTmkzWF+Fc1hPyRqtOULGDAlVLQhnOGCFzblSsaMWefekU12lmI=
X-Received: by 2002:ac8:45ce:: with SMTP id e14mr1123406qto.304.1585341247948; 
 Fri, 27 Mar 2020 13:34:07 -0700 (PDT)
MIME-Version: 1.0
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 27 Mar 2020 21:33:51 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1j=uNUWvb7Req3H88FmUH4GNA6RcD3Zderrj-UstfiWA@mail.gmail.com>
Message-ID: <CAK8P3a1j=uNUWvb7Req3H88FmUH4GNA6RcD3Zderrj-UstfiWA@mail.gmail.com>
Subject: [GIT PULL] ARM: DT and driver fixes for v5.6
To: Linus Torvalds <torvalds@linux-foundation.org>
X-Provags-ID: V03:K1:AhgfPsPJiamDy2LCo9yrQ4/pgTEOFYXowvCd5dk+ZSGRXIjMPoZ
 PxGW+Wnu9CHAbA0XkGK5ABD+gLiyFvqB0ifxKcc1ZlzDaG27iPeVXW3o13RTlzAdLTQe48e
 8aE58MtnnWM4t2IFgEYnEK04HGQ+dZHIvPpwORG+EVt0Y4R4cZKceMxB4DeoIQPB2V1ioJs
 0KpvqhrrcWv0YbcXmhU6A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:87xxjNWvFN8=:MUVt74AB0SL04WeB5Vn/oi
 ifmDIWm+bFaGGlzzCq2ryozqf9jGMd+WXDrMa4u+a2zGbQT7sqNVM2D4W67zimNLkzMKF8VE0
 BP+q8Nw7qSDxYN+PKbUYDk1Vx4htmSB0suSvmW43PquvwBpcyKE48J7Qr+nxFADOUTP3TkNT0
 lpgTf1wRdHP4gjy1jxW7EsOWqtUH5hRC7ybpFyG+n10N4eyE7k2JK/9NLqay4eQAy5EdEIRRq
 lAFtjrVxjC76Sip/3FOByuSAOU57pA9iFCaw1NHNUjKt3ypoF7wa107VLdPULZpj03rr+k/3/
 THVgr7aombzIXjTI6Ao85CllN6/cv+9damHL8HUc/F7tPbexEOK4ShnWqwXAa9yvr8FWobO/J
 OlausAVLwkptwIVymM0DOd365CVyvyOO8aoxtzpumazomHXGcTYmUkXKGvmTvnYGA/QbtdHvd
 /afdSk2fckjejsodrG4aSPGYxvVJzLW5TWCu++5q3Hb0znf1O5H9afRH1iHhplasm8dK8oGoK
 nXK0j94irFBLLsTQrHn4fvw3p4Axqh5tXath9t7eq5ecdaScf5OGvgcNfJ8TECvcjHXQ8srPG
 zf5NIDqwCJYfEUoZS7iFTOb8aeG4SS0ZtBXsq6CJSHs817ACid5dTf4eUCSKFX8rO6cBVm2Tu
 SXJj9QM62jWfM8J1Jzsf6O2D3I5kzdVpUNYmOxu8IBv1l1GYa00tp2mTmCM4k13StQR4GMjNj
 EWfgatQIqKGezIO5/pvKjQ4HiARVeQgk6XeE9njrQIy/3YACRtguYD6eTp1ImGOqlyVfXZPXf
 /dvaKeB7pk3lQJFH3aVOsBADQkdmujFSsHVcKZ1OWFSGC9rWJ8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_133413_626523_5A545B92 
X-CRM114-Status: GOOD (  22.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
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
Cc: Tony Lindgren <tony@atomide.com>, Chen-Yu Tsai <wens@csie.org>,
 SoC Team <soc@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 2c523b344dfa65a3738e7039832044aa133c75fb:

  Linux 5.6-rc5 (2020-03-08 17:44:44 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git
tags/arm-soc-fixes-5.6

for you to fetch changes up to c8042d1e5cb3e654b47447229ace3cd092a8fc27:

  soc: samsung: chipid: Fix return value on non-Exynos platforms
(2020-03-25 14:27:27 +0100)

----------------------------------------------------------------
ARM: DT and driver fixes for v5.6

For the devicetree files, there are a total of 20 patches, almost
entirely for 32-bit machines:

- The Allwinner/sun9i r40 SoC dtsi file contains a number of issues,
  both for correctness and for style that are addressed in separate
  patches. This causes most of the changed lines of the DT updates
  this time.

- More Allwinner updates fixing the identification of the security
  system on sun8i/A33, a recent regression of the A83t ethernet, and a
  few board specific issues on the TBS-A711 macine.

- Several bug fixes for OMAP dts files, most notably fixing the timings
  for the NAND flash on the Nokia N900 that regressed a while ago after
  the move to configuring them from DT.  Some other OMAPs now set the
  correct dma limits on the L3 bus, and a regression fix addresses lost
  Ethernet on dm814x

- One incorrect setting in the newly added Raspberry Pi Zero W that
  may cause issues with the SD card controller.

- A missing property on the bcm2835 firmware node caused incorrect
  DMA settings.

- An old bug on the oxnas platform causing spurious interrupts is
  finally addressed.

- A regression on the Exynos Midas board broke the OLED panel
  power supply.

- The i.MX6 phycore SoM specified the wrong voltage for the SoC,
  this is now set to the values from the datasheet.

- Some 64-bit machines use a deprecated string to identify the PSCI
  firmware.

There are also several small code fixes addressing mostly serious
issues:

- Fix the sunxi rsb bus access to no longer return incorrect data when
  mixing 8 and 16 bit I/O.

- Fix a suspend/resume regression on the OMAP2+ lcdc from a missing
  quirk in the ti-sysc driver

- Fix a NULL pointer access from a race in the fsl dpio driver

- Fix a v5.5 regression in the exynos-chipid driver that caused an
  invalid error code probing the device on non-exynos platforms

- Fix an out-of-bounds access in the AMD TEE driver

----------------------------------------------------------------
Arnd Bergmann (8):
      Merge tag 'soc-fsl-fix-v5.6' of
git://git.kernel.org/.../leo/linux into arm/fixes
      Merge tag 'sunxi-fixes-for-5.6' of
git://git.kernel.org/.../sunxi/linux into arm/fixes
      Merge tag 'sunxi-fixes-for-5.6-2' of
git://git.kernel.org/.../sunxi/linux into arm/fixes
      Merge tag 'imx-fixes-5.6-2' of
git://git.kernel.org/.../shawnguo/linux into arm/fixes
      Merge tag 'omap-for-v5.6/fixes-rc6-signed' of
git://git.kernel.org/.../tmlind/linux-omap into arm/fixes
      Merge tag 'arm-soc/for-5.6/devicetree-fixes-part2' of
https://github.com/Broadcom/stblinux into arm/fixes
      Merge tag 'oxnas-arm-soc-dt-fixes-for-5.6' of
git://git.kernel.org/.../narmstrong/linux-oxnas into arm/fixes
      Merge tag 'tee-amdtee-fix2-for-5.6' of
https://git.linaro.org/people/jens.wiklander/linux-tee into arm/fixes

Arthur Demchenkov (1):
      ARM: dts: N900: fix onenand timings

Chen-Yu Tsai (4):
      ARM: dts: sun8i: a83t: Fix incorrect clk and reset macros for EMAC device
      ARM: dts: sun8i: r40: Move AHCI device node based on address order
      ARM: dts: sun8i: r40: Fix register base address for SPI2 and SPI3
      ARM: dts: sun8i: r40: Move SPI device nodes based on address order

Corentin Labbe (2):
      dt-bindings: crypto: add new compatible for A33 SS
      ARM: dts: sun8i: a33: add the new SS compatible

Dan Carpenter (1):
      tee: amdtee: out of bounds read in find_session()

Grigore Popescu (1):
      soc: fsl: dpio: register dpio irq handlers after dpio create

Linus Walleij (1):
      arm64: dts: Fix leftover entry-methods for PSCI

Marco Felsch (1):
      ARM: dts: imx6: phycore-som: fix arm and soc minimum voltage

Marek Szyprowski (2):
      ARM: dts: exynos: Fix regulator node aliasing on Midas-based boards
      soc: samsung: chipid: Fix return value on non-Exynos platforms

Nick Hudson (1):
      ARM: bcm2835-rpi-zero-w: Add missing pinctrl name

Nicolas Saenz Julienne (1):
      ARM: dts: bcm283x: Fix vc4's firmware bus DMA limitations

Ondrej Jirman (3):
      ARM: dts: sun8i-a83t-tbs-a711: HM5065 doesn't like such a high voltage
      ARM: dts: sun8i-a83t-tbs-a711: Fix USB OTG mode detection
      bus: sunxi-rsb: Return correct data when mixing 16-bit and 8-bit reads

Roger Quadros (2):
      ARM: dts: dra7: Add bus_dma_limit for L3 bus
      ARM: dts: omap5: Add bus_dma_limit for L3 bus

Sungbo Eo (1):
      ARM: dts: oxnas: Fix clear-mask property

Tony Lindgren (6):
      Merge branch 'omap-for-v5.6/fixes-rc2' into fixes
      Merge branch 'omap-for-v5.6/fixes-rc3' into fixes
      ARM: dts: Fix dm814x Ethernet by changing to use rgmii-id mode
      bus: ti-sysc: Fix quirk flags for lcdc on am335x
      Merge branch 'fix-lcdc-quirk' into fixes
      ARM: dts: omap4-droid4: Fix lost touchscreen interrupts

 .../crypto/allwinner,sun4i-a10-crypto.yaml         |   2 +
 arch/arm/boot/dts/bcm2835-rpi-zero-w.dts           |   1 +
 arch/arm/boot/dts/bcm2835-rpi.dtsi                 |   1 +
 arch/arm/boot/dts/dm8148-evm.dts                   |   4 +-
 arch/arm/boot/dts/dm8148-t410.dts                  |   4 +-
 arch/arm/boot/dts/dra62x-j5eco-evm.dts             |   4 +-
 arch/arm/boot/dts/dra7.dtsi                        |   1 +
 arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi        |   4 +-
 arch/arm/boot/dts/exynos4412-n710x.dts             |   2 +-
 arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi  |   4 +-
 arch/arm/boot/dts/motorola-mapphone-common.dtsi    |   2 +-
 arch/arm/boot/dts/omap3-n900.dts                   |  44 +++++---
 arch/arm/boot/dts/omap5.dtsi                       |   1 +
 arch/arm/boot/dts/ox810se.dtsi                     |   4 +-
 arch/arm/boot/dts/ox820.dtsi                       |   4 +-
 arch/arm/boot/dts/sun8i-a33.dtsi                   |   2 +-
 arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts          |   7 +-
 arch/arm/boot/dts/sun8i-a83t.dtsi                  |   6 +-
 arch/arm/boot/dts/sun8i-r40.dtsi                   | 125 ++++++++++-----------
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi     |   2 +-
 arch/arm64/boot/dts/sprd/sc9863a.dtsi              |   2 +-
 drivers/bus/sunxi-rsb.c                            |   2 +-
 drivers/bus/ti-sysc.c                              |   3 +-
 drivers/soc/fsl/dpio/dpio-driver.c                 |   8 +-
 drivers/soc/samsung/exynos-chipid.c                |   2 +-
 drivers/tee/amdtee/core.c                          |   3 +
 26 files changed, 133 insertions(+), 111 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
