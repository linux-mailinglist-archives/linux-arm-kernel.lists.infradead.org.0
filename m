Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A657414022B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 04:01:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rn1sOyi0Fj4gBLRdZQrbEh/HLT34v4Pb/V0JnH4NpMA=; b=gojncnYlI6J/yZ
	H6WB+oHVH9mfZhoeNU6D5ZBpsWFDHBhfQy7iAfSwTswwuQ2cA9lX0eIx0B2KRkVO4KHxxEK42DGb6
	GilT5KPtlDahNUDU/LccaE5ntSS5blNKExrHN3tRPY45DSJiWr9lDLzsblF0MWZyQb6D2ia8aVufQ
	4t8fhZ+gGfJjXEQe7deR4QHw+zeqV1HJCW954Pi63TkHovApUuh9pAyC9BI/GmiZu9N/gYCVmHkw3
	5/ZB2w7Rvki2A5gEmRzvOHa6/eCfKJZu7ApjH69mgB7Sa8poZZ+vJr80XWFTwwBmtlZQWsFUTxMKe
	GOfBI/6uoSD9trFQiXXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isHsd-0003hC-8b; Fri, 17 Jan 2020 03:01:03 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isHsS-0003gP-Kn
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 03:00:57 +0000
Received: by mail-lj1-x243.google.com with SMTP id z22so24904527ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 19:00:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=HryF0usTtZp2gFg2eq59o17S0qqTz/KJKOS371wsBMs=;
 b=Zih8JThEp0fTCaA//HvuxRgK7a0lL1TTiBuKX4yDZtnYgTIhTj28lnQhty+vs5W9JJ
 w9ODzcyBiGX0g3DWa8r8Zl1vuqTV4uW9KX2FS6COESkIn57OBcriyuUmPG7+LJylPYHI
 HsQCVCeaywpzsPB8MhPWsUzI8PdLejUwc258vVEW1P62Bm3ZCfLd+Llbu6coMvrCCkGz
 2x7dXwrrgwJ1bO8ZiTqkLWdRzAYbdborkatm+rsx0qOxBhD5U7E5b82R+d9bNZmhej4l
 VIIFZ7HixQ1uWTLMTwIG5nK9Aq5juo2ORzkCzHJzwBbKRbrlk+MMVc6XAknV9RbLg2Wu
 t9IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=HryF0usTtZp2gFg2eq59o17S0qqTz/KJKOS371wsBMs=;
 b=lUujBD2lw4UseeMQr2KsvxcV/If7yOes2Cj0Rr/rAAd7/kwLo/mV+VkeAzDwWa/B9h
 JNxyb7SbffTAFC1u4mmPjsaRTdlzOhEslSmkpOBeQNJKvybKBrLTu9bxXybHgHjpjpXB
 jvkVRdUYPmElox7jr6YOkZoLax2zA0l0Z3YGn3EdHHy+kU76lE60yX6BUiuyexxA5y/1
 h3XvpDZIOs8wf9YuORrtbT9uVNcumHnfV1ctiwHkiqKfMeurvp1fCNe3e+NtAD+bJDuL
 U9F/AjfGuEWp0Ek7c6btU/hejYqdStfw/BeKPKAoyS4v/CXJlxm/Tnl9n+T/mwGgcejC
 jRPQ==
X-Gm-Message-State: APjAAAX2gjpMnoLHOUBpyxGbtUjohZ59P5tRkZTJkUjeAQtygBW5UnQl
 M/5tnolAmhZe+qCFpqj6S32n6fFYsvAnWw==
X-Google-Smtp-Source: APXvYqw2hwTwWHAdrmowqh/nOKzARYTu/fVsFiQXCiY6bdE6DnOVbZ0KHX3+uJUSZxR6elJs5SHNuw==
X-Received: by 2002:a2e:9cd8:: with SMTP id g24mr4146941ljj.243.1579230050458; 
 Thu, 16 Jan 2020 19:00:50 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id z7sm11639182lji.30.2020.01.16.19.00.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 Jan 2020 19:00:48 -0800 (PST)
Date: Thu, 16 Jan 2020 19:00:40 -0800
From: Olof Johansson <olof@lixom.net>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] ARM: SoC fixes
Message-ID: <20200117030040.5m3qqibo5kn6x3le@localhost>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_190052_745226_64093217 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

The following changes since commit ea200dec51285c82655e50ddb774fdb6b97e784d:

  Merge tag 'armsoc-fixes' of git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc (2019-12-16 16:43:07 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes

for you to fetch changes up to 70db729fe1b30af89e798d16c1045846753e5448:

  MAINTAINERS: Add myself as the co-maintainer for Actions Semi platforms (2020-01-16 15:49:19 -0800)

----------------------------------------------------------------
ARM: SoC fixes

I've been sitting on these longer than I meant, so the patch count is
a bit higher than ideal for this part of the release. There's also some
reverts of double-applied patches that brings the diffstat up a bit.

With that said, the biggest changes are:

 - Revert of duplicate i2c device addition on two Aspeed (BMC) Devicetrees.
 - Move of two device nodes that got applied to the wrong part of the
   tree on ASpeed G6.
 - Regulator fix for Beaglebone X15 (adding 12/5V supplies)
 - Use interrupts for keys on Amlogic SM1 to avoid missed polls

In addition to that, there is a collection of smaller DT fixes:

 - Power supply assignment fixes for i.MX6
 - Fix of interrupt line for magnetometer on i.MX8 Librem5 devkit
 - Build fixlets (selects) for davinci/omap2+
 - More interrupt number fixes for Stratix10, Amlogic SM1, etc.
 - ... and more similar fixes across different platforms

And some non-DT stuff:

 - optee fix to register multiple shared pages properly
 - Clock calculation fixes for MMP3
 - Clock fixes for OMAP as well

----------------------------------------------------------------
Adam Ford (1):
      arm64: dts: imx8mm: Change SDMA1 ahb clock for imx8mm

Alexandre Belloni (1):
      ARM: dts: imx6q-dhcom: fix rtc compatible

Angus Ainslie (Purism) (1):
      arm64: dts: imx8mq-librem5-devkit: use correct interrupt for the magnetometer

Anson Huang (4):
      ARM: dts: imx6qdl-sabresd: Remove incorrect power supply assignment
      ARM: dts: imx6sx-sdb: Remove incorrect power supply assignment
      ARM: dts: imx6sl-evk: Remove incorrect power supply assignment
      ARM: dts: imx6sll-evk: Remove incorrect power supply assignment

Arnd Bergmann (2):
      ARM: davinci: select CONFIG_RESET_CONTROLLER
      ARM: omap2plus: select RESET_CONTROLLER

Brandon Wyman (1):
      ARM: dts: aspeed: rainier: Fix fan fault and presence

Dave Gerlach (1):
      soc: ti: wkup_m3_ipc: Fix race condition with rproc_boot

Dinh Nguyen (1):
      arm64: dts: agilex/stratix10: fix pmu interrupt numbers

Guillaume La Roque (1):
      arm64: dts: meson-sm1-sei610: add gpio bluetooth interrupt

Jagan Teki (1):
      ARM: dts: imx6q-icore-mipi: Use 1.5 version of i.Core MX6DL

Joel Stanley (5):
      ARM: dts: aspeed-g6: Fix FSI master location
      ARM: dts: aspeed: tacoma: Fix fsi master node
      ARM: dts: aspeed: tacoma: Remove duplicate i2c busses
      ARM: dts: aspeed: tacoma: Remove duplicate flash nodes
      ARM: dts: aspeed: rainier: Remove duplicate i2c busses

Kevin Hilman (1):
      arm64: dts: meson-sm1-sei610: gpio-keys: switch to IRQs

Kishon Vijay Abraham I (3):
      ARM: dts: am57xx-beagle-x15/am57xx-idk: Remove "gpios" for  endpoint dt nodes
      ARM: dts: am571x-idk: Fix gpios property to have the correct  gpio number
      ARM: dts: beagle-x15-common: Model 5V0 regulator

Lubomir Rintel (3):
      ARM: mmp: do not divide the clock rate
      clk: mmp2: Fix the order of timer mux parents
      ARM: dts: mmp3: Fix the TWSI ranges

Manivannan Sadhasivam (1):
      MAINTAINERS: Add myself as the co-maintainer for Actions Semi platforms

Marcel Ziswiler (1):
      ARM: dts: imx7: Fix Toradex Colibri iMX7S 256MB NAND flash support

Marek Szyprowski (1):
      ARM: dts: sun8i: a83t: Correct USB3503 GPIOs polarity

Marek Vasut (1):
      ARM: dts: imx6q-dhcom: Fix SGTL5000 VDDIO regulator connection

Martin Blumenstingl (4):
      ARM: dts: meson8: fix the size of the PMU registers
      soc: amlogic: meson-ee-pwrc: propagate PD provider registration errors
      soc: amlogic: meson-ee-pwrc: propagate errors from pm_genpd_init()
      dt-bindings: reset: meson8b: fix duplicate reset IDs

Olof Johansson (8):
      Merge tag 'socfpga_dts_fix_for_v5.5' of git://git.kernel.org/.../dinguyen/linux into arm/fixes
      Merge tag 'tee-optee-fix-for-5.5' of git://git.linaro.org:/people/jens.wiklander/linux-tee into arm/fixes
      Merge tag 'omap-for-v5.5/fixes-rc5' of git://git.kernel.org/.../tmlind/linux-omap into arm/fixes
      Merge tag 'aspeed-5.5-devicetree-fixes' of git://git.kernel.org/.../joel/aspeed into arm/fixes
      Merge tag 'amlogic-fixes' of https://git.kernel.org/.../khilman/linux-amlogic into arm/fixes
      Merge tag 'imx-fixes-5.5-2' of git://git.kernel.org/.../shawnguo/linux into arm/fixes
      Merge tag 'sunxi-fixes-for-5.5' of https://git.kernel.org/.../sunxi/linux into arm/fixes
      Merge tag 'v5.5-rockchip-dtsfixes' of git://git.kernel.org/.../mmind/linux-rockchip into arm/fixes

Peng Fan (1):
      ARM: dts: imx7ulp: fix reg of cpu node

Robin Murphy (1):
      arm64: dts: rockchip: Fix IR on Beelink A1

Stefan Mavrodiev (2):
      arm64: dts: allwinner: a64: olinuxino: Fix eMMC supply regulator
      arm64: dts: allwinner: a64: olinuxino: Fix SDIO supply regulator

Sumit Garg (1):
      optee: Fix multi page dynamic shm pool alloc

Tony Lindgren (2):
      ARM: OMAP2+: Fix ti_sysc_find_one_clockdomain to check for to_clk_hw_omap
      bus: ti-sysc: Fix iterating over clocks

Yinbo Zhu (1):
      arm64: dts: ls1028a: fix endian setting for dcfg

 MAINTAINERS                                        |   2 +-
 arch/arm/boot/dts/am571x-idk.dts                   |   6 +-
 arch/arm/boot/dts/am572x-idk-common.dtsi           |   4 -
 arch/arm/boot/dts/am57xx-beagle-x15-common.dtsi    |  25 +-
 arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts       | 369 +------------------
 arch/arm/boot/dts/aspeed-bmc-opp-tacoma.dts        | 403 +--------------------
 arch/arm/boot/dts/aspeed-g6.dtsi                   |  39 +-
 arch/arm/boot/dts/imx6dl-icore-mipi.dts            |   2 +-
 arch/arm/boot/dts/imx6q-dhcom-pdk2.dts             |   2 +-
 arch/arm/boot/dts/imx6q-dhcom-som.dtsi             |   2 +-
 arch/arm/boot/dts/imx6qdl-sabresd.dtsi             |   4 -
 arch/arm/boot/dts/imx6sl-evk.dts                   |   4 -
 arch/arm/boot/dts/imx6sll-evk.dts                  |   4 -
 arch/arm/boot/dts/imx6sx-sdb-reva.dts              |   4 -
 arch/arm/boot/dts/imx6sx-sdb.dts                   |   4 -
 arch/arm/boot/dts/imx7s-colibri.dtsi               |   4 +
 arch/arm/boot/dts/imx7ulp.dtsi                     |   4 +-
 arch/arm/boot/dts/meson8.dtsi                      |   2 +-
 arch/arm/boot/dts/mmp3.dtsi                        |  12 +-
 arch/arm/boot/dts/sun8i-a83t-cubietruck-plus.dts   |   2 +-
 arch/arm/mach-davinci/Kconfig                      |   1 +
 arch/arm/mach-mmp/time.c                           |   2 +-
 arch/arm/mach-omap2/Kconfig                        |   3 +-
 arch/arm/mach-omap2/pdata-quirks.c                 |   6 +-
 .../dts/allwinner/sun50i-a64-olinuxino-emmc.dts    |   2 +-
 .../boot/dts/allwinner/sun50i-a64-olinuxino.dts    |   2 +-
 arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi  |   8 +-
 arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts   |  28 +-
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi     |   2 +-
 arch/arm64/boot/dts/freescale/imx8mm.dtsi          |   2 +-
 .../boot/dts/freescale/imx8mq-librem5-devkit.dts   |   2 +-
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi      |   8 +-
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts         |   3 +-
 drivers/bus/ti-sysc.c                              |  10 +-
 drivers/clk/mmp/clk-of-mmp2.c                      |   2 +-
 drivers/soc/amlogic/meson-ee-pwrc.c                |  24 +-
 drivers/soc/ti/wkup_m3_ipc.c                       |   4 +-
 drivers/tee/optee/shm_pool.c                       |  15 +-
 include/dt-bindings/reset/amlogic,meson8b-reset.h  |   6 +-
 39 files changed, 159 insertions(+), 869 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
