Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA28F19E055
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 23:32:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zmBpr76OpPYqUQqRdLYFJZ++HzMdJvgEubCgi4Zu9As=; b=UaeqPFWSJeA/Wl
	YIeqYbPd0iChtBtd5aZxe/JWPlUOCNfvzkpd5Aipw+1rtQWf10FVYKAy0+dMJocxD3ygaCTd4J+tJ
	cvITy9TtMtkc+ciZr/r+Xok/XiFG3SZWpoet/U0amPhpA+q3llMWETKcwOzZ9bRNahlHeQTxgf+Mx
	YNG8fBA+DrRxxaEmh5z4b4fLULgdCQqdivdo3QP6pASUK22H2IPdc6+4RtKhYKLTGA+38x8LDwwoN
	U8a1rxIdckYcAnhbQ5qHA5jhVfxaFAGfzbeJ91hjGdIXBsMasuCj24/TX2Plk9sXppEu7rm/exxRO
	USXUgv/a/7qwmmg1SP4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKTvV-0005rW-Ka; Fri, 03 Apr 2020 21:32:33 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKTvO-0005qy-Pw
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 21:32:29 +0000
Received: from mail-qk1-f169.google.com ([209.85.222.169]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MlNYj-1iujPe1C6H-00lkak for <linux-arm-kernel@lists.infradead.org>; Fri,
 03 Apr 2020 23:32:23 +0200
Received: by mail-qk1-f169.google.com with SMTP id v7so9772506qkc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 14:32:23 -0700 (PDT)
X-Gm-Message-State: AGi0PuatawIZ6oBLgRf8Tz7Qz+MdCqdGNmxLrMUl4QZG3Ju2xkI8Zia6
 24l8E/etXkuMPVkrE+MgxqpYPI9wKyxYb7okBGM=
X-Google-Smtp-Source: APiQypIw1+/5MZVGthm6xQ9mSafhEM5lNhCgHclDp2ph/giU4dB5oFYo0ljpHAJ8d34mUcEBfKhTqSs0V4r85UKQHic=
X-Received: by 2002:a37:3c1:: with SMTP id 184mr9682491qkd.352.1585949542026; 
 Fri, 03 Apr 2020 14:32:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a1aO+LUu6KsW+s8aZMNWt2yz7kqe=LARY=ifMKOqT9uNQ@mail.gmail.com>
In-Reply-To: <CAK8P3a1aO+LUu6KsW+s8aZMNWt2yz7kqe=LARY=ifMKOqT9uNQ@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 3 Apr 2020 23:32:06 +0200
X-Gmail-Original-Message-ID: <CAK8P3a39t9wZvLMOayx4RSGZ0N+bKjgVw=fwEB=u=UvfnnHHpQ@mail.gmail.com>
Message-ID: <CAK8P3a39t9wZvLMOayx4RSGZ0N+bKjgVw=fwEB=u=UvfnnHHpQ@mail.gmail.com>
Subject: [GIT PULL 1/4] ARM: SoC updates
To: Linus Torvalds <torvalds@linux-foundation.org>
X-Provags-ID: V03:K1:PpFR+yXwge68GU93EBLE2yfIfFmLgPqIK2FLr940ONatq9XEAw6
 Yi9GQJI0BpXPHUJ1p9pvDSLXFV5hZmTBZIjbUZFQqiiPHLhJItQigv2wRf7TYJzRj7+ZLlS
 SK1Uh+alZJk0zyOhkAqiBuxTVkX1W8GGvRxhJ7KM9WFhUbvxTu3HY9vsG9PZ9REb7v+yQcp
 oBSvttvRgnSb8lGPTlnkA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:bRp0RsiXMTQ=:PovhMoviVi0Qi9IIrG1WPA
 NRwTZiOW0vlCUnVpsO6ySCaT4l6dp1Le4LOu0sxcy9axZDJyXppJUNUGx0oq7wCm2d0LaB/8b
 cGYOfp6G4krh4yd9VGl7U08mLELHwt9chsMYJMucZic1oUb+NmpcVK+053NFB6B6zxaKOqCes
 3CJLMAO8rS/E2B62dU9Hwz8Z5jAHfPGtqfk88W9VFc6Uw93FLPVNvjUrJl62NORBJ4+dv685M
 ZSfNsQJxBpjmH/qs0x4mBLLvCI0nrJ1gpx7o2pNVH5I1BmOFv7cYEnhGtD89vPIr95nUeXngl
 BMfYIN+TsCtbVG79GdRyn0+4SjM2bgOxLJ9ZRNB4yumZYCpjNlLNs23qkHAq9fKj8A5MVIwTu
 Jf9wUnOrRgg8BsexuerdDgiiXgsaQi2YOm6oRyz73Ys/vMRVw3SCsrDk4TyWDp9Xa0znMsdBJ
 h01ZKK3uKVuKFlnuGWP6pw34hqXgmIZiU8tIeFuYuEfQVVQ5TH+IwFL83GDdErkM9wSitorSg
 /I0rqSnyj2iTnlD7rCsXqz9IIyMYFglG8ghCyEgpLzpIu8Cv8XiVsVoXQxSsROHl6EZY8bbcN
 +/vMq9n0bzkgNM/pTM6YvXZYr9I7dMkr3+yW1Ev6kvNI78Ou9vUd8Fn1B4fbLD0tqK3eYwfJJ
 V0glGpX1zy5r173DojuqFn5pWbF6D2cueBhldO+djgtL4JZ3aXbEkLA9FO9nir/2O3e5EPFvl
 BfaC9cn1FrTK26X1k95kAYdrjYzL9yjhJ4zivdPFP6Pq8cO1PvtNKiyGaLB2BeRK7q0aEKa0K
 ssReTlXWEJjj8OmagDhVk+IJmz8EeIyf+bVuv9RWRupBhizZVM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_143227_135353_965ECEE2 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
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
Cc: SoC Team <soc@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 98d54f81e36ba3bf92172791eba5ca5bd813989b:

  Linux 5.6-rc4 (2020-03-01 16:38:46 -0600)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/arm-soc-5.7

for you to fetch changes up to f125e2d4339dda6937865f975470b29c84714c9b:

  ARM: qcom: Add support for IPQ40xx (2020-03-31 21:03:27 +0200)

----------------------------------------------------------------
ARM: SoC updates

The code changes are mostly for 32-bit platforms and include:

- Lots of updates for the Nvidia Tegra platform, including
  cpuidle, pmc, and dt-binding changes

- Microchip at91 power management updates for the recently added
  sam9x60 SoC

- Treewide setup_irq deprecation by afzal mohammed

- STMicroelectronics stm32 gains earlycon support

- Renesas platforms with Cortex-A9 can now use the global timer

- Some TI OMAP2+ platforms gain cpuidle support

- Various cleanups for the i.MX6 and Orion platforms, as well as
  Kconfig files across all platforms

Signed-off-by: Arnd Bergmann <arnd@arndb.de>

----------------------------------------------------------------
Anson Huang (6):
      ARM: imx: Remove unused include of linux/irqchip/arm-gic.h
      ARM: imx: Remove unused includes on mach-imx6q.c
      ARM: imx: Remove unused include of linux/of.h on mach-imx6sl.c
      ARM: imx: Add missing of_node_put()
      ARM: imx: Remove unnecessary blank lines
      ARM: imx: Drop unnecessary src_base check

Argus Lin (3):
      dt-bindings: pwrap: mediatek: add pwrap support for MT6779
      soc: mediatek: pwrap: add pwrap driver for MT6779 SoCs
      soc: mediatek: pwrap: add support for MT6359 PMIC

Arnd Bergmann (16):
      Merge tag 'renesas-arm-soc-for-v5.7-tag1' of
git://git.kernel.org/.../geert/renesas-devel into arm/soc
      Merge tag 'omap-for-v5.7/soc-signed' of
git://git.kernel.org/.../tmlind/linux-omap into arm/soc
      Merge tag 'omap-for-v5.7/pm33xx-signed' of
git://git.kernel.org/.../tmlind/linux-omap into arm/soc
      Merge tag 'arm-soc/for-5.7/soc' of
https://github.com/Broadcom/stblinux into arm/soc
      Merge tag 'arm-soc/for-5.7/soc-arm64' of
https://github.com/Broadcom/stblinux into arm/soc
      Merge tag 'sunxi-core-for-5.7' of
git://git.kernel.org/.../sunxi/linux into arm/soc
      Merge tag 'stm32-soc-for-v5.7-1' of
git://git.kernel.org/.../atorgue/stm32 into arm/soc
      Merge tag 'tegra-for-5.7-soc' of
git://git.kernel.org/.../tegra/linux into arm/soc
      Merge tag 'tegra-for-5.7-arm-core' of
git://git.kernel.org/.../tegra/linux into arm/soc
      Merge tag 'mvebu-arm-5.7-1' of
git://git.infradead.org/linux-mvebu into arm/soc
      Merge tag 'imx-soc-5.7' of
git://git.kernel.org/.../shawnguo/linux into arm/soc
      Merge tag 'v5.6-next-soc' of
git://git.kernel.org/.../matthias.bgg/linux into arm/soc
      Merge tag 'at91-5.7-soc' of git://git.kernel.org/.../at91/linux
into arm/soc
      Merge tag 'zynq-soc-for-v5.7' of
https://github.com/Xilinx/linux-xlnx into arm/soc
      Merge tag 'zynqmp-soc-for-v5.7' of
https://github.com/Xilinx/linux-xlnx into arm/soc
      Merge tag 'tegra-for-5.7-cpuidle' of
git://git.kernel.org/.../tegra/linux into arm/soc

Bibby Hsieh (1):
      soc: mediatek: knows_txdone needs to be set in Mediatek CMDQ helper

Christian Lamparter (1):
      ARM: qcom: Add support for IPQ40xx

Claudiu Beznea (8):
      ARM: at91: pm: use proper master clock register offset
      ARM: at91: pm: revert do not disable/enable PLLA for ULP modes
      ARM: at91: pm: add macros for plla disable/enable
      ARM: at91: pm: add pmc_version member to at91_pm_data
      ARM: at91: pm: s/sfr/sfrbu in pm_suspend.S
      clk: at91: move sam9x60's PLL register offsets to PMC header
      ARM: at91: pm: add plla disable/enable support for sam9x60
      ARM: at91: pm: add quirk for sam9x60's ulp1

Dave Gerlach (5):
      dt-bindings: arm: cpu: Add TI AM335x and AM437x enable method
      ARM: OMAP2+: pm33xx-core: Add cpuidle_ops for am335x/am437x
      ARM: OMAP2+: pm33xx-core: Extend platform_data ops for cpuidle
      soc: ti: pm33xx: Add base cpuidle support
      ARM: omap2plus_defconfig: Add CONFIG_ARM_CPUIDLE

Dmitry Osipenko (15):
      ARM: tegra: Compile sleep-tegra20/30.S unconditionally
      ARM: tegra: Add tegra_pm_park_secondary_cpu()
      ARM: tegra: Remove pen-locking from cpuidle-tegra20
      ARM: tegra: Change tegra_set_cpu_in_lp2() type to void
      ARM: tegra: Propagate error from tegra_idle_lp2_last()
      ARM: tegra: Expose PM functions required for new cpuidle driver
      ARM: tegra: Rename some of the newly exposed PM functions
      ARM: tegra: Make outer_disable() open-coded
      ARM: tegra: cpuidle: Handle case where secondary CPU hangs on entering LP2
      ARM: tegra: cpuidle: Make abort_flag atomic
      ARM: tegra: cpuidle: Remove unnecessary memory barrier
      cpuidle: Refactor and move out NVIDIA Tegra20 driver into drivers/cpuidle
      cpuidle: tegra: Squash Tegra30 driver into the common driver
      cpuidle: tegra: Squash Tegra114 driver into the common driver
      cpuidle: tegra: Disable CC6 state if LP2 unavailable

Erwan Le Ray (4):
      ARM: debug: stm32: add UART early console configuration for STM32F4
      ARM: debug: stm32: add UART early console configuration for STM32F7
      ARM: debug: stm32: add UART early console support for STM32H7
      ARM: debug: stm32: add UART early console support for STM32MP1

Geert Uytterhoeven (8):
      ARM: shmobile: Enable ARM_GLOBAL_TIMER on Cortex-A9 MPCore SoCs
      ARM: at91: Drop unneeded select of COMMON_CLK
      ARM: sunxi: Replace <linux/clk-provider.h> by <linux/of_clk.h>
      ARM: zynq: Replace <linux/clk-provider.h> by <linux/of_clk.h>
      ARM: shmobile: Replace <linux/clk-provider.h> by <linux/of_clk.h>
      ARM: orion5x: Drop unneeded select of PCI_DOMAINS_GENERIC
      arm64: bcm2835: Drop select of nonexistent HAVE_ARM_ARCH_TIMER
      ARM: bcm: Drop unneeded select of PCI_DOMAINS_GENERIC, HAVE_SMP, TIMER_OF

JC Kuo (1):
      dt-bindings: phy: tegra: Add Tegra194 support

Nagarjuna Kristam (2):
      dt-bindings: phy: tegra-xusb: Add usb-role-switch
      dt-bindings: usb: Add NVIDIA Tegra XUSB device mode controller binding

Sowjanya Komatineni (6):
      dt-bindings: clock: tegra: Add IDs for OSC clocks
      dt-bindings: tegra: Convert Tegra PMC bindings to YAML
      dt-bindings: soc: tegra-pmc: Add Tegra PMC clock bindings
      dt-bindings: soc: tegra-pmc: Add ID for Tegra PMC 32 kHz blink clock
      soc/tegra: Add Tegra PMC clocks registration into PMC driver
      soc/tegra: Add support for 32 kHz blink clock

Stefan Agner (1):
      ARM: imx: limit errata selection to Cortex-A9 based designs

Tejas Patel (2):
      include: linux: firmware: Correct config dependency of zynqmp_eemi_ops
      arm64: zynqmp: Make zynqmp_firmware driver optional

Thierry Reding (3):
      Merge branch 'for-5.7/dt-bindings' into for-5.7/soc
      soc/tegra: pmc: Cleanup whitespace usage
      Merge branch 'for-5.7/arm/core' into for-5.7/cpuidle

Tony Lindgren (2):
      ARM: OMAP2+: Improve handling of ti-sysc related sysc_fields
      Merge branch 'omap-for-v5.7/omap1' into omap-for-v5.7/soc

Venkat Reddy Talla (1):
      soc/tegra: pmc: Add pins for Tegra194

Vincenzo Frascino (1):
      arm: mach-dove: Mark dove_io_desc as __maybe_unused

Xu Wang (1):
      ARM: orion5x: ts78xx: Remove unneeded variable ret

afzal mohammed (7):
      ARM: OMAP: replace setup_irq() by request_irq()
      ARM: orion: replace setup_irq() by request_irq()
      ARM: iop32x: replace setup_irq() by request_irq()
      ARM: ep93xx: Replace setup_irq() by request_irq()
      ARM: spear: replace setup_irq() by request_irq()
      ARM: cns3xxx: replace setup_irq() by request_irq()
      ARM: mmp: replace setup_irq() by request_irq()

 Documentation/devicetree/bindings/arm/cpus.yaml    |   2 +
 .../bindings/arm/tegra/nvidia,tegra20-pmc.txt      | 300 ---------
 .../bindings/arm/tegra/nvidia,tegra20-pmc.yaml     | 354 +++++++++++
 .../bindings/phy/nvidia,tegra124-xusb-padctl.txt   |  24 +
 .../devicetree/bindings/soc/mediatek/pwrap.txt     |   1 +
 .../devicetree/bindings/usb/nvidia,tegra-xudc.yaml | 190 ++++++
 arch/arm/Kconfig.debug                             |  42 +-
 arch/arm/Makefile                                  |   1 +
 arch/arm/configs/omap2plus_defconfig               |   2 +
 arch/arm/include/debug/stm32.S                     |   9 +-
 arch/arm/mach-at91/Kconfig                         |   1 -
 arch/arm/mach-at91/pm.c                            |  35 +-
 arch/arm/mach-at91/pm.h                            |   2 +
 arch/arm/mach-at91/pm_data-offsets.c               |   4 +
 arch/arm/mach-at91/pm_suspend.S                    | 189 +++++-
 arch/arm/mach-bcm/Kconfig                          |   8 -
 arch/arm/mach-cns3xxx/core.c                       |  10 +-
 arch/arm/mach-dove/common.c                        |   2 +-
 arch/arm/mach-ep93xx/timer-ep93xx.c                |  14 +-
 arch/arm/mach-imx/Kconfig                          |  10 +-
 arch/arm/mach-imx/anatop.c                         |   7 +-
 arch/arm/mach-imx/gpc.c                            |   4 +-
 arch/arm/mach-imx/mach-imx6q.c                     |  13 -
 arch/arm/mach-imx/mach-imx6sl.c                    |   1 -
 arch/arm/mach-imx/mach-imx6ul.c                    |   1 -
 arch/arm/mach-imx/platsmp.c                        |   1 +
 arch/arm/mach-imx/pm-imx6.c                        |   2 +
 arch/arm/mach-imx/pm-imx7ulp.c                     |   1 +
 arch/arm/mach-imx/src.c                            |   3 -
 arch/arm/mach-iop32x/time.c                        |  12 +-
 arch/arm/mach-mmp/time.c                           |  11 +-
 arch/arm/mach-omap1/pm.c                           |  13 +-
 arch/arm/mach-omap1/time.c                         |  10 +-
 arch/arm/mach-omap1/timer32k.c                     |  10 +-
 arch/arm/mach-omap2/omap_hwmod.c                   |  19 +-
 arch/arm/mach-omap2/pm33xx-core.c                  | 137 +++-
 arch/arm/mach-omap2/timer.c                        |  11 +-
 arch/arm/mach-orion5x/Kconfig                      |   2 -
 arch/arm/mach-orion5x/ts78xx-setup.c               |   3 +-
 arch/arm/mach-qcom/Kconfig                         |   5 +
 arch/arm/mach-shmobile/setup-r8a7779.c             |   1 -
 arch/arm/mach-shmobile/setup-rcar-gen2.c           |   2 +-
 arch/arm/mach-shmobile/setup-sh73a0.c              |   1 -
 arch/arm/mach-spear/time.c                         |   9 +-
 arch/arm/mach-sunxi/sunxi.c                        |   2 +-
 arch/arm/mach-tegra/Makefile                       |  19 +-
 arch/arm/mach-tegra/cpuidle-tegra114.c             |  89 ---
 arch/arm/mach-tegra/cpuidle-tegra20.c              | 212 -------
 arch/arm/mach-tegra/cpuidle-tegra30.c              | 132 ----
 arch/arm/mach-tegra/cpuidle.c                      |  50 --
 arch/arm/mach-tegra/cpuidle.h                      |  21 -
 arch/arm/mach-tegra/irq.c                          |   3 +-
 arch/arm/mach-tegra/pm.c                           |  54 +-
 arch/arm/mach-tegra/pm.h                           |   4 -
 arch/arm/mach-tegra/reset-handler.S                |  11 -
 arch/arm/mach-tegra/reset.h                        |   9 +-
 arch/arm/mach-tegra/sleep-tegra20.S                | 170 -----
 arch/arm/mach-tegra/sleep-tegra30.S                |   6 +-
 arch/arm/mach-tegra/sleep.h                        |  15 -
 arch/arm/mach-tegra/tegra.c                        |   7 +-
 arch/arm/mach-zynq/common.c                        |   2 +-
 arch/arm/plat-orion/time.c                         |  10 +-
 arch/arm64/Kconfig.platforms                       |   2 -
 drivers/clk/at91/clk-sam9x60-pll.c                 |  91 ++-
 drivers/cpuidle/Kconfig.arm                        |   8 +
 drivers/cpuidle/Makefile                           |   1 +
 drivers/cpuidle/cpuidle-tegra.c                    | 392 ++++++++++++
 drivers/firmware/xilinx/Kconfig                    |   2 +
 drivers/soc/mediatek/mtk-cmdq-helper.c             |   1 +
 drivers/soc/mediatek/mtk-pmic-wrap.c               | 128 ++++
 drivers/soc/renesas/Kconfig                        |   2 +
 drivers/soc/tegra/pmc.c                            | 688 ++++++++++++++++-----
 drivers/soc/ti/pm33xx.c                            |  21 +-
 include/dt-bindings/clock/tegra114-car.h           |   4 +-
 include/dt-bindings/clock/tegra124-car-common.h    |   4 +-
 include/dt-bindings/clock/tegra210-car.h           |   4 +-
 include/dt-bindings/clock/tegra30-car.h            |   4 +-
 include/dt-bindings/soc/tegra-pmc.h                |  16 +
 include/linux/clk/at91_pmc.h                       |  23 +
 include/linux/firmware/xlnx-zynqmp.h               |   2 +-
 include/linux/platform_data/pm33xx.h               |   6 +-
 include/soc/tegra/cpuidle.h                        |   2 +-
 {arch/arm/mach-tegra => include/soc/tegra}/irq.h   |   8 +-
 include/soc/tegra/pm.h                             |  31 +
 include/soc/tegra/pmc.h                            |   3 +-
 85 files changed, 2290 insertions(+), 1448 deletions(-)
 delete mode 100644
Documentation/devicetree/bindings/arm/tegra/nvidia,tegra20-pmc.txt
 create mode 100644
Documentation/devicetree/bindings/arm/tegra/nvidia,tegra20-pmc.yaml
 create mode 100644 Documentation/devicetree/bindings/usb/nvidia,tegra-xudc.yaml
 delete mode 100644 arch/arm/mach-tegra/cpuidle-tegra114.c
 delete mode 100644 arch/arm/mach-tegra/cpuidle-tegra20.c
 delete mode 100644 arch/arm/mach-tegra/cpuidle-tegra30.c
 delete mode 100644 arch/arm/mach-tegra/cpuidle.c
 delete mode 100644 arch/arm/mach-tegra/cpuidle.h
 create mode 100644 drivers/cpuidle/cpuidle-tegra.c
 create mode 100644 include/dt-bindings/soc/tegra-pmc.h
 rename {arch/arm/mach-tegra => include/soc/tegra}/irq.h (59%)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
