Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C70C7A7BD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 14:09:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N4gwqzLkzCR5tuMbYSeGUGFVnggqj/N3oTt5tgjMDqI=; b=EA49lGGFR7YUqd
	fkGTh7M+GN/c4yfvZp/GGrJE1PYlgYD1b+3mbUkO5r5F43B+zRJRALo10IQ2/ldcONx6n/YLG1dHI
	EHgD2cTxEy69WMjNcWmtH1KULJ0iQSFde/e3vp/wv9LaX7YMDABB7ZdrQ2XHUe34WEd8i+P/mGqIe
	m3eVIjSJ7Go4BFYO2KgixYat/9fkWq2Q/cHreNeJoaSELLOBK4/jw52nDTYshCSveZLsFNFOkW66e
	lNTSXjV7mcN/Olzq/FPz/hzXJmOxqcHANdb9aTb1kEFgDd2H7z3/jQJfxugwN3Xn/hOFOOgi7f8Ei
	QSzuvb4Ctme1RJMnlehQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsQwf-00023X-Ok; Tue, 30 Jul 2019 12:09:33 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsQwQ-00022j-23
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 12:09:20 +0000
Received: by mail-qt1-f195.google.com with SMTP id w17so18397025qto.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 05:09:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=z/l9N0lK6h2dWYTT28OwjwFL20DGOX4dTdSSx/lNdfU=;
 b=sWKjqWQeEuakUrC1Jv4+Bk/StzdGBDU/su9BND5h8YB2MQkdM+qVKIJ4QAAQInEPEQ
 TdpmWzQaUU4Z03Mnu+IykYiJnoujCUXPn8rPZu11PzSxo2TL7CS1BiB4CK9LZ8elY91t
 xwwtXR/Jfr1qMKkqWdQ6lp7o3is+dMG0D09hlrEwuBrE/h6fygIhEL83//OAvf/BVE8K
 SY9FVkWXQdlpfcq3ohNMIl+Sjj1yQ/BOUssPKmq1S5zc0XK09PSD7Ab0l0n150oqA2zG
 k6G7MPA1N/PLDPXvvwQm+j1HtPskTa7/sxlpJRGHkhMdsAI/AxIIsfRbICw1wTYaH74c
 p5Dw==
X-Gm-Message-State: APjAAAV07QZpzO0aox7rsckC+z86B1sJBbOL1SJ1qCMpOlp/ejEoW7LK
 X1b8YcQoWdRPx3re4q0iqKkeVVNSDSf83pPA6cc=
X-Google-Smtp-Source: APXvYqwGxkCImJKJnSNAPxg2yUkGb7dQTAX5Tv+Y5XUQZvZm9e4dD3TuFPtCR49k9p+6XghVS6dxOUybKL70KbG4GHU=
X-Received: by 2002:ac8:f99:: with SMTP id b25mr73537583qtk.142.1564488556465; 
 Tue, 30 Jul 2019 05:09:16 -0700 (PDT)
MIME-Version: 1.0
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 30 Jul 2019 14:09:00 +0200
Message-ID: <CAK8P3a3jjDh6aEVf0bBFYc=8GtB38kL6sWVZGJiUe427A7m2ng@mail.gmail.com>
Subject: RFC: remove Nuvoton w90x900/nuc900 platform?
To: Wan ZongShun <mcuos.com@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_050918_097801_9AF237C6 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Tomer Maimon <tmaimon77@gmail.com>, Avi Fishman <avifishman70@gmail.com>,
 Patrick Venture <venture@google.com>, Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tali Perry <tali.perry1@gmail.com>, Nancy Yuen <yuenn@google.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As the mach-netx and mach-8695 platforms are being removed now,
I wonder whether we should do the same with w90x00: Here is what
I found after looking at the git history and external material for it.

    - The supported chips (nuc910/950/960) are no longer marketed
      by the manufacturer

    - Newer chips from the same family (nuc97x, nuc980, n329x)
      that are still marketed have Linux BSPs but those were never
      submitted for upstream inclusion.

    - Wan ZongShun is listed as maintainer, but the last patch he wrote
      was in 2011.

    - All patches to w90x900 platform specific files afterwards
      are cleanups that were apparently done without access to
      test hardware.

    - The http://www.mcuos.com/ website listed in the MAINTAINERS
       file is no longer reachable.

We do support the newer NPCM platform from Nuvoton. I don't think
there are any shared drivers between the two, but I've added its
maintainers to Cc anyway, in case they still (plan to) use one of
those drivers.

If we decide that it's time to let go, I'll would the patches below.

      watchdog: remove w90x900 driver
      spi: remove w90x900 driver
      ASoC: remove w90x900/nuc900 platform drivers
      fbdev: remove w90x900/nuc900 platform drivers
      Input: remove w90x900 keyboard driver
      Input: remove w90x900 touchscreen driver
      mtd: rawnand: remove w90x900 driver
      net: remove w90p910-ether driver
      rtc: remove w90x900/nuc900 driver
      usb: remove ehci-w90x900 driver
      ARM: remove w90x900 platform

 Documentation/watchdog/watchdog-parameters.rst   |   10 -
 MAINTAINERS                                      |   16 -
 arch/arm/Kconfig                                 |   21 +-
 arch/arm/Makefile                                |    1 -
 arch/arm/configs/nuc910_defconfig                |   51 -
 arch/arm/configs/nuc950_defconfig                |   67 --
 arch/arm/configs/nuc960_defconfig                |   57 --
 arch/arm/mach-w90x900/Kconfig                    |   54 --
 arch/arm/mach-w90x900/Makefile                   |   20 -
 arch/arm/mach-w90x900/Makefile.boot              |    4 -
 arch/arm/mach-w90x900/clksel.c                   |   88 --
 arch/arm/mach-w90x900/clock.c                    |  121 ---
 arch/arm/mach-w90x900/clock.h                    |   40 -
 arch/arm/mach-w90x900/cpu.c                      |  238 -----
 arch/arm/mach-w90x900/cpu.h                      |   56 --
 arch/arm/mach-w90x900/dev.c                      |  537 -----------
 arch/arm/mach-w90x900/gpio.c                     |  150 ---
 arch/arm/mach-w90x900/include/mach/entry-macro.S |   26 -
 arch/arm/mach-w90x900/include/mach/hardware.h    |   19 -
 arch/arm/mach-w90x900/include/mach/irqs.h        |   82 --
 arch/arm/mach-w90x900/include/mach/map.h         |  153 ---
 arch/arm/mach-w90x900/include/mach/mfp.h         |   21 -
 arch/arm/mach-w90x900/include/mach/regs-clock.h  |   49 -
 arch/arm/mach-w90x900/include/mach/regs-irq.h    |   46 -
 arch/arm/mach-w90x900/include/mach/regs-ldm.h    |  248 -----
 arch/arm/mach-w90x900/include/mach/regs-serial.h |   54 --
 arch/arm/mach-w90x900/include/mach/uncompress.h  |   43 -
 arch/arm/mach-w90x900/irq.c                      |  212 -----
 arch/arm/mach-w90x900/mach-nuc910evb.c           |   38 -
 arch/arm/mach-w90x900/mach-nuc950evb.c           |   42 -
 arch/arm/mach-w90x900/mach-nuc960evb.c           |   38 -
 arch/arm/mach-w90x900/mfp.c                      |  197 ----
 arch/arm/mach-w90x900/nuc910.c                   |   58 --
 arch/arm/mach-w90x900/nuc910.h                   |   17 -
 arch/arm/mach-w90x900/nuc950.c                   |   52 --
 arch/arm/mach-w90x900/nuc950.h                   |   17 -
 arch/arm/mach-w90x900/nuc960.c                   |   50 -
 arch/arm/mach-w90x900/nuc960.h                   |   17 -
 arch/arm/mach-w90x900/nuc9xx.h                   |   22 -
 arch/arm/mach-w90x900/regs-ebi.h                 |   29 -
 arch/arm/mach-w90x900/regs-gcr.h                 |   34 -
 arch/arm/mach-w90x900/regs-timer.h               |   37 -
 arch/arm/mach-w90x900/regs-usb.h                 |   31 -
 arch/arm/mach-w90x900/time.c                     |  168 ----
 drivers/input/keyboard/Kconfig                   |   11 -
 drivers/input/keyboard/Makefile                  |    1 -
 drivers/input/keyboard/w90p910_keypad.c          |  264 ------
 drivers/input/touchscreen/Kconfig                |    9 -
 drivers/input/touchscreen/Makefile               |    1 -
 drivers/input/touchscreen/w90p910_ts.c           |  331 -------
 drivers/mtd/nand/raw/Kconfig                     |    8 -
 drivers/mtd/nand/raw/Makefile                    |    1 -
 drivers/mtd/nand/raw/nuc900_nand.c               |  304 ------
 drivers/net/ethernet/Kconfig                     |    1 -
 drivers/net/ethernet/Makefile                    |    1 -
 drivers/net/ethernet/nuvoton/Kconfig             |   29 -
 drivers/net/ethernet/nuvoton/Makefile            |    6 -
 drivers/net/ethernet/nuvoton/w90p910_ether.c     | 1082 ----------------------
 drivers/rtc/Kconfig                              |    7 -
 drivers/rtc/Makefile                             |    1 -
 drivers/rtc/rtc-nuc900.c                         |  271 ------
 drivers/spi/Kconfig                              |    7 -
 drivers/spi/Makefile                             |    1 -
 drivers/spi/spi-nuc900.c                         |  429 ---------
 drivers/usb/host/Kconfig                         |    6 -
 drivers/usb/host/Makefile                        |    1 -
 drivers/usb/host/ehci-w90x900.c                  |  130 ---
 drivers/video/fbdev/Kconfig                      |   14 -
 drivers/video/fbdev/Makefile                     |    1 -
 drivers/video/fbdev/nuc900fb.c                   |  760 ---------------
 drivers/video/fbdev/nuc900fb.h                   |   51 -
 drivers/watchdog/Kconfig                         |    9 -
 drivers/watchdog/Makefile                        |    1 -
 drivers/watchdog/nuc900_wdt.c                    |  303 ------
 include/Kbuild                                   |    2 -
 include/linux/platform_data/keypad-w90p910.h     |   16 -
 include/linux/platform_data/spi-nuc900.h         |   29 -
 include/linux/platform_data/video-nuc900fb.h     |   79 --
 sound/soc/Kconfig                                |    1 -
 sound/soc/Makefile                               |    1 -
 sound/soc/nuc900/Kconfig                         |   29 -
 sound/soc/nuc900/Makefile                        |   12 -
 sound/soc/nuc900/nuc900-ac97.c                   |  391 --------
 sound/soc/nuc900/nuc900-audio.c                  |   73 --
 sound/soc/nuc900/nuc900-audio.h                  |  108 ---
 sound/soc/nuc900/nuc900-pcm.c                    |  321 -------
 86 files changed, 1 insertion(+), 8433 deletions(-)

          Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
