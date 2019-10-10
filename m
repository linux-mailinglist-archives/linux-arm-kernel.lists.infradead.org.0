Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86EB2D332A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 23:07:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hPBQs+7bwmHdGcToNtitTo4ppZDgAHEFo0u2rhxzrD8=; b=SE0yxJBB23sehR
	/bFuvabTGrKWlFXoPzkd9GnDMpVjs3/Ia3V5Qsm7OeAHtHosBNcbv6nqMM53N1O7ONjbHZmFifuPd
	1U1cqrEbKwMY3f6X3sRjJ8dyO3vmu/mVGVe1QH/Bvt8dgLNrJq7OxLS1ODPQa1acaIvJv9TIRzF6g
	BDyvf8BcVToPofrMtQJhZboETdGofSA3HUM8wP1yWdzlwG0j+EFqG4CiCXbV0pfCOoLd6CQelSl73
	jN3S1jSATmEj55R+AipZz8XF+Uk94zH6S8qOD5bS8gfkwa/TeUq4yN9opxPzcSUA2gU7Yoe8xzRSS
	MwJG9whhSqqzwRnOZIQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIfei-0007OF-34; Thu, 10 Oct 2019 21:07:28 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfeQ-0007NK-0l
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 21:07:16 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MFbeI-1iJE8L1ihi-00H6Y7; Thu, 10 Oct 2019 23:07:07 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kukjin Kim <kgene@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH 35/36] ARM: s3c: move into a common directory
Date: Thu, 10 Oct 2019 23:07:04 +0200
Message-Id: <20191010210704.2453990-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191010202802.1132272-1-arnd@arndb.de>
References: <20191010202802.1132272-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:+In/1WxD5bGB5U7GjVUw4b9Bt1y16W/e8GDMGYAtPw4K1zWRjKl
 tVUp8jXWHFA0FNWnRGy4RCDjTk1iXLSAmwBU+LLPKXbzOJpv+ZzAIpt7NKyfQY49BOtwgWX
 hng+ceAxBDveqpSXKsceo85NF0Mha8VsrsByyy0rVmQcC+VZ9TZQE4kANEVlH2D4vlC+vQM
 hQqAcuh4/Gn58pyMMiCXA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:OCIW1doTn7Y=:hJe48A3cieN5jEB7QZITgi
 fC8WfBWffH5rYFXM3pM3TS23VJ2Q91x8HE5+JefVmr9bXz//koj0LoiikKRuz0G06FbNjdupj
 jLNXKCfXalDfgIJ1uPFE/PwoifszjBERQ2TJWDuwUuCsgP2Wl2/6Y+h+Fqj3bjud+LLSgAR6T
 4/1T+saMb3x15n65AFpsFTQcDK72HEwFBcV5fYw9OpXjBDCbi6Uju1SeBEmZ+Ab+dOeUJ5GU8
 C4KBFk2aVd52LKiNubJuRsDlG42/VQT428lnnIhoVm0QRLcHZ3ZND/9Ae8fhlLycf2dEDD2ya
 dR2ASqrXd0x15RAuInMO40KsUC6iI/p03qF0CPXA/t2GY5C8dqrRwb92z+p6N7N0iXPXGGEk2
 DfBNtIgiz8b0CThvE4c0KSD4QHlxhp78O+eztdKhz2r5mVzVXaZ4b0BNFzTegcSg+9XwoX5my
 2GaoXYO0LVnKYCKCoWqkRPUCHjzI3Zvk+y6oJN67DRlpt6NHj6aqH4D+Ic9WsUgKWPrUxksyB
 bzM3z9ng+1dAtVNntV9lcFPnag8JrPFh/p8hQQsc2Ct3SUGD8z5YJnvjSnk/ure/y6vOyU7dK
 NIKYAfT+zRUzOM1qVRcpptoo6Ju7LLfKNnSNdHSnTbtqlmunb+evVHUW72M4a5UFRPo3cUKyk
 FgrH7AtEH+0MD+HkJNMwXDMunaAqbkyAmj1ps6kxNpmwTgPRqddrre3fhBxEDF4khgBVY0ZVl
 hBg9A87b3JrgKxMlSoT11zp6khIrhJxVT7LESWeXVeubqdoIZs8U4Q5rfCOpCw4i9SyPeFQ+F
 yTRQ9KTzTfEYsidj4lTDAgHWZHQGrFY6xfVV1z8XBEB1dys5wGlI3488bfHV+jwj/K/SZ1s9v
 LQhHJWNkqryhsHMZ4hFA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_140710_678393_8EEDF388 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
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
Cc: linus.walleij@linaro.org, linux-samsung-soc@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

s3c24xx and s3c64xx have a lot in common, but are split across three
separate directories, which makes the interaction of the header files
more complicated than necessary.

Move all three directories into a new mach-s3c, with a minimal
set of changes to each file.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 MAINTAINERS                                      | 16 +++++++---------
 arch/arm/Kconfig                                 |  5 +----
 arch/arm/Makefile                                |  5 +----
 arch/arm/{plat-samsung => mach-s3c}/Kconfig      |  3 +++
 .../Kconfig => mach-s3c/Kconfig.s3c24xx}         |  0
 .../Kconfig => mach-s3c/Kconfig.s3c64xx}         |  0
 arch/arm/{plat-samsung => mach-s3c}/Makefile     |  9 ++++++++-
 .../arm/{mach-s3c24xx => mach-s3c}/Makefile.boot |  0
 .../Makefile => mach-s3c/Makefile.s3c24xx}       | 10 +++++-----
 .../Makefile => mach-s3c/Makefile.s3c64xx}       | 14 +++++++-------
 arch/arm/{plat-samsung => mach-s3c}/adc.c        |  0
 arch/arm/{mach-s3c24xx => mach-s3c}/anubis.h     |  0
 arch/arm/{mach-s3c64xx => mach-s3c}/ata-core.h   |  0
 arch/arm/{mach-s3c64xx => mach-s3c}/backlight.h  |  0
 arch/arm/{mach-s3c24xx => mach-s3c}/bast-ide.c   |  0
 arch/arm/{mach-s3c24xx => mach-s3c}/bast-irq.c   |  0
 arch/arm/{mach-s3c24xx => mach-s3c}/bast.h       |  0
 .../arm/{mach-s3c24xx => mach-s3c}/common-smdk.c |  0
 .../arm/{mach-s3c24xx => mach-s3c}/common-smdk.h |  0
 arch/arm/{plat-samsung => mach-s3c}/cpu.c        |  0
 .../{mach-s3c24xx => mach-s3c}/cpufreq-utils.c   |  0
 arch/arm/{mach-s3c64xx => mach-s3c}/cpuidle.c    |  0
 arch/arm/{mach-s3c64xx => mach-s3c}/crag6410.h   |  0
 arch/arm/{mach-s3c64xx => mach-s3c}/dev-audio.c  |  0
 .../{mach-s3c64xx => mach-s3c}/dev-backlight.c   |  0
 .../dev-uart.c => mach-s3c/dev-uart-s3c64xx.c}   |  0
 arch/arm/{plat-samsung => mach-s3c}/dev-uart.c   |  0
 arch/arm/{plat-samsung => mach-s3c}/devs.c       |  0
 arch/arm/{mach-s3c24xx => mach-s3c}/fb-core.h    |  0
 .../{plat-samsung => mach-s3c}/gpio-samsung.c    |  0
 arch/arm/{mach-s3c24xx => mach-s3c}/gta02.h      |  0
 .../{mach-s3c24xx => mach-s3c}/h1940-bluetooth.c |  0
 arch/arm/{mach-s3c24xx => mach-s3c}/h1940.h      |  0
 .../include/mach/dma-s3c24xx.h}                  |  0
 .../include/mach/dma-s3c64xx.h}                  |  0
 arch/arm/mach-s3c/include/mach/dma.h             |  7 +++++++
 .../include/mach/gpio-samsung-s3c24xx.h}         |  0
 .../include/mach/gpio-samsung-s3c64xx.h}         |  0
 arch/arm/mach-s3c/include/mach/gpio-samsung.h    |  7 +++++++
 .../include/mach/hardware.h                      |  0
 .../{mach-s3c24xx => mach-s3c}/include/mach/io.h |  0
 .../include/mach/irqs-s3c24xx.h}                 |  0
 .../include/mach/irqs-s3c64xx.h}                 |  0
 arch/arm/mach-s3c/include/mach/irqs.h            |  7 +++++++
 .../include/mach/map-s3c24xx.h}                  |  0
 .../include/mach/map-s3c64xx.h}                  |  0
 arch/arm/mach-s3c/include/mach/map.h             |  7 +++++++
 .../include/mach/pm-core-s3c24xx.h}              |  0
 .../include/mach/pm-core-s3c64xx.h}              |  0
 arch/arm/mach-s3c/include/mach/pm-core.h         |  7 +++++++
 .../include/mach/regs-clock-s3c24xx.h}           |  0
 .../include/mach/regs-clock-s3c64xx.h}           |  0
 arch/arm/mach-s3c/include/mach/regs-clock.h      |  7 +++++++
 .../include/mach/regs-gpio-s3c24xx.h}            |  0
 .../include/mach/regs-gpio-s3c64xx.h}            |  0
 arch/arm/mach-s3c/include/mach/regs-gpio.h       |  7 +++++++
 .../include/mach/regs-irq-s3c24xx.h}             |  0
 .../include/mach/regs-irq-s3c64xx.h}             |  0
 arch/arm/mach-s3c/include/mach/regs-irq.h        |  7 +++++++
 .../include/mach/regs-s3c2443-clock.h            |  0
 .../include/mach/rtc-core.h                      |  0
 .../include/mach/s3c2412.h                       |  0
 .../include/plat/adc-core.h                      |  0
 .../include/plat/cpu.h                           |  0
 .../include/plat/devs.h                          |  0
 .../{plat-samsung => mach-s3c}/include/plat/fb.h |  0
 .../include/plat/gpio-cfg-helpers.h              |  0
 .../include/plat/gpio-cfg.h                      |  0
 .../include/plat/gpio-core.h                     |  0
 .../include/plat/iic-core.h                      |  0
 .../include/plat/keypad.h                        |  0
 .../include/plat/map-base.h                      |  0
 .../include/plat/map-s3c.h                       |  0
 .../include/plat/map-s5p.h                       |  0
 .../include/plat/pm-common.h                     |  0
 .../{plat-samsung => mach-s3c}/include/plat/pm.h |  0
 .../include/plat/pwm-core.h                      |  0
 .../include/plat/regs-adc.h                      |  0
 .../include/plat/regs-irqtype.h                  |  0
 .../include/plat/samsung-time.h                  |  0
 .../include/plat/sdhci.h                         |  0
 .../include/plat/usb-phy.h                       |  0
 .../include/plat/wakeup-mask.h                   |  0
 arch/arm/{plat-samsung => mach-s3c}/init.c       |  0
 .../iotiming-s3c2410.c                           |  0
 .../iotiming-s3c2412.c                           |  0
 .../irq-pm.c => mach-s3c/irq-pm-s3c24xx.c}       |  0
 .../irq-pm.c => mach-s3c/irq-pm-s3c64xx.c}       |  0
 .../irq-s3c24xx-fiq-exports.c                    |  0
 .../{mach-s3c24xx => mach-s3c}/irq-s3c24xx-fiq.S |  0
 .../arm/{mach-s3c24xx => mach-s3c}/irq-s3c24xx.c |  0
 arch/arm/{mach-s3c64xx => mach-s3c}/irq-uart.h   |  0
 .../{mach-s3c24xx => mach-s3c}/mach-amlm5900.c   |  2 +-
 .../arm/{mach-s3c24xx => mach-s3c}/mach-anubis.c |  2 +-
 .../{mach-s3c64xx => mach-s3c}/mach-anw6410.c    |  2 +-
 .../{mach-s3c24xx => mach-s3c}/mach-at2440evb.c  |  2 +-
 arch/arm/{mach-s3c24xx => mach-s3c}/mach-bast.c  |  2 +-
 .../mach-crag6410-module.c                       |  0
 .../{mach-s3c64xx => mach-s3c}/mach-crag6410.c   |  2 +-
 arch/arm/{mach-s3c24xx => mach-s3c}/mach-gta02.c |  2 +-
 arch/arm/{mach-s3c24xx => mach-s3c}/mach-h1940.c |  2 +-
 arch/arm/{mach-s3c64xx => mach-s3c}/mach-hmt.c   |  2 +-
 arch/arm/{mach-s3c24xx => mach-s3c}/mach-jive.c  |  2 +-
 .../{mach-s3c24xx => mach-s3c}/mach-mini2440.c   |  2 +-
 .../{mach-s3c64xx => mach-s3c}/mach-mini6410.c   |  2 +-
 arch/arm/{mach-s3c24xx => mach-s3c}/mach-n30.c   |  2 +-
 arch/arm/{mach-s3c64xx => mach-s3c}/mach-ncp.c   |  2 +-
 .../{mach-s3c24xx => mach-s3c}/mach-nexcoder.c   |  2 +-
 .../{mach-s3c24xx => mach-s3c}/mach-osiris-dvs.c |  0
 .../arm/{mach-s3c24xx => mach-s3c}/mach-osiris.c |  2 +-
 arch/arm/{mach-s3c24xx => mach-s3c}/mach-otom.c  |  2 +-
 .../arm/{mach-s3c24xx => mach-s3c}/mach-qt2410.c |  2 +-
 .../{mach-s3c64xx => mach-s3c}/mach-real6410.c   |  2 +-
 .../arm/{mach-s3c24xx => mach-s3c}/mach-rx1950.c |  2 +-
 .../arm/{mach-s3c24xx => mach-s3c}/mach-rx3715.c |  2 +-
 .../{mach-s3c24xx => mach-s3c}/mach-s3c2416-dt.c |  2 +-
 .../{mach-s3c64xx => mach-s3c}/mach-s3c64xx-dt.c |  2 +-
 .../arm/{mach-s3c64xx => mach-s3c}/mach-smartq.c |  2 +-
 .../arm/{mach-s3c64xx => mach-s3c}/mach-smartq.h |  0
 .../{mach-s3c64xx => mach-s3c}/mach-smartq5.c    |  2 +-
 .../{mach-s3c64xx => mach-s3c}/mach-smartq7.c    |  2 +-
 .../{mach-s3c24xx => mach-s3c}/mach-smdk2410.c   |  2 +-
 .../{mach-s3c24xx => mach-s3c}/mach-smdk2413.c   |  2 +-
 .../{mach-s3c24xx => mach-s3c}/mach-smdk2416.c   |  2 +-
 .../{mach-s3c24xx => mach-s3c}/mach-smdk2440.c   |  2 +-
 .../{mach-s3c24xx => mach-s3c}/mach-smdk2443.c   |  2 +-
 .../{mach-s3c64xx => mach-s3c}/mach-smdk6400.c   |  2 +-
 .../{mach-s3c64xx => mach-s3c}/mach-smdk6410.c   |  2 +-
 .../{mach-s3c24xx => mach-s3c}/mach-tct_hammer.c |  2 +-
 .../arm/{mach-s3c24xx => mach-s3c}/mach-vr1000.c |  2 +-
 arch/arm/{mach-s3c24xx => mach-s3c}/mach-vstms.c |  2 +-
 arch/arm/{mach-s3c24xx => mach-s3c}/nand-core.h  |  0
 .../{mach-s3c64xx => mach-s3c}/onenand-core.h    |  0
 arch/arm/{mach-s3c24xx => mach-s3c}/osiris.h     |  0
 arch/arm/{mach-s3c24xx => mach-s3c}/otom.h       |  0
 arch/arm/{mach-s3c64xx => mach-s3c}/pl080.c      |  0
 .../{plat-samsung => mach-s3c}/platformdata.c    |  0
 .../arm/{mach-s3c24xx => mach-s3c}/pll-s3c2410.c |  0
 .../pll-s3c2440-12000000.c                       |  0
 .../pll-s3c2440-16934400.c                       |  0
 arch/arm/{plat-samsung => mach-s3c}/pm-common.c  |  0
 arch/arm/{plat-samsung => mach-s3c}/pm-gpio.c    |  0
 arch/arm/{mach-s3c24xx => mach-s3c}/pm-h1940.S   |  0
 arch/arm/{mach-s3c24xx => mach-s3c}/pm-s3c2410.c |  0
 arch/arm/{mach-s3c24xx => mach-s3c}/pm-s3c2412.c |  0
 arch/arm/{mach-s3c24xx => mach-s3c}/pm-s3c2416.c |  0
 .../{mach-s3c24xx/pm.c => mach-s3c/pm-s3c24xx.c} |  0
 .../{mach-s3c64xx/pm.c => mach-s3c/pm-s3c64xx.c} |  0
 arch/arm/{plat-samsung => mach-s3c}/pm.c         |  0
 arch/arm/{mach-s3c24xx => mach-s3c}/regs-dsc.h   |  0
 .../regs-gpio-memport.h                          |  0
 arch/arm/{mach-s3c24xx => mach-s3c}/regs-mem.h   |  0
 arch/arm/{mach-s3c64xx => mach-s3c}/regs-modem.h |  0
 arch/arm/{mach-s3c64xx => mach-s3c}/regs-srom.h  |  0
 arch/arm/{mach-s3c64xx => mach-s3c}/regs-sys.h   |  0
 .../regs-syscon-power.h                          |  0
 .../regs-usb-hsotg-phy.h                         |  0
 arch/arm/{mach-s3c24xx => mach-s3c}/s3c2410.c    |  2 +-
 .../{mach-s3c24xx => mach-s3c}/s3c2412-power.h   |  0
 arch/arm/{mach-s3c24xx => mach-s3c}/s3c2412.c    |  2 +-
 arch/arm/{mach-s3c24xx => mach-s3c}/s3c2416.c    |  2 +-
 arch/arm/{mach-s3c24xx => mach-s3c}/s3c2440.c    |  2 +-
 arch/arm/{mach-s3c24xx => mach-s3c}/s3c2442.c    |  2 +-
 arch/arm/{mach-s3c24xx => mach-s3c}/s3c2443.c    |  0
 arch/arm/{mach-s3c24xx => mach-s3c}/s3c244x.c    |  2 +-
 .../common.c => mach-s3c/s3c24xx.c}              |  2 +-
 .../common.h => mach-s3c/s3c24xx.h}              |  0
 arch/arm/{mach-s3c64xx => mach-s3c}/s3c6400.c    |  2 +-
 arch/arm/{mach-s3c64xx => mach-s3c}/s3c6410.c    |  2 +-
 .../common.c => mach-s3c/s3c64xx.c}              |  2 +-
 .../common.h => mach-s3c/s3c64xx.h}              |  0
 .../arm/{mach-s3c24xx => mach-s3c}/setup-camif.c |  0
 .../{mach-s3c64xx => mach-s3c}/setup-fb-24bpp.c  |  0
 arch/arm/{mach-s3c24xx => mach-s3c}/setup-i2c.c  |  0
 arch/arm/{mach-s3c64xx => mach-s3c}/setup-i2c0.c |  0
 arch/arm/{mach-s3c64xx => mach-s3c}/setup-i2c1.c |  0
 arch/arm/{mach-s3c64xx => mach-s3c}/setup-ide.c  |  0
 .../{mach-s3c64xx => mach-s3c}/setup-keypad.c    |  0
 .../setup-sdhci-gpio-s3c24xx.c}                  |  0
 .../setup-sdhci-gpio-s3c64xx.c}                  |  0
 .../setup-spi.c => mach-s3c/setup-spi-s3c24xx.c} |  0
 .../setup-spi.c => mach-s3c/setup-spi-s3c64xx.c} |  0
 arch/arm/{mach-s3c24xx => mach-s3c}/setup-ts.c   |  0
 .../{mach-s3c64xx => mach-s3c}/setup-usb-phy.c   |  0
 .../{mach-s3c24xx => mach-s3c}/simtec-audio.c    |  0
 arch/arm/{mach-s3c24xx => mach-s3c}/simtec-nor.c |  0
 arch/arm/{mach-s3c24xx => mach-s3c}/simtec-pm.c  |  0
 arch/arm/{mach-s3c24xx => mach-s3c}/simtec-usb.c |  0
 arch/arm/{mach-s3c24xx => mach-s3c}/simtec.h     |  0
 .../{mach-s3c24xx => mach-s3c}/sleep-s3c2410.S   |  0
 .../{mach-s3c24xx => mach-s3c}/sleep-s3c2412.S   |  0
 .../sleep.S => mach-s3c/sleep-s3c24xx.S}         |  0
 .../sleep.S => mach-s3c/sleep-s3c64xx.S}         |  0
 arch/arm/{mach-s3c24xx => mach-s3c}/spi-core.h   |  0
 arch/arm/{mach-s3c24xx => mach-s3c}/vr1000.h     |  0
 .../arm/{plat-samsung => mach-s3c}/wakeup-mask.c |  0
 .../{plat-samsung => mach-s3c}/watchdog-reset.c  |  0
 .../{mach-s3c64xx => mach-s3c}/watchdog-reset.h  |  0
 198 files changed, 134 insertions(+), 76 deletions(-)
 rename arch/arm/{plat-samsung => mach-s3c}/Kconfig (98%)
 rename arch/arm/{mach-s3c24xx/Kconfig => mach-s3c/Kconfig.s3c24xx} (100%)
 rename arch/arm/{mach-s3c64xx/Kconfig => mach-s3c/Kconfig.s3c64xx} (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/Makefile (83%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/Makefile.boot (100%)
 rename arch/arm/{mach-s3c24xx/Makefile => mach-s3c/Makefile.s3c24xx} (92%)
 rename arch/arm/{mach-s3c64xx/Makefile => mach-s3c/Makefile.s3c64xx} (83%)
 rename arch/arm/{plat-samsung => mach-s3c}/adc.c (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/anubis.h (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/ata-core.h (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/backlight.h (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/bast-ide.c (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/bast-irq.c (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/bast.h (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/common-smdk.c (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/common-smdk.h (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/cpu.c (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/cpufreq-utils.c (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/cpuidle.c (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/crag6410.h (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/dev-audio.c (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/dev-backlight.c (100%)
 rename arch/arm/{mach-s3c64xx/dev-uart.c => mach-s3c/dev-uart-s3c64xx.c} (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/dev-uart.c (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/devs.c (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/fb-core.h (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/gpio-samsung.c (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/gta02.h (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/h1940-bluetooth.c (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/h1940.h (100%)
 rename arch/arm/{mach-s3c24xx/include/mach/dma.h => mach-s3c/include/mach/dma-s3c24xx.h} (100%)
 rename arch/arm/{mach-s3c64xx/include/mach/dma.h => mach-s3c/include/mach/dma-s3c64xx.h} (100%)
 create mode 100644 arch/arm/mach-s3c/include/mach/dma.h
 rename arch/arm/{mach-s3c24xx/include/mach/gpio-samsung.h => mach-s3c/include/mach/gpio-samsung-s3c24xx.h} (100%)
 rename arch/arm/{mach-s3c64xx/include/mach/gpio-samsung.h => mach-s3c/include/mach/gpio-samsung-s3c64xx.h} (100%)
 create mode 100644 arch/arm/mach-s3c/include/mach/gpio-samsung.h
 rename arch/arm/{mach-s3c24xx => mach-s3c}/include/mach/hardware.h (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/include/mach/io.h (100%)
 rename arch/arm/{mach-s3c24xx/include/mach/irqs.h => mach-s3c/include/mach/irqs-s3c24xx.h} (100%)
 rename arch/arm/{mach-s3c64xx/include/mach/irqs.h => mach-s3c/include/mach/irqs-s3c64xx.h} (100%)
 create mode 100644 arch/arm/mach-s3c/include/mach/irqs.h
 rename arch/arm/{mach-s3c24xx/include/mach/map.h => mach-s3c/include/mach/map-s3c24xx.h} (100%)
 rename arch/arm/{mach-s3c64xx/include/mach/map.h => mach-s3c/include/mach/map-s3c64xx.h} (100%)
 create mode 100644 arch/arm/mach-s3c/include/mach/map.h
 rename arch/arm/{mach-s3c24xx/include/mach/pm-core.h => mach-s3c/include/mach/pm-core-s3c24xx.h} (100%)
 rename arch/arm/{mach-s3c64xx/include/mach/pm-core.h => mach-s3c/include/mach/pm-core-s3c64xx.h} (100%)
 create mode 100644 arch/arm/mach-s3c/include/mach/pm-core.h
 rename arch/arm/{mach-s3c24xx/include/mach/regs-clock.h => mach-s3c/include/mach/regs-clock-s3c24xx.h} (100%)
 rename arch/arm/{mach-s3c64xx/include/mach/regs-clock.h => mach-s3c/include/mach/regs-clock-s3c64xx.h} (100%)
 create mode 100644 arch/arm/mach-s3c/include/mach/regs-clock.h
 rename arch/arm/{mach-s3c24xx/include/mach/regs-gpio.h => mach-s3c/include/mach/regs-gpio-s3c24xx.h} (100%)
 rename arch/arm/{mach-s3c64xx/include/mach/regs-gpio.h => mach-s3c/include/mach/regs-gpio-s3c64xx.h} (100%)
 create mode 100644 arch/arm/mach-s3c/include/mach/regs-gpio.h
 rename arch/arm/{mach-s3c24xx/include/mach/regs-irq.h => mach-s3c/include/mach/regs-irq-s3c24xx.h} (100%)
 rename arch/arm/{mach-s3c64xx/include/mach/regs-irq.h => mach-s3c/include/mach/regs-irq-s3c64xx.h} (100%)
 create mode 100644 arch/arm/mach-s3c/include/mach/regs-irq.h
 rename arch/arm/{mach-s3c24xx => mach-s3c}/include/mach/regs-s3c2443-clock.h (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/include/mach/rtc-core.h (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/include/mach/s3c2412.h (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/include/plat/adc-core.h (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/include/plat/cpu.h (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/include/plat/devs.h (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/include/plat/fb.h (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/include/plat/gpio-cfg-helpers.h (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/include/plat/gpio-cfg.h (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/include/plat/gpio-core.h (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/include/plat/iic-core.h (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/include/plat/keypad.h (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/include/plat/map-base.h (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/include/plat/map-s3c.h (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/include/plat/map-s5p.h (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/include/plat/pm-common.h (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/include/plat/pm.h (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/include/plat/pwm-core.h (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/include/plat/regs-adc.h (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/include/plat/regs-irqtype.h (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/include/plat/samsung-time.h (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/include/plat/sdhci.h (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/include/plat/usb-phy.h (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/include/plat/wakeup-mask.h (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/init.c (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/iotiming-s3c2410.c (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/iotiming-s3c2412.c (100%)
 rename arch/arm/{mach-s3c24xx/irq-pm.c => mach-s3c/irq-pm-s3c24xx.c} (100%)
 rename arch/arm/{mach-s3c64xx/irq-pm.c => mach-s3c/irq-pm-s3c64xx.c} (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/irq-s3c24xx-fiq-exports.c (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/irq-s3c24xx-fiq.S (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/irq-s3c24xx.c (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/irq-uart.h (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-amlm5900.c (99%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-anubis.c (99%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-anw6410.c (99%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-at2440evb.c (99%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-bast.c (99%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-crag6410-module.c (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-crag6410.c (99%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-gta02.c (99%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-h1940.c (99%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-hmt.c (99%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-jive.c (99%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-mini2440.c (99%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-mini6410.c (99%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-n30.c (99%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-ncp.c (99%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-nexcoder.c (99%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-osiris-dvs.c (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-osiris.c (99%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-otom.c (99%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-qt2410.c (99%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-real6410.c (99%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-rx1950.c (99%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-rx3715.c (99%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-s3c2416-dt.c (98%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-s3c64xx-dt.c (98%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-smartq.c (99%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-smartq.h (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-smartq5.c (99%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-smartq7.c (99%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-smdk2410.c (99%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-smdk2413.c (99%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-smdk2416.c (99%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-smdk2440.c (99%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-smdk2443.c (99%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-smdk6400.c (99%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/mach-smdk6410.c (99%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-tct_hammer.c (99%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-vr1000.c (99%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/mach-vstms.c (99%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/nand-core.h (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/onenand-core.h (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/osiris.h (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/otom.h (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/pl080.c (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/platformdata.c (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/pll-s3c2410.c (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/pll-s3c2440-12000000.c (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/pll-s3c2440-16934400.c (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/pm-common.c (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/pm-gpio.c (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/pm-h1940.S (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/pm-s3c2410.c (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/pm-s3c2412.c (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/pm-s3c2416.c (100%)
 rename arch/arm/{mach-s3c24xx/pm.c => mach-s3c/pm-s3c24xx.c} (100%)
 rename arch/arm/{mach-s3c64xx/pm.c => mach-s3c/pm-s3c64xx.c} (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/pm.c (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/regs-dsc.h (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/regs-gpio-memport.h (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/regs-mem.h (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/regs-modem.h (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/regs-srom.h (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/regs-sys.h (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/regs-syscon-power.h (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/regs-usb-hsotg-phy.h (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/s3c2410.c (99%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/s3c2412-power.h (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/s3c2412.c (99%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/s3c2416.c (99%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/s3c2440.c (98%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/s3c2442.c (98%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/s3c2443.c (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/s3c244x.c (99%)
 rename arch/arm/{mach-s3c24xx/common.c => mach-s3c/s3c24xx.c} (99%)
 rename arch/arm/{mach-s3c24xx/common.h => mach-s3c/s3c24xx.h} (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/s3c6400.c (98%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/s3c6410.c (99%)
 rename arch/arm/{mach-s3c64xx/common.c => mach-s3c/s3c64xx.c} (99%)
 rename arch/arm/{mach-s3c64xx/common.h => mach-s3c/s3c64xx.h} (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/setup-camif.c (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/setup-fb-24bpp.c (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/setup-i2c.c (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/setup-i2c0.c (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/setup-i2c1.c (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/setup-ide.c (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/setup-keypad.c (100%)
 rename arch/arm/{mach-s3c24xx/setup-sdhci-gpio.c => mach-s3c/setup-sdhci-gpio-s3c24xx.c} (100%)
 rename arch/arm/{mach-s3c64xx/setup-sdhci-gpio.c => mach-s3c/setup-sdhci-gpio-s3c64xx.c} (100%)
 rename arch/arm/{mach-s3c24xx/setup-spi.c => mach-s3c/setup-spi-s3c24xx.c} (100%)
 rename arch/arm/{mach-s3c64xx/setup-spi.c => mach-s3c/setup-spi-s3c64xx.c} (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/setup-ts.c (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/setup-usb-phy.c (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/simtec-audio.c (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/simtec-nor.c (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/simtec-pm.c (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/simtec-usb.c (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/simtec.h (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/sleep-s3c2410.S (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/sleep-s3c2412.S (100%)
 rename arch/arm/{mach-s3c24xx/sleep.S => mach-s3c/sleep-s3c24xx.S} (100%)
 rename arch/arm/{mach-s3c64xx/sleep.S => mach-s3c/sleep-s3c64xx.S} (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/spi-core.h (100%)
 rename arch/arm/{mach-s3c24xx => mach-s3c}/vr1000.h (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/wakeup-mask.c (100%)
 rename arch/arm/{plat-samsung => mach-s3c}/watchdog-reset.c (100%)
 rename arch/arm/{mach-s3c64xx => mach-s3c}/watchdog-reset.h (100%)

diff --git a/MAINTAINERS b/MAINTAINERS
index 55199ef7fa74..e7bcb4189047 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2042,8 +2042,8 @@ ARM/OPENMOKO NEO FREERUNNER (GTA02) MACHINE SUPPORT
 L:	openmoko-kernel@lists.openmoko.org (subscribers-only)
 W:	http://wiki.openmoko.org/wiki/Neo_FreeRunner
 S:	Orphan
-F:	arch/arm/mach-s3c24xx/mach-gta02.c
-F:	arch/arm/mach-s3c24xx/gta02.h
+F:	arch/arm/mach-s3c/mach-gta02.c
+F:	arch/arm/mach-s3c/gta02.h
 
 ARM/Orion SoC/Technologic Systems TS-78xx platform support
 M:	Alexander Clouter <alex@digriz.org.uk>
@@ -2221,9 +2221,7 @@ F:	arch/arm/boot/dts/s3c*
 F:	arch/arm/boot/dts/s5p*
 F:	arch/arm/boot/dts/exynos*
 F:	arch/arm64/boot/dts/exynos/
-F:	arch/arm/plat-samsung/
-F:	arch/arm/mach-s3c24*/
-F:	arch/arm/mach-s3c64xx/
+F:	arch/arm/mach-s3c/
 F:	arch/arm/mach-s5p*/
 F:	arch/arm/mach-exynos*/
 F:	drivers/*/*s3c24*
@@ -14846,9 +14844,9 @@ P:	Vincent Sanders <vince@simtec.co.uk>
 M:	Simtec Linux Team <linux@simtec.co.uk>
 W:	http://www.simtec.co.uk/products/EB2410ITX/
 S:	Supported
-F:	arch/arm/mach-s3c24xx/mach-bast.c
-F:	arch/arm/mach-s3c24xx/bast-ide.c
-F:	arch/arm/mach-s3c24xx/bast-irq.c
+F:	arch/arm/mach-s3c/mach-bast.c
+F:	arch/arm/mach-s3c/bast-ide.c
+F:	arch/arm/mach-s3c/bast-irq.c
 
 SIPHASH PRF ROUTINES
 M:	Jason A. Donenfeld <Jason@zx2c4.com>
@@ -17600,7 +17598,7 @@ F:	Documentation/devicetree/bindings/regulator/arizona-regulator.txt
 F:	Documentation/devicetree/bindings/mfd/arizona.txt
 F:	Documentation/devicetree/bindings/mfd/wm831x.txt
 F:	Documentation/devicetree/bindings/sound/wlf,arizona.txt
-F:	arch/arm/mach-s3c64xx/mach-crag6410*
+F:	arch/arm/mach-s3c/mach-crag6410*
 F:	drivers/clk/clk-wm83*.c
 F:	drivers/extcon/extcon-arizona.c
 F:	drivers/leds/leds-wm83*.c
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 8a50efb559f3..6ea9594794c8 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -635,7 +635,6 @@ source "arch/arm/mach-dove/Kconfig"
 source "arch/arm/mach-ep93xx/Kconfig"
 
 source "arch/arm/mach-exynos/Kconfig"
-source "arch/arm/plat-samsung/Kconfig"
 
 source "arch/arm/mach-footbridge/Kconfig"
 
@@ -704,9 +703,7 @@ source "arch/arm/mach-realview/Kconfig"
 
 source "arch/arm/mach-rockchip/Kconfig"
 
-source "arch/arm/mach-s3c24xx/Kconfig"
-
-source "arch/arm/mach-s3c64xx/Kconfig"
+source "arch/arm/mach-s3c/Kconfig"
 
 source "arch/arm/mach-s5pv210/Kconfig"
 
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index a1bc15cda751..92ffc17119d6 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -210,8 +210,7 @@ machine-$(CONFIG_ARCH_RDA)		+= rda
 machine-$(CONFIG_ARCH_REALVIEW)		+= realview
 machine-$(CONFIG_ARCH_ROCKCHIP)		+= rockchip
 machine-$(CONFIG_ARCH_RPC)		+= rpc
-machine-$(CONFIG_ARCH_S3C24XX)		+= s3c24xx
-machine-$(CONFIG_ARCH_S3C64XX)		+= s3c64xx
+machine-$(CONFIG_PLAT_SAMSUNG)		+= s3c
 machine-$(CONFIG_ARCH_S5PV210)		+= s5pv210
 machine-$(CONFIG_ARCH_SA1100)		+= sa1100
 machine-$(CONFIG_ARCH_RENESAS)	 	+= shmobile
@@ -234,10 +233,8 @@ machine-$(CONFIG_PLAT_SPEAR)		+= spear
 # Platform directory name.  This list is sorted alphanumerically
 # by CONFIG_* macro name.
 plat-$(CONFIG_ARCH_OMAP)	+= omap
-plat-$(CONFIG_ARCH_S3C64XX)	+= samsung
 plat-$(CONFIG_PLAT_ORION)	+= orion
 plat-$(CONFIG_PLAT_PXA)		+= pxa
-plat-$(CONFIG_PLAT_S3C24XX)	+= samsung
 plat-$(CONFIG_PLAT_VERSATILE)	+= versatile
 
 ifeq ($(CONFIG_ARCH_EBSA110),y)
diff --git a/arch/arm/plat-samsung/Kconfig b/arch/arm/mach-s3c/Kconfig
similarity index 98%
rename from arch/arm/plat-samsung/Kconfig
rename to arch/arm/mach-s3c/Kconfig
index 1530946cc672..bf73d2481104 100644
--- a/arch/arm/plat-samsung/Kconfig
+++ b/arch/arm/mach-s3c/Kconfig
@@ -2,6 +2,9 @@
 #
 # Copyright 2009 Simtec Electronics
 
+source "arch/arm/mach-s3c/Kconfig.s3c24xx"
+source "arch/arm/mach-s3c/Kconfig.s3c64xx"
+
 config PLAT_SAMSUNG
 	bool
 	depends on PLAT_S3C24XX || ARCH_S3C64XX
diff --git a/arch/arm/mach-s3c24xx/Kconfig b/arch/arm/mach-s3c/Kconfig.s3c24xx
similarity index 100%
rename from arch/arm/mach-s3c24xx/Kconfig
rename to arch/arm/mach-s3c/Kconfig.s3c24xx
diff --git a/arch/arm/mach-s3c64xx/Kconfig b/arch/arm/mach-s3c/Kconfig.s3c64xx
similarity index 100%
rename from arch/arm/mach-s3c64xx/Kconfig
rename to arch/arm/mach-s3c/Kconfig.s3c64xx
diff --git a/arch/arm/plat-samsung/Makefile b/arch/arm/mach-s3c/Makefile
similarity index 83%
rename from arch/arm/plat-samsung/Makefile
rename to arch/arm/mach-s3c/Makefile
index 025ce22876c1..975c24ae534c 100644
--- a/arch/arm/plat-samsung/Makefile
+++ b/arch/arm/mach-s3c/Makefile
@@ -2,9 +2,16 @@
 #
 # Copyright 2009 Simtec Electronics
 
-ccflags-$(CONFIG_ARCH_S3C64XX) := -I$(srctree)/arch/arm/mach-s3c64xx/include
 ccflags-$(CONFIG_ARCH_MULTIPLATFORM) += -I$(srctree)/$(src)/include
 
+ifdef CONFIG_ARCH_S3C24XX
+include $(src)/Makefile.s3c24xx
+endif
+
+ifdef CONFIG_ARCH_S3C64XX
+include $(src)/Makefile.s3c64xx
+endif
+
 # Objects we always build independent of SoC choice
 
 obj-y				+= init.o cpu.o
diff --git a/arch/arm/mach-s3c24xx/Makefile.boot b/arch/arm/mach-s3c/Makefile.boot
similarity index 100%
rename from arch/arm/mach-s3c24xx/Makefile.boot
rename to arch/arm/mach-s3c/Makefile.boot
diff --git a/arch/arm/mach-s3c24xx/Makefile b/arch/arm/mach-s3c/Makefile.s3c24xx
similarity index 92%
rename from arch/arm/mach-s3c24xx/Makefile
rename to arch/arm/mach-s3c/Makefile.s3c24xx
index 195a4cb23ecb..2235f5b66a51 100644
--- a/arch/arm/mach-s3c24xx/Makefile
+++ b/arch/arm/mach-s3c/Makefile.s3c24xx
@@ -7,7 +7,7 @@
 
 # core
 
-obj-y				+= common.o
+obj-y				+= s3c24xx.o
 obj-y				+= irq-s3c24xx.o
 obj-$(CONFIG_SPI_S3C24XX_FIQ)	+= irq-s3c24xx-fiq.o
 obj-$(CONFIG_SPI_S3C24XX_FIQ)	+= irq-s3c24xx-fiq-exports.o
@@ -33,8 +33,8 @@ obj-$(CONFIG_CPU_S3C2443)	+= s3c2443.o
 
 # PM
 
-obj-$(CONFIG_PM)		+= pm.o
-obj-$(CONFIG_PM_SLEEP)		+= irq-pm.o sleep.o
+obj-$(CONFIG_PM)		+= pm-s3c24xx.o
+obj-$(CONFIG_PM_SLEEP)		+= irq-pm-s3c24xx.o sleep-s3c24xx.o
 
 # common code
 
@@ -96,8 +96,8 @@ obj-$(CONFIG_MACH_OSIRIS_DVS)		+= mach-osiris-dvs.o
 
 # device setup
 
-obj-$(CONFIG_S3C2416_SETUP_SDHCI_GPIO)	+= setup-sdhci-gpio.o
-obj-$(CONFIG_S3C2443_SETUP_SPI)		+= setup-spi.o
+obj-$(CONFIG_S3C2416_SETUP_SDHCI_GPIO)	+= setup-sdhci-gpio-s3c24xx.o
+obj-$(CONFIG_S3C2443_SETUP_SPI)		+= setup-spi-s3c24xx.o
 obj-$(CONFIG_ARCH_S3C24XX)		+= setup-i2c.o
 obj-$(CONFIG_S3C24XX_SETUP_TS)		+= setup-ts.o
 obj-$(CONFIG_S3C_SETUP_CAMIF)		+= setup-camif.o
diff --git a/arch/arm/mach-s3c64xx/Makefile b/arch/arm/mach-s3c/Makefile.s3c64xx
similarity index 83%
rename from arch/arm/mach-s3c64xx/Makefile
rename to arch/arm/mach-s3c/Makefile.s3c64xx
index 8caeb4ad17e9..fc4e2bb2bbd1 100644
--- a/arch/arm/mach-s3c64xx/Makefile
+++ b/arch/arm/mach-s3c/Makefile.s3c64xx
@@ -8,17 +8,17 @@ asflags-$(CONFIG_ARCH_MULTIPLATFORM) := -I$(srctree)/$(src)/include -I$(srctree)
 
 # PM
 
-obj-$(CONFIG_PM)		+= pm.o
-obj-$(CONFIG_PM_SLEEP)		+= sleep.o
+obj-$(CONFIG_PM)		+= pm-s3c64xx.o
+obj-$(CONFIG_PM_SLEEP)		+= sleep-s3c64xx.o
 obj-$(CONFIG_CPU_IDLE)		+= cpuidle.o
 
 ifdef CONFIG_SAMSUNG_ATAGS
 
-obj-$(CONFIG_PM_SLEEP)          += irq-pm.o
+obj-$(CONFIG_PM_SLEEP)          += irq-pm-s3c64xx.o
 
 # Core
 
-obj-y				+= common.o
+obj-y				+= s3c64xx.o
 obj-$(CONFIG_CPU_S3C6400)	+= s3c6400.o
 obj-$(CONFIG_CPU_S3C6410)	+= s3c6410.o
 
@@ -28,7 +28,7 @@ obj-$(CONFIG_S3C64XX_PL080)	+= pl080.o
 
 # Device support
 
-obj-y				+= dev-uart.o
+obj-y				+= dev-uart-s3c64xx.o
 obj-y				+= dev-audio.o
 
 # Device setup
@@ -38,8 +38,8 @@ obj-$(CONFIG_S3C64XX_SETUP_I2C0)	+= setup-i2c0.o
 obj-$(CONFIG_S3C64XX_SETUP_I2C1)	+= setup-i2c1.o
 obj-$(CONFIG_S3C64XX_SETUP_IDE)		+= setup-ide.o
 obj-$(CONFIG_S3C64XX_SETUP_KEYPAD)	+= setup-keypad.o
-obj-$(CONFIG_S3C64XX_SETUP_SDHCI_GPIO)	+= setup-sdhci-gpio.o
-obj-$(CONFIG_S3C64XX_SETUP_SPI)		+= setup-spi.o
+obj-$(CONFIG_S3C64XX_SETUP_SDHCI_GPIO)	+= setup-sdhci-gpio-s3c64xx.o
+obj-$(CONFIG_S3C64XX_SETUP_SPI)		+= setup-spi-s3c64xx.o
 obj-$(CONFIG_S3C64XX_SETUP_USB_PHY) += setup-usb-phy.o
 
 obj-$(CONFIG_SAMSUNG_DEV_BACKLIGHT)	+= dev-backlight.o
diff --git a/arch/arm/plat-samsung/adc.c b/arch/arm/mach-s3c/adc.c
similarity index 100%
rename from arch/arm/plat-samsung/adc.c
rename to arch/arm/mach-s3c/adc.c
diff --git a/arch/arm/mach-s3c24xx/anubis.h b/arch/arm/mach-s3c/anubis.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/anubis.h
rename to arch/arm/mach-s3c/anubis.h
diff --git a/arch/arm/mach-s3c64xx/ata-core.h b/arch/arm/mach-s3c/ata-core.h
similarity index 100%
rename from arch/arm/mach-s3c64xx/ata-core.h
rename to arch/arm/mach-s3c/ata-core.h
diff --git a/arch/arm/mach-s3c64xx/backlight.h b/arch/arm/mach-s3c/backlight.h
similarity index 100%
rename from arch/arm/mach-s3c64xx/backlight.h
rename to arch/arm/mach-s3c/backlight.h
diff --git a/arch/arm/mach-s3c24xx/bast-ide.c b/arch/arm/mach-s3c/bast-ide.c
similarity index 100%
rename from arch/arm/mach-s3c24xx/bast-ide.c
rename to arch/arm/mach-s3c/bast-ide.c
diff --git a/arch/arm/mach-s3c24xx/bast-irq.c b/arch/arm/mach-s3c/bast-irq.c
similarity index 100%
rename from arch/arm/mach-s3c24xx/bast-irq.c
rename to arch/arm/mach-s3c/bast-irq.c
diff --git a/arch/arm/mach-s3c24xx/bast.h b/arch/arm/mach-s3c/bast.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/bast.h
rename to arch/arm/mach-s3c/bast.h
diff --git a/arch/arm/mach-s3c24xx/common-smdk.c b/arch/arm/mach-s3c/common-smdk.c
similarity index 100%
rename from arch/arm/mach-s3c24xx/common-smdk.c
rename to arch/arm/mach-s3c/common-smdk.c
diff --git a/arch/arm/mach-s3c24xx/common-smdk.h b/arch/arm/mach-s3c/common-smdk.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/common-smdk.h
rename to arch/arm/mach-s3c/common-smdk.h
diff --git a/arch/arm/plat-samsung/cpu.c b/arch/arm/mach-s3c/cpu.c
similarity index 100%
rename from arch/arm/plat-samsung/cpu.c
rename to arch/arm/mach-s3c/cpu.c
diff --git a/arch/arm/mach-s3c24xx/cpufreq-utils.c b/arch/arm/mach-s3c/cpufreq-utils.c
similarity index 100%
rename from arch/arm/mach-s3c24xx/cpufreq-utils.c
rename to arch/arm/mach-s3c/cpufreq-utils.c
diff --git a/arch/arm/mach-s3c64xx/cpuidle.c b/arch/arm/mach-s3c/cpuidle.c
similarity index 100%
rename from arch/arm/mach-s3c64xx/cpuidle.c
rename to arch/arm/mach-s3c/cpuidle.c
diff --git a/arch/arm/mach-s3c64xx/crag6410.h b/arch/arm/mach-s3c/crag6410.h
similarity index 100%
rename from arch/arm/mach-s3c64xx/crag6410.h
rename to arch/arm/mach-s3c/crag6410.h
diff --git a/arch/arm/mach-s3c64xx/dev-audio.c b/arch/arm/mach-s3c/dev-audio.c
similarity index 100%
rename from arch/arm/mach-s3c64xx/dev-audio.c
rename to arch/arm/mach-s3c/dev-audio.c
diff --git a/arch/arm/mach-s3c64xx/dev-backlight.c b/arch/arm/mach-s3c/dev-backlight.c
similarity index 100%
rename from arch/arm/mach-s3c64xx/dev-backlight.c
rename to arch/arm/mach-s3c/dev-backlight.c
diff --git a/arch/arm/mach-s3c64xx/dev-uart.c b/arch/arm/mach-s3c/dev-uart-s3c64xx.c
similarity index 100%
rename from arch/arm/mach-s3c64xx/dev-uart.c
rename to arch/arm/mach-s3c/dev-uart-s3c64xx.c
diff --git a/arch/arm/plat-samsung/dev-uart.c b/arch/arm/mach-s3c/dev-uart.c
similarity index 100%
rename from arch/arm/plat-samsung/dev-uart.c
rename to arch/arm/mach-s3c/dev-uart.c
diff --git a/arch/arm/plat-samsung/devs.c b/arch/arm/mach-s3c/devs.c
similarity index 100%
rename from arch/arm/plat-samsung/devs.c
rename to arch/arm/mach-s3c/devs.c
diff --git a/arch/arm/mach-s3c24xx/fb-core.h b/arch/arm/mach-s3c/fb-core.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/fb-core.h
rename to arch/arm/mach-s3c/fb-core.h
diff --git a/arch/arm/plat-samsung/gpio-samsung.c b/arch/arm/mach-s3c/gpio-samsung.c
similarity index 100%
rename from arch/arm/plat-samsung/gpio-samsung.c
rename to arch/arm/mach-s3c/gpio-samsung.c
diff --git a/arch/arm/mach-s3c24xx/gta02.h b/arch/arm/mach-s3c/gta02.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/gta02.h
rename to arch/arm/mach-s3c/gta02.h
diff --git a/arch/arm/mach-s3c24xx/h1940-bluetooth.c b/arch/arm/mach-s3c/h1940-bluetooth.c
similarity index 100%
rename from arch/arm/mach-s3c24xx/h1940-bluetooth.c
rename to arch/arm/mach-s3c/h1940-bluetooth.c
diff --git a/arch/arm/mach-s3c24xx/h1940.h b/arch/arm/mach-s3c/h1940.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/h1940.h
rename to arch/arm/mach-s3c/h1940.h
diff --git a/arch/arm/mach-s3c24xx/include/mach/dma.h b/arch/arm/mach-s3c/include/mach/dma-s3c24xx.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/include/mach/dma.h
rename to arch/arm/mach-s3c/include/mach/dma-s3c24xx.h
diff --git a/arch/arm/mach-s3c64xx/include/mach/dma.h b/arch/arm/mach-s3c/include/mach/dma-s3c64xx.h
similarity index 100%
rename from arch/arm/mach-s3c64xx/include/mach/dma.h
rename to arch/arm/mach-s3c/include/mach/dma-s3c64xx.h
diff --git a/arch/arm/mach-s3c/include/mach/dma.h b/arch/arm/mach-s3c/include/mach/dma.h
new file mode 100644
index 000000000000..54e11d4cb272
--- /dev/null
+++ b/arch/arm/mach-s3c/include/mach/dma.h
@@ -0,0 +1,7 @@
+#ifdef CONFIG_ARCH_S3C24XX
+#include "dma-s3c24xx.h"
+#endif
+
+#ifdef CONFIG_ARCH_S3C64XX
+#include "dma-s3c64xx.h"
+#endif
diff --git a/arch/arm/mach-s3c24xx/include/mach/gpio-samsung.h b/arch/arm/mach-s3c/include/mach/gpio-samsung-s3c24xx.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/include/mach/gpio-samsung.h
rename to arch/arm/mach-s3c/include/mach/gpio-samsung-s3c24xx.h
diff --git a/arch/arm/mach-s3c64xx/include/mach/gpio-samsung.h b/arch/arm/mach-s3c/include/mach/gpio-samsung-s3c64xx.h
similarity index 100%
rename from arch/arm/mach-s3c64xx/include/mach/gpio-samsung.h
rename to arch/arm/mach-s3c/include/mach/gpio-samsung-s3c64xx.h
diff --git a/arch/arm/mach-s3c/include/mach/gpio-samsung.h b/arch/arm/mach-s3c/include/mach/gpio-samsung.h
new file mode 100644
index 000000000000..ac29f8ac0c9c
--- /dev/null
+++ b/arch/arm/mach-s3c/include/mach/gpio-samsung.h
@@ -0,0 +1,7 @@
+#ifdef CONFIG_ARCH_S3C24XX
+#include "gpio-samsung-s3c24xx.h"
+#endif
+
+#ifdef CONFIG_ARCH_S3C64XX
+#include "gpio-samsung-s3c64xx.h"
+#endif
diff --git a/arch/arm/mach-s3c24xx/include/mach/hardware.h b/arch/arm/mach-s3c/include/mach/hardware.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/include/mach/hardware.h
rename to arch/arm/mach-s3c/include/mach/hardware.h
diff --git a/arch/arm/mach-s3c24xx/include/mach/io.h b/arch/arm/mach-s3c/include/mach/io.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/include/mach/io.h
rename to arch/arm/mach-s3c/include/mach/io.h
diff --git a/arch/arm/mach-s3c24xx/include/mach/irqs.h b/arch/arm/mach-s3c/include/mach/irqs-s3c24xx.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/include/mach/irqs.h
rename to arch/arm/mach-s3c/include/mach/irqs-s3c24xx.h
diff --git a/arch/arm/mach-s3c64xx/include/mach/irqs.h b/arch/arm/mach-s3c/include/mach/irqs-s3c64xx.h
similarity index 100%
rename from arch/arm/mach-s3c64xx/include/mach/irqs.h
rename to arch/arm/mach-s3c/include/mach/irqs-s3c64xx.h
diff --git a/arch/arm/mach-s3c/include/mach/irqs.h b/arch/arm/mach-s3c/include/mach/irqs.h
new file mode 100644
index 000000000000..a33732f701b4
--- /dev/null
+++ b/arch/arm/mach-s3c/include/mach/irqs.h
@@ -0,0 +1,7 @@
+#ifdef CONFIG_ARCH_S3C24XX
+#include "irqs-s3c24xx.h"
+#endif
+
+#ifdef CONFIG_ARCH_S3C64XX
+#include "irqs-s3c64xx.h"
+#endif
diff --git a/arch/arm/mach-s3c24xx/include/mach/map.h b/arch/arm/mach-s3c/include/mach/map-s3c24xx.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/include/mach/map.h
rename to arch/arm/mach-s3c/include/mach/map-s3c24xx.h
diff --git a/arch/arm/mach-s3c64xx/include/mach/map.h b/arch/arm/mach-s3c/include/mach/map-s3c64xx.h
similarity index 100%
rename from arch/arm/mach-s3c64xx/include/mach/map.h
rename to arch/arm/mach-s3c/include/mach/map-s3c64xx.h
diff --git a/arch/arm/mach-s3c/include/mach/map.h b/arch/arm/mach-s3c/include/mach/map.h
new file mode 100644
index 000000000000..e6d05f1e2d8f
--- /dev/null
+++ b/arch/arm/mach-s3c/include/mach/map.h
@@ -0,0 +1,7 @@
+#ifdef CONFIG_ARCH_S3C24XX
+#include "map-s3c24xx.h"
+#endif
+
+#ifdef CONFIG_ARCH_S3C64XX
+#include "map-s3c64xx.h"
+#endif
diff --git a/arch/arm/mach-s3c24xx/include/mach/pm-core.h b/arch/arm/mach-s3c/include/mach/pm-core-s3c24xx.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/include/mach/pm-core.h
rename to arch/arm/mach-s3c/include/mach/pm-core-s3c24xx.h
diff --git a/arch/arm/mach-s3c64xx/include/mach/pm-core.h b/arch/arm/mach-s3c/include/mach/pm-core-s3c64xx.h
similarity index 100%
rename from arch/arm/mach-s3c64xx/include/mach/pm-core.h
rename to arch/arm/mach-s3c/include/mach/pm-core-s3c64xx.h
diff --git a/arch/arm/mach-s3c/include/mach/pm-core.h b/arch/arm/mach-s3c/include/mach/pm-core.h
new file mode 100644
index 000000000000..4cd57f940871
--- /dev/null
+++ b/arch/arm/mach-s3c/include/mach/pm-core.h
@@ -0,0 +1,7 @@
+#ifdef CONFIG_ARCH_S3C24XX
+#include "pm-core-s3c24xx.h"
+#endif
+
+#ifdef CONFIG_ARCH_S3C64XX
+#include "pm-core-s3c64xx.h"
+#endif
diff --git a/arch/arm/mach-s3c24xx/include/mach/regs-clock.h b/arch/arm/mach-s3c/include/mach/regs-clock-s3c24xx.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/include/mach/regs-clock.h
rename to arch/arm/mach-s3c/include/mach/regs-clock-s3c24xx.h
diff --git a/arch/arm/mach-s3c64xx/include/mach/regs-clock.h b/arch/arm/mach-s3c/include/mach/regs-clock-s3c64xx.h
similarity index 100%
rename from arch/arm/mach-s3c64xx/include/mach/regs-clock.h
rename to arch/arm/mach-s3c/include/mach/regs-clock-s3c64xx.h
diff --git a/arch/arm/mach-s3c/include/mach/regs-clock.h b/arch/arm/mach-s3c/include/mach/regs-clock.h
new file mode 100644
index 000000000000..4aa8b4bf2bf4
--- /dev/null
+++ b/arch/arm/mach-s3c/include/mach/regs-clock.h
@@ -0,0 +1,7 @@
+#ifdef CONFIG_ARCH_S3C24XX
+#include "regs-clock-s3c24xx.h"
+#endif
+
+#ifdef CONFIG_ARCH_S3C64XX
+#include "regs-clock-s3c64xx.h"
+#endif
diff --git a/arch/arm/mach-s3c24xx/include/mach/regs-gpio.h b/arch/arm/mach-s3c/include/mach/regs-gpio-s3c24xx.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/include/mach/regs-gpio.h
rename to arch/arm/mach-s3c/include/mach/regs-gpio-s3c24xx.h
diff --git a/arch/arm/mach-s3c64xx/include/mach/regs-gpio.h b/arch/arm/mach-s3c/include/mach/regs-gpio-s3c64xx.h
similarity index 100%
rename from arch/arm/mach-s3c64xx/include/mach/regs-gpio.h
rename to arch/arm/mach-s3c/include/mach/regs-gpio-s3c64xx.h
diff --git a/arch/arm/mach-s3c/include/mach/regs-gpio.h b/arch/arm/mach-s3c/include/mach/regs-gpio.h
new file mode 100644
index 000000000000..6bdf7836ff3a
--- /dev/null
+++ b/arch/arm/mach-s3c/include/mach/regs-gpio.h
@@ -0,0 +1,7 @@
+#ifdef CONFIG_ARCH_S3C24XX
+#include "regs-gpio-s3c24xx.h"
+#endif
+
+#ifdef CONFIG_ARCH_S3C64XX
+#include "regs-gpio-s3c64xx.h"
+#endif
diff --git a/arch/arm/mach-s3c24xx/include/mach/regs-irq.h b/arch/arm/mach-s3c/include/mach/regs-irq-s3c24xx.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/include/mach/regs-irq.h
rename to arch/arm/mach-s3c/include/mach/regs-irq-s3c24xx.h
diff --git a/arch/arm/mach-s3c64xx/include/mach/regs-irq.h b/arch/arm/mach-s3c/include/mach/regs-irq-s3c64xx.h
similarity index 100%
rename from arch/arm/mach-s3c64xx/include/mach/regs-irq.h
rename to arch/arm/mach-s3c/include/mach/regs-irq-s3c64xx.h
diff --git a/arch/arm/mach-s3c/include/mach/regs-irq.h b/arch/arm/mach-s3c/include/mach/regs-irq.h
new file mode 100644
index 000000000000..db1b7c821401
--- /dev/null
+++ b/arch/arm/mach-s3c/include/mach/regs-irq.h
@@ -0,0 +1,7 @@
+#ifdef CONFIG_ARCH_S3C24XX
+#include "regs-irq-s3c24xx.h"
+#endif
+
+#ifdef CONFIG_ARCH_S3C64XX
+#include "regs-irq-s3c64xx.h"
+#endif
diff --git a/arch/arm/mach-s3c24xx/include/mach/regs-s3c2443-clock.h b/arch/arm/mach-s3c/include/mach/regs-s3c2443-clock.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/include/mach/regs-s3c2443-clock.h
rename to arch/arm/mach-s3c/include/mach/regs-s3c2443-clock.h
diff --git a/arch/arm/mach-s3c24xx/include/mach/rtc-core.h b/arch/arm/mach-s3c/include/mach/rtc-core.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/include/mach/rtc-core.h
rename to arch/arm/mach-s3c/include/mach/rtc-core.h
diff --git a/arch/arm/mach-s3c24xx/include/mach/s3c2412.h b/arch/arm/mach-s3c/include/mach/s3c2412.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/include/mach/s3c2412.h
rename to arch/arm/mach-s3c/include/mach/s3c2412.h
diff --git a/arch/arm/plat-samsung/include/plat/adc-core.h b/arch/arm/mach-s3c/include/plat/adc-core.h
similarity index 100%
rename from arch/arm/plat-samsung/include/plat/adc-core.h
rename to arch/arm/mach-s3c/include/plat/adc-core.h
diff --git a/arch/arm/plat-samsung/include/plat/cpu.h b/arch/arm/mach-s3c/include/plat/cpu.h
similarity index 100%
rename from arch/arm/plat-samsung/include/plat/cpu.h
rename to arch/arm/mach-s3c/include/plat/cpu.h
diff --git a/arch/arm/plat-samsung/include/plat/devs.h b/arch/arm/mach-s3c/include/plat/devs.h
similarity index 100%
rename from arch/arm/plat-samsung/include/plat/devs.h
rename to arch/arm/mach-s3c/include/plat/devs.h
diff --git a/arch/arm/plat-samsung/include/plat/fb.h b/arch/arm/mach-s3c/include/plat/fb.h
similarity index 100%
rename from arch/arm/plat-samsung/include/plat/fb.h
rename to arch/arm/mach-s3c/include/plat/fb.h
diff --git a/arch/arm/plat-samsung/include/plat/gpio-cfg-helpers.h b/arch/arm/mach-s3c/include/plat/gpio-cfg-helpers.h
similarity index 100%
rename from arch/arm/plat-samsung/include/plat/gpio-cfg-helpers.h
rename to arch/arm/mach-s3c/include/plat/gpio-cfg-helpers.h
diff --git a/arch/arm/plat-samsung/include/plat/gpio-cfg.h b/arch/arm/mach-s3c/include/plat/gpio-cfg.h
similarity index 100%
rename from arch/arm/plat-samsung/include/plat/gpio-cfg.h
rename to arch/arm/mach-s3c/include/plat/gpio-cfg.h
diff --git a/arch/arm/plat-samsung/include/plat/gpio-core.h b/arch/arm/mach-s3c/include/plat/gpio-core.h
similarity index 100%
rename from arch/arm/plat-samsung/include/plat/gpio-core.h
rename to arch/arm/mach-s3c/include/plat/gpio-core.h
diff --git a/arch/arm/plat-samsung/include/plat/iic-core.h b/arch/arm/mach-s3c/include/plat/iic-core.h
similarity index 100%
rename from arch/arm/plat-samsung/include/plat/iic-core.h
rename to arch/arm/mach-s3c/include/plat/iic-core.h
diff --git a/arch/arm/plat-samsung/include/plat/keypad.h b/arch/arm/mach-s3c/include/plat/keypad.h
similarity index 100%
rename from arch/arm/plat-samsung/include/plat/keypad.h
rename to arch/arm/mach-s3c/include/plat/keypad.h
diff --git a/arch/arm/plat-samsung/include/plat/map-base.h b/arch/arm/mach-s3c/include/plat/map-base.h
similarity index 100%
rename from arch/arm/plat-samsung/include/plat/map-base.h
rename to arch/arm/mach-s3c/include/plat/map-base.h
diff --git a/arch/arm/plat-samsung/include/plat/map-s3c.h b/arch/arm/mach-s3c/include/plat/map-s3c.h
similarity index 100%
rename from arch/arm/plat-samsung/include/plat/map-s3c.h
rename to arch/arm/mach-s3c/include/plat/map-s3c.h
diff --git a/arch/arm/plat-samsung/include/plat/map-s5p.h b/arch/arm/mach-s3c/include/plat/map-s5p.h
similarity index 100%
rename from arch/arm/plat-samsung/include/plat/map-s5p.h
rename to arch/arm/mach-s3c/include/plat/map-s5p.h
diff --git a/arch/arm/plat-samsung/include/plat/pm-common.h b/arch/arm/mach-s3c/include/plat/pm-common.h
similarity index 100%
rename from arch/arm/plat-samsung/include/plat/pm-common.h
rename to arch/arm/mach-s3c/include/plat/pm-common.h
diff --git a/arch/arm/plat-samsung/include/plat/pm.h b/arch/arm/mach-s3c/include/plat/pm.h
similarity index 100%
rename from arch/arm/plat-samsung/include/plat/pm.h
rename to arch/arm/mach-s3c/include/plat/pm.h
diff --git a/arch/arm/plat-samsung/include/plat/pwm-core.h b/arch/arm/mach-s3c/include/plat/pwm-core.h
similarity index 100%
rename from arch/arm/plat-samsung/include/plat/pwm-core.h
rename to arch/arm/mach-s3c/include/plat/pwm-core.h
diff --git a/arch/arm/plat-samsung/include/plat/regs-adc.h b/arch/arm/mach-s3c/include/plat/regs-adc.h
similarity index 100%
rename from arch/arm/plat-samsung/include/plat/regs-adc.h
rename to arch/arm/mach-s3c/include/plat/regs-adc.h
diff --git a/arch/arm/plat-samsung/include/plat/regs-irqtype.h b/arch/arm/mach-s3c/include/plat/regs-irqtype.h
similarity index 100%
rename from arch/arm/plat-samsung/include/plat/regs-irqtype.h
rename to arch/arm/mach-s3c/include/plat/regs-irqtype.h
diff --git a/arch/arm/plat-samsung/include/plat/samsung-time.h b/arch/arm/mach-s3c/include/plat/samsung-time.h
similarity index 100%
rename from arch/arm/plat-samsung/include/plat/samsung-time.h
rename to arch/arm/mach-s3c/include/plat/samsung-time.h
diff --git a/arch/arm/plat-samsung/include/plat/sdhci.h b/arch/arm/mach-s3c/include/plat/sdhci.h
similarity index 100%
rename from arch/arm/plat-samsung/include/plat/sdhci.h
rename to arch/arm/mach-s3c/include/plat/sdhci.h
diff --git a/arch/arm/plat-samsung/include/plat/usb-phy.h b/arch/arm/mach-s3c/include/plat/usb-phy.h
similarity index 100%
rename from arch/arm/plat-samsung/include/plat/usb-phy.h
rename to arch/arm/mach-s3c/include/plat/usb-phy.h
diff --git a/arch/arm/plat-samsung/include/plat/wakeup-mask.h b/arch/arm/mach-s3c/include/plat/wakeup-mask.h
similarity index 100%
rename from arch/arm/plat-samsung/include/plat/wakeup-mask.h
rename to arch/arm/mach-s3c/include/plat/wakeup-mask.h
diff --git a/arch/arm/plat-samsung/init.c b/arch/arm/mach-s3c/init.c
similarity index 100%
rename from arch/arm/plat-samsung/init.c
rename to arch/arm/mach-s3c/init.c
diff --git a/arch/arm/mach-s3c24xx/iotiming-s3c2410.c b/arch/arm/mach-s3c/iotiming-s3c2410.c
similarity index 100%
rename from arch/arm/mach-s3c24xx/iotiming-s3c2410.c
rename to arch/arm/mach-s3c/iotiming-s3c2410.c
diff --git a/arch/arm/mach-s3c24xx/iotiming-s3c2412.c b/arch/arm/mach-s3c/iotiming-s3c2412.c
similarity index 100%
rename from arch/arm/mach-s3c24xx/iotiming-s3c2412.c
rename to arch/arm/mach-s3c/iotiming-s3c2412.c
diff --git a/arch/arm/mach-s3c24xx/irq-pm.c b/arch/arm/mach-s3c/irq-pm-s3c24xx.c
similarity index 100%
rename from arch/arm/mach-s3c24xx/irq-pm.c
rename to arch/arm/mach-s3c/irq-pm-s3c24xx.c
diff --git a/arch/arm/mach-s3c64xx/irq-pm.c b/arch/arm/mach-s3c/irq-pm-s3c64xx.c
similarity index 100%
rename from arch/arm/mach-s3c64xx/irq-pm.c
rename to arch/arm/mach-s3c/irq-pm-s3c64xx.c
diff --git a/arch/arm/mach-s3c24xx/irq-s3c24xx-fiq-exports.c b/arch/arm/mach-s3c/irq-s3c24xx-fiq-exports.c
similarity index 100%
rename from arch/arm/mach-s3c24xx/irq-s3c24xx-fiq-exports.c
rename to arch/arm/mach-s3c/irq-s3c24xx-fiq-exports.c
diff --git a/arch/arm/mach-s3c24xx/irq-s3c24xx-fiq.S b/arch/arm/mach-s3c/irq-s3c24xx-fiq.S
similarity index 100%
rename from arch/arm/mach-s3c24xx/irq-s3c24xx-fiq.S
rename to arch/arm/mach-s3c/irq-s3c24xx-fiq.S
diff --git a/arch/arm/mach-s3c24xx/irq-s3c24xx.c b/arch/arm/mach-s3c/irq-s3c24xx.c
similarity index 100%
rename from arch/arm/mach-s3c24xx/irq-s3c24xx.c
rename to arch/arm/mach-s3c/irq-s3c24xx.c
diff --git a/arch/arm/mach-s3c64xx/irq-uart.h b/arch/arm/mach-s3c/irq-uart.h
similarity index 100%
rename from arch/arm/mach-s3c64xx/irq-uart.h
rename to arch/arm/mach-s3c/irq-uart.h
diff --git a/arch/arm/mach-s3c24xx/mach-amlm5900.c b/arch/arm/mach-s3c/mach-amlm5900.c
similarity index 99%
rename from arch/arm/mach-s3c24xx/mach-amlm5900.c
rename to arch/arm/mach-s3c/mach-amlm5900.c
index ef6de1b1d0c6..f9240081f840 100644
--- a/arch/arm/mach-s3c24xx/mach-amlm5900.c
+++ b/arch/arm/mach-s3c/mach-amlm5900.c
@@ -47,7 +47,7 @@
 
 #include <plat/samsung-time.h>
 
-#include "common.h"
+#include "s3c24xx.h"
 
 static struct resource amlm5900_nor_resource =
 			DEFINE_RES_MEM(0x00000000, SZ_16M);
diff --git a/arch/arm/mach-s3c24xx/mach-anubis.c b/arch/arm/mach-s3c/mach-anubis.c
similarity index 99%
rename from arch/arm/mach-s3c24xx/mach-anubis.c
rename to arch/arm/mach-s3c/mach-anubis.c
index e1a73274e90b..5cfb7aed9fe7 100644
--- a/arch/arm/mach-s3c24xx/mach-anubis.c
+++ b/arch/arm/mach-s3c/mach-anubis.c
@@ -46,7 +46,7 @@
 #include <plat/samsung-time.h>
 
 #include "anubis.h"
-#include "common.h"
+#include "s3c24xx.h"
 #include "simtec.h"
 
 #define COPYRIGHT ", Copyright 2005-2009 Simtec Electronics"
diff --git a/arch/arm/mach-s3c64xx/mach-anw6410.c b/arch/arm/mach-s3c/mach-anw6410.c
similarity index 99%
rename from arch/arm/mach-s3c64xx/mach-anw6410.c
rename to arch/arm/mach-s3c/mach-anw6410.c
index 44858c5aea5d..9bf8c8791553 100644
--- a/arch/arm/mach-s3c64xx/mach-anw6410.c
+++ b/arch/arm/mach-s3c/mach-anw6410.c
@@ -45,7 +45,7 @@
 #include <mach/gpio-samsung.h>
 #include <plat/samsung-time.h>
 
-#include "common.h"
+#include "s3c64xx.h"
 #include "regs-modem.h"
 
 /* DM9000 */
diff --git a/arch/arm/mach-s3c24xx/mach-at2440evb.c b/arch/arm/mach-s3c/mach-at2440evb.c
similarity index 99%
rename from arch/arm/mach-s3c24xx/mach-at2440evb.c
rename to arch/arm/mach-s3c/mach-at2440evb.c
index bfda6dd2a9d5..2103c4c1059a 100644
--- a/arch/arm/mach-s3c24xx/mach-at2440evb.c
+++ b/arch/arm/mach-s3c/mach-at2440evb.c
@@ -44,7 +44,7 @@
 #include <linux/platform_data/mmc-s3cmci.h>
 #include <plat/samsung-time.h>
 
-#include "common.h"
+#include "s3c24xx.h"
 
 static struct map_desc at2440evb_iodesc[] __initdata = {
 	/* Nothing here */
diff --git a/arch/arm/mach-s3c24xx/mach-bast.c b/arch/arm/mach-s3c/mach-bast.c
similarity index 99%
rename from arch/arm/mach-s3c24xx/mach-bast.c
rename to arch/arm/mach-s3c/mach-bast.c
index b2f2d036bca2..6e363afbaab1 100644
--- a/arch/arm/mach-s3c24xx/mach-bast.c
+++ b/arch/arm/mach-s3c/mach-bast.c
@@ -52,7 +52,7 @@
 #include <plat/samsung-time.h>
 
 #include "bast.h"
-#include "common.h"
+#include "s3c24xx.h"
 #include "simtec.h"
 
 #define COPYRIGHT ", Copyright 2004-2008 Simtec Electronics"
diff --git a/arch/arm/mach-s3c64xx/mach-crag6410-module.c b/arch/arm/mach-s3c/mach-crag6410-module.c
similarity index 100%
rename from arch/arm/mach-s3c64xx/mach-crag6410-module.c
rename to arch/arm/mach-s3c/mach-crag6410-module.c
diff --git a/arch/arm/mach-s3c64xx/mach-crag6410.c b/arch/arm/mach-s3c/mach-crag6410.c
similarity index 99%
rename from arch/arm/mach-s3c64xx/mach-crag6410.c
rename to arch/arm/mach-s3c/mach-crag6410.c
index 133453562d23..947f344ac4d4 100644
--- a/arch/arm/mach-s3c64xx/mach-crag6410.c
+++ b/arch/arm/mach-s3c/mach-crag6410.c
@@ -62,7 +62,7 @@
 #include <plat/pm.h>
 #include <plat/samsung-time.h>
 
-#include "common.h"
+#include "s3c64xx.h"
 #include "crag6410.h"
 #include "regs-gpio-memport.h"
 #include "regs-modem.h"
diff --git a/arch/arm/mach-s3c24xx/mach-gta02.c b/arch/arm/mach-s3c/mach-gta02.c
similarity index 99%
rename from arch/arm/mach-s3c24xx/mach-gta02.c
rename to arch/arm/mach-s3c/mach-gta02.c
index 1e42782dbd30..bf0de248b489 100644
--- a/arch/arm/mach-s3c24xx/mach-gta02.c
+++ b/arch/arm/mach-s3c/mach-gta02.c
@@ -70,7 +70,7 @@
 #include <plat/pm.h>
 #include <plat/samsung-time.h>
 
-#include "common.h"
+#include "s3c24xx.h"
 #include "gta02.h"
 
 static struct pcf50633 *gta02_pcf;
diff --git a/arch/arm/mach-s3c24xx/mach-h1940.c b/arch/arm/mach-s3c/mach-h1940.c
similarity index 99%
rename from arch/arm/mach-s3c24xx/mach-h1940.c
rename to arch/arm/mach-s3c/mach-h1940.c
index 287e42fc1665..6e329cb1a7ec 100644
--- a/arch/arm/mach-s3c24xx/mach-h1940.c
+++ b/arch/arm/mach-s3c/mach-h1940.c
@@ -60,7 +60,7 @@
 #include <plat/pm.h>
 #include <plat/samsung-time.h>
 
-#include "common.h"
+#include "s3c24xx.h"
 #include "h1940.h"
 
 #define H1940_LATCH		((void __force __iomem *)0xF8000000)
diff --git a/arch/arm/mach-s3c64xx/mach-hmt.c b/arch/arm/mach-s3c/mach-hmt.c
similarity index 99%
rename from arch/arm/mach-s3c64xx/mach-hmt.c
rename to arch/arm/mach-s3c/mach-hmt.c
index a6634fd9e6c4..dd1b73c31956 100644
--- a/arch/arm/mach-s3c64xx/mach-hmt.c
+++ b/arch/arm/mach-s3c/mach-hmt.c
@@ -40,7 +40,7 @@
 #include <plat/cpu.h>
 #include <plat/samsung-time.h>
 
-#include "common.h"
+#include "s3c64xx.h"
 
 #define UCON S3C2410_UCON_DEFAULT
 #define ULCON (S3C2410_LCON_CS8 | S3C2410_LCON_PNONE)
diff --git a/arch/arm/mach-s3c24xx/mach-jive.c b/arch/arm/mach-s3c/mach-jive.c
similarity index 99%
rename from arch/arm/mach-s3c24xx/mach-jive.c
rename to arch/arm/mach-s3c/mach-jive.c
index 8012c34bddd9..27f4c99172c6 100644
--- a/arch/arm/mach-s3c24xx/mach-jive.c
+++ b/arch/arm/mach-s3c/mach-jive.c
@@ -50,7 +50,7 @@
 #include <linux/platform_data/usb-s3c2410_udc.h>
 #include <plat/samsung-time.h>
 
-#include "common.h"
+#include "s3c24xx.h"
 #include "s3c2412-power.h"
 
 static struct map_desc jive_iodesc[] __initdata = {
diff --git a/arch/arm/mach-s3c24xx/mach-mini2440.c b/arch/arm/mach-s3c/mach-mini2440.c
similarity index 99%
rename from arch/arm/mach-s3c24xx/mach-mini2440.c
rename to arch/arm/mach-s3c/mach-mini2440.c
index 2301e07c7d64..4280d0a8c4e2 100644
--- a/arch/arm/mach-s3c24xx/mach-mini2440.c
+++ b/arch/arm/mach-s3c/mach-mini2440.c
@@ -55,7 +55,7 @@
 
 #include <sound/s3c24xx_uda134x.h>
 
-#include "common.h"
+#include "s3c24xx.h"
 
 #define MACH_MINI2440_DM9K_BASE (S3C2410_CS4 + 0x300)
 
diff --git a/arch/arm/mach-s3c64xx/mach-mini6410.c b/arch/arm/mach-s3c/mach-mini6410.c
similarity index 99%
rename from arch/arm/mach-s3c64xx/mach-mini6410.c
rename to arch/arm/mach-s3c/mach-mini6410.c
index c7140300bd3f..369325107ff1 100644
--- a/arch/arm/mach-s3c64xx/mach-mini6410.c
+++ b/arch/arm/mach-s3c/mach-mini6410.c
@@ -41,7 +41,7 @@
 #include <video/samsung_fimd.h>
 #include <plat/samsung-time.h>
 
-#include "common.h"
+#include "s3c64xx.h"
 #include "regs-modem.h"
 #include "regs-srom.h"
 
diff --git a/arch/arm/mach-s3c24xx/mach-n30.c b/arch/arm/mach-s3c/mach-n30.c
similarity index 99%
rename from arch/arm/mach-s3c24xx/mach-n30.c
rename to arch/arm/mach-s3c/mach-n30.c
index 6b8ee5ba00ca..196f4cb17fbb 100644
--- a/arch/arm/mach-s3c24xx/mach-n30.c
+++ b/arch/arm/mach-s3c/mach-n30.c
@@ -49,7 +49,7 @@
 #include <linux/platform_data/usb-s3c2410_udc.h>
 #include <plat/samsung-time.h>
 
-#include "common.h"
+#include "s3c24xx.h"
 
 static struct map_desc n30_iodesc[] __initdata = {
 	/* nothing here yet */
diff --git a/arch/arm/mach-s3c64xx/mach-ncp.c b/arch/arm/mach-s3c/mach-ncp.c
similarity index 99%
rename from arch/arm/mach-s3c64xx/mach-ncp.c
rename to arch/arm/mach-s3c/mach-ncp.c
index 34a00b33fae9..6e2e30e2fee3 100644
--- a/arch/arm/mach-s3c64xx/mach-ncp.c
+++ b/arch/arm/mach-s3c/mach-ncp.c
@@ -37,7 +37,7 @@
 #include <plat/cpu.h>
 #include <plat/samsung-time.h>
 
-#include "common.h"
+#include "s3c64xx.h"
 
 #define UCON S3C2410_UCON_DEFAULT
 #define ULCON S3C2410_LCON_CS8 | S3C2410_LCON_PNONE
diff --git a/arch/arm/mach-s3c24xx/mach-nexcoder.c b/arch/arm/mach-s3c/mach-nexcoder.c
similarity index 99%
rename from arch/arm/mach-s3c24xx/mach-nexcoder.c
rename to arch/arm/mach-s3c/mach-nexcoder.c
index a05c92b6de2e..9b281d1a5536 100644
--- a/arch/arm/mach-s3c24xx/mach-nexcoder.c
+++ b/arch/arm/mach-s3c/mach-nexcoder.c
@@ -42,7 +42,7 @@
 #include <plat/cpu.h>
 #include <plat/samsung-time.h>
 
-#include "common.h"
+#include "s3c24xx.h"
 
 static struct map_desc nexcoder_iodesc[] __initdata = {
 	/* nothing here yet */
diff --git a/arch/arm/mach-s3c24xx/mach-osiris-dvs.c b/arch/arm/mach-s3c/mach-osiris-dvs.c
similarity index 100%
rename from arch/arm/mach-s3c24xx/mach-osiris-dvs.c
rename to arch/arm/mach-s3c/mach-osiris-dvs.c
diff --git a/arch/arm/mach-s3c24xx/mach-osiris.c b/arch/arm/mach-s3c/mach-osiris.c
similarity index 99%
rename from arch/arm/mach-s3c24xx/mach-osiris.c
rename to arch/arm/mach-s3c/mach-osiris.c
index 674164264076..2aeeb2230b85 100644
--- a/arch/arm/mach-s3c24xx/mach-osiris.c
+++ b/arch/arm/mach-s3c/mach-osiris.c
@@ -46,7 +46,7 @@
 #include <mach/regs-gpio.h>
 #include <mach/gpio-samsung.h>
 
-#include "common.h"
+#include "s3c24xx.h"
 #include "osiris.h"
 #include "regs-mem.h"
 
diff --git a/arch/arm/mach-s3c24xx/mach-otom.c b/arch/arm/mach-s3c/mach-otom.c
similarity index 99%
rename from arch/arm/mach-s3c24xx/mach-otom.c
rename to arch/arm/mach-s3c/mach-otom.c
index c834f16e5ba0..60917d1bf236 100644
--- a/arch/arm/mach-s3c24xx/mach-otom.c
+++ b/arch/arm/mach-s3c/mach-otom.c
@@ -31,7 +31,7 @@
 #include <plat/devs.h>
 #include <plat/samsung-time.h>
 
-#include "common.h"
+#include "s3c24xx.h"
 #include "otom.h"
 
 static struct map_desc otom11_iodesc[] __initdata = {
diff --git a/arch/arm/mach-s3c24xx/mach-qt2410.c b/arch/arm/mach-s3c/mach-qt2410.c
similarity index 99%
rename from arch/arm/mach-s3c24xx/mach-qt2410.c
rename to arch/arm/mach-s3c/mach-qt2410.c
index 1d0f5d65e7e5..db2ff1085718 100644
--- a/arch/arm/mach-s3c24xx/mach-qt2410.c
+++ b/arch/arm/mach-s3c/mach-qt2410.c
@@ -45,7 +45,7 @@
 #include <plat/pm.h>
 #include <plat/samsung-time.h>
 
-#include "common.h"
+#include "s3c24xx.h"
 #include "common-smdk.h"
 
 static struct map_desc qt2410_iodesc[] __initdata = {
diff --git a/arch/arm/mach-s3c64xx/mach-real6410.c b/arch/arm/mach-s3c/mach-real6410.c
similarity index 99%
rename from arch/arm/mach-s3c64xx/mach-real6410.c
rename to arch/arm/mach-s3c/mach-real6410.c
index f55097fde94c..b72598b4ae27 100644
--- a/arch/arm/mach-s3c64xx/mach-real6410.c
+++ b/arch/arm/mach-s3c/mach-real6410.c
@@ -40,7 +40,7 @@
 #include <video/samsung_fimd.h>
 #include <plat/samsung-time.h>
 
-#include "common.h"
+#include "s3c64xx.h"
 #include "regs-modem.h"
 #include "regs-srom.h"
 
diff --git a/arch/arm/mach-s3c24xx/mach-rx1950.c b/arch/arm/mach-s3c/mach-rx1950.c
similarity index 99%
rename from arch/arm/mach-s3c24xx/mach-rx1950.c
rename to arch/arm/mach-s3c/mach-rx1950.c
index f94884090fbe..87d82c954523 100644
--- a/arch/arm/mach-s3c24xx/mach-rx1950.c
+++ b/arch/arm/mach-s3c/mach-rx1950.c
@@ -56,7 +56,7 @@
 #include <plat/samsung-time.h>
 #include <plat/gpio-cfg.h>
 
-#include "common.h"
+#include "s3c24xx.h"
 #include "h1940.h"
 
 #define LCD_PWM_PERIOD 192960
diff --git a/arch/arm/mach-s3c24xx/mach-rx3715.c b/arch/arm/mach-s3c/mach-rx3715.c
similarity index 99%
rename from arch/arm/mach-s3c24xx/mach-rx3715.c
rename to arch/arm/mach-s3c/mach-rx3715.c
index 87f3274241b2..c810680669d4 100644
--- a/arch/arm/mach-s3c24xx/mach-rx3715.c
+++ b/arch/arm/mach-s3c/mach-rx3715.c
@@ -45,7 +45,7 @@
 #include <plat/pm.h>
 #include <plat/samsung-time.h>
 
-#include "common.h"
+#include "s3c24xx.h"
 #include "h1940.h"
 
 static struct map_desc rx3715_iodesc[] __initdata = {
diff --git a/arch/arm/mach-s3c24xx/mach-s3c2416-dt.c b/arch/arm/mach-s3c/mach-s3c2416-dt.c
similarity index 98%
rename from arch/arm/mach-s3c24xx/mach-s3c2416-dt.c
rename to arch/arm/mach-s3c/mach-s3c2416-dt.c
index aa7102713b37..2924e230e79d 100644
--- a/arch/arm/mach-s3c24xx/mach-s3c2416-dt.c
+++ b/arch/arm/mach-s3c/mach-s3c2416-dt.c
@@ -21,7 +21,7 @@
 #include <plat/cpu.h>
 #include <plat/pm.h>
 
-#include "common.h"
+#include "s3c24xx.h"
 
 static void __init s3c2416_dt_map_io(void)
 {
diff --git a/arch/arm/mach-s3c64xx/mach-s3c64xx-dt.c b/arch/arm/mach-s3c/mach-s3c64xx-dt.c
similarity index 98%
rename from arch/arm/mach-s3c64xx/mach-s3c64xx-dt.c
rename to arch/arm/mach-s3c/mach-s3c64xx-dt.c
index 1724f5ea5c46..1b8b61edd40e 100644
--- a/arch/arm/mach-s3c64xx/mach-s3c64xx-dt.c
+++ b/arch/arm/mach-s3c/mach-s3c64xx-dt.c
@@ -11,7 +11,7 @@
 #include <plat/cpu.h>
 #include <mach/map.h>
 
-#include "common.h"
+#include "s3c64xx.h"
 #include "watchdog-reset.h"
 
 /*
diff --git a/arch/arm/mach-s3c64xx/mach-smartq.c b/arch/arm/mach-s3c/mach-smartq.c
similarity index 99%
rename from arch/arm/mach-s3c64xx/mach-smartq.c
rename to arch/arm/mach-s3c/mach-smartq.c
index 951208f168e7..fa5f2ebc6dbc 100644
--- a/arch/arm/mach-s3c64xx/mach-smartq.c
+++ b/arch/arm/mach-s3c/mach-smartq.c
@@ -35,7 +35,7 @@
 #include <video/platform_lcd.h>
 #include <plat/samsung-time.h>
 
-#include "common.h"
+#include "s3c64xx.h"
 #include "mach-smartq.h"
 #include "regs-modem.h"
 
diff --git a/arch/arm/mach-s3c64xx/mach-smartq.h b/arch/arm/mach-s3c/mach-smartq.h
similarity index 100%
rename from arch/arm/mach-s3c64xx/mach-smartq.h
rename to arch/arm/mach-s3c/mach-smartq.h
diff --git a/arch/arm/mach-s3c64xx/mach-smartq5.c b/arch/arm/mach-s3c/mach-smartq5.c
similarity index 99%
rename from arch/arm/mach-s3c64xx/mach-smartq5.c
rename to arch/arm/mach-s3c/mach-smartq5.c
index 44e9edb144fa..91560ed02738 100644
--- a/arch/arm/mach-s3c64xx/mach-smartq5.c
+++ b/arch/arm/mach-s3c/mach-smartq5.c
@@ -25,7 +25,7 @@
 #include <plat/gpio-cfg.h>
 #include <plat/samsung-time.h>
 
-#include "common.h"
+#include "s3c64xx.h"
 #include "mach-smartq.h"
 
 static struct gpio_led smartq5_leds[] = {
diff --git a/arch/arm/mach-s3c64xx/mach-smartq7.c b/arch/arm/mach-s3c/mach-smartq7.c
similarity index 99%
rename from arch/arm/mach-s3c64xx/mach-smartq7.c
rename to arch/arm/mach-s3c/mach-smartq7.c
index 815ee7d0b5e3..9eadc837ba12 100644
--- a/arch/arm/mach-s3c64xx/mach-smartq7.c
+++ b/arch/arm/mach-s3c/mach-smartq7.c
@@ -25,7 +25,7 @@
 #include <plat/gpio-cfg.h>
 #include <plat/samsung-time.h>
 
-#include "common.h"
+#include "s3c64xx.h"
 #include "mach-smartq.h"
 
 static struct gpio_led smartq7_leds[] = {
diff --git a/arch/arm/mach-s3c24xx/mach-smdk2410.c b/arch/arm/mach-s3c/mach-smdk2410.c
similarity index 99%
rename from arch/arm/mach-s3c24xx/mach-smdk2410.c
rename to arch/arm/mach-s3c/mach-smdk2410.c
index 02adaac4d6df..35aa8ec7cc4f 100644
--- a/arch/arm/mach-s3c24xx/mach-smdk2410.c
+++ b/arch/arm/mach-s3c/mach-smdk2410.c
@@ -36,7 +36,7 @@
 #include <plat/cpu.h>
 #include <plat/samsung-time.h>
 
-#include "common.h"
+#include "s3c24xx.h"
 #include "common-smdk.h"
 
 static struct map_desc smdk2410_iodesc[] __initdata = {
diff --git a/arch/arm/mach-s3c24xx/mach-smdk2413.c b/arch/arm/mach-s3c/mach-smdk2413.c
similarity index 99%
rename from arch/arm/mach-s3c24xx/mach-smdk2413.c
rename to arch/arm/mach-s3c/mach-smdk2413.c
index eec0d3dc4bb1..f2305961f7eb 100644
--- a/arch/arm/mach-s3c24xx/mach-smdk2413.c
+++ b/arch/arm/mach-s3c/mach-smdk2413.c
@@ -42,7 +42,7 @@
 #include <plat/cpu.h>
 #include <plat/samsung-time.h>
 
-#include "common.h"
+#include "s3c24xx.h"
 #include "common-smdk.h"
 
 static struct map_desc smdk2413_iodesc[] __initdata = {
diff --git a/arch/arm/mach-s3c24xx/mach-smdk2416.c b/arch/arm/mach-s3c/mach-smdk2416.c
similarity index 99%
rename from arch/arm/mach-s3c24xx/mach-smdk2416.c
rename to arch/arm/mach-s3c/mach-smdk2416.c
index fbd3a8d96f94..7fd5df4cf7e3 100644
--- a/arch/arm/mach-s3c24xx/mach-smdk2416.c
+++ b/arch/arm/mach-s3c/mach-smdk2416.c
@@ -47,7 +47,7 @@
 
 #include <plat/fb.h>
 
-#include "common.h"
+#include "s3c24xx.h"
 #include "common-smdk.h"
 
 static struct map_desc smdk2416_iodesc[] __initdata = {
diff --git a/arch/arm/mach-s3c24xx/mach-smdk2440.c b/arch/arm/mach-s3c/mach-smdk2440.c
similarity index 99%
rename from arch/arm/mach-s3c24xx/mach-smdk2440.c
rename to arch/arm/mach-s3c/mach-smdk2440.c
index b9b0f2a8c904..d72f86a68c84 100644
--- a/arch/arm/mach-s3c24xx/mach-smdk2440.c
+++ b/arch/arm/mach-s3c/mach-smdk2440.c
@@ -38,7 +38,7 @@
 #include <plat/cpu.h>
 #include <plat/samsung-time.h>
 
-#include "common.h"
+#include "s3c24xx.h"
 #include "common-smdk.h"
 
 static struct map_desc smdk2440_iodesc[] __initdata = {
diff --git a/arch/arm/mach-s3c24xx/mach-smdk2443.c b/arch/arm/mach-s3c/mach-smdk2443.c
similarity index 99%
rename from arch/arm/mach-s3c24xx/mach-smdk2443.c
rename to arch/arm/mach-s3c/mach-smdk2443.c
index a4c1022678a9..b439dfabd421 100644
--- a/arch/arm/mach-s3c24xx/mach-smdk2443.c
+++ b/arch/arm/mach-s3c/mach-smdk2443.c
@@ -35,7 +35,7 @@
 #include <plat/cpu.h>
 #include <plat/samsung-time.h>
 
-#include "common.h"
+#include "s3c24xx.h"
 #include "common-smdk.h"
 
 static struct map_desc smdk2443_iodesc[] __initdata = {
diff --git a/arch/arm/mach-s3c64xx/mach-smdk6400.c b/arch/arm/mach-s3c/mach-smdk6400.c
similarity index 99%
rename from arch/arm/mach-s3c64xx/mach-smdk6400.c
rename to arch/arm/mach-s3c/mach-smdk6400.c
index 885158f0a304..a2a70c5f5667 100644
--- a/arch/arm/mach-s3c64xx/mach-smdk6400.c
+++ b/arch/arm/mach-s3c/mach-smdk6400.c
@@ -31,7 +31,7 @@
 #include <mach/gpio-samsung.h>
 #include <plat/samsung-time.h>
 
-#include "common.h"
+#include "s3c64xx.h"
 
 #define UCON S3C2410_UCON_DEFAULT | S3C2410_UCON_UCLK
 #define ULCON S3C2410_LCON_CS8 | S3C2410_LCON_PNONE | S3C2410_LCON_STOPB
diff --git a/arch/arm/mach-s3c64xx/mach-smdk6410.c b/arch/arm/mach-s3c/mach-smdk6410.c
similarity index 99%
rename from arch/arm/mach-s3c64xx/mach-smdk6410.c
rename to arch/arm/mach-s3c/mach-smdk6410.c
index 3042f6cbffd9..a80c2138e90b 100644
--- a/arch/arm/mach-s3c64xx/mach-smdk6410.c
+++ b/arch/arm/mach-s3c/mach-smdk6410.c
@@ -66,7 +66,7 @@
 #include <plat/samsung-time.h>
 
 #include "backlight.h"
-#include "common.h"
+#include "s3c64xx.h"
 #include "regs-modem.h"
 #include "regs-srom.h"
 #include "regs-sys.h"
diff --git a/arch/arm/mach-s3c24xx/mach-tct_hammer.c b/arch/arm/mach-s3c/mach-tct_hammer.c
similarity index 99%
rename from arch/arm/mach-s3c24xx/mach-tct_hammer.c
rename to arch/arm/mach-s3c/mach-tct_hammer.c
index d6dbbe6759bc..f1ed79889e39 100644
--- a/arch/arm/mach-s3c24xx/mach-tct_hammer.c
+++ b/arch/arm/mach-s3c/mach-tct_hammer.c
@@ -39,7 +39,7 @@
 #include <linux/mtd/physmap.h>
 #include <plat/samsung-time.h>
 
-#include "common.h"
+#include "s3c24xx.h"
 
 static struct resource tct_hammer_nor_resource =
 			DEFINE_RES_MEM(0x00000000, SZ_16M);
diff --git a/arch/arm/mach-s3c24xx/mach-vr1000.c b/arch/arm/mach-s3c/mach-vr1000.c
similarity index 99%
rename from arch/arm/mach-s3c24xx/mach-vr1000.c
rename to arch/arm/mach-s3c/mach-vr1000.c
index ca2f874a637e..854783386a06 100644
--- a/arch/arm/mach-s3c24xx/mach-vr1000.c
+++ b/arch/arm/mach-s3c/mach-vr1000.c
@@ -44,7 +44,7 @@
 #include <plat/samsung-time.h>
 
 #include "bast.h"
-#include "common.h"
+#include "s3c24xx.h"
 #include "simtec.h"
 #include "vr1000.h"
 
diff --git a/arch/arm/mach-s3c24xx/mach-vstms.c b/arch/arm/mach-s3c/mach-vstms.c
similarity index 99%
rename from arch/arm/mach-s3c24xx/mach-vstms.c
rename to arch/arm/mach-s3c/mach-vstms.c
index 08acc556879b..7496271bb343 100644
--- a/arch/arm/mach-s3c24xx/mach-vstms.c
+++ b/arch/arm/mach-s3c/mach-vstms.c
@@ -42,7 +42,7 @@
 #include <plat/cpu.h>
 #include <plat/samsung-time.h>
 
-#include "common.h"
+#include "s3c24xx.h"
 
 static struct map_desc vstms_iodesc[] __initdata = {
 };
diff --git a/arch/arm/mach-s3c24xx/nand-core.h b/arch/arm/mach-s3c/nand-core.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/nand-core.h
rename to arch/arm/mach-s3c/nand-core.h
diff --git a/arch/arm/mach-s3c64xx/onenand-core.h b/arch/arm/mach-s3c/onenand-core.h
similarity index 100%
rename from arch/arm/mach-s3c64xx/onenand-core.h
rename to arch/arm/mach-s3c/onenand-core.h
diff --git a/arch/arm/mach-s3c24xx/osiris.h b/arch/arm/mach-s3c/osiris.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/osiris.h
rename to arch/arm/mach-s3c/osiris.h
diff --git a/arch/arm/mach-s3c24xx/otom.h b/arch/arm/mach-s3c/otom.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/otom.h
rename to arch/arm/mach-s3c/otom.h
diff --git a/arch/arm/mach-s3c64xx/pl080.c b/arch/arm/mach-s3c/pl080.c
similarity index 100%
rename from arch/arm/mach-s3c64xx/pl080.c
rename to arch/arm/mach-s3c/pl080.c
diff --git a/arch/arm/plat-samsung/platformdata.c b/arch/arm/mach-s3c/platformdata.c
similarity index 100%
rename from arch/arm/plat-samsung/platformdata.c
rename to arch/arm/mach-s3c/platformdata.c
diff --git a/arch/arm/mach-s3c24xx/pll-s3c2410.c b/arch/arm/mach-s3c/pll-s3c2410.c
similarity index 100%
rename from arch/arm/mach-s3c24xx/pll-s3c2410.c
rename to arch/arm/mach-s3c/pll-s3c2410.c
diff --git a/arch/arm/mach-s3c24xx/pll-s3c2440-12000000.c b/arch/arm/mach-s3c/pll-s3c2440-12000000.c
similarity index 100%
rename from arch/arm/mach-s3c24xx/pll-s3c2440-12000000.c
rename to arch/arm/mach-s3c/pll-s3c2440-12000000.c
diff --git a/arch/arm/mach-s3c24xx/pll-s3c2440-16934400.c b/arch/arm/mach-s3c/pll-s3c2440-16934400.c
similarity index 100%
rename from arch/arm/mach-s3c24xx/pll-s3c2440-16934400.c
rename to arch/arm/mach-s3c/pll-s3c2440-16934400.c
diff --git a/arch/arm/plat-samsung/pm-common.c b/arch/arm/mach-s3c/pm-common.c
similarity index 100%
rename from arch/arm/plat-samsung/pm-common.c
rename to arch/arm/mach-s3c/pm-common.c
diff --git a/arch/arm/plat-samsung/pm-gpio.c b/arch/arm/mach-s3c/pm-gpio.c
similarity index 100%
rename from arch/arm/plat-samsung/pm-gpio.c
rename to arch/arm/mach-s3c/pm-gpio.c
diff --git a/arch/arm/mach-s3c24xx/pm-h1940.S b/arch/arm/mach-s3c/pm-h1940.S
similarity index 100%
rename from arch/arm/mach-s3c24xx/pm-h1940.S
rename to arch/arm/mach-s3c/pm-h1940.S
diff --git a/arch/arm/mach-s3c24xx/pm-s3c2410.c b/arch/arm/mach-s3c/pm-s3c2410.c
similarity index 100%
rename from arch/arm/mach-s3c24xx/pm-s3c2410.c
rename to arch/arm/mach-s3c/pm-s3c2410.c
diff --git a/arch/arm/mach-s3c24xx/pm-s3c2412.c b/arch/arm/mach-s3c/pm-s3c2412.c
similarity index 100%
rename from arch/arm/mach-s3c24xx/pm-s3c2412.c
rename to arch/arm/mach-s3c/pm-s3c2412.c
diff --git a/arch/arm/mach-s3c24xx/pm-s3c2416.c b/arch/arm/mach-s3c/pm-s3c2416.c
similarity index 100%
rename from arch/arm/mach-s3c24xx/pm-s3c2416.c
rename to arch/arm/mach-s3c/pm-s3c2416.c
diff --git a/arch/arm/mach-s3c24xx/pm.c b/arch/arm/mach-s3c/pm-s3c24xx.c
similarity index 100%
rename from arch/arm/mach-s3c24xx/pm.c
rename to arch/arm/mach-s3c/pm-s3c24xx.c
diff --git a/arch/arm/mach-s3c64xx/pm.c b/arch/arm/mach-s3c/pm-s3c64xx.c
similarity index 100%
rename from arch/arm/mach-s3c64xx/pm.c
rename to arch/arm/mach-s3c/pm-s3c64xx.c
diff --git a/arch/arm/plat-samsung/pm.c b/arch/arm/mach-s3c/pm.c
similarity index 100%
rename from arch/arm/plat-samsung/pm.c
rename to arch/arm/mach-s3c/pm.c
diff --git a/arch/arm/mach-s3c24xx/regs-dsc.h b/arch/arm/mach-s3c/regs-dsc.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/regs-dsc.h
rename to arch/arm/mach-s3c/regs-dsc.h
diff --git a/arch/arm/mach-s3c64xx/regs-gpio-memport.h b/arch/arm/mach-s3c/regs-gpio-memport.h
similarity index 100%
rename from arch/arm/mach-s3c64xx/regs-gpio-memport.h
rename to arch/arm/mach-s3c/regs-gpio-memport.h
diff --git a/arch/arm/mach-s3c24xx/regs-mem.h b/arch/arm/mach-s3c/regs-mem.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/regs-mem.h
rename to arch/arm/mach-s3c/regs-mem.h
diff --git a/arch/arm/mach-s3c64xx/regs-modem.h b/arch/arm/mach-s3c/regs-modem.h
similarity index 100%
rename from arch/arm/mach-s3c64xx/regs-modem.h
rename to arch/arm/mach-s3c/regs-modem.h
diff --git a/arch/arm/mach-s3c64xx/regs-srom.h b/arch/arm/mach-s3c/regs-srom.h
similarity index 100%
rename from arch/arm/mach-s3c64xx/regs-srom.h
rename to arch/arm/mach-s3c/regs-srom.h
diff --git a/arch/arm/mach-s3c64xx/regs-sys.h b/arch/arm/mach-s3c/regs-sys.h
similarity index 100%
rename from arch/arm/mach-s3c64xx/regs-sys.h
rename to arch/arm/mach-s3c/regs-sys.h
diff --git a/arch/arm/mach-s3c64xx/regs-syscon-power.h b/arch/arm/mach-s3c/regs-syscon-power.h
similarity index 100%
rename from arch/arm/mach-s3c64xx/regs-syscon-power.h
rename to arch/arm/mach-s3c/regs-syscon-power.h
diff --git a/arch/arm/mach-s3c64xx/regs-usb-hsotg-phy.h b/arch/arm/mach-s3c/regs-usb-hsotg-phy.h
similarity index 100%
rename from arch/arm/mach-s3c64xx/regs-usb-hsotg-phy.h
rename to arch/arm/mach-s3c/regs-usb-hsotg-phy.h
diff --git a/arch/arm/mach-s3c24xx/s3c2410.c b/arch/arm/mach-s3c/s3c2410.c
similarity index 99%
rename from arch/arm/mach-s3c24xx/s3c2410.c
rename to arch/arm/mach-s3c/s3c2410.c
index 44bf3e1e77f1..0013125b03ee 100644
--- a/arch/arm/mach-s3c24xx/s3c2410.c
+++ b/arch/arm/mach-s3c/s3c2410.c
@@ -41,7 +41,7 @@
 #include <plat/gpio-cfg.h>
 #include <plat/gpio-cfg-helpers.h>
 
-#include "common.h"
+#include "s3c24xx.h"
 
 /* Initial IO mappings */
 
diff --git a/arch/arm/mach-s3c24xx/s3c2412-power.h b/arch/arm/mach-s3c/s3c2412-power.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/s3c2412-power.h
rename to arch/arm/mach-s3c/s3c2412-power.h
diff --git a/arch/arm/mach-s3c24xx/s3c2412.c b/arch/arm/mach-s3c/s3c2412.c
similarity index 99%
rename from arch/arm/mach-s3c24xx/s3c2412.c
rename to arch/arm/mach-s3c/s3c2412.c
index 75648dcc2c1d..3599a2f01c1e 100644
--- a/arch/arm/mach-s3c24xx/s3c2412.c
+++ b/arch/arm/mach-s3c/s3c2412.c
@@ -37,7 +37,7 @@
 #include <plat/devs.h>
 #include <plat/pm.h>
 
-#include "common.h"
+#include "s3c24xx.h"
 #include "nand-core.h"
 #include "regs-dsc.h"
 #include "s3c2412-power.h"
diff --git a/arch/arm/mach-s3c24xx/s3c2416.c b/arch/arm/mach-s3c/s3c2416.c
similarity index 99%
rename from arch/arm/mach-s3c24xx/s3c2416.c
rename to arch/arm/mach-s3c/s3c2416.c
index ef2eace605e6..95c34fd36421 100644
--- a/arch/arm/mach-s3c24xx/s3c2416.c
+++ b/arch/arm/mach-s3c/s3c2416.c
@@ -46,7 +46,7 @@
 #include <plat/iic-core.h>
 #include <plat/adc-core.h>
 
-#include "common.h"
+#include "s3c24xx.h"
 #include "fb-core.h"
 #include "nand-core.h"
 #include "spi-core.h"
diff --git a/arch/arm/mach-s3c24xx/s3c2440.c b/arch/arm/mach-s3c/s3c2440.c
similarity index 98%
rename from arch/arm/mach-s3c24xx/s3c2440.c
rename to arch/arm/mach-s3c/s3c2440.c
index 451d9851b0a7..a7c2dcf50b21 100644
--- a/arch/arm/mach-s3c24xx/s3c2440.c
+++ b/arch/arm/mach-s3c/s3c2440.c
@@ -35,7 +35,7 @@
 #include <plat/gpio-cfg.h>
 #include <plat/gpio-cfg-helpers.h>
 
-#include "common.h"
+#include "s3c24xx.h"
 
 static struct device s3c2440_dev = {
 	.bus		= &s3c2440_subsys,
diff --git a/arch/arm/mach-s3c24xx/s3c2442.c b/arch/arm/mach-s3c/s3c2442.c
similarity index 98%
rename from arch/arm/mach-s3c24xx/s3c2442.c
rename to arch/arm/mach-s3c/s3c2442.c
index 432d68325c9d..ffef8a5e1a94 100644
--- a/arch/arm/mach-s3c24xx/s3c2442.c
+++ b/arch/arm/mach-s3c/s3c2442.c
@@ -35,7 +35,7 @@
 #include <plat/gpio-cfg.h>
 #include <plat/gpio-cfg-helpers.h>
 
-#include "common.h"
+#include "s3c24xx.h"
 
 static struct device s3c2442_dev = {
 	.bus		= &s3c2442_subsys,
diff --git a/arch/arm/mach-s3c24xx/s3c2443.c b/arch/arm/mach-s3c/s3c2443.c
similarity index 100%
rename from arch/arm/mach-s3c24xx/s3c2443.c
rename to arch/arm/mach-s3c/s3c2443.c
diff --git a/arch/arm/mach-s3c24xx/s3c244x.c b/arch/arm/mach-s3c/s3c244x.c
similarity index 99%
rename from arch/arm/mach-s3c24xx/s3c244x.c
rename to arch/arm/mach-s3c/s3c244x.c
index 0ca188d0ffe5..a013f3447777 100644
--- a/arch/arm/mach-s3c24xx/s3c244x.c
+++ b/arch/arm/mach-s3c/s3c244x.c
@@ -35,7 +35,7 @@
 #include <plat/cpu.h>
 #include <plat/pm.h>
 
-#include "common.h"
+#include "s3c24xx.h"
 #include "nand-core.h"
 #include "regs-dsc.h"
 
diff --git a/arch/arm/mach-s3c24xx/common.c b/arch/arm/mach-s3c/s3c24xx.c
similarity index 99%
rename from arch/arm/mach-s3c24xx/common.c
rename to arch/arm/mach-s3c/s3c24xx.c
index 42d828f48345..409f4c00c17f 100644
--- a/arch/arm/mach-s3c24xx/common.c
+++ b/arch/arm/mach-s3c/s3c24xx.c
@@ -38,7 +38,7 @@
 #include <plat/devs.h>
 #include <plat/pwm-core.h>
 
-#include "common.h"
+#include "s3c24xx.h"
 
 /* table of supported CPUs */
 
diff --git a/arch/arm/mach-s3c24xx/common.h b/arch/arm/mach-s3c/s3c24xx.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/common.h
rename to arch/arm/mach-s3c/s3c24xx.h
diff --git a/arch/arm/mach-s3c64xx/s3c6400.c b/arch/arm/mach-s3c/s3c6400.c
similarity index 98%
rename from arch/arm/mach-s3c64xx/s3c6400.c
rename to arch/arm/mach-s3c/s3c6400.c
index d18af724c807..2f94515558bc 100644
--- a/arch/arm/mach-s3c64xx/s3c6400.c
+++ b/arch/arm/mach-s3c/s3c6400.c
@@ -35,7 +35,7 @@
 #include <plat/sdhci.h>
 #include <plat/iic-core.h>
 
-#include "common.h"
+#include "s3c64xx.h"
 #include "onenand-core.h"
 
 void __init s3c6400_map_io(void)
diff --git a/arch/arm/mach-s3c64xx/s3c6410.c b/arch/arm/mach-s3c/s3c6410.c
similarity index 99%
rename from arch/arm/mach-s3c64xx/s3c6410.c
rename to arch/arm/mach-s3c/s3c6410.c
index b1d725e55cd2..aa330d10e102 100644
--- a/arch/arm/mach-s3c64xx/s3c6410.c
+++ b/arch/arm/mach-s3c/s3c6410.c
@@ -39,7 +39,7 @@
 #include <plat/iic-core.h>
 
 #include "ata-core.h"
-#include "common.h"
+#include "s3c64xx.h"
 #include "onenand-core.h"
 
 void __init s3c6410_map_io(void)
diff --git a/arch/arm/mach-s3c64xx/common.c b/arch/arm/mach-s3c/s3c64xx.c
similarity index 99%
rename from arch/arm/mach-s3c64xx/common.c
rename to arch/arm/mach-s3c/s3c64xx.c
index 19d544f6808a..289b462a035d 100644
--- a/arch/arm/mach-s3c64xx/common.c
+++ b/arch/arm/mach-s3c/s3c64xx.c
@@ -46,7 +46,7 @@
 #include <plat/pwm-core.h>
 #include <plat/regs-irqtype.h>
 
-#include "common.h"
+#include "s3c64xx.h"
 #include "irq-uart.h"
 #include "watchdog-reset.h"
 
diff --git a/arch/arm/mach-s3c64xx/common.h b/arch/arm/mach-s3c/s3c64xx.h
similarity index 100%
rename from arch/arm/mach-s3c64xx/common.h
rename to arch/arm/mach-s3c/s3c64xx.h
diff --git a/arch/arm/mach-s3c24xx/setup-camif.c b/arch/arm/mach-s3c/setup-camif.c
similarity index 100%
rename from arch/arm/mach-s3c24xx/setup-camif.c
rename to arch/arm/mach-s3c/setup-camif.c
diff --git a/arch/arm/mach-s3c64xx/setup-fb-24bpp.c b/arch/arm/mach-s3c/setup-fb-24bpp.c
similarity index 100%
rename from arch/arm/mach-s3c64xx/setup-fb-24bpp.c
rename to arch/arm/mach-s3c/setup-fb-24bpp.c
diff --git a/arch/arm/mach-s3c24xx/setup-i2c.c b/arch/arm/mach-s3c/setup-i2c.c
similarity index 100%
rename from arch/arm/mach-s3c24xx/setup-i2c.c
rename to arch/arm/mach-s3c/setup-i2c.c
diff --git a/arch/arm/mach-s3c64xx/setup-i2c0.c b/arch/arm/mach-s3c/setup-i2c0.c
similarity index 100%
rename from arch/arm/mach-s3c64xx/setup-i2c0.c
rename to arch/arm/mach-s3c/setup-i2c0.c
diff --git a/arch/arm/mach-s3c64xx/setup-i2c1.c b/arch/arm/mach-s3c/setup-i2c1.c
similarity index 100%
rename from arch/arm/mach-s3c64xx/setup-i2c1.c
rename to arch/arm/mach-s3c/setup-i2c1.c
diff --git a/arch/arm/mach-s3c64xx/setup-ide.c b/arch/arm/mach-s3c/setup-ide.c
similarity index 100%
rename from arch/arm/mach-s3c64xx/setup-ide.c
rename to arch/arm/mach-s3c/setup-ide.c
diff --git a/arch/arm/mach-s3c64xx/setup-keypad.c b/arch/arm/mach-s3c/setup-keypad.c
similarity index 100%
rename from arch/arm/mach-s3c64xx/setup-keypad.c
rename to arch/arm/mach-s3c/setup-keypad.c
diff --git a/arch/arm/mach-s3c24xx/setup-sdhci-gpio.c b/arch/arm/mach-s3c/setup-sdhci-gpio-s3c24xx.c
similarity index 100%
rename from arch/arm/mach-s3c24xx/setup-sdhci-gpio.c
rename to arch/arm/mach-s3c/setup-sdhci-gpio-s3c24xx.c
diff --git a/arch/arm/mach-s3c64xx/setup-sdhci-gpio.c b/arch/arm/mach-s3c/setup-sdhci-gpio-s3c64xx.c
similarity index 100%
rename from arch/arm/mach-s3c64xx/setup-sdhci-gpio.c
rename to arch/arm/mach-s3c/setup-sdhci-gpio-s3c64xx.c
diff --git a/arch/arm/mach-s3c24xx/setup-spi.c b/arch/arm/mach-s3c/setup-spi-s3c24xx.c
similarity index 100%
rename from arch/arm/mach-s3c24xx/setup-spi.c
rename to arch/arm/mach-s3c/setup-spi-s3c24xx.c
diff --git a/arch/arm/mach-s3c64xx/setup-spi.c b/arch/arm/mach-s3c/setup-spi-s3c64xx.c
similarity index 100%
rename from arch/arm/mach-s3c64xx/setup-spi.c
rename to arch/arm/mach-s3c/setup-spi-s3c64xx.c
diff --git a/arch/arm/mach-s3c24xx/setup-ts.c b/arch/arm/mach-s3c/setup-ts.c
similarity index 100%
rename from arch/arm/mach-s3c24xx/setup-ts.c
rename to arch/arm/mach-s3c/setup-ts.c
diff --git a/arch/arm/mach-s3c64xx/setup-usb-phy.c b/arch/arm/mach-s3c/setup-usb-phy.c
similarity index 100%
rename from arch/arm/mach-s3c64xx/setup-usb-phy.c
rename to arch/arm/mach-s3c/setup-usb-phy.c
diff --git a/arch/arm/mach-s3c24xx/simtec-audio.c b/arch/arm/mach-s3c/simtec-audio.c
similarity index 100%
rename from arch/arm/mach-s3c24xx/simtec-audio.c
rename to arch/arm/mach-s3c/simtec-audio.c
diff --git a/arch/arm/mach-s3c24xx/simtec-nor.c b/arch/arm/mach-s3c/simtec-nor.c
similarity index 100%
rename from arch/arm/mach-s3c24xx/simtec-nor.c
rename to arch/arm/mach-s3c/simtec-nor.c
diff --git a/arch/arm/mach-s3c24xx/simtec-pm.c b/arch/arm/mach-s3c/simtec-pm.c
similarity index 100%
rename from arch/arm/mach-s3c24xx/simtec-pm.c
rename to arch/arm/mach-s3c/simtec-pm.c
diff --git a/arch/arm/mach-s3c24xx/simtec-usb.c b/arch/arm/mach-s3c/simtec-usb.c
similarity index 100%
rename from arch/arm/mach-s3c24xx/simtec-usb.c
rename to arch/arm/mach-s3c/simtec-usb.c
diff --git a/arch/arm/mach-s3c24xx/simtec.h b/arch/arm/mach-s3c/simtec.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/simtec.h
rename to arch/arm/mach-s3c/simtec.h
diff --git a/arch/arm/mach-s3c24xx/sleep-s3c2410.S b/arch/arm/mach-s3c/sleep-s3c2410.S
similarity index 100%
rename from arch/arm/mach-s3c24xx/sleep-s3c2410.S
rename to arch/arm/mach-s3c/sleep-s3c2410.S
diff --git a/arch/arm/mach-s3c24xx/sleep-s3c2412.S b/arch/arm/mach-s3c/sleep-s3c2412.S
similarity index 100%
rename from arch/arm/mach-s3c24xx/sleep-s3c2412.S
rename to arch/arm/mach-s3c/sleep-s3c2412.S
diff --git a/arch/arm/mach-s3c24xx/sleep.S b/arch/arm/mach-s3c/sleep-s3c24xx.S
similarity index 100%
rename from arch/arm/mach-s3c24xx/sleep.S
rename to arch/arm/mach-s3c/sleep-s3c24xx.S
diff --git a/arch/arm/mach-s3c64xx/sleep.S b/arch/arm/mach-s3c/sleep-s3c64xx.S
similarity index 100%
rename from arch/arm/mach-s3c64xx/sleep.S
rename to arch/arm/mach-s3c/sleep-s3c64xx.S
diff --git a/arch/arm/mach-s3c24xx/spi-core.h b/arch/arm/mach-s3c/spi-core.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/spi-core.h
rename to arch/arm/mach-s3c/spi-core.h
diff --git a/arch/arm/mach-s3c24xx/vr1000.h b/arch/arm/mach-s3c/vr1000.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/vr1000.h
rename to arch/arm/mach-s3c/vr1000.h
diff --git a/arch/arm/plat-samsung/wakeup-mask.c b/arch/arm/mach-s3c/wakeup-mask.c
similarity index 100%
rename from arch/arm/plat-samsung/wakeup-mask.c
rename to arch/arm/mach-s3c/wakeup-mask.c
diff --git a/arch/arm/plat-samsung/watchdog-reset.c b/arch/arm/mach-s3c/watchdog-reset.c
similarity index 100%
rename from arch/arm/plat-samsung/watchdog-reset.c
rename to arch/arm/mach-s3c/watchdog-reset.c
diff --git a/arch/arm/mach-s3c64xx/watchdog-reset.h b/arch/arm/mach-s3c/watchdog-reset.h
similarity index 100%
rename from arch/arm/mach-s3c64xx/watchdog-reset.h
rename to arch/arm/mach-s3c/watchdog-reset.h
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
