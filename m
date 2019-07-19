Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0986E6ECD6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 01:55:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uGx77li8DukV7P+nJuAOPCI1dfPNKeVhsk+5Oa2B/eI=; b=tVzQk+ZnjDEDYo
	Y/EKwAD9MnDRu2ASOqZB7uOf0dyx2+31Fc+YIR/TeJYS11DdQBKV23MOMqc03Jps/Vq3YmYH5ZIm0
	5ydayUbfUPu7P9LTH0zvrOlLw0F/ov8n0Ew4OR/3aGM0mQHrPVT+VC5cWxkUGWEBIAuFlxwr1Z/+S
	otAwJzXVEn+OgwuoAPLWcO4OkZeHAPdLRkSjoMMDU0CQJsyHo4jb5JAdPADGSWGnddieyk8H+Z/i9
	vaiwhh/IJ3KOFSglYyKnktaQC/7jsUPDzR1hzXo5crHcsNDAUnq3jC1ttpXv0Nw89H5qiP+QZWce2
	c+nTxZEnD7yXNSMRIacA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hocj6-0005TS-J8; Fri, 19 Jul 2019 23:55:48 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoci9-0003Ys-Cb
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 23:54:51 +0000
Received: by mail-pg1-x542.google.com with SMTP id u17so15107599pgi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 16:54:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4cKB/95gguJOlV29Ov9N7V7pouWrhk4njzfgrCoLuK4=;
 b=bZrx+l2t8c749FAT0YMBaUsmXOWdcCSlFthKU/LhYx73n1TPTZHBmi5mbbZDOtgRhl
 r71xie4mv37rtGnRKiKQyCp3wnIvALYaKpwMqRTF5/xWwFCYfebKObrjH8EPwmT2SGTS
 7+nVCApZhY6Brj4dq4eSUmYm0ysaVd3LIHVRAFl+k/cqE0IwnaC+R+HXTcVMIzq0orH8
 TsUEPb0Z7S+KpzLLfTUbwWQRkJM5Pod6Re5B0S+JSRuDuT+/QNPG7GrsQFkz36cPiV6d
 Dh6Ll09D1UQQJmMN0naBdTRKVVQ+GfBqlN1At6QOYLLd+fCmHNQq1kEFZNDjbNyN/ciE
 JX9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4cKB/95gguJOlV29Ov9N7V7pouWrhk4njzfgrCoLuK4=;
 b=jrKySUTnFeKDdecRtIcS+5y58blOne9fFYgOx/o3kR7BJtzDP7CnteWoMVmTZ38pQ/
 ALrCPTnUws8RkpFWd37snBFXgDjaaTQXakRXfi8q8IcWFO3hgfYN1IgA8GVPRgvF/8KT
 bJIbklAJieYyMgBmt4LCHgipayI8C+lI914/V+xUxxoTmNYqwKREfmpO5cXJp8CHcVY+
 CS4H2izojy1/CyYQkHPC5vT5UA3TgJ+b2eTZba4bTAmkbwVqZ3r3n52ire392+QWasYd
 rgJAWMzduuKd6eRKYIO8XgXgB18tnlFxAgT1rUKrRFWUdH4GlT8Fi4lKf8QdpKJyF7rL
 lh3Q==
X-Gm-Message-State: APjAAAVsAFx7Ps0lIiN8YT0L4dV4hHF6Amt49bTtHy/wJvF0aahn1mQZ
 mcApSzWOYTZH23JnrFBpYJE=
X-Google-Smtp-Source: APXvYqx8ClJMYy1P/JOGAIZu1P/CVZEYfLVbGQIz0LfZTheCgw0B3evvdtNW0LOBGoKghwzrfphkfQ==
X-Received: by 2002:a65:690f:: with SMTP id s15mr51909980pgq.432.1563580488488; 
 Fri, 19 Jul 2019 16:54:48 -0700 (PDT)
Received: from localhost.localdomain
 (99-152-116-91.lightspeed.sntcca.sbcglobal.net. [99.152.116.91])
 by smtp.gmail.com with ESMTPSA id v184sm31975215pfb.82.2019.07.19.16.54.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 19 Jul 2019 16:54:46 -0700 (PDT)
From: Olof Johansson <olof@lixom.net>
To: torvalds@linux-foundation.org
Subject: [GIT PULL 1/4] ARM: SoC platform updates
Date: Fri, 19 Jul 2019 16:54:31 -0700
Message-Id: <20190719235434.13214-2-olof@lixom.net>
X-Mailer: git-send-email 2.22.GIT
In-Reply-To: <20190719235434.13214-1-olof@lixom.net>
References: <20190719235434.13214-1-olof@lixom.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_165449_428525_0919F3CF 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Olof Johansson <olof@lixom.net>, soc@kernel.org, arm@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SoC platform changes. Main theme this merge window:

- The Netx platform (Netx 100/500) platform is removed by Linus Walleij--
the SoC doesn't have active maintainers with hardware, and in
discussions with the vendor the agreement was that it's OK to remove.

- Russell King has a series of patches that cleans up and refactors
SA1101 and RiscPC support.


Merge conflicts:

arch/arm/include/debug/netx.S:
        SPDX churn on a file that was removed. Delete it.

----------------------------------------------------------------

The following changes since commit 31cc088a4f5d83481c6f5041bd6eb06115b974af:

  Merge tag 'drm-next-2019-07-19' of git://anongit.freedesktop.org/drm/drm

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-soc

for you to fetch changes up to 7e8a0f10899075ac2665c78c4e49dbaf32bf3346:

  ARM: stm32: use "depends on" instead of "if" after prompt

----------------------------------------------------------------

Arnd Bergmann (1):
      ARM: exynos: Only build MCPM support if used

Doug Berger (2):
      arm64: Enable PINCTRL for ARCH_BRCMSTB
      ARM: bcm: Enable PINCTRL for ARCH_BRCMSTB

Florian Fainelli (1):
      arm64: Enable BCM7038_L1_IRQ for ARCH_BRCMSTB

Geert Uytterhoeven (1):
      soc: renesas: Enable RZ/A1 IRQC on RZ/A1H and RZ/A2M

Gregory CLEMENT (1):
      MAINTAINERS: mvebu: Add git entry

Jim Quinlan (2):
      arm64: Enable ARCH_HAS_RESET_CONTROLLER for ARCH_BRCMSTB
      ARM: bcm: Enable ARCH_HAS_RESET_CONTROLLER for ARCH_BRCMSTB

Keerthy (1):
      soc: ti: pm33xx: Add a print while entering RTC only mode with DDR in self-refresh

Krzysztof Kozlowski (1):
      ARM: exynos: Make ARCH_EXYNOS3 a default option

Leonard Crestez (1):
      ARM: imx: Switch imx7d to imx-cpufreq-dt for speed-grading

Linus Walleij (3):
      ARM: delete netx machine
      ARM: versatile: Drop CLCD platform data
      ARM: davinci: Use GPIO lookup table for DA850 LEDs

Masahiro Yamada (1):
      ARM: stm32: use "depends on" instead of "if" after prompt

Oleksandr Tyshchenko (1):
      ARM: mach-shmobile: Don't init CNTVOFF/counter if PSCI is available

Olof Johansson (14):
      Merge tag 'armsoc-drop-netx-v5.3' of git://git.kernel.org/.../linusw/linux-integrator into arm/soc
      Merge tag 'versatile-v5.3-armsoc' of git://git.kernel.org/.../linusw/linux-integrator into arm/soc
      Merge tag 'v5.3-rockchip-soc32-1' of git://git.kernel.org/.../mmind/linux-rockchip into arm/soc
      Merge tag 'arm-soc/for-5.3/soc' of https://github.com/Broadcom/stblinux into arm/soc
      Merge tag 'arm-soc/for-5.3/soc-arm64' of https://github.com/Broadcom/stblinux into arm/soc
      Merge tag 'omap-for-v5.3/soc-signed' of git://git.kernel.org/.../tmlind/linux-omap into arm/soc
      Merge tag 'davinci-for-v5.3/soc' of git://git.kernel.org/.../nsekhar/linux-davinci into arm/soc
      Merge tag 'renesas-arm-soc-for-v5.3' of https://git.kernel.org/.../horms/renesas into arm/soc
      Merge tag 'mvebu-arm-5.3-1' of git://git.infradead.org/linux-mvebu into arm/soc
      Merge tag 'at91-5.3-soc' of git://git.kernel.org/.../at91/linux into arm/soc
      Merge tag 'pxa-for-5.3-2' of https://github.com/rjarzmik/linux into arm/soc
      Merge tag 'imx-soc-5.3' of git://git.kernel.org/.../shawnguo/linux into arm/soc
      Merge tag 'samsung-soc-5.3' of https://git.kernel.org/.../krzk/linux into arm/soc
      Merge branch 'for-arm-soc' of git://git.armlinux.org.uk/~rmk/linux-arm into arm/soc

Philippe Mazenauer (1):
      arm: add missing include platform-data/atmel.h

Phong Tran (1):
      ARM: exynos: Cleanup cppcheck shifting warning

Russell King (23):
      ARM: riscpc: replace gettimeoffset() with clocksource
      ARM: riscpc: fix lack of keyboard interrupts after irq conversion
      ARM: riscpc: fix ecard printing
      ARM: riscpc: fix DMA
      ARM: riscpc: dma: eliminate "cur_sg" scatterlist usage
      ARM: riscpc: dma: make state a local variable
      ARM: riscpc: dma: improve address/length writing
      ARM: riscpc: dma: use __iomem pointers for writing DMA
      serial: sa1100: add support for mctrl gpios
      serial: sa1100: add note about modem control signals
      ARM: sa1100/assabet: convert serial to gpiod APIs
      ARM: sa1100/h3xxx: convert serial to gpiod APIs
      ARM: sa1100/badge4: remove commented out modem control initialisers
      ARM: sa1100/hackkit: remove empty serial mctrl functions
      ARM: sa1100/neponset: convert serial to use gpiod APIs
      ARM: riscpc: add ecard quirk for Atomwide 3port serial card
      ARM: riscpc: parse video information from tagged list
      ARM: riscpc: move RiscPC assembly files from arch/arm/lib to mach-rpc
      ARM: riscpc: reduce IRQ handling code
      ARM: riscpc: enable chained scatterlist support
      ARM: pxa/lubbock: remove lubbock_set_misc_wr() from global view
      ARM: sa1100: convert to common clock framework
      Merge branch 'sa1100-for-next'; commit 'riscpc^{/ARM: riscpc: enable chained scatterlist support}' into for-arm-soc

Sebastian Andrzej Siewior (1):
      ARM: imx6: cpuidle: Use raw_spinlock_t

Stefan Agner (2):
      ARM: use arch_extension directive instead of arch argument
      ARM: OMAP2: drop explicit assembler architecture

Wen Yang (3):
      ARM: rockchip: fix missing of_node_put calls in smp code
      ARM: versatile: fix a leaked reference by addingmissing of_node_put
      ARM: bcm: fix a leaked reference by adding missing of_node_put

YueHaibing (1):
      ARM: OMAP2+: Make some variables static


 MAINTAINERS                                     |   4 +-
 arch/arm/Kconfig                                |  14 +-
 arch/arm/Kconfig.debug                          |   7 -
 arch/arm/Makefile                               |   1 -
 arch/arm/configs/netx_defconfig                 |  80 -------
 arch/arm/include/debug/netx.S                   |  32 ---
 arch/arm/lib/Makefile                           |   1 -
 arch/arm/mach-at91/pm.c                         |   1 +
 arch/arm/mach-bcm/Kconfig                       |   2 +
 arch/arm/mach-bcm/Makefile                      |   3 -
 arch/arm/mach-bcm/bcm63xx_smp.c                 |   1 +
 arch/arm/mach-bcm/bcm_kona_smc.c                |   2 -
 arch/arm/mach-bcm/board_bcm281xx.c              |   1 +
 arch/arm/mach-bcm/platsmp-brcmstb.c             |   7 +-
 arch/arm/mach-davinci/board-da850-evm.c         |  43 ++--
 arch/arm/mach-exynos/Kconfig                    |   7 +-
 arch/arm/mach-exynos/Makefile                   |   6 +-
 arch/arm/mach-exynos/exynos-smc.S               |   3 +-
 arch/arm/mach-exynos/sleep.S                    |   3 +-
 arch/arm/mach-exynos/suspend.c                  |   8 +-
 arch/arm/mach-highbank/Makefile                 |   3 -
 arch/arm/mach-highbank/smc.S                    |   3 +-
 arch/arm/mach-imx/cpuidle-imx6q.c               |  10 +-
 arch/arm/mach-imx/mach-imx7d.c                  |   7 +
 arch/arm/mach-keystone/Makefile                 |   3 -
 arch/arm/mach-keystone/smc.S                    |   1 +
 arch/arm/mach-omap2/Makefile                    |  13 --
 arch/arm/mach-omap2/omap-headsmp.S              |   2 +
 arch/arm/mach-omap2/omap-smc.S                  |   3 +-
 .../omap_hwmod_33xx_43xx_ipblock_data.c         |   8 +-
 arch/arm/mach-omap2/sleep33xx.S                 |   1 +
 arch/arm/mach-omap2/sleep34xx.S                 |   2 +
 arch/arm/mach-omap2/sleep43xx.S                 |   2 +
 arch/arm/mach-omap2/sleep44xx.S                 |   3 +
 arch/arm/mach-pxa/include/mach/lubbock.h        |   4 -
 arch/arm/mach-pxa/lubbock.c                     |   3 +-
 arch/arm/mach-rockchip/platsmp.c                |  12 +-
 arch/arm/mach-rockchip/pm.c                     |   2 +
 arch/arm/mach-rpc/Makefile                      |   3 +-
 arch/arm/mach-rpc/dma.c                         |  97 ++++----
 .../{lib/ecard.S => mach-rpc/ecard-loader.S}    |   0
 arch/arm/mach-rpc/ecard.c                       |  32 ++-
 arch/arm/{lib => mach-rpc}/floppydma.S          |   0
 arch/arm/mach-rpc/include/mach/uncompress.h     |  23 +-
 arch/arm/{lib => mach-rpc}/io-acorn.S           |   0
 arch/arm/mach-rpc/irq.c                         | 136 +++++-------
 arch/arm/mach-rpc/time.c                        |  38 ++--
 arch/arm/mach-sa1100/assabet.c                  |  91 +++-----
 arch/arm/mach-sa1100/badge4.c                   |   2 -
 arch/arm/mach-sa1100/clock.c                    | 220 ++++++++-----------
 arch/arm/mach-sa1100/h3xxx.c                    |  64 +-----
 arch/arm/mach-sa1100/hackkit.c                  |  48 ----
 arch/arm/mach-sa1100/neponset.c                 | 109 +++------
 arch/arm/mach-shmobile/setup-rcar-gen2.c        |  17 ++
 arch/arm/mach-stm32/Kconfig                     |   3 +-
 arch/arm/mach-tango/Makefile                    |   3 -
 arch/arm/mach-tango/smc.S                       |   2 +
 arch/arm/mach-versatile/versatile_dt.c          | 164 +-------------
 arch/arm64/Kconfig.platforms                    |   3 +
 drivers/soc/renesas/Kconfig                     |   4 +-
 drivers/soc/ti/pm33xx.c                         |   1 +
 drivers/tty/serial/Kconfig                      |   1 +
 drivers/tty/serial/sa1100.c                     |  46 +++-
 .../linux/platform_data/video-clcd-versatile.h  |  28 ---
 64 files changed, 492 insertions(+), 951 deletions(-)
 delete mode 100644 arch/arm/configs/netx_defconfig
 delete mode 100644 arch/arm/include/debug/netx.S
 rename arch/arm/{lib/ecard.S => mach-rpc/ecard-loader.S} (100%)
 rename arch/arm/{lib => mach-rpc}/floppydma.S (100%)
 rename arch/arm/{lib => mach-rpc}/io-acorn.S (100%)
 delete mode 100644 include/linux/platform_data/video-clcd-versatile.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
