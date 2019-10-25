Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED2CE5048
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 17:38:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2aYYEPs/g9bYFJBgx2p2dCSgRV+PQfx+Kcnn+416PLc=; b=ai9tisgp0j12UZ
	y3O+FFdb88jxc1/neNJPgFyT9NhHGeKF3HpILkdqXvFEbkrbgYyA5kVyj/XRPHXnVldWN4epcBXUf
	PKBnRD+X5gxEVIOg3Ibl0jtHGzbuyPWZr2JZR7ZtM7TZd3XyNZ936rXH0HbY6z8LUHeXB8eBOQk5w
	Ey++ilAxP2ldrazxZpTNEkMqcOluRcnk5YEX9Ur+A9Fat3QNPUge9t9qRh9EzJAwFICBmeic43M63
	xk/t2zsAmmZ8SaCr4ZmfodwX6bsE2pXP4hb41DkC99M4mXXqYRgzZE/0/h1dQevgKbZwkA8VN8zgi
	o2juc/6KDDN80k5VDhPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO1fp-0005E4-N5; Fri, 25 Oct 2019 15:38:45 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO1ff-0005Dg-Lr
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 15:38:37 +0000
Received: by mail-lf1-x143.google.com with SMTP id x4so2114904lfn.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 08:38:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :content-transfer-encoding:user-agent;
 bh=QGOnyC6fPU62C993cv5/zxOWVpPqi3zzB9tH7VQx0sw=;
 b=VmroIG5OrTVx5swuaF5geMDmi11yaqoLx3wuTHCQCL+j4t24lGe9jUTPUSFr0+JPC0
 x6srozhL0z1lzThbfXljvO0JHyc4drs8Ov/QWZxZN+2zMp6hDQ+Jzti8YX+Mb+YwfcVN
 JvaiZQo6Qe3Q2M4KRfwhO2z8mgJBqDR6jzrWY2RAfvWDYuBnGOTU5y/Dcuj0vMBCOmbt
 J2Bg9fFw1pUsQyyGQXLWdS+GYErW9wtZQqjnvwBuO01aO61lmGq85ClPh0bEE/ueiw+G
 3F0VpvBa+8H2BLbLR3ADHfyNVXpX1OPocltAPu23dqRAjHIl7ervrh0K5eT9N8IzdoaN
 iXYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:content-transfer-encoding:user-agent;
 bh=QGOnyC6fPU62C993cv5/zxOWVpPqi3zzB9tH7VQx0sw=;
 b=rWaAVml1fKgfps2Duf4Cpi3Zt0q84AH+8rNWCf5jS8bXZlZsELzFW+yczsDwWCv9dK
 Y6vtDORRgwl0Yyy3JRLfh2vQaBGwCPxNukM8zIJMQzh3+HmXL7rCvf1+r9Ty+7+OSWqD
 HQKRm5mJGv163IyEdcZU4o7vubWcyyOpw4EcU5qCIEQjDT+uBhkK4wrHPr4RSin4Kce4
 X14JYJhxbrVH8TNVof7KWtiOiF6c+kubBp8l5nUrZnO5Ia+yURG5HLXB9P0wmyMdsH89
 Nvo+prmwu7MdNpcLouF//UHYmVwFcY66c3yXi8A749Fxor6bLs2s3bBCr+TyayxRWaJZ
 HDlg==
X-Gm-Message-State: APjAAAUi+oZq84EdoTeDOu8aYsri7CpJycH4orLLk1EJVhXgA60GL9Ah
 Y2KYPQhAOREPC0/gU8YFfFUFFg==
X-Google-Smtp-Source: APXvYqwjAvRXTYhDGZ9lV/RtezwI+E4lXjKxBy4stHHexFccpGKuJ4OOqOBT4slktakn6SblOhjq6A==
X-Received: by 2002:a19:4318:: with SMTP id q24mr3166573lfa.12.1572017913346; 
 Fri, 25 Oct 2019 08:38:33 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id y3sm922228lfh.97.2019.10.25.08.38.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 25 Oct 2019 08:38:31 -0700 (PDT)
Date: Fri, 25 Oct 2019 08:38:17 -0700
From: Olof Johansson <olof@lixom.net>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] ARM: SoC fixes
Message-ID: <20191025153817.rtj6hh6jmr5asfto@localhost>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_083835_768740_CD71682E 
X-CRM114-Status: GOOD (  16.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,


The following changes since commit 60c1b3e25728e0485f08e72e61c3cad5331925a3:

  ARM: multi_v7_defconfig: Fix SPI_STM32_QSPI support (2019-10-04 10:18:55 =
-0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fix=
es

for you to fetch changes up to 86ec2e1739aa1d6565888b4b2059fa47354e1a89:

  ARM: dts: stm32: relax qspi pins slew-rate for stm32mp157 (2019-10-25 08:=
18:23 -0700)

----------------------------------------------------------------
ARM: SoC fixes

A slightly larger set of fixes have accrued in the last two weeks.
Mostly a collection of the usual smaller fixes:

 - Marvell Armada: USB phy setup issues on Turris Mox

 - Broadcom: GPIO/pinmux DT mapping corrections for Stingray, MMC bus
 width fix for RPi Zero W, GPIO LED removal for RPI CM3. Also some
 maintainer updates.

 - OMAP: Fixlets for display config, interrupt settings for wifi, some
   clock/PM pieces. Also IOMMU regression fix and a ti-sysc no-watchdog
   regression fix.

 - i.MX: A few fixes around PM/settings, some devicetree fixlets and
 catching up with config option changes in DRM

 - Rockchip: RockRro64 misc DT fixups, Hugsun X99 USB-C, Kevin display
 panel settings

... and some smaller fixes for Davinci (backlight, McBSP DMA), Allwinner
(phy regulators, PMU removal on A64, etc).

----------------------------------------------------------------
Adam Ford (2):
      ARM: dts: logicpd-torpedo-som: Remove twl_keypad
      ARM: dts: imx6q-logicpd: Re-Enable SNVS power key

Andrey Smirnov (2):
      ARM: dts: am3874-iceboard: Fix 'i2c-mux-idle-disconnect' usage
      ARM: dts: vf610-zii-scu4-aib: Specify 'i2c-mux-idle-disconnect'

Anson Huang (5):
      soc: imx: imx-scu: Getting UID from SCU should have response
      ARM: dts: imx7s: Correct GPT's ipg clock source
      arm64: dts: imx8mq: Use correct clock for usdhc's ipg clk
      arm64: dts: imx8mm: Use correct clock for usdhc's ipg clk
      arm64: dts: imx8mn: Use correct clock for usdhc's ipg clk

Baolin Wang (1):
      MAINTAINERS: Update the Spreadtrum SoC maintainer

Bartosz Golaszewski (1):
      ARM: davinci_all_defconfig: enable GPIO backlight

Douglas Anderson (1):
      arm64: dts: rockchip: Fix override mode for rk3399-kevin panel

Fabio Estevam (1):
      ARM: imx_v6_v7_defconfig: Enable CONFIG_DRM_MSM

Florian Fainelli (2):
      Merge tag 'tags/bcm2835-maintainers-next-2019-10-15' into maintainers=
/next
      MAINTAINERS: Remove Gregory and Brian for ARCH_BRCMSTB

Heiko Stuebner (1):
      dt-bindings: arm: rockchip: fix Theobroma-System board bindings

Hugh Cole-Baker (1):
      arm64: dts: rockchip: fix Rockpro64 RK808 interrupt line

Jernej Skrabec (2):
      arm64: dts: allwinner: a64: pine64-plus: Add PHY regulator delay
      arm64: dts: allwinner: a64: sopine-baseboard: Add PHY regulator delay

Lucas Stach (1):
      arm64: dts: zii-ultra: fix ARM regulator states

Marek Beh=FAn (1):
      arm64: dts: armada-3720-turris-mox: convert usb-phy to phy-supply

Maxime Ripard (2):
      dt-bindings: media: sun4i-csi: Drop the module clock
      ARM: dts: sun7i: Drop the module clock from the device tree

Olof Johansson (11):
      Merge tag 'mvebu-fixes-5.4-1' of git://git.infradead.org/linux-mvebu =
into arm/fixes
      Merge tag 'arm-soc/for-5.4/devicetree-arm64-fixes' of https://github.=
com/Broadcom/stblinux into arm/fixes
      Merge tag 'omap-for-v5.4/fixes-rc3-signed' of git://git.kernel.org/..=
./tmlind/linux-omap into arm/fixes
      Merge tag 'imx-fixes-5.4' of git://git.kernel.org/.../shawnguo/linux =
into arm/fixes
      Merge tag 'v5.4-rockchip-dtsfixes1' of git://git.kernel.org/.../mmind=
/linux-rockchip into arm/fixes
      Merge tag 'davinci-fixes-for-v5.4' of git://git.kernel.org/.../nsekha=
r/linux-davinci into arm/fixes
      Merge tag 'arm-soc/for-5.4/devicetree-fixes' of https://github.com/Br=
oadcom/stblinux into arm/fixes
      Merge tag 'arm-soc/for-5.4/devicetree-fixes-part2' of https://github.=
com/Broadcom/stblinux into arm/fixes
      Merge tag 'sunxi-fixes-for-5.4-1' of https://git.kernel.org/.../sunxi=
/linux into arm/fixes
      Merge tag 'omap-for-v5.4/fixes-rc4-signed' of git://git.kernel.org/..=
./tmlind/linux-omap into arm/fixes
      Merge tag 'arm-soc/for-5.5/maintainers' of https://github.com/Broadco=
m/stblinux into arm/fixes

Patrice Chotard (1):
      ARM: dts: stm32: relax qspi pins slew-rate for stm32mp157

Peter Ujfalusi (1):
      ARM: davinci: dm365: Fix McBSP dma_slave_map entry

Pragnesh Patel (1):
      media: dt-bindings: Fix building error for dt_binding_check

Ran Wang (1):
      arm64: dts: lx2160a: Correct CPU core idle state name

Rayagonda Kokatanur (1):
      arm64: dts: Fix gpio to pinmux mapping

Simon Arlott (1):
      mailmap: Add Simon Arlott (replacement for expired email address)

Soeren Moch (3):
      arm64: dts: rockchip: fix RockPro64 vdd-log regulator settings
      arm64: dts: rockchip: fix RockPro64 sdhci settings
      arm64: dts: rockchip: fix RockPro64 sdmmc settings

Stefan Wahren (3):
      MAINTAINERS: Add BCM2711 to BCM2835 ARCH
      ARM: dts: bcm2835-rpi-zero-w: Fix bus-width of sdhci
      ARM: dts: bcm2837-rpi-cm3: Avoid leds-gpio probing issue

Suman Anna (2):
      ARM: OMAP2+: Plug in device_enable/idle ops for IOMMUs
      ARM: OMAP2+: Add pdata for OMAP3 ISP IOMMU

Tero Kristo (1):
      ARM: dts: omap5: fix gpu_cm clock provider name

Tony Lindgren (6):
      ARM: omap2plus_defconfig: Fix selected panels after generic panel cha=
nges
      Merge tag 'fix-missing-panels' into fixes
      ARM: dts: Use level interrupt for omap4 & 5 wlcore
      Merge tag 'wlcore-fix' into fixes
      bus: ti-sysc: Fix watchdog quirk handling
      Merge branch 'watchdog-fix' into fixes

Vasily Khoruzhick (1):
      arm64: dts: allwinner: a64: Drop PMU node

Vivek Unune (1):
      arm64: dts: rockchip: Fix usb-c on Hugsun X99 TV Box

 .mailmap                                           |  1 +
 .../devicetree/bindings/arm/rockchip.yaml          |  4 +--
 .../bindings/media/allwinner,sun4i-a10-csi.yaml    |  9 ++----
 MAINTAINERS                                        |  9 +++---
 arch/arm/boot/dts/am3874-iceboard.dts              |  9 +-----
 arch/arm/boot/dts/bcm2835-rpi-zero-w.dts           |  1 +
 arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi             |  8 +++++
 arch/arm/boot/dts/imx6-logicpd-som.dtsi            |  4 +++
 arch/arm/boot/dts/imx7s.dtsi                       |  8 ++---
 arch/arm/boot/dts/logicpd-torpedo-som.dtsi         |  4 +++
 arch/arm/boot/dts/omap4-droid4-xt894.dts           |  2 +-
 arch/arm/boot/dts/omap4-panda-common.dtsi          |  2 +-
 arch/arm/boot/dts/omap4-sdp.dts                    |  2 +-
 arch/arm/boot/dts/omap4-var-som-om44-wlan.dtsi     |  2 +-
 arch/arm/boot/dts/omap5-board-common.dtsi          |  2 +-
 arch/arm/boot/dts/omap54xx-clocks.dtsi             |  2 +-
 arch/arm/boot/dts/stm32mp157-pinctrl.dtsi          |  8 ++---
 arch/arm/boot/dts/sun7i-a20.dtsi                   |  5 ++-
 arch/arm/boot/dts/vf610-zii-scu4-aib.dts           |  2 ++
 arch/arm/configs/davinci_all_defconfig             |  1 +
 arch/arm/configs/imx_v6_v7_defconfig               |  1 +
 arch/arm/configs/omap2plus_defconfig               | 12 ++++----
 arch/arm/mach-davinci/dm365.c                      |  4 +--
 arch/arm/mach-omap2/pdata-quirks.c                 | 11 +++++++
 .../boot/dts/allwinner/sun50i-a64-pine64-plus.dts  |  9 ++++++
 .../dts/allwinner/sun50i-a64-sopine-baseboard.dts  |  6 ++++
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi      |  9 ------
 .../dts/broadcom/stingray/stingray-pinctrl.dtsi    |  5 +--
 .../arm64/boot/dts/broadcom/stingray/stingray.dtsi |  3 +-
 arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi     | 36 +++++++++++-------=
----
 arch/arm64/boot/dts/freescale/imx8mm.dtsi          |  6 ++--
 arch/arm64/boot/dts/freescale/imx8mn.dtsi          |  6 ++--
 .../arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi |  4 +--
 arch/arm64/boot/dts/freescale/imx8mq.dtsi          |  4 +--
 .../boot/dts/marvell/armada-3720-turris-mox.dts    | 13 ++++----
 arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts  |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts |  4 +--
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts  | 12 +++-----
 drivers/bus/ti-sysc.c                              | 18 ++++++++---
 drivers/soc/imx/soc-imx-scu.c                      |  2 +-
 40 files changed, 145 insertions(+), 107 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
