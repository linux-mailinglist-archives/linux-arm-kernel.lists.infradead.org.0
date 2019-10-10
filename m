Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8121DD3217
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:30:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z1UDHDgfFQeVK69T7VDfZSAWHV5w3ZdXJb/NIVjd+Ts=; b=qYLDmu5FlN3kkT
	E6zDh21zCIkAyeBrgeA+sv8l/IctXqOwR/js0y12RWKc5+W+JmA2HAPFuheH0NbPYFlQKa17LGc5f
	/PIdmMrpU0HjdZzqNTqEReuXvDTnadJLAEm+sf8mfyGvTKR3juTRbgl9TgvUOdgX1gFradFJ4DRx8
	h6CnSl6Bly9j8wwVYHG4Zv7I7qksr8nsFEWUO5hMAYxyIVv0FMMjIYCdZz0WeOAPbIk8+L/b08SlR
	/vrMEoTIa7PI/E8qgLCcR0HCZunoWA5LkDtqmOAQw8SXAdDsuktb3JAhkZQ5YV1+/jPqiWVrDtNjD
	DpA5hX4cVH9TYm+GoK+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIf4z-0001FH-RO; Thu, 10 Oct 2019 20:30:33 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIf4q-0001DL-9u
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:30:27 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MxHLs-1huNxE3fke-00xbqf; Thu, 10 Oct 2019 22:28:13 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kukjin Kim <kgene@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH 00/36] ARM: samsung platform cleanup
Date: Thu, 10 Oct 2019 22:28:02 +0200
Message-Id: <20191010202802.1132272-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:4NLjuMdb8mgxLE9JaRTfEDDtl5wr18+E4LuqPnkAwfZI2ORC29a
 cE+IxMC6LiP13EXLbYN4hRrfDgp1z1s/vUN/R3Dccj867Av5jZg54NmFpOUdOMZtbbm+JH1
 lOmf0E2aUl1Uwe52zLiZHVv8rlB8ovDSvfcVZq3zZf7rlshzeFYtrQzf7XFWz//+r+9WWRD
 Ussw3RH5OSWljboNTRdvw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:t7Qjtml0gHw=:OfgStiEe0A11zaXTTFIs1e
 Sd5u2yXWnLLZVGs9bF/Z99FDcg8dP23tfW4MoozLlku9mYgxQGKfuML+Afcpn/eBFQDFOGEp8
 0P8zSiICii8ln6kEjHrft3DxH1jZ66Dg9blWwQjOFRU0Um/BeyIuUVDoGJdYnqUi39PHYBtPW
 kmsbxmx8QUtegXqZIknnK8EUv+9SSYO+pj0mVOP0juDoiskbo10exX1H94RlYIJDUICu/UNg6
 ujoWH5LaKdT7pcn2U6QBrePzAooYvajFPv4Dg/lBean6blNfi61CdlvvmyQ1Y0xGm5r/rVzsy
 AFXsUb0212B4g7zjJSck8grvFBoPrj5vjFNTzWoL7AneWcLaSbIeO6MpiTcsvVIVD4kSGSVay
 SAJgqDjQMryGY6e5HHruhTY8SmMnvZMLsGq5PFS+2buh9BY1rnXrzcXUKNQwefJaatSLkaJyp
 21qoriXOlKiRrzct80c4BqZMeRA4Y1H7a8pfRjXMe6VAZFJCcUlqqRlX4kYqzgKbm/+RnNWKW
 vM8FwSFp+/9PF14I93Zx/aIXWfnS2rPXMPkOL7oiexYACXO+nxtViBdWoWn/rh6nyPeGFKxZl
 /GT29uyzkggA7Oxf9m07lRkEDnbtJ+Nw2CegrjUyGBbZIbEE9jsTCYAK4XTMY9CuR7HjN8FmY
 Gv8DJvJWklLwW2tg/YwSikMFzx512hpTjBRCkru3Zyg0EP1BfNynR5vXqifDU8Pvi2V0wcl9o
 3QMpGGY/RQX1Mn6OeQcO0YywfEMDcrnOkuRjKXEyBq74B6n6eUBFglAvLofOib8lASEIuq50C
 r1XzkHgCKPZ5A2YudidZHd4ka/5kUHQFnavqQN3DzHHsCr2cxmU/tOdXKe/6WNsV3kyv2S8CC
 /1CSV5CAtrWtyem4vjZA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_133024_795933_63D5BB40 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
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
Cc: linux-hwmon@vger.kernel.org, linux-pwm@vger.kernel.org,
 linux-fbdev@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 patches@opensource.cirrus.com, linux-usb@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-leds@vger.kernel.org,
 linux-serial@vger.kernel.org, linux-input@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I've spent some time looking at the remaining ARMv4/ARMv5 platforms
that are not part of ARCH_MULTIPLATFORM, and tried to get them closer
to that. Here is what came out of that for the samsung platforms:

* Exynos and s5pv210 are made independent of plat-samsung
* device drivers stop using mach/*.h headers for s3c24xx
  (and other platforms not in this series)
* s3c24xx and s3c64xx get merged into mach-s3c, removing
  the need for plat-samsung (I have other patches for the
  remaining plat-* directories)
* mach/io.h gets cleaned up to only be needed for BAST
  PC104 mode (looking for ideas to proceed)
* mach/irqs.h remains for now, this still needs to be converted
  to sparse IRQs.

Some bits are a little ugly, but overall I think this a big
improvement.

The contents are available for testing in

git://kernel.org:/pub/scm/linux/kernel/git/arnd/playground.git s3c-multiplatform

Given the overall size of the series I expect that there will
be bugs, so at this points I'm looking for reviews, acks and
testing from anyone who still has the hardware, in particular
s3c24xx, but also the other samsung platforms I'm touching.

      Arnd

Arnd Bergmann (36):
  ARM: samsung: make S3C24XX_MISCCR access indirect
  ARM: s3c: simplify mach/io.h
  usb: gadget: s3c: use platform resources
  usb: gadget: s3c-hsudc: remove platform header dependency
  ARM: samsung: make pm-debug platform independent
  ARM: samsung: move CONFIG_DEBUG_S3C_UART to Kconfig.debug
  ARM: exynos: use private samsung_cpu_id copy
  ARM: exynos: stop selecting PLAT_SAMSUNG
  ARM: samsung: move pm check code to drivers/soc
  ARM: s5pv210: use private pm save/restore
  ARM: s5pv210: split from plat-samsung
  ARM: s3c64xx: remove mach/hardware.h
  ARM: s3c: move regs-spi.h into spi driver
  ARM: s3c: move irqchip driver back into platform
  ARM: s3c: adc: move header to linux/soc/samsung
  ARM: s3c: move spi fiq handler into platform
  ARM: s3c: h1940-audio: turn into platform driver
  ARM: s3c: gta02-audio: turn into platform driver
  ARM: s3c: rx1950: turn into platform driver
  ASoC: samsung: s3c2412-i2s: avoid hardcoded S3C2410_PA_IIS
  ARM: s3c: move iis pinctrl config into boards
  ARM: s3c: leds: move setpull() calls into board files
  ARM: s3c: move s3cmci pinctrl handling into board files
  ARM: s3c: include mach/irqs.h where needed
  ARM: s3c: spi: avoid hardcoding fiq number in driver
  ARM: s3c: bast: avoid irq_desc array usage
  ARM: s3c: fix mmc gpio lookup tables
  fbdev: s3c2410fb: remove mach header dependency
  ARM: s3c: cpufreq: split out registers
  ARM: s3c: remove cpufreq header dependencies
  ARM: s3c: cpufreq: use global s3c2412_cpufreq_setrefresh
  ARM: s3c: iotiming: make functions static
  ARM: s3c: move low-level clk reg access into platform code
  ARM: s3c: stop including mach/hardware.h from mach/io.h
  ARM: s3c: move into a common directory
  ARM: s3c: make headers local if possible

 MAINTAINERS                                   |  16 +-
 arch/arm/Kconfig                              |   5 +-
 arch/arm/Kconfig.debug                        |  18 +-
 arch/arm/Makefile                             |   7 +-
 arch/arm/mach-exynos/Makefile                 |   4 -
 arch/arm/mach-exynos/common.h                 |   6 +-
 arch/arm/mach-exynos/exynos.c                 |  19 +-
 arch/arm/mach-exynos/include/mach/map.h       |  18 --
 arch/arm/mach-exynos/platsmp.c                |   4 +-
 arch/arm/mach-exynos/pm.c                     |   8 +-
 arch/arm/{plat-samsung => mach-s3c}/Kconfig   |  62 +----
 .../Kconfig => mach-s3c/Kconfig.s3c24xx}      |   0
 .../Kconfig => mach-s3c/Kconfig.s3c64xx}      |   0
 arch/arm/{plat-samsung => mach-s3c}/Makefile  |  15 +-
 .../{mach-s3c24xx => mach-s3c}/Makefile.boot  |   0
 .../Makefile => mach-s3c/Makefile.s3c24xx}    |  15 +-
 .../Makefile => mach-s3c/Makefile.s3c64xx}    |  14 +-
 .../include/plat => mach-s3c}/adc-core.h      |   0
 arch/arm/{plat-samsung => mach-s3c}/adc.c     |   4 +-
 arch/arm/{mach-s3c24xx => mach-s3c}/anubis.h  |   0
 .../arm/{mach-s3c64xx => mach-s3c}/ata-core.h |   0
 .../{mach-s3c64xx => mach-s3c}/backlight.h    |   0
 .../arm/{mach-s3c24xx => mach-s3c}/bast-ide.c |   3 +-
 .../arm/{mach-s3c24xx => mach-s3c}/bast-irq.c |   8 +-
 arch/arm/{mach-s3c24xx => mach-s3c}/bast.h    |   0
 .../{mach-s3c24xx => mach-s3c}/common-smdk.c  |  17 +-
 .../{mach-s3c24xx => mach-s3c}/common-smdk.h  |   0
 arch/arm/{plat-samsung => mach-s3c}/cpu.c     |  21 +-
 .../include/plat => mach-s3c}/cpu.h           |  11 -
 .../cpufreq-utils.c                           |  38 +++-
 arch/arm/{mach-s3c64xx => mach-s3c}/cpuidle.c |   4 +-
 .../arm/{mach-s3c64xx => mach-s3c}/crag6410.h |   2 +-
 .../{mach-s3c64xx => mach-s3c}/dev-audio.c    |   9 +-
 .../dev-backlight.c                           |   4 +-
 .../dev-uart-s3c64xx.c}                       |   5 +-
 .../arm/{plat-samsung => mach-s3c}/dev-uart.c |   2 +-
 arch/arm/{plat-samsung => mach-s3c}/devs.c    |  56 +++--
 .../include/plat => mach-s3c}/devs.h          |   0
 .../mach/dma.h => mach-s3c/dma-s3c24xx.h}     |   0
 .../mach/dma.h => mach-s3c/dma-s3c64xx.h}     |   0
 arch/arm/mach-s3c/dma.h                       |   7 +
 arch/arm/{mach-s3c24xx => mach-s3c}/fb-core.h |   0
 .../include/plat => mach-s3c}/fb.h            |   0
 .../plat => mach-s3c}/gpio-cfg-helpers.h      |   0
 .../include/plat => mach-s3c}/gpio-cfg.h      |   0
 .../include/plat => mach-s3c}/gpio-core.h     |   2 +-
 .../gpio-samsung-s3c24xx.h}                   |   2 +
 .../gpio-samsung-s3c64xx.h}                   |   0
 .../{plat-samsung => mach-s3c}/gpio-samsung.c |  18 +-
 arch/arm/mach-s3c/gpio-samsung.h              |   7 +
 arch/arm/{mach-s3c24xx => mach-s3c}/gta02.h   |   2 +-
 .../h1940-bluetooth.c                         |   7 +-
 arch/arm/{mach-s3c24xx => mach-s3c}/h1940.h   |   0
 .../include/mach => mach-s3c}/hardware.h      |   7 -
 .../include/plat => mach-s3c}/iic-core.h      |   0
 arch/arm/mach-s3c/include/mach/io.h           |  50 +++++
 .../include/mach/irqs-s3c24xx.h}              |   0
 .../include/mach/irqs-s3c64xx.h}              |   0
 arch/arm/mach-s3c/include/mach/irqs.h         |   7 +
 .../plat => mach-s3c/include/mach}/map-base.h |   0
 arch/arm/{plat-samsung => mach-s3c}/init.c    |   4 +-
 .../iotiming-s3c2410.c                        |  12 +-
 .../iotiming-s3c2412.c                        |   6 +-
 .../irq-pm.c => mach-s3c/irq-pm-s3c24xx.c}    |  16 +-
 .../irq-pm.c => mach-s3c/irq-pm-s3c64xx.c}    |   8 +-
 arch/arm/mach-s3c/irq-s3c24xx-fiq-exports.c   |   9 +
 .../arm/mach-s3c/irq-s3c24xx-fiq.S            |  10 +-
 .../arm/mach-s3c}/irq-s3c24xx.c               |  23 +-
 .../arm/{mach-s3c64xx => mach-s3c}/irq-uart.h |   0
 .../include/plat => mach-s3c}/keypad.h        |   0
 .../mach-amlm5900.c                           |  37 ++-
 .../{mach-s3c24xx => mach-s3c}/mach-anubis.c  |  14 +-
 .../{mach-s3c64xx => mach-s3c}/mach-anw6410.c |  17 +-
 .../mach-at2440evb.c                          |  28 ++-
 .../{mach-s3c24xx => mach-s3c}/mach-bast.c    |  22 +-
 .../mach-crag6410-module.c                    |   2 +-
 .../mach-crag6410.c                           |  27 ++-
 .../{mach-s3c24xx => mach-s3c}/mach-gta02.c   |  57 ++++-
 .../{mach-s3c24xx => mach-s3c}/mach-h1940.c   |  65 ++++--
 .../arm/{mach-s3c64xx => mach-s3c}/mach-hmt.c |  15 +-
 .../{mach-s3c24xx => mach-s3c}/mach-jive.c    |  27 ++-
 .../mach-mini2440.c                           |  48 ++--
 .../mach-mini6410.c                           |  22 +-
 .../arm/{mach-s3c24xx => mach-s3c}/mach-n30.c |  40 +++-
 .../arm/{mach-s3c64xx => mach-s3c}/mach-ncp.c |  13 +-
 .../mach-nexcoder.c                           |  20 +-
 .../mach-osiris-dvs.c                         |   4 +-
 .../{mach-s3c24xx => mach-s3c}/mach-osiris.c  |  22 +-
 .../{mach-s3c24xx => mach-s3c}/mach-otom.c    |  17 +-
 .../{mach-s3c24xx => mach-s3c}/mach-qt2410.c  |  37 ++-
 .../mach-real6410.c                           |  18 +-
 .../{mach-s3c24xx => mach-s3c}/mach-rx1950.c  |  57 +++--
 .../{mach-s3c24xx => mach-s3c}/mach-rx3715.c  |  26 ++-
 .../mach-s3c2416-dt.c                         |   8 +-
 .../mach-s3c64xx-dt.c                         |   6 +-
 .../{mach-s3c64xx => mach-s3c}/mach-smartq.c  |  18 +-
 .../{mach-s3c64xx => mach-s3c}/mach-smartq.h  |   0
 .../{mach-s3c64xx => mach-s3c}/mach-smartq5.c |  18 +-
 .../{mach-s3c64xx => mach-s3c}/mach-smartq7.c |  18 +-
 .../mach-smdk2410.c                           |  14 +-
 .../mach-smdk2413.c                           |  21 +-
 .../mach-smdk2416.c                           |  23 +-
 .../mach-smdk2440.c                           |  25 ++-
 .../mach-smdk2443.c                           |  14 +-
 .../mach-smdk6400.c                           |  13 +-
 .../mach-smdk6410.c                           |  23 +-
 .../mach-tct_hammer.c                         |  24 +-
 .../{mach-s3c24xx => mach-s3c}/mach-vr1000.c  |  20 +-
 .../{mach-s3c24xx => mach-s3c}/mach-vstms.c   |  20 +-
 .../include/plat => mach-s3c}/map-s3c.h       |  12 +-
 .../mach/map.h => mach-s3c/map-s3c24xx.h}     |   6 +-
 .../mach/map.h => mach-s3c/map-s3c64xx.h}     |   4 +-
 .../include/plat => mach-s3c}/map-s5p.h       |   4 +-
 arch/arm/mach-s3c/map.h                       |   7 +
 .../{mach-s3c24xx => mach-s3c}/nand-core.h    |   0
 .../{mach-s3c64xx => mach-s3c}/onenand-core.h |   0
 arch/arm/{mach-s3c24xx => mach-s3c}/osiris.h  |   0
 arch/arm/{mach-s3c24xx => mach-s3c}/otom.h    |   0
 arch/arm/{mach-s3c64xx => mach-s3c}/pl080.c   |   4 +-
 .../{plat-samsung => mach-s3c}/platformdata.c |   4 +-
 .../{mach-s3c24xx => mach-s3c}/pll-s3c2410.c  |   4 +-
 .../pll-s3c2440-12000000.c                    |   4 +-
 .../pll-s3c2440-16934400.c                    |   4 +-
 .../{plat-samsung => mach-s3c}/pm-common.c    |   2 +-
 arch/arm/mach-s3c/pm-common.h                 |  40 ++++
 .../pm-core.h => mach-s3c/pm-core-s3c24xx.h}  |   8 +-
 .../pm-core.h => mach-s3c/pm-core-s3c64xx.h}  |  50 +----
 arch/arm/mach-s3c/pm-core.h                   |   7 +
 arch/arm/{plat-samsung => mach-s3c}/pm-gpio.c |   6 +-
 .../arm/{mach-s3c24xx => mach-s3c}/pm-h1940.S |   5 +-
 .../{mach-s3c24xx => mach-s3c}/pm-s3c2410.c   |  11 +-
 .../{mach-s3c24xx => mach-s3c}/pm-s3c2412.c   |  11 +-
 .../{mach-s3c24xx => mach-s3c}/pm-s3c2416.c   |   6 +-
 .../pm.c => mach-s3c/pm-s3c24xx.c}            |  12 +-
 .../pm.c => mach-s3c/pm-s3c64xx.c}            |  66 +++++-
 arch/arm/{plat-samsung => mach-s3c}/pm.c      |  20 +-
 .../include/plat => mach-s3c}/pm.h            |   2 +-
 .../include/plat => mach-s3c}/pwm-core.h      |   0
 .../include/plat => mach-s3c}/regs-adc.h      |   0
 .../regs-clock-s3c24xx.h}                     |   2 +
 .../regs-clock-s3c64xx.h}                     |   0
 arch/arm/mach-s3c/regs-clock.h                |   7 +
 .../arm/{mach-s3c24xx => mach-s3c}/regs-dsc.h |   0
 .../regs-gpio-memport.h                       |   0
 .../regs-gpio-s3c24xx.h}                      |   2 +
 .../regs-gpio-s3c64xx.h}                      |   0
 arch/arm/mach-s3c/regs-gpio.h                 |   7 +
 .../regs-irq-s3c24xx.h}                       |   2 +
 .../regs-irq-s3c64xx.h}                       |   0
 arch/arm/mach-s3c/regs-irq.h                  |   7 +
 .../include/plat => mach-s3c}/regs-irqtype.h  |   0
 .../arm/{mach-s3c24xx => mach-s3c}/regs-mem.h |   2 +
 .../{mach-s3c64xx => mach-s3c}/regs-modem.h   |   0
 .../mach => mach-s3c}/regs-s3c2443-clock.h    |  50 +++++
 .../{mach-s3c64xx => mach-s3c}/regs-srom.h    |   0
 .../arm/{mach-s3c64xx => mach-s3c}/regs-sys.h |   0
 .../regs-syscon-power.h                       |   0
 .../regs-usb-hsotg-phy.h                      |   0
 .../include/mach => mach-s3c}/rtc-core.h      |   0
 arch/arm/{mach-s3c24xx => mach-s3c}/s3c2410.c |  21 +-
 .../s3c2412-power.h                           |   0
 arch/arm/{mach-s3c24xx => mach-s3c}/s3c2412.c |  16 +-
 .../include/mach => mach-s3c}/s3c2412.h       |   2 +
 arch/arm/{mach-s3c24xx => mach-s3c}/s3c2416.c |  28 +--
 arch/arm/{mach-s3c24xx => mach-s3c}/s3c2440.c |  17 +-
 arch/arm/{mach-s3c24xx => mach-s3c}/s3c2442.c |  17 +-
 arch/arm/{mach-s3c24xx => mach-s3c}/s3c2443.c |  21 +-
 arch/arm/{mach-s3c24xx => mach-s3c}/s3c244x.c |  16 +-
 .../common.c => mach-s3c/s3c24xx.c}           |  21 +-
 .../common.h => mach-s3c/s3c24xx.h}           |   1 +
 arch/arm/{mach-s3c64xx => mach-s3c}/s3c6400.c |  14 +-
 arch/arm/{mach-s3c64xx => mach-s3c}/s3c6410.c |  17 +-
 .../common.c => mach-s3c/s3c64xx.c}           |  24 +-
 .../common.h => mach-s3c/s3c64xx.h}           |   0
 .../include/plat => mach-s3c}/samsung-time.h  |   0
 .../include/plat => mach-s3c}/sdhci.h         |   2 +-
 .../{mach-s3c24xx => mach-s3c}/setup-camif.c  |   4 +-
 .../setup-fb-24bpp.c                          |   6 +-
 .../{mach-s3c24xx => mach-s3c}/setup-i2c.c    |   7 +-
 .../{mach-s3c64xx => mach-s3c}/setup-i2c0.c   |   4 +-
 .../{mach-s3c64xx => mach-s3c}/setup-i2c1.c   |   4 +-
 .../{mach-s3c64xx => mach-s3c}/setup-ide.c    |   8 +-
 .../{mach-s3c64xx => mach-s3c}/setup-keypad.c |   6 +-
 .../setup-sdhci-gpio-s3c24xx.c}               |   6 +-
 .../setup-sdhci-gpio-s3c64xx.c}               |   6 +-
 .../setup-spi-s3c24xx.c}                      |   6 +-
 .../setup-spi-s3c64xx.c}                      |   4 +-
 .../arm/{mach-s3c24xx => mach-s3c}/setup-ts.c |   5 +-
 .../setup-usb-phy.c                           |   6 +-
 .../{mach-s3c24xx => mach-s3c}/simtec-audio.c |  11 +-
 .../{mach-s3c24xx => mach-s3c}/simtec-nor.c   |   2 +-
 .../{mach-s3c24xx => mach-s3c}/simtec-pm.c    |   8 +-
 .../{mach-s3c24xx => mach-s3c}/simtec-usb.c   |   6 +-
 arch/arm/{mach-s3c24xx => mach-s3c}/simtec.h  |   0
 .../sleep-s3c2410.S                           |   7 +-
 .../sleep-s3c2412.S                           |   5 +-
 .../sleep.S => mach-s3c/sleep-s3c24xx.S}      |   7 +-
 .../sleep.S => mach-s3c/sleep-s3c64xx.S}      |   4 +-
 .../arm/{mach-s3c24xx => mach-s3c}/spi-core.h |   0
 .../include/plat => mach-s3c}/usb-phy.h       |   0
 arch/arm/{mach-s3c24xx => mach-s3c}/vr1000.h  |   0
 .../{plat-samsung => mach-s3c}/wakeup-mask.c  |   4 +-
 .../include/plat => mach-s3c}/wakeup-mask.h   |   0
 .../watchdog-reset.c                          |   0
 .../watchdog-reset.h                          |   0
 arch/arm/mach-s3c24xx/include/mach/fb.h       |   2 -
 arch/arm/mach-s3c24xx/include/mach/io.h       | 212 ------------------
 arch/arm/mach-s3c64xx/include/mach/hardware.h |  17 --
 arch/arm/mach-s5pv210/Kconfig                 |   1 +
 arch/arm/mach-s5pv210/Makefile                |   7 -
 arch/arm/mach-s5pv210/pm.c                    |  51 ++++-
 arch/arm/mach-s5pv210/regs-clock.h            |   2 +-
 arch/arm/mach-s5pv210/s5pv210.c               |   2 -
 drivers/clk/samsung/clk-s3c2410-dclk.c        |  10 +-
 drivers/cpufreq/s3c2410-cpufreq.c             |  10 +-
 drivers/cpufreq/s3c2412-cpufreq.c             |  44 ++--
 drivers/cpufreq/s3c2440-cpufreq.c             |  29 ++-
 drivers/cpufreq/s3c24xx-cpufreq-debugfs.c     |   2 +-
 drivers/cpufreq/s3c24xx-cpufreq.c             |  14 +-
 drivers/hwmon/s3c-hwmon.c                     |   2 +-
 drivers/input/touchscreen/s3c2410_ts.c        |  37 ++-
 drivers/irqchip/Makefile                      |   1 -
 drivers/leds/leds-s3c24xx.c                   |   7 -
 drivers/mmc/host/Kconfig                      |   2 +-
 drivers/mmc/host/s3cmci.c                     |  72 ++----
 drivers/power/supply/s3c_adc_battery.c        |   2 +-
 drivers/pwm/Kconfig                           |   2 +-
 drivers/soc/samsung/Kconfig                   |  48 +++-
 drivers/soc/samsung/Makefile                  |   3 +
 .../soc/samsung/s3c-pm-check.c                |   2 +-
 .../soc/samsung/s3c-pm-debug.c                |  26 +--
 drivers/spi/Kconfig                           |   2 +-
 drivers/spi/Makefile                          |   1 -
 .../spi/spi-s3c24xx-regs.h                    |   3 +-
 drivers/spi/spi-s3c24xx.c                     |  28 +--
 drivers/tty/serial/Kconfig                    |   2 +-
 drivers/usb/gadget/udc/s3c-hsudc.c            |  55 +----
 drivers/usb/gadget/udc/s3c2410_udc.c          |  31 +--
 drivers/usb/gadget/udc/s3c2410_udc.h          |   1 +
 .../usb/gadget/udc/s3c2410_udc_regs.h         |   2 +
 .../video/fbdev/s3c2410fb-regs-lcd.h          |  28 +--
 drivers/video/fbdev/s3c2410fb.c               |  16 +-
 .../linux/platform_data}/fb-s3c2410.h         |  33 ++-
 include/linux/platform_data/mmc-s3cmci.h      |   2 +
 include/linux/platform_data/s3c-hsudc.h       |   2 +
 .../linux/soc/samsung/s3c-adc.h               |   0
 .../linux/soc/samsung/s3c-cpu-freq.h          |   0
 .../linux/soc/samsung/s3c-cpufreq-core.h      |  10 +-
 .../linux/soc/samsung/s3c-pm.h                |  69 +++---
 .../linux/spi/s3c24xx-fiq.h                   |   5 +
 include/linux/spi/s3c24xx.h                   |   2 +-
 sound/soc/samsung/Kconfig                     |   2 +-
 sound/soc/samsung/h1940_uda1380.c             |  71 ++----
 sound/soc/samsung/neo1973_wm8753.c            |  85 +++----
 sound/soc/samsung/rx1950_uda1380.c            |  72 ++----
 sound/soc/samsung/s3c-i2s-v2.c                |   3 +-
 sound/soc/samsung/s3c-i2s-v2.h                |   3 +-
 sound/soc/samsung/s3c2412-i2s.c               |   9 +-
 sound/soc/samsung/s3c24xx-i2s.c               |   7 -
 259 files changed, 1716 insertions(+), 1648 deletions(-)
 delete mode 100644 arch/arm/mach-exynos/include/mach/map.h
 rename arch/arm/{plat-samsung => mach-s3c}/Kconfig (73%)
 rename arch/arm/{mach-s3c24xx/Kconfig => mach-s3c/Kconfig.s3c24xx} (100%)
 rename arch/arm/{mach-s3c64xx/Kconfig => mach-s3c/Kconfig.s3c64xx} (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/Makefile (67%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/Makefile.boot (100%)
 rename arch/arm/{mach-s3c24xx/Makefile => mach-s3c/Makefile.s3c24xx} (86%)
 rename arch/arm/{mach-s3c64xx/Makefile => mach-s3c/Makefile.s3c64xx} (83%)
 rename arch/arm/{plat-samsung/include/plat => mach-s3c}/adc-core.h (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/adc.c (99%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/anubis.h (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/ata-core.h (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/backlight.h (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/bast-ide.c (97%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/bast-irq.c (95%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/bast.h (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/common-smdk.c (93%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/common-smdk.h (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/cpu.c (62%)
 rename arch/arm/{plat-samsung/include/plat => mach-s3c}/cpu.h (91%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/cpufreq-utils.c (70%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/cpuidle.c (96%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/crag6410.h (95%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/dev-audio.c (97%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/dev-backlight.c (98%)
 rename arch/arm/{mach-s3c64xx/dev-uart.c => mach-s3c/dev-uart-s3c64xx.c} (95%)
 rename arch/arm/{plat-samsung => mach-s3c}/dev-uart.c (97%)
 rename arch/arm/{plat-samsung => mach-s3c}/devs.c (96%)
 rename arch/arm/{plat-samsung/include/plat => mach-s3c}/devs.h (100%)
 rename arch/arm/{mach-s3c24xx/include/mach/dma.h => mach-s3c/dma-s3c24xx.h} (100%)
 rename arch/arm/{mach-s3c64xx/include/mach/dma.h => mach-s3c/dma-s3c64xx.h} (100%)
 create mode 100644 arch/arm/mach-s3c/dma.h
 rename arch/arm/{mach-s3c24xx => mach-s3c}/fb-core.h (100%)
 rename arch/arm/{plat-samsung/include/plat => mach-s3c}/fb.h (100%)
 rename arch/arm/{plat-samsung/include/plat => mach-s3c}/gpio-cfg-helpers.h (100%)
 rename arch/arm/{plat-samsung/include/plat => mach-s3c}/gpio-cfg.h (100%)
 rename arch/arm/{plat-samsung/include/plat => mach-s3c}/gpio-core.h (99%)
 rename arch/arm/{mach-s3c24xx/include/mach/gpio-samsung.h => mach-s3c/gpio-samsung-s3c24xx.h} (99%)
 rename arch/arm/{mach-s3c64xx/include/mach/gpio-samsung.h => mach-s3c/gpio-samsung-s3c64xx.h} (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/gpio-samsung.c (99%)
 create mode 100644 arch/arm/mach-s3c/gpio-samsung.h
 rename arch/arm/{mach-s3c24xx => mach-s3c}/gta02.h (94%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/h1940-bluetooth.c (96%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/h1940.h (100%)
 rename arch/arm/{mach-s3c24xx/include/mach => mach-s3c}/hardware.h (76%)
 rename arch/arm/{plat-samsung/include/plat => mach-s3c}/iic-core.h (100%)
 create mode 100644 arch/arm/mach-s3c/include/mach/io.h
 rename arch/arm/{mach-s3c24xx/include/mach/irqs.h => mach-s3c/include/mach/irqs-s3c24xx.h} (100%)
 rename arch/arm/{mach-s3c64xx/include/mach/irqs.h => mach-s3c/include/mach/irqs-s3c64xx.h} (100%)
 create mode 100644 arch/arm/mach-s3c/include/mach/irqs.h
 rename arch/arm/{plat-samsung/include/plat => mach-s3c/include/mach}/map-base.h (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/init.c (98%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/iotiming-s3c2410.c (97%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/iotiming-s3c2412.c (98%)
 rename arch/arm/{mach-s3c24xx/irq-pm.c => mach-s3c/irq-pm-s3c24xx.c} (93%)
 rename arch/arm/{mach-s3c64xx/irq-pm.c => mach-s3c/irq-pm-s3c64xx.c} (97%)
 create mode 100644 arch/arm/mach-s3c/irq-s3c24xx-fiq-exports.c
 rename drivers/spi/spi-s3c24xx-fiq.S => arch/arm/mach-s3c/irq-s3c24xx-fiq.S (94%)
 rename {drivers/irqchip => arch/arm/mach-s3c}/irq-s3c24xx.c (99%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/irq-uart.h (100%)
 rename arch/arm/{plat-samsung/include/plat => mach-s3c}/keypad.h (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-amlm5900.c (84%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-anubis.c (97%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-anw6410.c (96%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-at2440evb.c (88%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-bast.c (98%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-crag6410-module.c (99%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-crag6410.c (98%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-gta02.c (90%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-h1940.c (92%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-hmt.c (97%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-jive.c (97%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-mini2440.c (93%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-mini6410.c (97%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-n30.c (93%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-ncp.c (92%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-nexcoder.c (92%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-osiris-dvs.c (98%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-osiris.c (97%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-otom.c (89%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-qt2410.c (88%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-real6410.c (97%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-rx1950.c (93%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-rx3715.c (90%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-s3c2416-dt.c (92%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-s3c64xx-dt.c (95%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-smartq.c (97%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-smartq.h (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-smartq5.c (93%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-smartq7.c (94%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-smdk2410.c (89%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-smdk2413.c (90%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-smdk2416.c (95%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-smdk2440.c (89%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-smdk2443.c (93%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-smdk6400.c (92%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-smdk6410.c (98%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-tct_hammer.c (82%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-vr1000.c (95%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-vstms.c (90%)
 rename arch/arm/{plat-samsung/include/plat => mach-s3c}/map-s3c.h (87%)
 rename arch/arm/{mach-s3c24xx/include/mach/map.h => mach-s3c/map-s3c24xx.h} (97%)
 rename arch/arm/{mach-s3c64xx/include/mach/map.h => mach-s3c/map-s3c64xx.h} (98%)
 rename arch/arm/{plat-samsung/include/plat => mach-s3c}/map-s5p.h (85%)
 create mode 100644 arch/arm/mach-s3c/map.h
 rename arch/arm/{mach-s3c24xx => mach-s3c}/nand-core.h (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/onenand-core.h (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/osiris.h (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/otom.h (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/pl080.c (99%)
 rename arch/arm/{plat-samsung => mach-s3c}/platformdata.c (96%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/pll-s3c2410.c (97%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/pll-s3c2440-12000000.c (97%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/pll-s3c2440-16934400.c (98%)
 rename arch/arm/{plat-samsung => mach-s3c}/pm-common.c (98%)
 create mode 100644 arch/arm/mach-s3c/pm-common.h
 rename arch/arm/{mach-s3c24xx/include/mach/pm-core.h => mach-s3c/pm-core-s3c24xx.h} (95%)
 rename arch/arm/{mach-s3c64xx/include/mach/pm-core.h => mach-s3c/pm-core-s3c64xx.h} (58%)
 create mode 100644 arch/arm/mach-s3c/pm-core.h
 rename arch/arm/{plat-samsung => mach-s3c}/pm-gpio.c (99%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/pm-h1940.S (80%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/pm-s3c2410.c (96%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/pm-s3c2412.c (95%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/pm-s3c2416.c (95%)
 rename arch/arm/{mach-s3c24xx/pm.c => mach-s3c/pm-s3c24xx.c} (94%)
 rename arch/arm/{mach-s3c64xx/pm.c => mach-s3c/pm-s3c64xx.c} (83%)
 rename arch/arm/{plat-samsung => mach-s3c}/pm.c (94%)
 rename arch/arm/{plat-samsung/include/plat => mach-s3c}/pm.h (98%)
 rename arch/arm/{plat-samsung/include/plat => mach-s3c}/pwm-core.h (100%)
 rename arch/arm/{plat-samsung/include/plat => mach-s3c}/regs-adc.h (100%)
 rename arch/arm/{mach-s3c24xx/include/mach/regs-clock.h => mach-s3c/regs-clock-s3c24xx.h} (99%)
 rename arch/arm/{mach-s3c64xx/include/mach/regs-clock.h => mach-s3c/regs-clock-s3c64xx.h} (100%)
 create mode 100644 arch/arm/mach-s3c/regs-clock.h
 rename arch/arm/{mach-s3c24xx => mach-s3c}/regs-dsc.h (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/regs-gpio-memport.h (100%)
 rename arch/arm/{mach-s3c24xx/include/mach/regs-gpio.h => mach-s3c/regs-gpio-s3c24xx.h} (99%)
 rename arch/arm/{mach-s3c64xx/include/mach/regs-gpio.h => mach-s3c/regs-gpio-s3c64xx.h} (100%)
 create mode 100644 arch/arm/mach-s3c/regs-gpio.h
 rename arch/arm/{mach-s3c24xx/include/mach/regs-irq.h => mach-s3c/regs-irq-s3c24xx.h} (98%)
 rename arch/arm/{mach-s3c64xx/include/mach/regs-irq.h => mach-s3c/regs-irq-s3c64xx.h} (100%)
 create mode 100644 arch/arm/mach-s3c/regs-irq.h
 rename arch/arm/{plat-samsung/include/plat => mach-s3c}/regs-irqtype.h (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/regs-mem.h (98%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/regs-modem.h (100%)
 rename arch/arm/{mach-s3c24xx/include/mach => mach-s3c}/regs-s3c2443-clock.h (81%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/regs-srom.h (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/regs-sys.h (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/regs-syscon-power.h (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/regs-usb-hsotg-phy.h (100%)
 rename arch/arm/{mach-s3c24xx/include/mach => mach-s3c}/rtc-core.h (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/s3c2410.c (90%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/s3c2412-power.h (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/s3c2412.c (94%)
 rename arch/arm/{mach-s3c24xx/include/mach => mach-s3c}/s3c2412.h (96%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/s3c2416.c (88%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/s3c2440.c (85%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/s3c2442.c (82%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/s3c2443.c (89%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/s3c244x.c (93%)
 rename arch/arm/{mach-s3c24xx/common.c => mach-s3c/s3c24xx.c} (98%)
 rename arch/arm/{mach-s3c24xx/common.h => mach-s3c/s3c24xx.h} (99%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/s3c6400.c (89%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/s3c6410.c (89%)
 rename arch/arm/{mach-s3c64xx/common.c => mach-s3c/s3c64xx.c} (97%)
 rename arch/arm/{mach-s3c64xx/common.h => mach-s3c/s3c64xx.h} (100%)
 rename arch/arm/{plat-samsung/include/plat => mach-s3c}/samsung-time.h (100%)
 rename arch/arm/{plat-samsung/include/plat => mach-s3c}/sdhci.h (99%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/setup-camif.c (95%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/setup-fb-24bpp.c (86%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/setup-i2c.c (79%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/setup-i2c0.c (90%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/setup-i2c1.c (90%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/setup-ide.c (89%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/setup-keypad.c (86%)
 rename arch/arm/{mach-s3c24xx/setup-sdhci-gpio.c => mach-s3c/setup-sdhci-gpio-s3c24xx.c} (90%)
 rename arch/arm/{mach-s3c64xx/setup-sdhci-gpio.c => mach-s3c/setup-sdhci-gpio-s3c64xx.c} (95%)
 rename arch/arm/{mach-s3c24xx/setup-spi.c => mach-s3c/setup-spi-s3c24xx.c} (85%)
 rename arch/arm/{mach-s3c64xx/setup-spi.c => mach-s3c/setup-spi-s3c64xx.c} (89%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/setup-ts.c (88%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/setup-usb-phy.c (96%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/simtec-audio.c (86%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/simtec-nor.c (98%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/simtec-pm.c (92%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/simtec-usb.c (96%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/simtec.h (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/sleep-s3c2410.S (92%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/sleep-s3c2412.S (93%)
 rename arch/arm/{mach-s3c24xx/sleep.S => mach-s3c/sleep-s3c24xx.S} (92%)
 rename arch/arm/{mach-s3c64xx/sleep.S => mach-s3c/sleep-s3c64xx.S} (97%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/spi-core.h (100%)
 rename arch/arm/{plat-samsung/include/plat => mach-s3c}/usb-phy.h (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/vr1000.h (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/wakeup-mask.c (94%)
 rename arch/arm/{plat-samsung/include/plat => mach-s3c}/wakeup-mask.h (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/watchdog-reset.c (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/watchdog-reset.h (100%)
 delete mode 100644 arch/arm/mach-s3c24xx/include/mach/fb.h
 delete mode 100644 arch/arm/mach-s3c24xx/include/mach/io.h
 delete mode 100644 arch/arm/mach-s3c64xx/include/mach/hardware.h
 rename arch/arm/plat-samsung/pm-check.c => drivers/soc/samsung/s3c-pm-check.c (99%)
 rename arch/arm/plat-samsung/pm-debug.c => drivers/soc/samsung/s3c-pm-debug.c (78%)
 rename arch/arm/plat-samsung/include/plat/regs-spi.h => drivers/spi/spi-s3c24xx-regs.h (95%)
 rename arch/arm/plat-samsung/include/plat/regs-udc.h => drivers/usb/gadget/udc/s3c2410_udc_regs.h (99%)
 rename arch/arm/mach-s3c24xx/include/mach/regs-lcd.h => drivers/video/fbdev/s3c2410fb-regs-lcd.h (84%)
 rename {arch/arm/plat-samsung/include/plat => include/linux/platform_data}/fb-s3c2410.h (57%)
 rename arch/arm/plat-samsung/include/plat/adc.h => include/linux/soc/samsung/s3c-adc.h (100%)
 rename arch/arm/plat-samsung/include/plat/cpu-freq.h => include/linux/soc/samsung/s3c-cpu-freq.h (100%)
 rename arch/arm/plat-samsung/include/plat/cpu-freq-core.h => include/linux/soc/samsung/s3c-cpufreq-core.h (96%)
 rename arch/arm/plat-samsung/include/plat/pm-common.h => include/linux/soc/samsung/s3c-pm.h (55%)
 rename drivers/spi/spi-s3c24xx-fiq.h => include/linux/spi/s3c24xx-fiq.h (78%)

Cc: linux-kernel@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-samsung-soc@vger.kernel.org
Cc: linux-pm@vger.kernel.org
Cc: patches@opensource.cirrus.com
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-clk@vger.kernel.org
Cc: linux-hwmon@vger.kernel.org
Cc: linux-input@vger.kernel.org
Cc: linux-leds@vger.kernel.org
Cc: linux-mmc@vger.kernel.org
Cc: linux-pwm@vger.kernel.org
Cc: linux-spi@vger.kernel.org
Cc: linux-serial@vger.kernel.org
Cc: linux-usb@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: linux-fbdev@vger.kernel.org
Cc: alsa-devel@alsa-project.org
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
