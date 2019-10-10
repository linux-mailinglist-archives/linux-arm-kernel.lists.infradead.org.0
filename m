Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FCB6D332B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 23:07:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JUCId8rr8C+e8HKI1/3PGZ7pQvTg9R8inJQksTcROhU=; b=tRpout6dc1ryb+
	FZGINNQKEdnnAmVqsn91ar/itSV2KCR7tIIHiu/Y+MySXTHcRK22vlEQyZVf8xtKWG96ndFk8ewdj
	7Ug+6TxM2IVu0lxKaNnmPF44AunOEBqY9/WG4VIG3SlUT944qvEWKPti1qw5bqRzq81q/OoOUJq5E
	5uET1R48883nMQ3awX8Lo/TIzLdhX5jVe/8AV4BC/OUDsTMBkpZ6vRF6Q3fyio2nzp6SFVyyZlN3K
	TfM1N88osK9hpo1JBHiZDsSot0kzgowd69j0AI6RkfYeCrARAqcKHRE/4WFPtwiX95cPZ8OOaIOn5
	La8xj+8KlYQqvQofQ5dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIff4-0007bs-IK; Thu, 10 Oct 2019 21:07:50 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfec-0007Qw-2i
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 21:07:31 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1M2Plu-1iEoIr1cti-003rws; Thu, 10 Oct 2019 23:07:19 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kukjin Kim <kgene@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH 36/36] ARM: s3c: make headers local if possible
Date: Thu, 10 Oct 2019 23:07:17 +0200
Message-Id: <20191010210717.2459739-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191010202802.1132272-1-arnd@arndb.de>
References: <20191010202802.1132272-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:vk0JlrRbZFkpHgA1Sd0JXbVga9nipHzbVLsmIScwVZmuzGjKTm4
 BZj8JN/y4iocPXqHijcVMWpeYQPa93cJYqRpXGWAzKtPriT9L8wGILsdFKhm6EMzlopV0ug
 MprhS0Zvx0ZCVLS6ULSDOxV6h0fMwXAYSkOCtAYzJJNiGjts6vSKc8+BAmifQMfnpSvTmKC
 EH3IvhRX9wrJ/5UxMV25A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:85Lylhyf7TY=:ku+6ASbxb5jILC22W2YnJw
 U/9a7RegrhZrciJR8JE4QJ3npTwqOcXQU7xQMSuAUylKrhACeiUPOnaEOQvXRoL8wmf3wGE+8
 KCGoT6AnIMl32wc1Lh+zHGnKEN45xFErhwiVBzvheSDNudemvLxwoYNMJ+swPOnz4Q7SvlRgI
 S+AjI8wfhBybmN4rurO1XJz65SD4oBGXe3ocPutdI9MXK2hk1kOyR5M2+DiKShqy6HGHQeu6p
 u54EwhQREJZfpOmqYYpSGYfr0evX8OSw/hn0xX9HT77TJoEQciHYRoiUBMlCoqUwvTO7SGJbs
 C4lyoFqvJtigRCDoDYn7AbT5x7dHeB+djWa54U3S6aK7wXaD5DIeeEQq4LwGD5s4C3Yw83nx0
 3eJQrZV4YxzN7mcXpDnxKjySZenMjpYMMx04Apdtjl4cWQov46mmGLp1QraMJ3iR1tUFJvBdI
 p+uiR/KIi4BVffrRirUV5jl6360d3UmIT4aMsAIZ24HxQuZGu9m2p6GLQHPS7EU/ngdASurbH
 7c8yf+OoerTIK1frCl5AMAHiNlIWtCWO8vA1H1/bCSbfCc6GfsZEtWVbjdnT9H9N90xFJTBBp
 X+Y243cBudlZP+jB1J/qc6s1wYiguC+99M077z1KAVjGOKVVsX5dCU4bYXiImqyQo2urJbzSO
 Zbtw5IhQFSwSGfekSuK7MVxYP34trD5AbjYubyNjn+hdnM8ZctoSKMiUCLLntfLYo0Gz+V86G
 xzq5CI+Te6WHJ3XorjJ3XcaGJQfupQMFTj3zbbMyRLpxZAcXt2DRSfsXmLuVTLI/3CvFRgwfR
 RpgCLndaaAqDEgFWgfuC9vlUB0rnM5jAMn8LvnOItNnigv5q8vN0U/ookwWCSuiSUDpQ1lCRv
 CqGU+Udrb2FVYGh+HF5A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_140722_897146_44561A05 
X-CRM114-Status: GOOD (  12.19  )
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
Cc: linus.walleij@linaro.org, linux-samsung-soc@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A lot of header files are only used internally now, so they can be moved
to mach-s3c, out of the visibility of drivers.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 .../mach-s3c/{include/plat => }/adc-core.h    |  0
 arch/arm/mach-s3c/adc.c                       |  2 +-
 arch/arm/mach-s3c/bast-ide.c                  |  2 +-
 arch/arm/mach-s3c/bast-irq.c                  |  3 +--
 arch/arm/mach-s3c/common-smdk.c               | 11 ++++----
 arch/arm/mach-s3c/cpu.c                       |  4 +--
 arch/arm/mach-s3c/{include/plat => }/cpu.h    |  0
 arch/arm/mach-s3c/cpufreq-utils.c             |  4 +--
 arch/arm/mach-s3c/cpuidle.c                   |  4 +--
 arch/arm/mach-s3c/crag6410.h                  |  2 +-
 arch/arm/mach-s3c/dev-audio.c                 |  9 +++----
 arch/arm/mach-s3c/dev-backlight.c             |  4 +--
 arch/arm/mach-s3c/dev-uart-s3c64xx.c          |  4 +--
 arch/arm/mach-s3c/dev-uart.c                  |  2 +-
 arch/arm/mach-s3c/devs.c                      | 23 ++++++++--------
 arch/arm/mach-s3c/{include/plat => }/devs.h   |  0
 .../mach-s3c/{include/mach => }/dma-s3c24xx.h |  0
 .../mach-s3c/{include/mach => }/dma-s3c64xx.h |  0
 arch/arm/mach-s3c/{include/mach => }/dma.h    |  0
 arch/arm/mach-s3c/{include/plat => }/fb.h     |  0
 .../{include/plat => }/gpio-cfg-helpers.h     |  0
 .../mach-s3c/{include/plat => }/gpio-cfg.h    |  0
 .../mach-s3c/{include/plat => }/gpio-core.h   |  2 +-
 .../{include/mach => }/gpio-samsung-s3c24xx.h |  2 +-
 .../{include/mach => }/gpio-samsung-s3c64xx.h |  0
 arch/arm/mach-s3c/gpio-samsung.c              | 18 ++++++-------
 .../{include/mach => }/gpio-samsung.h         |  0
 arch/arm/mach-s3c/gta02.h                     |  2 +-
 arch/arm/mach-s3c/h1940-bluetooth.c           |  7 +++--
 .../mach-s3c/{include/mach => }/hardware.h    |  0
 .../mach-s3c/{include/plat => }/iic-core.h    |  0
 arch/arm/mach-s3c/include/mach/io.h           |  2 +-
 .../include/{plat => mach}/map-base.h         |  0
 arch/arm/mach-s3c/init.c                      |  4 +--
 arch/arm/mach-s3c/iotiming-s3c2410.c          |  4 +--
 arch/arm/mach-s3c/iotiming-s3c2412.c          |  4 +--
 arch/arm/mach-s3c/irq-pm-s3c24xx.c            | 16 ++++++------
 arch/arm/mach-s3c/irq-pm-s3c64xx.c            |  8 +++---
 arch/arm/mach-s3c/irq-s3c24xx-fiq.S           |  4 +--
 arch/arm/mach-s3c/irq-s3c24xx.c               | 10 +++----
 arch/arm/mach-s3c/{include/plat => }/keypad.h |  0
 arch/arm/mach-s3c/mach-amlm5900.c             | 13 +++++-----
 arch/arm/mach-s3c/mach-anubis.c               | 11 ++++----
 arch/arm/mach-s3c/mach-anw6410.c              | 14 +++++-----
 arch/arm/mach-s3c/mach-at2440evb.c            | 11 ++++----
 arch/arm/mach-s3c/mach-bast.c                 | 13 +++++-----
 arch/arm/mach-s3c/mach-crag6410-module.c      |  2 +-
 arch/arm/mach-s3c/mach-crag6410.c             | 22 ++++++++--------
 arch/arm/mach-s3c/mach-gta02.c                | 19 +++++++-------
 arch/arm/mach-s3c/mach-h1940.c                | 22 ++++++++--------
 arch/arm/mach-s3c/mach-hmt.c                  | 12 ++++-----
 arch/arm/mach-s3c/mach-jive.c                 | 16 ++++++------
 arch/arm/mach-s3c/mach-mini2440.c             | 13 +++++-----
 arch/arm/mach-s3c/mach-mini6410.c             | 16 ++++++------
 arch/arm/mach-s3c/mach-n30.c                  | 14 +++++-----
 arch/arm/mach-s3c/mach-ncp.c                  | 10 +++----
 arch/arm/mach-s3c/mach-nexcoder.c             | 13 +++++-----
 arch/arm/mach-s3c/mach-osiris-dvs.c           |  2 +-
 arch/arm/mach-s3c/mach-osiris.c               | 13 +++++-----
 arch/arm/mach-s3c/mach-otom.c                 | 15 +++++------
 arch/arm/mach-s3c/mach-qt2410.c               | 13 +++++-----
 arch/arm/mach-s3c/mach-real6410.c             | 14 +++++-----
 arch/arm/mach-s3c/mach-rx1950.c               | 18 ++++++-------
 arch/arm/mach-s3c/mach-rx3715.c               | 17 ++++++------
 arch/arm/mach-s3c/mach-s3c2416-dt.c           |  6 ++---
 arch/arm/mach-s3c/mach-s3c64xx-dt.c           |  4 +--
 arch/arm/mach-s3c/mach-smartq.c               | 16 ++++++------
 arch/arm/mach-s3c/mach-smartq5.c              | 18 ++++++-------
 arch/arm/mach-s3c/mach-smartq7.c              | 18 ++++++-------
 arch/arm/mach-s3c/mach-smdk2410.c             | 11 ++++----
 arch/arm/mach-s3c/mach-smdk2413.c             | 14 +++++-----
 arch/arm/mach-s3c/mach-smdk2416.c             | 20 +++++++-------
 arch/arm/mach-s3c/mach-smdk2440.c             | 13 +++++-----
 arch/arm/mach-s3c/mach-smdk2443.c             |  9 +++----
 arch/arm/mach-s3c/mach-smdk6400.c             | 10 +++----
 arch/arm/mach-s3c/mach-smdk6410.c             | 18 ++++++-------
 arch/arm/mach-s3c/mach-tct_hammer.c           |  7 +++--
 arch/arm/mach-s3c/mach-vr1000.c               | 15 +++++------
 arch/arm/mach-s3c/mach-vstms.c                | 13 +++++-----
 .../arm/mach-s3c/{include/plat => }/map-s3c.h |  4 +--
 .../mach-s3c/{include/mach => }/map-s3c24xx.h |  4 +--
 .../mach-s3c/{include/mach => }/map-s3c64xx.h |  4 +--
 .../arm/mach-s3c/{include/plat => }/map-s5p.h |  2 +-
 arch/arm/mach-s3c/{include/mach => }/map.h    |  0
 arch/arm/mach-s3c/pl080.c                     |  4 +--
 arch/arm/mach-s3c/platformdata.c              |  4 +--
 arch/arm/mach-s3c/pm-common.c                 |  2 +-
 .../mach-s3c/{include/plat => }/pm-common.h   |  0
 .../{include/mach => }/pm-core-s3c24xx.h      |  0
 .../{include/mach => }/pm-core-s3c64xx.h      |  6 ++---
 .../arm/mach-s3c/{include/mach => }/pm-core.h |  0
 arch/arm/mach-s3c/pm-gpio.c                   |  6 ++---
 arch/arm/mach-s3c/pm-h1940.S                  |  4 +--
 arch/arm/mach-s3c/pm-s3c2410.c                | 11 ++++----
 arch/arm/mach-s3c/pm-s3c2412.c                |  9 +++----
 arch/arm/mach-s3c/pm-s3c2416.c                |  6 ++---
 arch/arm/mach-s3c/pm-s3c24xx.c                | 12 ++++-----
 arch/arm/mach-s3c/pm-s3c64xx.c                | 16 ++++++------
 arch/arm/mach-s3c/pm.c                        | 12 ++++-----
 arch/arm/mach-s3c/{include/plat => }/pm.h     |  2 +-
 .../mach-s3c/{include/plat => }/pwm-core.h    |  0
 .../mach-s3c/{include/plat => }/regs-adc.h    |  0
 .../{include/mach => }/regs-clock-s3c24xx.h   |  2 +-
 .../{include/mach => }/regs-clock-s3c64xx.h   |  0
 .../mach-s3c/{include/mach => }/regs-clock.h  |  0
 .../{include/mach => }/regs-gpio-s3c24xx.h    |  2 +-
 .../{include/mach => }/regs-gpio-s3c64xx.h    |  0
 .../mach-s3c/{include/mach => }/regs-gpio.h   |  0
 .../{include/mach => }/regs-irq-s3c24xx.h     |  2 +-
 .../{include/mach => }/regs-irq-s3c64xx.h     |  0
 .../mach-s3c/{include/mach => }/regs-irq.h    |  0
 .../{include/plat => }/regs-irqtype.h         |  0
 arch/arm/mach-s3c/regs-mem.h                  |  2 +-
 .../{include/mach => }/regs-s3c2443-clock.h   |  2 +-
 .../mach-s3c/{include/mach => }/rtc-core.h    |  0
 arch/arm/mach-s3c/s3c2410.c                   | 18 ++++++-------
 arch/arm/mach-s3c/s3c2412.c                   | 12 ++++-----
 .../arm/mach-s3c/{include/mach => }/s3c2412.h |  2 +-
 arch/arm/mach-s3c/s3c2416.c                   | 26 +++++++++----------
 arch/arm/mach-s3c/s3c2440.c                   | 15 +++++------
 arch/arm/mach-s3c/s3c2442.c                   | 15 +++++------
 arch/arm/mach-s3c/s3c2443.c                   | 20 +++++++-------
 arch/arm/mach-s3c/s3c244x.c                   | 12 ++++-----
 arch/arm/mach-s3c/s3c24xx.c                   | 16 ++++++------
 arch/arm/mach-s3c/s3c6400.c                   | 10 +++----
 arch/arm/mach-s3c/s3c6410.c                   | 12 ++++-----
 arch/arm/mach-s3c/s3c64xx.c                   | 21 +++++++--------
 .../{include/plat => }/samsung-time.h         |  0
 arch/arm/mach-s3c/{include/plat => }/sdhci.h  |  2 +-
 arch/arm/mach-s3c/setup-camif.c               |  4 +--
 arch/arm/mach-s3c/setup-fb-24bpp.c            |  6 ++---
 arch/arm/mach-s3c/setup-i2c.c                 |  7 +++--
 arch/arm/mach-s3c/setup-i2c0.c                |  4 +--
 arch/arm/mach-s3c/setup-i2c1.c                |  4 +--
 arch/arm/mach-s3c/setup-ide.c                 |  8 +++---
 arch/arm/mach-s3c/setup-keypad.c              |  6 ++---
 arch/arm/mach-s3c/setup-sdhci-gpio-s3c24xx.c  |  6 ++---
 arch/arm/mach-s3c/setup-sdhci-gpio-s3c64xx.c  |  6 ++---
 arch/arm/mach-s3c/setup-spi-s3c24xx.c         |  6 ++---
 arch/arm/mach-s3c/setup-spi-s3c64xx.c         |  4 +--
 arch/arm/mach-s3c/setup-ts.c                  |  5 ++--
 arch/arm/mach-s3c/setup-usb-phy.c             |  6 ++---
 arch/arm/mach-s3c/simtec-audio.c              |  9 +++----
 arch/arm/mach-s3c/simtec-nor.c                |  2 +-
 arch/arm/mach-s3c/simtec-pm.c                 |  8 +++---
 arch/arm/mach-s3c/simtec-usb.c                |  5 ++--
 arch/arm/mach-s3c/sleep-s3c2410.S             |  6 ++---
 arch/arm/mach-s3c/sleep-s3c2412.S             |  4 +--
 arch/arm/mach-s3c/sleep-s3c24xx.S             |  6 ++---
 arch/arm/mach-s3c/sleep-s3c64xx.S             |  4 +--
 .../arm/mach-s3c/{include/plat => }/usb-phy.h |  0
 arch/arm/mach-s3c/wakeup-mask.c               |  4 +--
 .../mach-s3c/{include/plat => }/wakeup-mask.h |  0
 drivers/mmc/host/s3cmci.c                     |  3 ---
 154 files changed, 524 insertions(+), 560 deletions(-)
 rename arch/arm/mach-s3c/{include/plat => }/adc-core.h (100%)
 rename arch/arm/mach-s3c/{include/plat => }/cpu.h (100%)
 rename arch/arm/mach-s3c/{include/plat => }/devs.h (100%)
 rename arch/arm/mach-s3c/{include/mach => }/dma-s3c24xx.h (100%)
 rename arch/arm/mach-s3c/{include/mach => }/dma-s3c64xx.h (100%)
 rename arch/arm/mach-s3c/{include/mach => }/dma.h (100%)
 rename arch/arm/mach-s3c/{include/plat => }/fb.h (100%)
 rename arch/arm/mach-s3c/{include/plat => }/gpio-cfg-helpers.h (100%)
 rename arch/arm/mach-s3c/{include/plat => }/gpio-cfg.h (100%)
 rename arch/arm/mach-s3c/{include/plat => }/gpio-core.h (99%)
 rename arch/arm/mach-s3c/{include/mach => }/gpio-samsung-s3c24xx.h (99%)
 rename arch/arm/mach-s3c/{include/mach => }/gpio-samsung-s3c64xx.h (100%)
 rename arch/arm/mach-s3c/{include/mach => }/gpio-samsung.h (100%)
 rename arch/arm/mach-s3c/{include/mach => }/hardware.h (100%)
 rename arch/arm/mach-s3c/{include/plat => }/iic-core.h (100%)
 rename arch/arm/mach-s3c/include/{plat => mach}/map-base.h (100%)
 rename arch/arm/mach-s3c/{include/plat => }/keypad.h (100%)
 rename arch/arm/mach-s3c/{include/plat => }/map-s3c.h (97%)
 rename arch/arm/mach-s3c/{include/mach => }/map-s3c24xx.h (98%)
 rename arch/arm/mach-s3c/{include/mach => }/map-s3c64xx.h (98%)
 rename arch/arm/mach-s3c/{include/plat => }/map-s5p.h (94%)
 rename arch/arm/mach-s3c/{include/mach => }/map.h (100%)
 rename arch/arm/mach-s3c/{include/plat => }/pm-common.h (100%)
 rename arch/arm/mach-s3c/{include/mach => }/pm-core-s3c24xx.h (100%)
 rename arch/arm/mach-s3c/{include/mach => }/pm-core-s3c64xx.h (96%)
 rename arch/arm/mach-s3c/{include/mach => }/pm-core.h (100%)
 rename arch/arm/mach-s3c/{include/plat => }/pm.h (98%)
 rename arch/arm/mach-s3c/{include/plat => }/pwm-core.h (100%)
 rename arch/arm/mach-s3c/{include/plat => }/regs-adc.h (100%)
 rename arch/arm/mach-s3c/{include/mach => }/regs-clock-s3c24xx.h (99%)
 rename arch/arm/mach-s3c/{include/mach => }/regs-clock-s3c64xx.h (100%)
 rename arch/arm/mach-s3c/{include/mach => }/regs-clock.h (100%)
 rename arch/arm/mach-s3c/{include/mach => }/regs-gpio-s3c24xx.h (99%)
 rename arch/arm/mach-s3c/{include/mach => }/regs-gpio-s3c64xx.h (100%)
 rename arch/arm/mach-s3c/{include/mach => }/regs-gpio.h (100%)
 rename arch/arm/mach-s3c/{include/mach => }/regs-irq-s3c24xx.h (98%)
 rename arch/arm/mach-s3c/{include/mach => }/regs-irq-s3c64xx.h (100%)
 rename arch/arm/mach-s3c/{include/mach => }/regs-irq.h (100%)
 rename arch/arm/mach-s3c/{include/plat => }/regs-irqtype.h (100%)
 rename arch/arm/mach-s3c/{include/mach => }/regs-s3c2443-clock.h (99%)
 rename arch/arm/mach-s3c/{include/mach => }/rtc-core.h (100%)
 rename arch/arm/mach-s3c/{include/mach => }/s3c2412.h (96%)
 rename arch/arm/mach-s3c/{include/plat => }/samsung-time.h (100%)
 rename arch/arm/mach-s3c/{include/plat => }/sdhci.h (99%)
 rename arch/arm/mach-s3c/{include/plat => }/usb-phy.h (100%)
 rename arch/arm/mach-s3c/{include/plat => }/wakeup-mask.h (100%)

diff --git a/arch/arm/mach-s3c/include/plat/adc-core.h b/arch/arm/mach-s3c/adc-core.h
similarity index 100%
rename from arch/arm/mach-s3c/include/plat/adc-core.h
rename to arch/arm/mach-s3c/adc-core.h
diff --git a/arch/arm/mach-s3c/adc.c b/arch/arm/mach-s3c/adc.c
index 623a9774cc52..272d2950d432 100644
--- a/arch/arm/mach-s3c/adc.c
+++ b/arch/arm/mach-s3c/adc.c
@@ -19,7 +19,7 @@
 #include <linux/io.h>
 #include <linux/regulator/consumer.h>
 
-#include <plat/regs-adc.h>
+#include "regs-adc.h"
 #include <linux/soc/samsung/s3c-adc.h>
 
 /* This driver is designed to control the usage of the ADC block between
diff --git a/arch/arm/mach-s3c/bast-ide.c b/arch/arm/mach-s3c/bast-ide.c
index ee6fbb407640..da64db1811d8 100644
--- a/arch/arm/mach-s3c/bast-ide.c
+++ b/arch/arm/mach-s3c/bast-ide.c
@@ -19,7 +19,7 @@
 #include <asm/mach/map.h>
 #include <asm/mach/irq.h>
 
-#include <mach/map.h>
+#include "map.h"
 #include <mach/irqs.h>
 
 #include "bast.h"
diff --git a/arch/arm/mach-s3c/bast-irq.c b/arch/arm/mach-s3c/bast-irq.c
index b3083ee3ab33..d299f124e6dc 100644
--- a/arch/arm/mach-s3c/bast-irq.c
+++ b/arch/arm/mach-s3c/bast-irq.c
@@ -15,8 +15,7 @@
 #include <asm/mach-types.h>
 #include <asm/mach/irq.h>
 
-#include <mach/hardware.h>
-#include <mach/regs-irq.h>
+#include "regs-irq.h"
 #include <mach/irqs.h>
 
 #include "bast.h"
diff --git a/arch/arm/mach-s3c/common-smdk.c b/arch/arm/mach-s3c/common-smdk.c
index 5392d5106b4b..1ec207159ee2 100644
--- a/arch/arm/mach-s3c/common-smdk.c
+++ b/arch/arm/mach-s3c/common-smdk.c
@@ -28,17 +28,16 @@
 #include <asm/mach/irq.h>
 
 #include <asm/mach-types.h>
-#include <mach/hardware.h>
 #include <asm/irq.h>
 
-#include <mach/regs-gpio.h>
-#include <mach/gpio-samsung.h>
+#include "regs-gpio.h"
+#include "gpio-samsung.h"
 #include <linux/platform_data/leds-s3c24xx.h>
 #include <linux/platform_data/mtd-nand-s3c2410.h>
 
-#include <plat/gpio-cfg.h>
-#include <plat/devs.h>
-#include <plat/pm.h>
+#include "gpio-cfg.h"
+#include "devs.h"
+#include "pm.h"
 
 #include "common-smdk.h"
 
diff --git a/arch/arm/mach-s3c/cpu.c b/arch/arm/mach-s3c/cpu.c
index 8acba21bbf4b..6e9772555f0d 100644
--- a/arch/arm/mach-s3c/cpu.c
+++ b/arch/arm/mach-s3c/cpu.c
@@ -10,8 +10,8 @@
 #include <linux/init.h>
 #include <linux/io.h>
 
-#include <plat/map-base.h>
-#include <plat/cpu.h>
+#include <mach/map-base.h>
+#include "cpu.h"
 
 unsigned long samsung_cpu_id;
 
diff --git a/arch/arm/mach-s3c/include/plat/cpu.h b/arch/arm/mach-s3c/cpu.h
similarity index 100%
rename from arch/arm/mach-s3c/include/plat/cpu.h
rename to arch/arm/mach-s3c/cpu.h
diff --git a/arch/arm/mach-s3c/cpufreq-utils.c b/arch/arm/mach-s3c/cpufreq-utils.c
index 75c197d59a75..e4266f271b51 100644
--- a/arch/arm/mach-s3c/cpufreq-utils.c
+++ b/arch/arm/mach-s3c/cpufreq-utils.c
@@ -12,8 +12,8 @@
 #include <linux/io.h>
 #include <linux/clk.h>
 
-#include <mach/map.h>
-#include <mach/regs-clock.h>
+#include "map.h"
+#include "regs-clock.h"
 
 #include <linux/soc/samsung/s3c-cpufreq-core.h>
 
diff --git a/arch/arm/mach-s3c/cpuidle.c b/arch/arm/mach-s3c/cpuidle.c
index 0bac6f6413b0..0e020ee8f78e 100644
--- a/arch/arm/mach-s3c/cpuidle.c
+++ b/arch/arm/mach-s3c/cpuidle.c
@@ -13,8 +13,8 @@
 
 #include <asm/cpuidle.h>
 
-#include <plat/cpu.h>
-#include <mach/map.h>
+#include "cpu.h"
+#include "map.h"
 
 #include "regs-sys.h"
 #include "regs-syscon-power.h"
diff --git a/arch/arm/mach-s3c/crag6410.h b/arch/arm/mach-s3c/crag6410.h
index 00d9aa114aa7..f39ea2ca7a75 100644
--- a/arch/arm/mach-s3c/crag6410.h
+++ b/arch/arm/mach-s3c/crag6410.h
@@ -8,7 +8,7 @@
 #ifndef MACH_CRAG6410_H
 #define MACH_CRAG6410_H
 
-#include <mach/gpio-samsung.h>
+#include "gpio-samsung.h"
 
 #define GLENFARCLAS_PMIC_IRQ_BASE	IRQ_BOARD_START
 #define BANFF_PMIC_IRQ_BASE		(IRQ_BOARD_START + 64)
diff --git a/arch/arm/mach-s3c/dev-audio.c b/arch/arm/mach-s3c/dev-audio.c
index e3c49b5d1355..fc2f077afd24 100644
--- a/arch/arm/mach-s3c/dev-audio.c
+++ b/arch/arm/mach-s3c/dev-audio.c
@@ -11,13 +11,12 @@
 #include <linux/export.h>
 
 #include <mach/irqs.h>
-#include <mach/map.h>
-#include <mach/dma.h>
+#include "map.h"
 
-#include <plat/devs.h>
+#include "devs.h"
 #include <linux/platform_data/asoc-s3c.h>
-#include <plat/gpio-cfg.h>
-#include <mach/gpio-samsung.h>
+#include "gpio-cfg.h"
+#include "gpio-samsung.h"
 
 static int s3c64xx_i2s_cfg_gpio(struct platform_device *pdev)
 {
diff --git a/arch/arm/mach-s3c/dev-backlight.c b/arch/arm/mach-s3c/dev-backlight.c
index 799cfdf0606b..6856b69f78f9 100644
--- a/arch/arm/mach-s3c/dev-backlight.c
+++ b/arch/arm/mach-s3c/dev-backlight.c
@@ -11,8 +11,8 @@
 #include <linux/io.h>
 #include <linux/pwm_backlight.h>
 
-#include <plat/devs.h>
-#include <plat/gpio-cfg.h>
+#include "devs.h"
+#include "gpio-cfg.h"
 
 #include "backlight.h"
 
diff --git a/arch/arm/mach-s3c/dev-uart-s3c64xx.c b/arch/arm/mach-s3c/dev-uart-s3c64xx.c
index 021a2b7926fa..8288e8d6c092 100644
--- a/arch/arm/mach-s3c/dev-uart-s3c64xx.c
+++ b/arch/arm/mach-s3c/dev-uart-s3c64xx.c
@@ -15,10 +15,10 @@
 
 #include <asm/mach/arch.h>
 #include <asm/mach/irq.h>
-#include <mach/map.h>
+#include "map.h"
 #include <mach/irqs.h>
 
-#include <plat/devs.h>
+#include "devs.h"
 
 /* Serial port registrations */
 
diff --git a/arch/arm/mach-s3c/dev-uart.c b/arch/arm/mach-s3c/dev-uart.c
index 7476a5dbae77..3d1f7f2fd7c7 100644
--- a/arch/arm/mach-s3c/dev-uart.c
+++ b/arch/arm/mach-s3c/dev-uart.c
@@ -10,7 +10,7 @@
 #include <linux/kernel.h>
 #include <linux/platform_device.h>
 
-#include <plat/devs.h>
+#include "devs.h"
 
 /* uart devices */
 
diff --git a/arch/arm/mach-s3c/devs.c b/arch/arm/mach-s3c/devs.c
index 92b36bc71a06..ef2b1847e287 100644
--- a/arch/arm/mach-s3c/devs.c
+++ b/arch/arm/mach-s3c/devs.c
@@ -38,30 +38,29 @@
 #include <asm/mach/map.h>
 #include <asm/mach/irq.h>
 
-#include <mach/dma.h>
 #include <mach/irqs.h>
-#include <mach/map.h>
-#include <mach/gpio-samsung.h>
-#include <plat/gpio-cfg.h>
-#include <mach/regs-s3c2443-clock.h>
+#include "map.h"
+#include "gpio-samsung.h"
+#include "gpio-cfg.h"
+#include "regs-s3c2443-clock.h"
 
-#include <plat/cpu.h>
-#include <plat/devs.h>
+#include "cpu.h"
+#include "devs.h"
 #include <linux/soc/samsung/s3c-adc.h>
 #include <linux/platform_data/ata-samsung_cf.h>
-#include <plat/fb.h>
+#include "fb.h"
 #include <linux/platform_data/fb-s3c2410.h>
 #include <linux/platform_data/hwmon-s3c.h>
 #include <linux/platform_data/i2c-s3c2410.h>
-#include <plat/keypad.h>
+#include "keypad.h"
 #include <linux/platform_data/mmc-s3cmci.h>
 #include <linux/platform_data/mtd-nand-s3c2410.h>
-#include <plat/pwm-core.h>
-#include <plat/sdhci.h>
+#include "pwm-core.h"
+#include "sdhci.h"
 #include <linux/platform_data/touchscreen-s3c2410.h>
 #include <linux/platform_data/usb-s3c2410_udc.h>
 #include <linux/platform_data/usb-ohci-s3c2410.h>
-#include <plat/usb-phy.h>
+#include "usb-phy.h"
 #include <linux/platform_data/asoc-s3c.h>
 #include <linux/platform_data/spi-s3c64xx.h>
 
diff --git a/arch/arm/mach-s3c/include/plat/devs.h b/arch/arm/mach-s3c/devs.h
similarity index 100%
rename from arch/arm/mach-s3c/include/plat/devs.h
rename to arch/arm/mach-s3c/devs.h
diff --git a/arch/arm/mach-s3c/include/mach/dma-s3c24xx.h b/arch/arm/mach-s3c/dma-s3c24xx.h
similarity index 100%
rename from arch/arm/mach-s3c/include/mach/dma-s3c24xx.h
rename to arch/arm/mach-s3c/dma-s3c24xx.h
diff --git a/arch/arm/mach-s3c/include/mach/dma-s3c64xx.h b/arch/arm/mach-s3c/dma-s3c64xx.h
similarity index 100%
rename from arch/arm/mach-s3c/include/mach/dma-s3c64xx.h
rename to arch/arm/mach-s3c/dma-s3c64xx.h
diff --git a/arch/arm/mach-s3c/include/mach/dma.h b/arch/arm/mach-s3c/dma.h
similarity index 100%
rename from arch/arm/mach-s3c/include/mach/dma.h
rename to arch/arm/mach-s3c/dma.h
diff --git a/arch/arm/mach-s3c/include/plat/fb.h b/arch/arm/mach-s3c/fb.h
similarity index 100%
rename from arch/arm/mach-s3c/include/plat/fb.h
rename to arch/arm/mach-s3c/fb.h
diff --git a/arch/arm/mach-s3c/include/plat/gpio-cfg-helpers.h b/arch/arm/mach-s3c/gpio-cfg-helpers.h
similarity index 100%
rename from arch/arm/mach-s3c/include/plat/gpio-cfg-helpers.h
rename to arch/arm/mach-s3c/gpio-cfg-helpers.h
diff --git a/arch/arm/mach-s3c/include/plat/gpio-cfg.h b/arch/arm/mach-s3c/gpio-cfg.h
similarity index 100%
rename from arch/arm/mach-s3c/include/plat/gpio-cfg.h
rename to arch/arm/mach-s3c/gpio-cfg.h
diff --git a/arch/arm/mach-s3c/include/plat/gpio-core.h b/arch/arm/mach-s3c/gpio-core.h
similarity index 99%
rename from arch/arm/mach-s3c/include/plat/gpio-core.h
rename to arch/arm/mach-s3c/gpio-core.h
index c0bfceb88340..b361c8c0d669 100644
--- a/arch/arm/mach-s3c/include/plat/gpio-core.h
+++ b/arch/arm/mach-s3c/gpio-core.h
@@ -11,7 +11,7 @@
 #define __PLAT_SAMSUNG_GPIO_CORE_H
 
 /* Bring in machine-local definitions, especially S3C_GPIO_END */
-#include <mach/gpio-samsung.h>
+#include "gpio-samsung.h"
 #include <linux/gpio/driver.h>
 
 #define GPIOCON_OFF	(0x00)
diff --git a/arch/arm/mach-s3c/include/mach/gpio-samsung-s3c24xx.h b/arch/arm/mach-s3c/gpio-samsung-s3c24xx.h
similarity index 99%
rename from arch/arm/mach-s3c/include/mach/gpio-samsung-s3c24xx.h
rename to arch/arm/mach-s3c/gpio-samsung-s3c24xx.h
index f8a114891f16..c29fdc95f883 100644
--- a/arch/arm/mach-s3c/include/mach/gpio-samsung-s3c24xx.h
+++ b/arch/arm/mach-s3c/gpio-samsung-s3c24xx.h
@@ -14,7 +14,7 @@
 #ifndef GPIO_SAMSUNG_S3C24XX_H
 #define GPIO_SAMSUNG_S3C24XX_H
 
-#include <mach/map.h>
+#include "map.h"
 
 /*
  * GPIO sizes for various SoCs:
diff --git a/arch/arm/mach-s3c/include/mach/gpio-samsung-s3c64xx.h b/arch/arm/mach-s3c/gpio-samsung-s3c64xx.h
similarity index 100%
rename from arch/arm/mach-s3c/include/mach/gpio-samsung-s3c64xx.h
rename to arch/arm/mach-s3c/gpio-samsung-s3c64xx.h
diff --git a/arch/arm/mach-s3c/gpio-samsung.c b/arch/arm/mach-s3c/gpio-samsung.c
index f66c820cd82b..9cc4d7eaf78a 100644
--- a/arch/arm/mach-s3c/gpio-samsung.c
+++ b/arch/arm/mach-s3c/gpio-samsung.c
@@ -27,15 +27,15 @@
 #include <asm/irq.h>
 
 #include <mach/irqs.h>
-#include <mach/map.h>
-#include <mach/regs-gpio.h>
-#include <mach/gpio-samsung.h>
-
-#include <plat/cpu.h>
-#include <plat/gpio-core.h>
-#include <plat/gpio-cfg.h>
-#include <plat/gpio-cfg-helpers.h>
-#include <plat/pm.h>
+#include "map.h"
+#include "regs-gpio.h"
+#include "gpio-samsung.h"
+
+#include "cpu.h"
+#include "gpio-core.h"
+#include "gpio-cfg.h"
+#include "gpio-cfg-helpers.h"
+#include "pm.h"
 
 int samsung_gpio_setpull_updown(struct samsung_gpio_chip *chip,
 				unsigned int off, samsung_gpio_pull_t pull)
diff --git a/arch/arm/mach-s3c/include/mach/gpio-samsung.h b/arch/arm/mach-s3c/gpio-samsung.h
similarity index 100%
rename from arch/arm/mach-s3c/include/mach/gpio-samsung.h
rename to arch/arm/mach-s3c/gpio-samsung.h
diff --git a/arch/arm/mach-s3c/gta02.h b/arch/arm/mach-s3c/gta02.h
index d5610ba829a4..043ae382bfc5 100644
--- a/arch/arm/mach-s3c/gta02.h
+++ b/arch/arm/mach-s3c/gta02.h
@@ -6,7 +6,7 @@
 #ifndef __MACH_S3C24XX_GTA02_H
 #define __MACH_S3C24XX_GTA02_H __FILE__
 
-#include <mach/regs-gpio.h>
+#include "regs-gpio.h"
 
 #define GTA02_GPIO_AUX_LED	S3C2410_GPB(2)
 #define GTA02_GPIO_USB_PULLUP	S3C2410_GPB(9)
diff --git a/arch/arm/mach-s3c/h1940-bluetooth.c b/arch/arm/mach-s3c/h1940-bluetooth.c
index 186b5321658e..59edcf8a620d 100644
--- a/arch/arm/mach-s3c/h1940-bluetooth.c
+++ b/arch/arm/mach-s3c/h1940-bluetooth.c
@@ -13,10 +13,9 @@
 #include <linux/gpio.h>
 #include <linux/rfkill.h>
 
-#include <plat/gpio-cfg.h>
-#include <mach/hardware.h>
-#include <mach/regs-gpio.h>
-#include <mach/gpio-samsung.h>
+#include "gpio-cfg.h"
+#include "regs-gpio.h"
+#include "gpio-samsung.h"
 
 #include "h1940.h"
 
diff --git a/arch/arm/mach-s3c/include/mach/hardware.h b/arch/arm/mach-s3c/hardware.h
similarity index 100%
rename from arch/arm/mach-s3c/include/mach/hardware.h
rename to arch/arm/mach-s3c/hardware.h
diff --git a/arch/arm/mach-s3c/include/plat/iic-core.h b/arch/arm/mach-s3c/iic-core.h
similarity index 100%
rename from arch/arm/mach-s3c/include/plat/iic-core.h
rename to arch/arm/mach-s3c/iic-core.h
diff --git a/arch/arm/mach-s3c/include/mach/io.h b/arch/arm/mach-s3c/include/mach/io.h
index bcddf615adb6..0d0e576f66dc 100644
--- a/arch/arm/mach-s3c/include/mach/io.h
+++ b/arch/arm/mach-s3c/include/mach/io.h
@@ -10,7 +10,7 @@
 #ifndef __ASM_ARM_ARCH_IO_H
 #define __ASM_ARM_ARCH_IO_H
 
-#include <plat/map-base.h>
+#include <mach/map-base.h>
 
 /*
  * ISA style IO, for each machine to sort out mappings for,
diff --git a/arch/arm/mach-s3c/include/plat/map-base.h b/arch/arm/mach-s3c/include/mach/map-base.h
similarity index 100%
rename from arch/arm/mach-s3c/include/plat/map-base.h
rename to arch/arm/mach-s3c/include/mach/map-base.h
diff --git a/arch/arm/mach-s3c/init.c b/arch/arm/mach-s3c/init.c
index e9acf02ef3c3..9d92f03e9bc1 100644
--- a/arch/arm/mach-s3c/init.c
+++ b/arch/arm/mach-s3c/init.c
@@ -23,8 +23,8 @@
 #include <asm/mach/arch.h>
 #include <asm/mach/map.h>
 
-#include <plat/cpu.h>
-#include <plat/devs.h>
+#include "cpu.h"
+#include "devs.h"
 
 static struct cpu_table *cpu;
 
diff --git a/arch/arm/mach-s3c/iotiming-s3c2410.c b/arch/arm/mach-s3c/iotiming-s3c2410.c
index 5d85c259f328..a5c80b7e3d0c 100644
--- a/arch/arm/mach-s3c/iotiming-s3c2410.c
+++ b/arch/arm/mach-s3c/iotiming-s3c2410.c
@@ -14,8 +14,8 @@
 #include <linux/io.h>
 #include <linux/slab.h>
 
-#include <mach/map.h>
-#include <mach/regs-clock.h>
+#include "map.h"
+#include "regs-clock.h"
 
 #include <linux/soc/samsung/s3c-cpufreq-core.h>
 
diff --git a/arch/arm/mach-s3c/iotiming-s3c2412.c b/arch/arm/mach-s3c/iotiming-s3c2412.c
index a22b5611697d..003f89c4dc53 100644
--- a/arch/arm/mach-s3c/iotiming-s3c2412.c
+++ b/arch/arm/mach-s3c/iotiming-s3c2412.c
@@ -23,10 +23,10 @@
 #include <asm/mach/arch.h>
 #include <asm/mach/map.h>
 
-#include <plat/cpu.h>
+#include "cpu.h"
 #include <linux/soc/samsung/s3c-cpufreq-core.h>
 
-#include <mach/s3c2412.h>
+#include "s3c2412.h"
 
 #define print_ns(x) ((x) / 10), ((x) % 10)
 
diff --git a/arch/arm/mach-s3c/irq-pm-s3c24xx.c b/arch/arm/mach-s3c/irq-pm-s3c24xx.c
index e0131b16a4af..4d5e28312d91 100644
--- a/arch/arm/mach-s3c/irq-pm-s3c24xx.c
+++ b/arch/arm/mach-s3c/irq-pm-s3c24xx.c
@@ -13,14 +13,14 @@
 #include <linux/syscore_ops.h>
 #include <linux/io.h>
 
-#include <plat/cpu.h>
-#include <plat/pm.h>
-#include <plat/map-base.h>
-#include <plat/map-s3c.h>
-
-#include <mach/regs-irq.h>
-#include <mach/regs-gpio.h>
-#include <mach/pm-core.h>
+#include "cpu.h"
+#include "pm.h"
+#include <mach/map-base.h>
+#include "map-s3c.h"
+
+#include "regs-irq.h"
+#include "regs-gpio.h"
+#include "pm-core.h"
 
 #include <asm/irq.h>
 
diff --git a/arch/arm/mach-s3c/irq-pm-s3c64xx.c b/arch/arm/mach-s3c/irq-pm-s3c64xx.c
index 31b221190479..4a1e935bada1 100644
--- a/arch/arm/mach-s3c/irq-pm-s3c64xx.c
+++ b/arch/arm/mach-s3c/irq-pm-s3c64xx.c
@@ -20,11 +20,11 @@
 #include <linux/io.h>
 #include <linux/of.h>
 
-#include <mach/map.h>
+#include "map.h"
 
-#include <mach/regs-gpio.h>
-#include <plat/cpu.h>
-#include <plat/pm.h>
+#include "regs-gpio.h"
+#include "cpu.h"
+#include "pm.h"
 
 /* We handled all the IRQ types in this code, to save having to make several
  * small files to handle each different type separately. Having the EINT_GRP
diff --git a/arch/arm/mach-s3c/irq-s3c24xx-fiq.S b/arch/arm/mach-s3c/irq-s3c24xx-fiq.S
index 2a84535a14fd..b54cbd012241 100644
--- a/arch/arm/mach-s3c/irq-s3c24xx-fiq.S
+++ b/arch/arm/mach-s3c/irq-s3c24xx-fiq.S
@@ -10,8 +10,8 @@
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
-#include <mach/map.h>
-#include <mach/regs-irq.h>
+#include "map.h"
+#include "regs-irq.h"
 
 #include <linux/spi/s3c24xx-fiq.h>
 
diff --git a/arch/arm/mach-s3c/irq-s3c24xx.c b/arch/arm/mach-s3c/irq-s3c24xx.c
index 3965347cacf0..79b5f19af7a5 100644
--- a/arch/arm/mach-s3c/irq-s3c24xx.c
+++ b/arch/arm/mach-s3c/irq-s3c24xx.c
@@ -26,12 +26,12 @@
 #include <asm/mach/irq.h>
 
 #include <mach/irqs.h>
-#include <mach/regs-irq.h>
-#include <mach/regs-gpio.h>
+#include "regs-irq.h"
+#include "regs-gpio.h"
 
-#include <plat/cpu.h>
-#include <plat/regs-irqtype.h>
-#include <plat/pm.h>
+#include "cpu.h"
+#include "regs-irqtype.h"
+#include "pm.h"
 
 #define S3C_IRQTYPE_NONE	0
 #define S3C_IRQTYPE_EINT	1
diff --git a/arch/arm/mach-s3c/include/plat/keypad.h b/arch/arm/mach-s3c/keypad.h
similarity index 100%
rename from arch/arm/mach-s3c/include/plat/keypad.h
rename to arch/arm/mach-s3c/keypad.h
diff --git a/arch/arm/mach-s3c/mach-amlm5900.c b/arch/arm/mach-s3c/mach-amlm5900.c
index f9240081f840..5c67f20e636e 100644
--- a/arch/arm/mach-s3c/mach-amlm5900.c
+++ b/arch/arm/mach-s3c/mach-amlm5900.c
@@ -27,25 +27,24 @@
 #include <asm/mach/irq.h>
 #include <asm/mach/flash.h>
 
-#include <mach/hardware.h>
 #include <asm/irq.h>
 #include <asm/mach-types.h>
 #include <linux/platform_data/fb-s3c2410.h>
 
-#include <mach/regs-gpio.h>
-#include <mach/gpio-samsung.h>
+#include "regs-gpio.h"
+#include "gpio-samsung.h"
 
 #include <linux/platform_data/i2c-s3c2410.h>
-#include <plat/devs.h>
-#include <plat/cpu.h>
-#include <plat/gpio-cfg.h>
+#include "devs.h"
+#include "cpu.h"
+#include "gpio-cfg.h"
 
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/partitions.h>
 #include <linux/mtd/map.h>
 #include <linux/mtd/physmap.h>
 
-#include <plat/samsung-time.h>
+#include "samsung-time.h"
 
 #include "s3c24xx.h"
 
diff --git a/arch/arm/mach-s3c/mach-anubis.c b/arch/arm/mach-s3c/mach-anubis.c
index 5cfb7aed9fe7..ef953754a39c 100644
--- a/arch/arm/mach-s3c/mach-anubis.c
+++ b/arch/arm/mach-s3c/mach-anubis.c
@@ -24,12 +24,11 @@
 #include <asm/mach/map.h>
 #include <asm/mach/irq.h>
 
-#include <mach/hardware.h>
 #include <asm/irq.h>
 #include <asm/mach-types.h>
 
-#include <mach/regs-gpio.h>
-#include <mach/gpio-samsung.h>
+#include "regs-gpio.h"
+#include "gpio-samsung.h"
 #include <linux/platform_data/mtd-nand-s3c2410.h>
 #include <linux/platform_data/i2c-s3c2410.h>
 
@@ -40,10 +39,10 @@
 
 #include <net/ax88796.h>
 
-#include <plat/devs.h>
-#include <plat/cpu.h>
+#include "devs.h"
+#include "cpu.h"
 #include <linux/platform_data/asoc-s3c24xx_simtec.h>
-#include <plat/samsung-time.h>
+#include "samsung-time.h"
 
 #include "anubis.h"
 #include "s3c24xx.h"
diff --git a/arch/arm/mach-s3c/mach-anw6410.c b/arch/arm/mach-s3c/mach-anw6410.c
index 9bf8c8791553..663fb34ded0b 100644
--- a/arch/arm/mach-s3c/mach-anw6410.c
+++ b/arch/arm/mach-s3c/mach-anw6410.c
@@ -30,20 +30,20 @@
 #include <asm/mach/map.h>
 #include <asm/mach/irq.h>
 
-#include <mach/map.h>
+#include "map.h"
 
 #include <asm/irq.h>
 #include <asm/mach-types.h>
 
 #include <linux/platform_data/i2c-s3c2410.h>
-#include <plat/fb.h>
+#include "fb.h"
 
-#include <plat/devs.h>
-#include <plat/cpu.h>
+#include "devs.h"
+#include "cpu.h"
 #include <mach/irqs.h>
-#include <mach/regs-gpio.h>
-#include <mach/gpio-samsung.h>
-#include <plat/samsung-time.h>
+#include "regs-gpio.h"
+#include "gpio-samsung.h"
+#include "samsung-time.h"
 
 #include "s3c64xx.h"
 #include "regs-modem.h"
diff --git a/arch/arm/mach-s3c/mach-at2440evb.c b/arch/arm/mach-s3c/mach-at2440evb.c
index 2103c4c1059a..0e107dde6ded 100644
--- a/arch/arm/mach-s3c/mach-at2440evb.c
+++ b/arch/arm/mach-s3c/mach-at2440evb.c
@@ -24,13 +24,12 @@
 #include <asm/mach/map.h>
 #include <asm/mach/irq.h>
 
-#include <mach/hardware.h>
 #include <linux/platform_data/fb-s3c2410.h>
 #include <asm/irq.h>
 #include <asm/mach-types.h>
 
-#include <mach/regs-gpio.h>
-#include <mach/gpio-samsung.h>
+#include "regs-gpio.h"
+#include "gpio-samsung.h"
 #include <linux/platform_data/mtd-nand-s3c2410.h>
 #include <linux/platform_data/i2c-s3c2410.h>
 
@@ -39,10 +38,10 @@
 #include <linux/mtd/nand_ecc.h>
 #include <linux/mtd/partitions.h>
 
-#include <plat/devs.h>
-#include <plat/cpu.h>
+#include "devs.h"
+#include "cpu.h"
 #include <linux/platform_data/mmc-s3cmci.h>
-#include <plat/samsung-time.h>
+#include "samsung-time.h"
 
 #include "s3c24xx.h"
 
diff --git a/arch/arm/mach-s3c/mach-bast.c b/arch/arm/mach-s3c/mach-bast.c
index 6e363afbaab1..8afc6a846dee 100644
--- a/arch/arm/mach-s3c/mach-bast.c
+++ b/arch/arm/mach-s3c/mach-bast.c
@@ -40,16 +40,15 @@
 #include <asm/mach/irq.h>
 #include <asm/mach-types.h>
 
-#include <mach/hardware.h>
 #include <linux/platform_data/fb-s3c2410.h>
-#include <mach/regs-gpio.h>
-#include <mach/gpio-samsung.h>
+#include "regs-gpio.h"
+#include "gpio-samsung.h"
 
-#include <plat/cpu.h>
+#include "cpu.h"
 #include <linux/soc/samsung/s3c-cpu-freq.h>
-#include <plat/devs.h>
-#include <plat/gpio-cfg.h>
-#include <plat/samsung-time.h>
+#include "devs.h"
+#include "gpio-cfg.h"
+#include "samsung-time.h"
 
 #include "bast.h"
 #include "s3c24xx.h"
diff --git a/arch/arm/mach-s3c/mach-crag6410-module.c b/arch/arm/mach-s3c/mach-crag6410-module.c
index 937d0a83f8fd..2dedc025f604 100644
--- a/arch/arm/mach-s3c/mach-crag6410-module.c
+++ b/arch/arm/mach-s3c/mach-crag6410-module.c
@@ -27,7 +27,7 @@
 
 #include <linux/platform_data/spi-s3c64xx.h>
 
-#include <plat/cpu.h>
+#include "cpu.h"
 #include <mach/irqs.h>
 
 #include "crag6410.h"
diff --git a/arch/arm/mach-s3c/mach-crag6410.c b/arch/arm/mach-s3c/mach-crag6410.c
index 947f344ac4d4..10cc27e87f32 100644
--- a/arch/arm/mach-s3c/mach-crag6410.c
+++ b/arch/arm/mach-s3c/mach-crag6410.c
@@ -44,23 +44,23 @@
 #include <asm/mach-types.h>
 
 #include <video/samsung_fimd.h>
-#include <mach/map.h>
-#include <mach/regs-gpio.h>
-#include <mach/gpio-samsung.h>
+#include "map.h"
+#include "regs-gpio.h"
+#include "gpio-samsung.h"
 #include <mach/irqs.h>
 
-#include <plat/fb.h>
-#include <plat/sdhci.h>
-#include <plat/gpio-cfg.h>
+#include "fb.h"
+#include "sdhci.h"
+#include "gpio-cfg.h"
 #include <linux/platform_data/spi-s3c64xx.h>
 
-#include <plat/keypad.h>
-#include <plat/devs.h>
-#include <plat/cpu.h>
+#include "keypad.h"
+#include "devs.h"
+#include "cpu.h"
 #include <linux/soc/samsung/s3c-adc.h>
 #include <linux/platform_data/i2c-s3c2410.h>
-#include <plat/pm.h>
-#include <plat/samsung-time.h>
+#include "pm.h"
+#include "samsung-time.h"
 
 #include "s3c64xx.h"
 #include "crag6410.h"
diff --git a/arch/arm/mach-s3c/mach-gta02.c b/arch/arm/mach-s3c/mach-gta02.c
index bf0de248b489..e3e0f774a30b 100644
--- a/arch/arm/mach-s3c/mach-gta02.c
+++ b/arch/arm/mach-s3c/mach-gta02.c
@@ -59,16 +59,15 @@
 #include <linux/platform_data/usb-s3c2410_udc.h>
 #include <linux/platform_data/fb-s3c2410.h>
 
-#include <mach/hardware.h>
-#include <mach/regs-gpio.h>
-#include <mach/regs-irq.h>
-#include <mach/gpio-samsung.h>
-
-#include <plat/cpu.h>
-#include <plat/devs.h>
-#include <plat/gpio-cfg.h>
-#include <plat/pm.h>
-#include <plat/samsung-time.h>
+#include "regs-gpio.h"
+#include "regs-irq.h"
+#include "gpio-samsung.h"
+
+#include "cpu.h"
+#include "devs.h"
+#include "gpio-cfg.h"
+#include "pm.h"
+#include "samsung-time.h"
 
 #include "s3c24xx.h"
 #include "gta02.h"
diff --git a/arch/arm/mach-s3c/mach-h1940.c b/arch/arm/mach-s3c/mach-h1940.c
index 6e329cb1a7ec..e9d04424c80c 100644
--- a/arch/arm/mach-s3c/mach-h1940.c
+++ b/arch/arm/mach-s3c/mach-h1940.c
@@ -48,17 +48,17 @@
 #include <sound/uda1380.h>
 
 #include <linux/platform_data/fb-s3c2410.h>
-#include <mach/map.h>
-#include <mach/hardware.h>
-#include <mach/regs-clock.h>
-#include <mach/regs-gpio.h>
-#include <mach/gpio-samsung.h>
-
-#include <plat/cpu.h>
-#include <plat/devs.h>
-#include <plat/gpio-cfg.h>
-#include <plat/pm.h>
-#include <plat/samsung-time.h>
+#include "map.h"
+#include "hardware.h"
+#include "regs-clock.h"
+#include "regs-gpio.h"
+#include "gpio-samsung.h"
+
+#include "cpu.h"
+#include "devs.h"
+#include "gpio-cfg.h"
+#include "pm.h"
+#include "samsung-time.h"
 
 #include "s3c24xx.h"
 #include "h1940.h"
diff --git a/arch/arm/mach-s3c/mach-hmt.c b/arch/arm/mach-s3c/mach-hmt.c
index dd1b73c31956..2bb229536bb4 100644
--- a/arch/arm/mach-s3c/mach-hmt.c
+++ b/arch/arm/mach-s3c/mach-hmt.c
@@ -25,20 +25,20 @@
 #include <asm/mach/irq.h>
 
 #include <video/samsung_fimd.h>
-#include <mach/map.h>
+#include "map.h"
 #include <mach/irqs.h>
 
 #include <asm/irq.h>
 #include <asm/mach-types.h>
 
 #include <linux/platform_data/i2c-s3c2410.h>
-#include <mach/gpio-samsung.h>
-#include <plat/fb.h>
+#include "gpio-samsung.h"
+#include "fb.h"
 #include <linux/platform_data/mtd-nand-s3c2410.h>
 
-#include <plat/devs.h>
-#include <plat/cpu.h>
-#include <plat/samsung-time.h>
+#include "devs.h"
+#include "cpu.h"
+#include "samsung-time.h"
 
 #include "s3c64xx.h"
 
diff --git a/arch/arm/mach-s3c/mach-jive.c b/arch/arm/mach-s3c/mach-jive.c
index 27f4c99172c6..fc54194a001b 100644
--- a/arch/arm/mach-s3c/mach-jive.c
+++ b/arch/arm/mach-s3c/mach-jive.c
@@ -31,10 +31,10 @@
 #include <linux/platform_data/mtd-nand-s3c2410.h>
 #include <linux/platform_data/i2c-s3c2410.h>
 
-#include <mach/hardware.h>
-#include <mach/regs-gpio.h>
+#include "hardware.h"
+#include "regs-gpio.h"
 #include <linux/platform_data/fb-s3c2410.h>
-#include <mach/gpio-samsung.h>
+#include "gpio-samsung.h"
 
 #include <asm/mach-types.h>
 
@@ -43,12 +43,12 @@
 #include <linux/mtd/nand_ecc.h>
 #include <linux/mtd/partitions.h>
 
-#include <plat/gpio-cfg.h>
-#include <plat/devs.h>
-#include <plat/cpu.h>
-#include <plat/pm.h>
+#include "gpio-cfg.h"
+#include "devs.h"
+#include "cpu.h"
+#include "pm.h"
 #include <linux/platform_data/usb-s3c2410_udc.h>
-#include <plat/samsung-time.h>
+#include "samsung-time.h"
 
 #include "s3c24xx.h"
 #include "s3c2412-power.h"
diff --git a/arch/arm/mach-s3c/mach-mini2440.c b/arch/arm/mach-s3c/mach-mini2440.c
index 4280d0a8c4e2..5dc4b3239e97 100644
--- a/arch/arm/mach-s3c/mach-mini2440.c
+++ b/arch/arm/mach-s3c/mach-mini2440.c
@@ -31,13 +31,12 @@
 #include <asm/mach/map.h>
 
 #include <linux/platform_data/fb-s3c2410.h>
-#include <mach/hardware.h>
 #include <asm/mach-types.h>
 
-#include <mach/regs-gpio.h>
+#include "regs-gpio.h"
 #include <linux/platform_data/leds-s3c24xx.h>
 #include <mach/irqs.h>
-#include <mach/gpio-samsung.h>
+#include "gpio-samsung.h"
 #include <linux/platform_data/mtd-nand-s3c2410.h>
 #include <linux/platform_data/i2c-s3c2410.h>
 #include <linux/platform_data/mmc-s3cmci.h>
@@ -48,10 +47,10 @@
 #include <linux/mtd/nand_ecc.h>
 #include <linux/mtd/partitions.h>
 
-#include <plat/gpio-cfg.h>
-#include <plat/devs.h>
-#include <plat/cpu.h>
-#include <plat/samsung-time.h>
+#include "gpio-cfg.h"
+#include "devs.h"
+#include "cpu.h"
+#include "samsung-time.h"
 
 #include <sound/s3c24xx_uda134x.h>
 
diff --git a/arch/arm/mach-s3c/mach-mini6410.c b/arch/arm/mach-s3c/mach-mini6410.c
index 369325107ff1..e8da59ed739d 100644
--- a/arch/arm/mach-s3c/mach-mini6410.c
+++ b/arch/arm/mach-s3c/mach-mini6410.c
@@ -23,23 +23,23 @@
 #include <asm/mach/arch.h>
 #include <asm/mach/map.h>
 
-#include <mach/map.h>
-#include <mach/regs-gpio.h>
-#include <mach/gpio-samsung.h>
+#include "map.h"
+#include "regs-gpio.h"
+#include "gpio-samsung.h"
 
 #include <linux/soc/samsung/s3c-adc.h>
-#include <plat/cpu.h>
-#include <plat/devs.h>
-#include <plat/fb.h>
+#include "cpu.h"
+#include "devs.h"
+#include "fb.h"
 #include <linux/platform_data/mtd-nand-s3c2410.h>
 #include <linux/platform_data/mmc-sdhci-s3c.h>
-#include <plat/sdhci.h>
+#include "sdhci.h"
 #include <linux/platform_data/touchscreen-s3c2410.h>
 #include <mach/irqs.h>
 
 #include <video/platform_lcd.h>
 #include <video/samsung_fimd.h>
-#include <plat/samsung-time.h>
+#include "samsung-time.h"
 
 #include "s3c64xx.h"
 #include "regs-modem.h"
diff --git a/arch/arm/mach-s3c/mach-n30.c b/arch/arm/mach-s3c/mach-n30.c
index 196f4cb17fbb..64b9b8e9d130 100644
--- a/arch/arm/mach-s3c/mach-n30.c
+++ b/arch/arm/mach-s3c/mach-n30.c
@@ -27,15 +27,15 @@
 #include <linux/io.h>
 #include <linux/mmc/host.h>
 
-#include <mach/hardware.h>
+#include "hardware.h"
 #include <asm/irq.h>
 #include <asm/mach-types.h>
 
 #include <linux/platform_data/fb-s3c2410.h>
 #include <linux/platform_data/leds-s3c24xx.h>
-#include <mach/regs-gpio.h>
-#include <mach/gpio-samsung.h>
-#include <plat/gpio-cfg.h>
+#include "regs-gpio.h"
+#include "gpio-samsung.h"
+#include "gpio-cfg.h"
 
 #include <asm/mach/arch.h>
 #include <asm/mach/irq.h>
@@ -43,11 +43,11 @@
 
 #include <linux/platform_data/i2c-s3c2410.h>
 
-#include <plat/cpu.h>
-#include <plat/devs.h>
+#include "cpu.h"
+#include "devs.h"
 #include <linux/platform_data/mmc-s3cmci.h>
 #include <linux/platform_data/usb-s3c2410_udc.h>
-#include <plat/samsung-time.h>
+#include "samsung-time.h"
 
 #include "s3c24xx.h"
 
diff --git a/arch/arm/mach-s3c/mach-ncp.c b/arch/arm/mach-s3c/mach-ncp.c
index 6e2e30e2fee3..7c719f1903c3 100644
--- a/arch/arm/mach-s3c/mach-ncp.c
+++ b/arch/arm/mach-s3c/mach-ncp.c
@@ -25,17 +25,17 @@
 #include <asm/mach/irq.h>
 
 #include <mach/irqs.h>
-#include <mach/map.h>
+#include "map.h"
 
 #include <asm/irq.h>
 #include <asm/mach-types.h>
 
 #include <linux/platform_data/i2c-s3c2410.h>
-#include <plat/fb.h>
+#include "fb.h"
 
-#include <plat/devs.h>
-#include <plat/cpu.h>
-#include <plat/samsung-time.h>
+#include "devs.h"
+#include "cpu.h"
+#include "samsung-time.h"
 
 #include "s3c64xx.h"
 
diff --git a/arch/arm/mach-s3c/mach-nexcoder.c b/arch/arm/mach-s3c/mach-nexcoder.c
index 9b281d1a5536..6e1ba2cd650f 100644
--- a/arch/arm/mach-s3c/mach-nexcoder.c
+++ b/arch/arm/mach-s3c/mach-nexcoder.c
@@ -28,19 +28,18 @@
 #include <asm/mach/irq.h>
 
 #include <asm/setup.h>
-#include <mach/hardware.h>
 #include <asm/irq.h>
 #include <asm/mach-types.h>
 
 //#include <asm/debug-ll.h>
-#include <mach/regs-gpio.h>
-#include <mach/gpio-samsung.h>
+#include "regs-gpio.h"
+#include "gpio-samsung.h"
 #include <linux/platform_data/i2c-s3c2410.h>
 
-#include <plat/gpio-cfg.h>
-#include <plat/devs.h>
-#include <plat/cpu.h>
-#include <plat/samsung-time.h>
+#include "gpio-cfg.h"
+#include "devs.h"
+#include "cpu.h"
+#include "samsung-time.h"
 
 #include "s3c24xx.h"
 
diff --git a/arch/arm/mach-s3c/mach-osiris-dvs.c b/arch/arm/mach-s3c/mach-osiris-dvs.c
index 1250520b3bcc..2e283aedab65 100644
--- a/arch/arm/mach-s3c/mach-osiris-dvs.c
+++ b/arch/arm/mach-s3c/mach-osiris-dvs.c
@@ -15,7 +15,7 @@
 #include <linux/mfd/tps65010.h>
 
 #include <linux/soc/samsung/s3c-cpu-freq.h>
-#include <mach/gpio-samsung.h>
+#include "gpio-samsung.h"
 
 #define OSIRIS_GPIO_DVS	S3C2410_GPB(5)
 
diff --git a/arch/arm/mach-s3c/mach-osiris.c b/arch/arm/mach-s3c/mach-osiris.c
index 2aeeb2230b85..71a3640e55bd 100644
--- a/arch/arm/mach-s3c/mach-osiris.c
+++ b/arch/arm/mach-s3c/mach-osiris.c
@@ -36,15 +36,14 @@
 #include <linux/mtd/nand_ecc.h>
 #include <linux/mtd/partitions.h>
 
-#include <plat/cpu.h>
+#include "cpu.h"
 #include <linux/soc/samsung/s3c-cpu-freq.h>
-#include <plat/devs.h>
-#include <plat/gpio-cfg.h>
-#include <plat/samsung-time.h>
+#include "devs.h"
+#include "gpio-cfg.h"
+#include "samsung-time.h"
 
-#include <mach/hardware.h>
-#include <mach/regs-gpio.h>
-#include <mach/gpio-samsung.h>
+#include "regs-gpio.h"
+#include "gpio-samsung.h"
 
 #include "s3c24xx.h"
 #include "osiris.h"
diff --git a/arch/arm/mach-s3c/mach-otom.c b/arch/arm/mach-s3c/mach-otom.c
index 60917d1bf236..947976da8255 100644
--- a/arch/arm/mach-s3c/mach-otom.c
+++ b/arch/arm/mach-s3c/mach-otom.c
@@ -22,14 +22,13 @@
 #include <asm/mach/map.h>
 #include <asm/mach/irq.h>
 
-#include <mach/hardware.h>
-#include <mach/regs-gpio.h>
-#include <mach/gpio-samsung.h>
-#include <plat/gpio-cfg.h>
-
-#include <plat/cpu.h>
-#include <plat/devs.h>
-#include <plat/samsung-time.h>
+#include "regs-gpio.h"
+#include "gpio-samsung.h"
+#include "gpio-cfg.h"
+
+#include "cpu.h"
+#include "devs.h"
+#include "samsung-time.h"
 
 #include "s3c24xx.h"
 #include "otom.h"
diff --git a/arch/arm/mach-s3c/mach-qt2410.c b/arch/arm/mach-s3c/mach-qt2410.c
index db2ff1085718..9f1705728be4 100644
--- a/arch/arm/mach-s3c/mach-qt2410.c
+++ b/arch/arm/mach-s3c/mach-qt2410.c
@@ -28,7 +28,6 @@
 #include <asm/mach/map.h>
 #include <asm/mach/irq.h>
 
-#include <mach/hardware.h>
 #include <asm/irq.h>
 #include <asm/mach-types.h>
 
@@ -37,13 +36,13 @@
 #include <linux/platform_data/mtd-nand-s3c2410.h>
 #include <linux/platform_data/usb-s3c2410_udc.h>
 #include <linux/platform_data/i2c-s3c2410.h>
-#include <mach/gpio-samsung.h>
+#include "gpio-samsung.h"
 
-#include <plat/gpio-cfg.h>
-#include <plat/devs.h>
-#include <plat/cpu.h>
-#include <plat/pm.h>
-#include <plat/samsung-time.h>
+#include "gpio-cfg.h"
+#include "devs.h"
+#include "cpu.h"
+#include "pm.h"
+#include "samsung-time.h"
 
 #include "s3c24xx.h"
 #include "common-smdk.h"
diff --git a/arch/arm/mach-s3c/mach-real6410.c b/arch/arm/mach-s3c/mach-real6410.c
index b72598b4ae27..6bb4bcdad600 100644
--- a/arch/arm/mach-s3c/mach-real6410.c
+++ b/arch/arm/mach-s3c/mach-real6410.c
@@ -24,21 +24,21 @@
 #include <asm/mach/arch.h>
 #include <asm/mach/map.h>
 
-#include <mach/map.h>
-#include <mach/regs-gpio.h>
-#include <mach/gpio-samsung.h>
+#include "map.h"
+#include "regs-gpio.h"
+#include "gpio-samsung.h"
 #include <mach/irqs.h>
 
 #include <linux/soc/samsung/s3c-adc.h>
-#include <plat/cpu.h>
-#include <plat/devs.h>
-#include <plat/fb.h>
+#include "cpu.h"
+#include "devs.h"
+#include "fb.h"
 #include <linux/platform_data/mtd-nand-s3c2410.h>
 #include <linux/platform_data/touchscreen-s3c2410.h>
 
 #include <video/platform_lcd.h>
 #include <video/samsung_fimd.h>
-#include <plat/samsung-time.h>
+#include "samsung-time.h"
 
 #include "s3c64xx.h"
 #include "regs-modem.h"
diff --git a/arch/arm/mach-s3c/mach-rx1950.c b/arch/arm/mach-s3c/mach-rx1950.c
index 87d82c954523..b9cc919de617 100644
--- a/arch/arm/mach-s3c/mach-rx1950.c
+++ b/arch/arm/mach-s3c/mach-rx1950.c
@@ -46,15 +46,15 @@
 
 #include <sound/uda1380.h>
 
-#include <mach/hardware.h>
-#include <mach/regs-gpio.h>
-#include <mach/gpio-samsung.h>
-
-#include <plat/cpu.h>
-#include <plat/devs.h>
-#include <plat/pm.h>
-#include <plat/samsung-time.h>
-#include <plat/gpio-cfg.h>
+#include "hardware.h"
+#include "regs-gpio.h"
+#include "gpio-samsung.h"
+
+#include "cpu.h"
+#include "devs.h"
+#include "pm.h"
+#include "samsung-time.h"
+#include "gpio-cfg.h"
 
 #include "s3c24xx.h"
 #include "h1940.h"
diff --git a/arch/arm/mach-s3c/mach-rx3715.c b/arch/arm/mach-s3c/mach-rx3715.c
index c810680669d4..026ed8aaf542 100644
--- a/arch/arm/mach-s3c/mach-rx3715.c
+++ b/arch/arm/mach-s3c/mach-rx3715.c
@@ -35,15 +35,14 @@
 #include <asm/irq.h>
 #include <asm/mach-types.h>
 
-#include <mach/hardware.h>
-#include <mach/regs-gpio.h>
-#include <mach/gpio-samsung.h>
-#include <plat/gpio-cfg.h>
-
-#include <plat/cpu.h>
-#include <plat/devs.h>
-#include <plat/pm.h>
-#include <plat/samsung-time.h>
+#include "regs-gpio.h"
+#include "gpio-samsung.h"
+#include "gpio-cfg.h"
+
+#include "cpu.h"
+#include "devs.h"
+#include "pm.h"
+#include "samsung-time.h"
 
 #include "s3c24xx.h"
 #include "h1940.h"
diff --git a/arch/arm/mach-s3c/mach-s3c2416-dt.c b/arch/arm/mach-s3c/mach-s3c2416-dt.c
index 2924e230e79d..418544d3015d 100644
--- a/arch/arm/mach-s3c/mach-s3c2416-dt.c
+++ b/arch/arm/mach-s3c/mach-s3c2416-dt.c
@@ -16,10 +16,10 @@
 #include <linux/serial_s3c.h>
 
 #include <asm/mach/arch.h>
-#include <mach/map.h>
+#include "map.h"
 
-#include <plat/cpu.h>
-#include <plat/pm.h>
+#include "cpu.h"
+#include "pm.h"
 
 #include "s3c24xx.h"
 
diff --git a/arch/arm/mach-s3c/mach-s3c64xx-dt.c b/arch/arm/mach-s3c/mach-s3c64xx-dt.c
index 1b8b61edd40e..ca9d964d44ee 100644
--- a/arch/arm/mach-s3c/mach-s3c64xx-dt.c
+++ b/arch/arm/mach-s3c/mach-s3c64xx-dt.c
@@ -8,8 +8,8 @@
 #include <asm/mach/map.h>
 #include <asm/system_misc.h>
 
-#include <plat/cpu.h>
-#include <mach/map.h>
+#include "cpu.h"
+#include "map.h"
 
 #include "s3c64xx.h"
 #include "watchdog-reset.h"
diff --git a/arch/arm/mach-s3c/mach-smartq.c b/arch/arm/mach-s3c/mach-smartq.c
index fa5f2ebc6dbc..ba7dee0ca372 100644
--- a/arch/arm/mach-s3c/mach-smartq.c
+++ b/arch/arm/mach-s3c/mach-smartq.c
@@ -19,21 +19,21 @@
 #include <asm/mach-types.h>
 #include <asm/mach/map.h>
 
-#include <mach/map.h>
-#include <mach/regs-gpio.h>
-#include <mach/gpio-samsung.h>
+#include "map.h"
+#include "regs-gpio.h"
+#include "gpio-samsung.h"
 
-#include <plat/cpu.h>
-#include <plat/devs.h>
+#include "cpu.h"
+#include "devs.h"
 #include <linux/platform_data/i2c-s3c2410.h>
-#include <plat/gpio-cfg.h>
+#include "gpio-cfg.h"
 #include <linux/platform_data/hwmon-s3c.h>
 #include <linux/platform_data/usb-ohci-s3c2410.h>
-#include <plat/sdhci.h>
+#include "sdhci.h"
 #include <linux/platform_data/touchscreen-s3c2410.h>
 
 #include <video/platform_lcd.h>
-#include <plat/samsung-time.h>
+#include "samsung-time.h"
 
 #include "s3c64xx.h"
 #include "mach-smartq.h"
diff --git a/arch/arm/mach-s3c/mach-smartq5.c b/arch/arm/mach-s3c/mach-smartq5.c
index 91560ed02738..514824efec63 100644
--- a/arch/arm/mach-s3c/mach-smartq5.c
+++ b/arch/arm/mach-s3c/mach-smartq5.c
@@ -15,15 +15,15 @@
 
 #include <video/samsung_fimd.h>
 #include <mach/irqs.h>
-#include <mach/map.h>
-#include <mach/regs-gpio.h>
-#include <mach/gpio-samsung.h>
-
-#include <plat/cpu.h>
-#include <plat/devs.h>
-#include <plat/fb.h>
-#include <plat/gpio-cfg.h>
-#include <plat/samsung-time.h>
+#include "map.h"
+#include "regs-gpio.h"
+#include "gpio-samsung.h"
+
+#include "cpu.h"
+#include "devs.h"
+#include "fb.h"
+#include "gpio-cfg.h"
+#include "samsung-time.h"
 
 #include "s3c64xx.h"
 #include "mach-smartq.h"
diff --git a/arch/arm/mach-s3c/mach-smartq7.c b/arch/arm/mach-s3c/mach-smartq7.c
index 9eadc837ba12..a3f4cb9064e6 100644
--- a/arch/arm/mach-s3c/mach-smartq7.c
+++ b/arch/arm/mach-s3c/mach-smartq7.c
@@ -15,15 +15,15 @@
 
 #include <video/samsung_fimd.h>
 #include <mach/irqs.h>
-#include <mach/map.h>
-#include <mach/regs-gpio.h>
-#include <mach/gpio-samsung.h>
-
-#include <plat/cpu.h>
-#include <plat/devs.h>
-#include <plat/fb.h>
-#include <plat/gpio-cfg.h>
-#include <plat/samsung-time.h>
+#include "map.h"
+#include "regs-gpio.h"
+#include "gpio-samsung.h"
+
+#include "cpu.h"
+#include "devs.h"
+#include "fb.h"
+#include "gpio-cfg.h"
+#include "samsung-time.h"
 
 #include "s3c64xx.h"
 #include "mach-smartq.h"
diff --git a/arch/arm/mach-s3c/mach-smdk2410.c b/arch/arm/mach-s3c/mach-smdk2410.c
index 35aa8ec7cc4f..fb69487d6c2c 100644
--- a/arch/arm/mach-s3c/mach-smdk2410.c
+++ b/arch/arm/mach-s3c/mach-smdk2410.c
@@ -19,22 +19,21 @@
 #include <linux/serial_s3c.h>
 #include <linux/platform_device.h>
 #include <linux/io.h>
-#include <mach/gpio-samsung.h>
-#include <plat/gpio-cfg.h>
+#include "gpio-samsung.h"
+#include "gpio-cfg.h"
 
 #include <asm/mach/arch.h>
 #include <asm/mach/map.h>
 #include <asm/mach/irq.h>
 
-#include <mach/hardware.h>
 #include <asm/irq.h>
 #include <asm/mach-types.h>
 
 #include <linux/platform_data/i2c-s3c2410.h>
 
-#include <plat/devs.h>
-#include <plat/cpu.h>
-#include <plat/samsung-time.h>
+#include "devs.h"
+#include "cpu.h"
+#include "samsung-time.h"
 
 #include "s3c24xx.h"
 #include "common-smdk.h"
diff --git a/arch/arm/mach-s3c/mach-smdk2413.c b/arch/arm/mach-s3c/mach-smdk2413.c
index f2305961f7eb..9cb634c00fb9 100644
--- a/arch/arm/mach-s3c/mach-smdk2413.c
+++ b/arch/arm/mach-s3c/mach-smdk2413.c
@@ -23,24 +23,24 @@
 #include <asm/mach/map.h>
 #include <asm/mach/irq.h>
 
-#include <mach/hardware.h>
+#include "hardware.h"
 #include <asm/hardware/iomd.h>
 #include <asm/setup.h>
 #include <asm/irq.h>
 #include <asm/mach-types.h>
 
 //#include <asm/debug-ll.h>
-#include <mach/regs-gpio.h>
+#include "regs-gpio.h"
 
 #include <linux/platform_data/usb-s3c2410_udc.h>
 #include <linux/platform_data/i2c-s3c2410.h>
 #include <linux/platform_data/fb-s3c2410.h>
-#include <mach/gpio-samsung.h>
-#include <plat/gpio-cfg.h>
+#include "gpio-samsung.h"
+#include "gpio-cfg.h"
 
-#include <plat/devs.h>
-#include <plat/cpu.h>
-#include <plat/samsung-time.h>
+#include "devs.h"
+#include "cpu.h"
+#include "samsung-time.h"
 
 #include "s3c24xx.h"
 #include "common-smdk.h"
diff --git a/arch/arm/mach-s3c/mach-smdk2416.c b/arch/arm/mach-s3c/mach-smdk2416.c
index 7fd5df4cf7e3..e6b4c6fd16e6 100644
--- a/arch/arm/mach-s3c/mach-smdk2416.c
+++ b/arch/arm/mach-s3c/mach-smdk2416.c
@@ -25,27 +25,27 @@
 #include <asm/mach/irq.h>
 
 #include <video/samsung_fimd.h>
-#include <mach/hardware.h>
+#include "hardware.h"
 #include <asm/irq.h>
 #include <asm/mach-types.h>
 
-#include <mach/regs-gpio.h>
-#include <mach/regs-s3c2443-clock.h>
-#include <mach/gpio-samsung.h>
+#include "regs-gpio.h"
+#include "regs-s3c2443-clock.h"
+#include "gpio-samsung.h"
 
 #include <linux/platform_data/leds-s3c24xx.h>
 #include <linux/platform_data/i2c-s3c2410.h>
 
-#include <plat/gpio-cfg.h>
-#include <plat/devs.h>
-#include <plat/cpu.h>
+#include "gpio-cfg.h"
+#include "devs.h"
+#include "cpu.h"
 #include <linux/platform_data/mtd-nand-s3c2410.h>
-#include <plat/sdhci.h>
+#include "sdhci.h"
 #include <linux/platform_data/usb-s3c2410_udc.h>
 #include <linux/platform_data/s3c-hsudc.h>
-#include <plat/samsung-time.h>
+#include "samsung-time.h"
 
-#include <plat/fb.h>
+#include "fb.h"
 
 #include "s3c24xx.h"
 #include "common-smdk.h"
diff --git a/arch/arm/mach-s3c/mach-smdk2440.c b/arch/arm/mach-s3c/mach-smdk2440.c
index d72f86a68c84..eca2405ccb9a 100644
--- a/arch/arm/mach-s3c/mach-smdk2440.c
+++ b/arch/arm/mach-s3c/mach-smdk2440.c
@@ -23,20 +23,19 @@
 #include <asm/mach/map.h>
 #include <asm/mach/irq.h>
 
-#include <mach/hardware.h>
 #include <asm/irq.h>
 #include <asm/mach-types.h>
 
-#include <mach/regs-gpio.h>
-#include <mach/gpio-samsung.h>
-#include <plat/gpio-cfg.h>
+#include "regs-gpio.h"
+#include "gpio-samsung.h"
+#include "gpio-cfg.h"
 
 #include <linux/platform_data/fb-s3c2410.h>
 #include <linux/platform_data/i2c-s3c2410.h>
 
-#include <plat/devs.h>
-#include <plat/cpu.h>
-#include <plat/samsung-time.h>
+#include "devs.h"
+#include "cpu.h"
+#include "samsung-time.h"
 
 #include "s3c24xx.h"
 #include "common-smdk.h"
diff --git a/arch/arm/mach-s3c/mach-smdk2443.c b/arch/arm/mach-s3c/mach-smdk2443.c
index b439dfabd421..156e0217f7bb 100644
--- a/arch/arm/mach-s3c/mach-smdk2443.c
+++ b/arch/arm/mach-s3c/mach-smdk2443.c
@@ -22,18 +22,17 @@
 #include <asm/mach/map.h>
 #include <asm/mach/irq.h>
 
-#include <mach/hardware.h>
 #include <asm/irq.h>
 #include <asm/mach-types.h>
 
-#include <mach/regs-gpio.h>
+#include "regs-gpio.h"
 
 #include <linux/platform_data/fb-s3c2410.h>
 #include <linux/platform_data/i2c-s3c2410.h>
 
-#include <plat/devs.h>
-#include <plat/cpu.h>
-#include <plat/samsung-time.h>
+#include "devs.h"
+#include "cpu.h"
+#include "samsung-time.h"
 
 #include "s3c24xx.h"
 #include "common-smdk.h"
diff --git a/arch/arm/mach-s3c/mach-smdk6400.c b/arch/arm/mach-s3c/mach-smdk6400.c
index a2a70c5f5667..6a7aa7cad0ce 100644
--- a/arch/arm/mach-s3c/mach-smdk6400.c
+++ b/arch/arm/mach-s3c/mach-smdk6400.c
@@ -23,13 +23,13 @@
 #include <asm/mach/irq.h>
 
 #include <mach/irqs.h>
-#include <mach/map.h>
+#include "map.h"
 
-#include <plat/devs.h>
-#include <plat/cpu.h>
+#include "devs.h"
+#include "cpu.h"
 #include <linux/platform_data/i2c-s3c2410.h>
-#include <mach/gpio-samsung.h>
-#include <plat/samsung-time.h>
+#include "gpio-samsung.h"
+#include "samsung-time.h"
 
 #include "s3c64xx.h"
 
diff --git a/arch/arm/mach-s3c/mach-smdk6410.c b/arch/arm/mach-s3c/mach-smdk6410.c
index a80c2138e90b..f288661b7fb9 100644
--- a/arch/arm/mach-s3c/mach-smdk6410.c
+++ b/arch/arm/mach-s3c/mach-smdk6410.c
@@ -46,24 +46,24 @@
 #include <asm/mach/irq.h>
 
 #include <mach/irqs.h>
-#include <mach/map.h>
+#include "map.h"
 
 #include <asm/irq.h>
 #include <asm/mach-types.h>
 
-#include <mach/regs-gpio.h>
-#include <mach/gpio-samsung.h>
+#include "regs-gpio.h"
+#include "gpio-samsung.h"
 #include <linux/platform_data/ata-samsung_cf.h>
 #include <linux/platform_data/i2c-s3c2410.h>
-#include <plat/fb.h>
-#include <plat/gpio-cfg.h>
+#include "fb.h"
+#include "gpio-cfg.h"
 
-#include <plat/devs.h>
-#include <plat/cpu.h>
+#include "devs.h"
+#include "cpu.h"
 #include <linux/soc/samsung/s3c-adc.h>
 #include <linux/platform_data/touchscreen-s3c2410.h>
-#include <plat/keypad.h>
-#include <plat/samsung-time.h>
+#include "keypad.h"
+#include "samsung-time.h"
 
 #include "backlight.h"
 #include "s3c64xx.h"
diff --git a/arch/arm/mach-s3c/mach-tct_hammer.c b/arch/arm/mach-s3c/mach-tct_hammer.c
index f1ed79889e39..92d5494b7c98 100644
--- a/arch/arm/mach-s3c/mach-tct_hammer.c
+++ b/arch/arm/mach-s3c/mach-tct_hammer.c
@@ -25,19 +25,18 @@
 #include <asm/mach/irq.h>
 #include <asm/mach/flash.h>
 
-#include <mach/hardware.h>
 #include <asm/irq.h>
 #include <asm/mach-types.h>
 
 #include <linux/platform_data/i2c-s3c2410.h>
-#include <plat/devs.h>
-#include <plat/cpu.h>
+#include "devs.h"
+#include "cpu.h"
 
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/partitions.h>
 #include <linux/mtd/map.h>
 #include <linux/mtd/physmap.h>
-#include <plat/samsung-time.h>
+#include "samsung-time.h"
 
 #include "s3c24xx.h"
 
diff --git a/arch/arm/mach-s3c/mach-vr1000.c b/arch/arm/mach-s3c/mach-vr1000.c
index 854783386a06..78fa7f8411ae 100644
--- a/arch/arm/mach-s3c/mach-vr1000.c
+++ b/arch/arm/mach-s3c/mach-vr1000.c
@@ -34,14 +34,13 @@
 #include <linux/platform_data/i2c-s3c2410.h>
 #include <linux/platform_data/asoc-s3c24xx_simtec.h>
 
-#include <mach/hardware.h>
-#include <mach/regs-gpio.h>
-#include <mach/gpio-samsung.h>
-#include <plat/gpio-cfg.h>
-
-#include <plat/cpu.h>
-#include <plat/devs.h>
-#include <plat/samsung-time.h>
+#include "regs-gpio.h"
+#include "gpio-samsung.h"
+#include "gpio-cfg.h"
+
+#include "cpu.h"
+#include "devs.h"
+#include "samsung-time.h"
 
 #include "bast.h"
 #include "s3c24xx.h"
diff --git a/arch/arm/mach-s3c/mach-vstms.c b/arch/arm/mach-s3c/mach-vstms.c
index 7496271bb343..6776ae73d157 100644
--- a/arch/arm/mach-s3c/mach-vstms.c
+++ b/arch/arm/mach-s3c/mach-vstms.c
@@ -24,23 +24,22 @@
 #include <asm/mach/map.h>
 #include <asm/mach/irq.h>
 
-#include <mach/hardware.h>
 #include <asm/setup.h>
 #include <asm/irq.h>
 #include <asm/mach-types.h>
 
-#include <mach/regs-gpio.h>
-#include <mach/gpio-samsung.h>
-#include <plat/gpio-cfg.h>
+#include "regs-gpio.h"
+#include "gpio-samsung.h"
+#include "gpio-cfg.h"
 
 #include <linux/platform_data/fb-s3c2410.h>
 
 #include <linux/platform_data/i2c-s3c2410.h>
 #include <linux/platform_data/mtd-nand-s3c2410.h>
 
-#include <plat/devs.h>
-#include <plat/cpu.h>
-#include <plat/samsung-time.h>
+#include "devs.h"
+#include "cpu.h"
+#include "samsung-time.h"
 
 #include "s3c24xx.h"
 
diff --git a/arch/arm/mach-s3c/include/plat/map-s3c.h b/arch/arm/mach-s3c/map-s3c.h
similarity index 97%
rename from arch/arm/mach-s3c/include/plat/map-s3c.h
rename to arch/arm/mach-s3c/map-s3c.h
index bf247d836684..a18fdd3d6ae2 100644
--- a/arch/arm/mach-s3c/include/plat/map-s3c.h
+++ b/arch/arm/mach-s3c/map-s3c.h
@@ -9,7 +9,7 @@
 #ifndef __ASM_PLAT_MAP_S3C_H
 #define __ASM_PLAT_MAP_S3C_H __FILE__
 
-#include <mach/map.h>
+#include "map.h"
 
 #define S3C24XX_VA_IRQ		S3C_VA_IRQ
 #define S3C24XX_VA_MEMCTRL	S3C_VA_MEM
@@ -65,6 +65,6 @@ extern void __iomem *s3c24xx_va_gpio2;
 #define S3C24XX_VA_GPIO2 S3C24XX_VA_GPIO
 #endif
 
-#include <plat/map-s5p.h>
+#include "map-s5p.h"
 
 #endif /* __ASM_PLAT_MAP_S3C_H */
diff --git a/arch/arm/mach-s3c/include/mach/map-s3c24xx.h b/arch/arm/mach-s3c/map-s3c24xx.h
similarity index 98%
rename from arch/arm/mach-s3c/include/mach/map-s3c24xx.h
rename to arch/arm/mach-s3c/map-s3c24xx.h
index a20c9fd0d855..b5dba78a9dd7 100644
--- a/arch/arm/mach-s3c/include/mach/map-s3c24xx.h
+++ b/arch/arm/mach-s3c/map-s3c24xx.h
@@ -9,8 +9,8 @@
 #ifndef __ASM_ARCH_MAP_H
 #define __ASM_ARCH_MAP_H
 
-#include <plat/map-base.h>
-#include <plat/map-s3c.h>
+#include <mach/map-base.h>
+#include "map-s3c.h"
 
 /*
  * interrupt controller is the first thing we put in, to make
diff --git a/arch/arm/mach-s3c/include/mach/map-s3c64xx.h b/arch/arm/mach-s3c/map-s3c64xx.h
similarity index 98%
rename from arch/arm/mach-s3c/include/mach/map-s3c64xx.h
rename to arch/arm/mach-s3c/map-s3c64xx.h
index 9372a535b7ba..d7740d2a77c4 100644
--- a/arch/arm/mach-s3c/include/mach/map-s3c64xx.h
+++ b/arch/arm/mach-s3c/map-s3c64xx.h
@@ -11,8 +11,8 @@
 #ifndef __ASM_ARCH_MAP_H
 #define __ASM_ARCH_MAP_H __FILE__
 
-#include <plat/map-base.h>
-#include <plat/map-s3c.h>
+#include <mach/map-base.h>
+#include "map-s3c.h"
 
 /*
  * Post-mux Chip Select Regions Xm0CSn_
diff --git a/arch/arm/mach-s3c/include/plat/map-s5p.h b/arch/arm/mach-s3c/map-s5p.h
similarity index 94%
rename from arch/arm/mach-s3c/include/plat/map-s5p.h
rename to arch/arm/mach-s3c/map-s5p.h
index 3812085f8761..cd237924e34d 100644
--- a/arch/arm/mach-s3c/include/plat/map-s5p.h
+++ b/arch/arm/mach-s3c/map-s5p.h
@@ -15,6 +15,6 @@
 #define VA_VIC2			VA_VIC(2)
 #define VA_VIC3			VA_VIC(3)
 
-#include <plat/map-s3c.h>
+#include "map-s3c.h"
 
 #endif /* __ASM_PLAT_MAP_S5P_H */
diff --git a/arch/arm/mach-s3c/include/mach/map.h b/arch/arm/mach-s3c/map.h
similarity index 100%
rename from arch/arm/mach-s3c/include/mach/map.h
rename to arch/arm/mach-s3c/map.h
diff --git a/arch/arm/mach-s3c/pl080.c b/arch/arm/mach-s3c/pl080.c
index 152edbeea0c7..cf7262073cc0 100644
--- a/arch/arm/mach-s3c/pl080.c
+++ b/arch/arm/mach-s3c/pl080.c
@@ -10,9 +10,9 @@
 #include <linux/amba/pl08x.h>
 #include <linux/of.h>
 
-#include <plat/cpu.h>
+#include "cpu.h"
 #include <mach/irqs.h>
-#include <mach/map.h>
+#include "map.h"
 
 #include "regs-sys.h"
 
diff --git a/arch/arm/mach-s3c/platformdata.c b/arch/arm/mach-s3c/platformdata.c
index cbc3b4b45c74..e643c81aef45 100644
--- a/arch/arm/mach-s3c/platformdata.c
+++ b/arch/arm/mach-s3c/platformdata.c
@@ -9,8 +9,8 @@
 #include <linux/string.h>
 #include <linux/platform_device.h>
 
-#include <plat/devs.h>
-#include <plat/sdhci.h>
+#include "devs.h"
+#include "sdhci.h"
 
 void __init *s3c_set_platdata(void *pd, size_t pdsize,
 			      struct platform_device *pdev)
diff --git a/arch/arm/mach-s3c/pm-common.c b/arch/arm/mach-s3c/pm-common.c
index 59a10c6dcba1..82b8c3148d7f 100644
--- a/arch/arm/mach-s3c/pm-common.c
+++ b/arch/arm/mach-s3c/pm-common.c
@@ -12,7 +12,7 @@
 #include <linux/io.h>
 #include <linux/kernel.h>
 
-#include <plat/pm-common.h>
+#include "pm-common.h"
 
 /* helper functions to save and restore register state */
 
diff --git a/arch/arm/mach-s3c/include/plat/pm-common.h b/arch/arm/mach-s3c/pm-common.h
similarity index 100%
rename from arch/arm/mach-s3c/include/plat/pm-common.h
rename to arch/arm/mach-s3c/pm-common.h
diff --git a/arch/arm/mach-s3c/include/mach/pm-core-s3c24xx.h b/arch/arm/mach-s3c/pm-core-s3c24xx.h
similarity index 100%
rename from arch/arm/mach-s3c/include/mach/pm-core-s3c24xx.h
rename to arch/arm/mach-s3c/pm-core-s3c24xx.h
diff --git a/arch/arm/mach-s3c/include/mach/pm-core-s3c64xx.h b/arch/arm/mach-s3c/pm-core-s3c64xx.h
similarity index 96%
rename from arch/arm/mach-s3c/include/mach/pm-core-s3c64xx.h
rename to arch/arm/mach-s3c/pm-core-s3c64xx.h
index 33cf242734a0..06f564e5cf63 100644
--- a/arch/arm/mach-s3c/include/mach/pm-core-s3c64xx.h
+++ b/arch/arm/mach-s3c/pm-core-s3c64xx.h
@@ -14,9 +14,9 @@
 #include <linux/serial_s3c.h>
 #include <linux/delay.h>
 
-#include <mach/regs-gpio.h>
-#include <mach/regs-clock.h>
-#include <mach/map.h>
+#include "regs-gpio.h"
+#include "regs-clock.h"
+#include "map.h"
 
 static inline void s3c_pm_debug_init_uart(void)
 {
diff --git a/arch/arm/mach-s3c/include/mach/pm-core.h b/arch/arm/mach-s3c/pm-core.h
similarity index 100%
rename from arch/arm/mach-s3c/include/mach/pm-core.h
rename to arch/arm/mach-s3c/pm-core.h
diff --git a/arch/arm/mach-s3c/pm-gpio.c b/arch/arm/mach-s3c/pm-gpio.c
index cb2e3bc79336..cfdbc2337998 100644
--- a/arch/arm/mach-s3c/pm-gpio.c
+++ b/arch/arm/mach-s3c/pm-gpio.c
@@ -13,10 +13,10 @@
 #include <linux/io.h>
 #include <linux/gpio.h>
 
-#include <mach/gpio-samsung.h>
+#include "gpio-samsung.h"
 
-#include <plat/gpio-core.h>
-#include <plat/pm.h>
+#include "gpio-core.h"
+#include "pm.h"
 
 /* PM GPIO helpers */
 
diff --git a/arch/arm/mach-s3c/pm-h1940.S b/arch/arm/mach-s3c/pm-h1940.S
index f9ee515e1cbe..3bf6685123cb 100644
--- a/arch/arm/mach-s3c/pm-h1940.S
+++ b/arch/arm/mach-s3c/pm-h1940.S
@@ -7,9 +7,9 @@
 
 #include <linux/linkage.h>
 #include <asm/assembler.h>
-#include <mach/map.h>
+#include "map.h"
 
-#include <mach/regs-gpio.h>
+#include "regs-gpio.h"
 
 	.text
 	.global	h1940_pm_return
diff --git a/arch/arm/mach-s3c/pm-s3c2410.c b/arch/arm/mach-s3c/pm-s3c2410.c
index 2d8ea701380a..a66419883735 100644
--- a/arch/arm/mach-s3c/pm-s3c2410.c
+++ b/arch/arm/mach-s3c/pm-s3c2410.c
@@ -16,13 +16,12 @@
 
 #include <asm/mach-types.h>
 
-#include <mach/hardware.h>
-#include <mach/regs-gpio.h>
-#include <mach/gpio-samsung.h>
+#include "regs-gpio.h"
+#include "gpio-samsung.h"
 
-#include <plat/gpio-cfg.h>
-#include <plat/cpu.h>
-#include <plat/pm.h>
+#include "gpio-cfg.h"
+#include "cpu.h"
+#include "pm.h"
 
 #include "h1940.h"
 
diff --git a/arch/arm/mach-s3c/pm-s3c2412.c b/arch/arm/mach-s3c/pm-s3c2412.c
index 1ad9c61f9253..2785a969c29f 100644
--- a/arch/arm/mach-s3c/pm-s3c2412.c
+++ b/arch/arm/mach-s3c/pm-s3c2412.c
@@ -19,14 +19,13 @@
 #include <asm/cacheflush.h>
 #include <asm/irq.h>
 
-#include <mach/hardware.h>
 #include <mach/irqs.h>
 
-#include <mach/regs-gpio.h>
+#include "regs-gpio.h"
 
-#include <plat/cpu.h>
-#include <plat/pm.h>
-#include <plat/wakeup-mask.h>
+#include "cpu.h"
+#include "pm.h"
+#include "wakeup-mask.h"
 
 #include "regs-dsc.h"
 #include "s3c2412-power.h"
diff --git a/arch/arm/mach-s3c/pm-s3c2416.c b/arch/arm/mach-s3c/pm-s3c2416.c
index 9a2f05e279d4..f69ad84cf4ff 100644
--- a/arch/arm/mach-s3c/pm-s3c2416.c
+++ b/arch/arm/mach-s3c/pm-s3c2416.c
@@ -11,10 +11,10 @@
 
 #include <asm/cacheflush.h>
 
-#include <mach/regs-s3c2443-clock.h>
+#include "regs-s3c2443-clock.h"
 
-#include <plat/cpu.h>
-#include <plat/pm.h>
+#include "cpu.h"
+#include "pm.h"
 
 #include "s3c2412-power.h"
 
diff --git a/arch/arm/mach-s3c/pm-s3c24xx.c b/arch/arm/mach-s3c/pm-s3c24xx.c
index c64988c609ad..6ca5e6aaca54 100644
--- a/arch/arm/mach-s3c/pm-s3c24xx.c
+++ b/arch/arm/mach-s3c/pm-s3c24xx.c
@@ -21,15 +21,15 @@
 #include <linux/serial_s3c.h>
 #include <linux/io.h>
 
-#include <mach/regs-clock.h>
-#include <mach/regs-gpio.h>
-#include <mach/regs-irq.h>
-#include <mach/gpio-samsung.h>
+#include "regs-clock.h"
+#include "regs-gpio.h"
+#include "regs-irq.h"
+#include "gpio-samsung.h"
 
 #include <asm/mach/time.h>
 
-#include <plat/gpio-cfg.h>
-#include <plat/pm.h>
+#include "gpio-cfg.h"
+#include "pm.h"
 
 #include "regs-mem.h"
 
diff --git a/arch/arm/mach-s3c/pm-s3c64xx.c b/arch/arm/mach-s3c/pm-s3c64xx.c
index a612e9779057..629e9c9762ca 100644
--- a/arch/arm/mach-s3c/pm-s3c64xx.c
+++ b/arch/arm/mach-s3c/pm-s3c64xx.c
@@ -14,17 +14,17 @@
 #include <linux/gpio.h>
 #include <linux/pm_domain.h>
 
-#include <mach/map.h>
+#include "map.h"
 #include <mach/irqs.h>
 
-#include <plat/cpu.h>
-#include <plat/devs.h>
-#include <plat/pm.h>
-#include <plat/wakeup-mask.h>
+#include "cpu.h"
+#include "devs.h"
+#include "pm.h"
+#include "wakeup-mask.h"
 
-#include <mach/regs-gpio.h>
-#include <mach/regs-clock.h>
-#include <mach/gpio-samsung.h>
+#include "regs-gpio.h"
+#include "regs-clock.h"
+#include "gpio-samsung.h"
 
 #include "regs-gpio-memport.h"
 #include "regs-modem.h"
diff --git a/arch/arm/mach-s3c/pm.c b/arch/arm/mach-s3c/pm.c
index 03c22a9dee21..c563bb9d92be 100644
--- a/arch/arm/mach-s3c/pm.c
+++ b/arch/arm/mach-s3c/pm.c
@@ -18,16 +18,16 @@
 #include <asm/cacheflush.h>
 #include <asm/suspend.h>
 
-#include <mach/map.h>
-#include <mach/regs-clock.h>
-#include <mach/regs-irq.h>
+#include "map.h"
+#include "regs-clock.h"
+#include "regs-irq.h"
 #include <mach/irqs.h>
 
 #include <asm/irq.h>
 
-#include <plat/cpu.h>
-#include <plat/pm.h>
-#include <mach/pm-core.h>
+#include "cpu.h"
+#include "pm.h"
+#include "pm-core.h"
 
 /* for external use */
 
diff --git a/arch/arm/mach-s3c/include/plat/pm.h b/arch/arm/mach-s3c/pm.h
similarity index 98%
rename from arch/arm/mach-s3c/include/plat/pm.h
rename to arch/arm/mach-s3c/pm.h
index 2746137f9794..eed61e585457 100644
--- a/arch/arm/mach-s3c/include/plat/pm.h
+++ b/arch/arm/mach-s3c/pm.h
@@ -11,7 +11,7 @@
  * management
 */
 
-#include <plat/pm-common.h>
+#include "pm-common.h"
 
 struct device;
 
diff --git a/arch/arm/mach-s3c/include/plat/pwm-core.h b/arch/arm/mach-s3c/pwm-core.h
similarity index 100%
rename from arch/arm/mach-s3c/include/plat/pwm-core.h
rename to arch/arm/mach-s3c/pwm-core.h
diff --git a/arch/arm/mach-s3c/include/plat/regs-adc.h b/arch/arm/mach-s3c/regs-adc.h
similarity index 100%
rename from arch/arm/mach-s3c/include/plat/regs-adc.h
rename to arch/arm/mach-s3c/regs-adc.h
diff --git a/arch/arm/mach-s3c/include/mach/regs-clock-s3c24xx.h b/arch/arm/mach-s3c/regs-clock-s3c24xx.h
similarity index 99%
rename from arch/arm/mach-s3c/include/mach/regs-clock-s3c24xx.h
rename to arch/arm/mach-s3c/regs-clock-s3c24xx.h
index da4e7b3aeba6..933ddb5eedec 100644
--- a/arch/arm/mach-s3c/include/mach/regs-clock-s3c24xx.h
+++ b/arch/arm/mach-s3c/regs-clock-s3c24xx.h
@@ -9,7 +9,7 @@
 #ifndef __ASM_ARM_REGS_CLOCK
 #define __ASM_ARM_REGS_CLOCK
 
-#include <mach/map.h>
+#include "map.h"
 
 #define S3C2410_CLKREG(x) ((x) + S3C24XX_VA_CLKPWR)
 
diff --git a/arch/arm/mach-s3c/include/mach/regs-clock-s3c64xx.h b/arch/arm/mach-s3c/regs-clock-s3c64xx.h
similarity index 100%
rename from arch/arm/mach-s3c/include/mach/regs-clock-s3c64xx.h
rename to arch/arm/mach-s3c/regs-clock-s3c64xx.h
diff --git a/arch/arm/mach-s3c/include/mach/regs-clock.h b/arch/arm/mach-s3c/regs-clock.h
similarity index 100%
rename from arch/arm/mach-s3c/include/mach/regs-clock.h
rename to arch/arm/mach-s3c/regs-clock.h
diff --git a/arch/arm/mach-s3c/include/mach/regs-gpio-s3c24xx.h b/arch/arm/mach-s3c/regs-gpio-s3c24xx.h
similarity index 99%
rename from arch/arm/mach-s3c/include/mach/regs-gpio-s3c24xx.h
rename to arch/arm/mach-s3c/regs-gpio-s3c24xx.h
index 51827d5577b6..9a7e262268a7 100644
--- a/arch/arm/mach-s3c/include/mach/regs-gpio-s3c24xx.h
+++ b/arch/arm/mach-s3c/regs-gpio-s3c24xx.h
@@ -10,7 +10,7 @@
 #ifndef __ASM_ARCH_REGS_GPIO_H
 #define __ASM_ARCH_REGS_GPIO_H
 
-#include <plat/map-s3c.h>
+#include "map-s3c.h"
 
 #define S3C24XX_MISCCR		S3C24XX_GPIOREG2(0x80)
 
diff --git a/arch/arm/mach-s3c/include/mach/regs-gpio-s3c64xx.h b/arch/arm/mach-s3c/regs-gpio-s3c64xx.h
similarity index 100%
rename from arch/arm/mach-s3c/include/mach/regs-gpio-s3c64xx.h
rename to arch/arm/mach-s3c/regs-gpio-s3c64xx.h
diff --git a/arch/arm/mach-s3c/include/mach/regs-gpio.h b/arch/arm/mach-s3c/regs-gpio.h
similarity index 100%
rename from arch/arm/mach-s3c/include/mach/regs-gpio.h
rename to arch/arm/mach-s3c/regs-gpio.h
diff --git a/arch/arm/mach-s3c/include/mach/regs-irq-s3c24xx.h b/arch/arm/mach-s3c/regs-irq-s3c24xx.h
similarity index 98%
rename from arch/arm/mach-s3c/include/mach/regs-irq-s3c24xx.h
rename to arch/arm/mach-s3c/regs-irq-s3c24xx.h
index 2921b48c56b2..c0b97b203415 100644
--- a/arch/arm/mach-s3c/include/mach/regs-irq-s3c24xx.h
+++ b/arch/arm/mach-s3c/regs-irq-s3c24xx.h
@@ -8,7 +8,7 @@
 #ifndef ___ASM_ARCH_REGS_IRQ_H
 #define ___ASM_ARCH_REGS_IRQ_H
 
-#include <plat/map-s3c.h>
+#include "map-s3c.h"
 
 /* interrupt controller */
 
diff --git a/arch/arm/mach-s3c/include/mach/regs-irq-s3c64xx.h b/arch/arm/mach-s3c/regs-irq-s3c64xx.h
similarity index 100%
rename from arch/arm/mach-s3c/include/mach/regs-irq-s3c64xx.h
rename to arch/arm/mach-s3c/regs-irq-s3c64xx.h
diff --git a/arch/arm/mach-s3c/include/mach/regs-irq.h b/arch/arm/mach-s3c/regs-irq.h
similarity index 100%
rename from arch/arm/mach-s3c/include/mach/regs-irq.h
rename to arch/arm/mach-s3c/regs-irq.h
diff --git a/arch/arm/mach-s3c/include/plat/regs-irqtype.h b/arch/arm/mach-s3c/regs-irqtype.h
similarity index 100%
rename from arch/arm/mach-s3c/include/plat/regs-irqtype.h
rename to arch/arm/mach-s3c/regs-irqtype.h
diff --git a/arch/arm/mach-s3c/regs-mem.h b/arch/arm/mach-s3c/regs-mem.h
index 5048ab8f06c2..8fed34a1672a 100644
--- a/arch/arm/mach-s3c/regs-mem.h
+++ b/arch/arm/mach-s3c/regs-mem.h
@@ -9,7 +9,7 @@
 #ifndef __ARCH_ARM_MACH_S3C24XX_REGS_MEM_H
 #define __ARCH_ARM_MACH_S3C24XX_REGS_MEM_H __FILE__
 
-#include <plat/map-s3c.h>
+#include "map-s3c.h"
 
 #define S3C2410_MEMREG(x)		(S3C24XX_VA_MEMCTRL + (x))
 
diff --git a/arch/arm/mach-s3c/include/mach/regs-s3c2443-clock.h b/arch/arm/mach-s3c/regs-s3c2443-clock.h
similarity index 99%
rename from arch/arm/mach-s3c/include/mach/regs-s3c2443-clock.h
rename to arch/arm/mach-s3c/regs-s3c2443-clock.h
index fefef7233f4b..b3b670d463db 100644
--- a/arch/arm/mach-s3c/include/mach/regs-s3c2443-clock.h
+++ b/arch/arm/mach-s3c/regs-s3c2443-clock.h
@@ -11,7 +11,7 @@
 #define __ASM_ARM_REGS_S3C2443_CLOCK
 
 #include <linux/delay.h>
-#include <plat/map-s3c.h>
+#include "map-s3c.h"
 
 #define S3C2443_CLKREG(x)		((x) + S3C24XX_VA_CLKPWR)
 
diff --git a/arch/arm/mach-s3c/include/mach/rtc-core.h b/arch/arm/mach-s3c/rtc-core.h
similarity index 100%
rename from arch/arm/mach-s3c/include/mach/rtc-core.h
rename to arch/arm/mach-s3c/rtc-core.h
diff --git a/arch/arm/mach-s3c/s3c2410.c b/arch/arm/mach-s3c/s3c2410.c
index 0013125b03ee..4153e67f0e86 100644
--- a/arch/arm/mach-s3c/s3c2410.c
+++ b/arch/arm/mach-s3c/s3c2410.c
@@ -25,21 +25,21 @@
 #include <asm/mach/map.h>
 #include <asm/mach/irq.h>
 
-#include <mach/map.h>
-#include <mach/gpio-samsung.h>
+#include "map.h"
+#include "gpio-samsung.h"
 #include <asm/irq.h>
 #include <asm/system_misc.h>
 
 
-#include <mach/regs-clock.h>
+#include "regs-clock.h"
 
-#include <plat/cpu.h>
-#include <plat/devs.h>
-#include <plat/pm.h>
+#include "cpu.h"
+#include "devs.h"
+#include "pm.h"
 
-#include <plat/gpio-core.h>
-#include <plat/gpio-cfg.h>
-#include <plat/gpio-cfg-helpers.h>
+#include "gpio-core.h"
+#include "gpio-cfg.h"
+#include "gpio-cfg-helpers.h"
 
 #include "s3c24xx.h"
 
diff --git a/arch/arm/mach-s3c/s3c2412.c b/arch/arm/mach-s3c/s3c2412.c
index 3599a2f01c1e..b40b70864d9c 100644
--- a/arch/arm/mach-s3c/s3c2412.c
+++ b/arch/arm/mach-s3c/s3c2412.c
@@ -29,13 +29,13 @@
 #include <asm/irq.h>
 #include <asm/system_misc.h>
 
-#include <mach/map.h>
-#include <mach/regs-clock.h>
-#include <mach/regs-gpio.h>
+#include "map.h"
+#include "regs-clock.h"
+#include "regs-gpio.h"
 
-#include <plat/cpu.h>
-#include <plat/devs.h>
-#include <plat/pm.h>
+#include "cpu.h"
+#include "devs.h"
+#include "pm.h"
 
 #include "s3c24xx.h"
 #include "nand-core.h"
diff --git a/arch/arm/mach-s3c/include/mach/s3c2412.h b/arch/arm/mach-s3c/s3c2412.h
similarity index 96%
rename from arch/arm/mach-s3c/include/mach/s3c2412.h
rename to arch/arm/mach-s3c/s3c2412.h
index 1ae369c81beb..ed09a0e13bd8 100644
--- a/arch/arm/mach-s3c/include/mach/s3c2412.h
+++ b/arch/arm/mach-s3c/s3c2412.h
@@ -8,7 +8,7 @@
 #ifndef __ARCH_ARM_MACH_S3C24XX_S3C2412_H
 #define __ARCH_ARM_MACH_S3C24XX_S3C2412_H __FILE__
 
-#include <plat/map-s3c.h>
+#include "map-s3c.h"
 
 #define S3C2412_MEMREG(x)		(S3C24XX_VA_MEMCTRL + (x))
 #define S3C2412_EBIREG(x)		(S3C2412_VA_EBI + (x))
diff --git a/arch/arm/mach-s3c/s3c2416.c b/arch/arm/mach-s3c/s3c2416.c
index 95c34fd36421..8f420991bd19 100644
--- a/arch/arm/mach-s3c/s3c2416.c
+++ b/arch/arm/mach-s3c/s3c2416.c
@@ -26,25 +26,25 @@
 #include <asm/mach/map.h>
 #include <asm/mach/irq.h>
 
-#include <mach/map.h>
-#include <mach/gpio-samsung.h>
+#include "map.h"
+#include "gpio-samsung.h"
 #include <asm/proc-fns.h>
 #include <asm/irq.h>
 #include <asm/system_misc.h>
 
-#include <mach/regs-s3c2443-clock.h>
-#include <mach/rtc-core.h>
+#include "regs-s3c2443-clock.h"
+#include "rtc-core.h"
 
-#include <plat/gpio-core.h>
-#include <plat/gpio-cfg.h>
-#include <plat/gpio-cfg-helpers.h>
-#include <plat/devs.h>
-#include <plat/cpu.h>
-#include <plat/sdhci.h>
-#include <plat/pm.h>
+#include "gpio-core.h"
+#include "gpio-cfg.h"
+#include "gpio-cfg-helpers.h"
+#include "devs.h"
+#include "cpu.h"
+#include "sdhci.h"
+#include "pm.h"
 
-#include <plat/iic-core.h>
-#include <plat/adc-core.h>
+#include "iic-core.h"
+#include "adc-core.h"
 
 #include "s3c24xx.h"
 #include "fb-core.h"
diff --git a/arch/arm/mach-s3c/s3c2440.c b/arch/arm/mach-s3c/s3c2440.c
index a7c2dcf50b21..e6a88730eb6b 100644
--- a/arch/arm/mach-s3c/s3c2440.c
+++ b/arch/arm/mach-s3c/s3c2440.c
@@ -23,17 +23,16 @@
 #include <asm/mach/map.h>
 #include <asm/mach/irq.h>
 
-#include <mach/hardware.h>
-#include <mach/gpio-samsung.h>
+#include "gpio-samsung.h"
 #include <asm/irq.h>
 
-#include <plat/devs.h>
-#include <plat/cpu.h>
-#include <plat/pm.h>
+#include "devs.h"
+#include "cpu.h"
+#include "pm.h"
 
-#include <plat/gpio-core.h>
-#include <plat/gpio-cfg.h>
-#include <plat/gpio-cfg-helpers.h>
+#include "gpio-core.h"
+#include "gpio-cfg.h"
+#include "gpio-cfg-helpers.h"
 
 #include "s3c24xx.h"
 
diff --git a/arch/arm/mach-s3c/s3c2442.c b/arch/arm/mach-s3c/s3c2442.c
index ffef8a5e1a94..f0b6c04318db 100644
--- a/arch/arm/mach-s3c/s3c2442.c
+++ b/arch/arm/mach-s3c/s3c2442.c
@@ -21,19 +21,18 @@
 #include <linux/clk.h>
 #include <linux/io.h>
 
-#include <mach/hardware.h>
-#include <mach/gpio-samsung.h>
+#include "gpio-samsung.h"
 #include <linux/atomic.h>
 #include <asm/irq.h>
 
-#include <mach/regs-clock.h>
+#include "regs-clock.h"
 
-#include <plat/cpu.h>
-#include <plat/pm.h>
+#include "cpu.h"
+#include "pm.h"
 
-#include <plat/gpio-core.h>
-#include <plat/gpio-cfg.h>
-#include <plat/gpio-cfg-helpers.h>
+#include "gpio-core.h"
+#include "gpio-cfg.h"
+#include "gpio-cfg-helpers.h"
 
 #include "s3c24xx.h"
 
diff --git a/arch/arm/mach-s3c/s3c2443.c b/arch/arm/mach-s3c/s3c2443.c
index 00318ad994ff..026110177447 100644
--- a/arch/arm/mach-s3c/s3c2443.c
+++ b/arch/arm/mach-s3c/s3c2443.c
@@ -23,21 +23,21 @@
 #include <asm/mach/map.h>
 #include <asm/mach/irq.h>
 
-#include <mach/map.h>
-#include <mach/gpio-samsung.h>
+#include "map.h"
+#include "gpio-samsung.h"
 #include <mach/irqs.h>
 #include <asm/irq.h>
 #include <asm/system_misc.h>
 
-#include <mach/regs-s3c2443-clock.h>
-#include <mach/rtc-core.h>
+#include "regs-s3c2443-clock.h"
+#include "rtc-core.h"
 
-#include <plat/gpio-core.h>
-#include <plat/gpio-cfg.h>
-#include <plat/gpio-cfg-helpers.h>
-#include <plat/devs.h>
-#include <plat/cpu.h>
-#include <plat/adc-core.h>
+#include "gpio-core.h"
+#include "gpio-cfg.h"
+#include "gpio-cfg-helpers.h"
+#include "devs.h"
+#include "cpu.h"
+#include "adc-core.h"
 
 #include "fb-core.h"
 #include "nand-core.h"
diff --git a/arch/arm/mach-s3c/s3c244x.c b/arch/arm/mach-s3c/s3c244x.c
index a013f3447777..8a3af63d7a90 100644
--- a/arch/arm/mach-s3c/s3c244x.c
+++ b/arch/arm/mach-s3c/s3c244x.c
@@ -25,15 +25,15 @@
 #include <asm/mach/map.h>
 #include <asm/mach/irq.h>
 
-#include <mach/map.h>
+#include "map.h"
 #include <asm/irq.h>
 
-#include <mach/regs-clock.h>
-#include <mach/regs-gpio.h>
+#include "regs-clock.h"
+#include "regs-gpio.h"
 
-#include <plat/devs.h>
-#include <plat/cpu.h>
-#include <plat/pm.h>
+#include "devs.h"
+#include "cpu.h"
+#include "pm.h"
 
 #include "s3c24xx.h"
 #include "nand-core.h"
diff --git a/arch/arm/mach-s3c/s3c24xx.c b/arch/arm/mach-s3c/s3c24xx.c
index 409f4c00c17f..e15282697756 100644
--- a/arch/arm/mach-s3c/s3c24xx.c
+++ b/arch/arm/mach-s3c/s3c24xx.c
@@ -20,9 +20,9 @@
 #include <linux/platform_data/dma-s3c24xx.h>
 #include <linux/dmaengine.h>
 
-#include <mach/hardware.h>
-#include <mach/map.h>
-#include <mach/regs-clock.h>
+#include "hardware.h"
+#include "map.h"
+#include "regs-clock.h"
 #include <asm/irq.h>
 #include <asm/cacheflush.h>
 #include <asm/system_info.h>
@@ -31,12 +31,12 @@
 #include <asm/mach/arch.h>
 #include <asm/mach/map.h>
 
-#include <mach/regs-gpio.h>
-#include <mach/dma.h>
+#include "regs-gpio.h"
+#include "dma-s3c24xx.h"
 
-#include <plat/cpu.h>
-#include <plat/devs.h>
-#include <plat/pwm-core.h>
+#include "cpu.h"
+#include "devs.h"
+#include "pwm-core.h"
 
 #include "s3c24xx.h"
 
diff --git a/arch/arm/mach-s3c/s3c6400.c b/arch/arm/mach-s3c/s3c6400.c
index 2f94515558bc..10a9d82b66d3 100644
--- a/arch/arm/mach-s3c/s3c6400.c
+++ b/arch/arm/mach-s3c/s3c6400.c
@@ -28,12 +28,12 @@
 
 #include <asm/irq.h>
 
-#include <mach/regs-clock.h>
+#include "regs-clock.h"
 
-#include <plat/cpu.h>
-#include <plat/devs.h>
-#include <plat/sdhci.h>
-#include <plat/iic-core.h>
+#include "cpu.h"
+#include "devs.h"
+#include "sdhci.h"
+#include "iic-core.h"
 
 #include "s3c64xx.h"
 #include "onenand-core.h"
diff --git a/arch/arm/mach-s3c/s3c6410.c b/arch/arm/mach-s3c/s3c6410.c
index aa330d10e102..8d8657e026bb 100644
--- a/arch/arm/mach-s3c/s3c6410.c
+++ b/arch/arm/mach-s3c/s3c6410.c
@@ -30,13 +30,13 @@
 #include <asm/irq.h>
 
 #include <linux/soc/samsung/s3c-pm.h>
-#include <mach/regs-clock.h>
+#include "regs-clock.h"
 
-#include <plat/cpu.h>
-#include <plat/devs.h>
-#include <plat/sdhci.h>
-#include <plat/adc-core.h>
-#include <plat/iic-core.h>
+#include "cpu.h"
+#include "devs.h"
+#include "sdhci.h"
+#include "adc-core.h"
+#include "iic-core.h"
 
 #include "ata-core.h"
 #include "s3c64xx.h"
diff --git a/arch/arm/mach-s3c/s3c64xx.c b/arch/arm/mach-s3c/s3c64xx.c
index 289b462a035d..dee17c15016e 100644
--- a/arch/arm/mach-s3c/s3c64xx.c
+++ b/arch/arm/mach-s3c/s3c64xx.c
@@ -34,18 +34,17 @@
 #include <asm/mach/map.h>
 #include <asm/system_misc.h>
 
-#include <mach/map.h>
+#include "map.h"
 #include <mach/irqs.h>
-#include <mach/regs-gpio.h>
-#include <mach/gpio-samsung.h>
-
-#include <plat/cpu.h>
-#include <plat/devs.h>
-#include <plat/pm.h>
-#include <plat/gpio-cfg.h>
-#include <plat/pwm-core.h>
-#include <plat/regs-irqtype.h>
-
+#include "regs-gpio.h"
+#include "gpio-samsung.h"
+
+#include "cpu.h"
+#include "devs.h"
+#include "pm.h"
+#include "gpio-cfg.h"
+#include "pwm-core.h"
+#include "regs-irqtype.h"
 #include "s3c64xx.h"
 #include "irq-uart.h"
 #include "watchdog-reset.h"
diff --git a/arch/arm/mach-s3c/include/plat/samsung-time.h b/arch/arm/mach-s3c/samsung-time.h
similarity index 100%
rename from arch/arm/mach-s3c/include/plat/samsung-time.h
rename to arch/arm/mach-s3c/samsung-time.h
diff --git a/arch/arm/mach-s3c/include/plat/sdhci.h b/arch/arm/mach-s3c/sdhci.h
similarity index 99%
rename from arch/arm/mach-s3c/include/plat/sdhci.h
rename to arch/arm/mach-s3c/sdhci.h
index 5731e42ea208..9f9d419e58d7 100644
--- a/arch/arm/mach-s3c/include/plat/sdhci.h
+++ b/arch/arm/mach-s3c/sdhci.h
@@ -15,7 +15,7 @@
 #define __PLAT_S3C_SDHCI_H __FILE__
 
 #include <linux/platform_data/mmc-sdhci-s3c.h>
-#include <plat/devs.h>
+#include "devs.h"
 
 /* s3c_sdhci_set_platdata() - common helper for setting SDHCI platform data
  * @pd: The default platform data for this device.
diff --git a/arch/arm/mach-s3c/setup-camif.c b/arch/arm/mach-s3c/setup-camif.c
index 2b262fae3f61..2f3d8e912a53 100644
--- a/arch/arm/mach-s3c/setup-camif.c
+++ b/arch/arm/mach-s3c/setup-camif.c
@@ -5,8 +5,8 @@
 // Helper functions for S3C24XX/S3C64XX SoC series CAMIF driver
 
 #include <linux/gpio.h>
-#include <plat/gpio-cfg.h>
-#include <mach/gpio-samsung.h>
+#include "gpio-cfg.h"
+#include "gpio-samsung.h"
 
 /* Number of camera port pins, without FIELD */
 #define S3C_CAMIF_NUM_GPIOS	13
diff --git a/arch/arm/mach-s3c/setup-fb-24bpp.c b/arch/arm/mach-s3c/setup-fb-24bpp.c
index 2c7178b26ebb..cfa34b55ca21 100644
--- a/arch/arm/mach-s3c/setup-fb-24bpp.c
+++ b/arch/arm/mach-s3c/setup-fb-24bpp.c
@@ -12,9 +12,9 @@
 #include <linux/fb.h>
 #include <linux/gpio.h>
 
-#include <plat/fb.h>
-#include <plat/gpio-cfg.h>
-#include <mach/gpio-samsung.h>
+#include "fb.h"
+#include "gpio-cfg.h"
+#include "gpio-samsung.h"
 
 void s3c64xx_fb_gpio_setup_24bpp(void)
 {
diff --git a/arch/arm/mach-s3c/setup-i2c.c b/arch/arm/mach-s3c/setup-i2c.c
index 1a01d44b5910..6b11ee3cedf9 100644
--- a/arch/arm/mach-s3c/setup-i2c.c
+++ b/arch/arm/mach-s3c/setup-i2c.c
@@ -10,11 +10,10 @@
 
 struct platform_device;
 
-#include <plat/gpio-cfg.h>
+#include "gpio-cfg.h"
 #include <linux/platform_data/i2c-s3c2410.h>
-#include <mach/hardware.h>
-#include <mach/regs-gpio.h>
-#include <mach/gpio-samsung.h>
+#include "regs-gpio.h"
+#include "gpio-samsung.h"
 
 void s3c_i2c0_cfg_gpio(struct platform_device *dev)
 {
diff --git a/arch/arm/mach-s3c/setup-i2c0.c b/arch/arm/mach-s3c/setup-i2c0.c
index 552eb50da38c..a6ef8d2bc995 100644
--- a/arch/arm/mach-s3c/setup-i2c0.c
+++ b/arch/arm/mach-s3c/setup-i2c0.c
@@ -14,8 +14,8 @@
 struct platform_device; /* don't need the contents */
 
 #include <linux/platform_data/i2c-s3c2410.h>
-#include <plat/gpio-cfg.h>
-#include <mach/gpio-samsung.h>
+#include "gpio-cfg.h"
+#include "gpio-samsung.h"
 
 void s3c_i2c0_cfg_gpio(struct platform_device *dev)
 {
diff --git a/arch/arm/mach-s3c/setup-i2c1.c b/arch/arm/mach-s3c/setup-i2c1.c
index d231f0fc508d..0fe37363d26e 100644
--- a/arch/arm/mach-s3c/setup-i2c1.c
+++ b/arch/arm/mach-s3c/setup-i2c1.c
@@ -14,8 +14,8 @@
 struct platform_device; /* don't need the contents */
 
 #include <linux/platform_data/i2c-s3c2410.h>
-#include <plat/gpio-cfg.h>
-#include <mach/gpio-samsung.h>
+#include "gpio-cfg.h"
+#include "gpio-samsung.h"
 
 void s3c_i2c1_cfg_gpio(struct platform_device *dev)
 {
diff --git a/arch/arm/mach-s3c/setup-ide.c b/arch/arm/mach-s3c/setup-ide.c
index 810139a807ce..323ce97665af 100644
--- a/arch/arm/mach-s3c/setup-ide.c
+++ b/arch/arm/mach-s3c/setup-ide.c
@@ -9,10 +9,10 @@
 #include <linux/gpio.h>
 #include <linux/io.h>
 
-#include <mach/map.h>
-#include <mach/regs-clock.h>
-#include <plat/gpio-cfg.h>
-#include <mach/gpio-samsung.h>
+#include "map.h"
+#include "regs-clock.h"
+#include "gpio-cfg.h"
+#include "gpio-samsung.h"
 #include <linux/platform_data/ata-samsung_cf.h>
 
 void s3c64xx_ide_setup_gpio(void)
diff --git a/arch/arm/mach-s3c/setup-keypad.c b/arch/arm/mach-s3c/setup-keypad.c
index 351961025273..8463ad37c6ab 100644
--- a/arch/arm/mach-s3c/setup-keypad.c
+++ b/arch/arm/mach-s3c/setup-keypad.c
@@ -6,9 +6,9 @@
 // GPIO configuration for S3C64XX KeyPad device
 
 #include <linux/gpio.h>
-#include <plat/gpio-cfg.h>
-#include <plat/keypad.h>
-#include <mach/gpio-samsung.h>
+#include "gpio-cfg.h"
+#include "keypad.h"
+#include "gpio-samsung.h"
 
 void samsung_keypad_cfg_gpio(unsigned int rows, unsigned int cols)
 {
diff --git a/arch/arm/mach-s3c/setup-sdhci-gpio-s3c24xx.c b/arch/arm/mach-s3c/setup-sdhci-gpio-s3c24xx.c
index 218346a36d1e..345865837f14 100644
--- a/arch/arm/mach-s3c/setup-sdhci-gpio-s3c24xx.c
+++ b/arch/arm/mach-s3c/setup-sdhci-gpio-s3c24xx.c
@@ -14,9 +14,9 @@
 #include <linux/io.h>
 #include <linux/gpio.h>
 
-#include <mach/regs-gpio.h>
-#include <mach/gpio-samsung.h>
-#include <plat/gpio-cfg.h>
+#include "regs-gpio.h"
+#include "gpio-samsung.h"
+#include "gpio-cfg.h"
 
 void s3c2416_setup_sdhci0_cfg_gpio(struct platform_device *dev, int width)
 {
diff --git a/arch/arm/mach-s3c/setup-sdhci-gpio-s3c64xx.c b/arch/arm/mach-s3c/setup-sdhci-gpio-s3c64xx.c
index 138455af4937..646ff949acd5 100644
--- a/arch/arm/mach-s3c/setup-sdhci-gpio-s3c64xx.c
+++ b/arch/arm/mach-s3c/setup-sdhci-gpio-s3c64xx.c
@@ -13,9 +13,9 @@
 #include <linux/io.h>
 #include <linux/gpio.h>
 
-#include <plat/gpio-cfg.h>
-#include <plat/sdhci.h>
-#include <mach/gpio-samsung.h>
+#include "gpio-cfg.h"
+#include "sdhci.h"
+#include "gpio-samsung.h"
 
 void s3c64xx_setup_sdhci0_cfg_gpio(struct platform_device *dev, int width)
 {
diff --git a/arch/arm/mach-s3c/setup-spi-s3c24xx.c b/arch/arm/mach-s3c/setup-spi-s3c24xx.c
index 6c2b96a82da5..1a0663dd2e2a 100644
--- a/arch/arm/mach-s3c/setup-spi-s3c24xx.c
+++ b/arch/arm/mach-s3c/setup-spi-s3c24xx.c
@@ -8,10 +8,10 @@
 #include <linux/gpio.h>
 #include <linux/platform_device.h>
 
-#include <plat/gpio-cfg.h>
+#include "gpio-cfg.h"
 
-#include <mach/hardware.h>
-#include <mach/regs-gpio.h>
+#include "hardware.h"
+#include "regs-gpio.h"
 
 #ifdef CONFIG_S3C64XX_DEV_SPI0
 int s3c64xx_spi0_cfg_gpio(void)
diff --git a/arch/arm/mach-s3c/setup-spi-s3c64xx.c b/arch/arm/mach-s3c/setup-spi-s3c64xx.c
index 39dfae1f46e7..30cdb516e026 100644
--- a/arch/arm/mach-s3c/setup-spi-s3c64xx.c
+++ b/arch/arm/mach-s3c/setup-spi-s3c64xx.c
@@ -4,8 +4,8 @@
 //		http://www.samsung.com/
 
 #include <linux/gpio.h>
-#include <plat/gpio-cfg.h>
-#include <mach/gpio-samsung.h>
+#include "gpio-cfg.h"
+#include "gpio-samsung.h"
 
 #ifdef CONFIG_S3C64XX_DEV_SPI0
 int s3c64xx_spi0_cfg_gpio(void)
diff --git a/arch/arm/mach-s3c/setup-ts.c b/arch/arm/mach-s3c/setup-ts.c
index 53a14d4f4852..b726b66da526 100644
--- a/arch/arm/mach-s3c/setup-ts.c
+++ b/arch/arm/mach-s3c/setup-ts.c
@@ -10,9 +10,8 @@
 
 struct platform_device; /* don't need the contents */
 
-#include <plat/gpio-cfg.h>
-#include <mach/hardware.h>
-#include <mach/gpio-samsung.h>
+#include "gpio-cfg.h"
+#include "gpio-samsung.h"
 
 /**
  * s3c24xx_ts_cfg_gpio - configure gpio for s3c2410 systems
diff --git a/arch/arm/mach-s3c/setup-usb-phy.c b/arch/arm/mach-s3c/setup-usb-phy.c
index 6aaaa1d8e8b9..aeb9cdc4b2c9 100644
--- a/arch/arm/mach-s3c/setup-usb-phy.c
+++ b/arch/arm/mach-s3c/setup-usb-phy.c
@@ -8,9 +8,9 @@
 #include <linux/err.h>
 #include <linux/io.h>
 #include <linux/platform_device.h>
-#include <mach/map.h>
-#include <plat/cpu.h>
-#include <plat/usb-phy.h>
+#include "map.h"
+#include "cpu.h"
+#include "usb-phy.h"
 
 #include "regs-sys.h"
 #include "regs-usb-hsotg-phy.h"
diff --git a/arch/arm/mach-s3c/simtec-audio.c b/arch/arm/mach-s3c/simtec-audio.c
index 0c12ba4a4704..487485bcc2ab 100644
--- a/arch/arm/mach-s3c/simtec-audio.c
+++ b/arch/arm/mach-s3c/simtec-audio.c
@@ -12,13 +12,12 @@
 #include <linux/device.h>
 #include <linux/io.h>
 
-#include <mach/hardware.h>
-#include <mach/regs-gpio.h>
-#include <mach/gpio-samsung.h>
-#include <plat/gpio-cfg.h>
+#include "regs-gpio.h"
+#include "gpio-samsung.h"
+#include "gpio-cfg.h"
 
 #include <linux/platform_data/asoc-s3c24xx_simtec.h>
-#include <plat/devs.h>
+#include "devs.h"
 
 #include "bast.h"
 #include "simtec.h"
diff --git a/arch/arm/mach-s3c/simtec-nor.c b/arch/arm/mach-s3c/simtec-nor.c
index 26b18497e959..a6fba056a747 100644
--- a/arch/arm/mach-s3c/simtec-nor.c
+++ b/arch/arm/mach-s3c/simtec-nor.c
@@ -21,7 +21,7 @@
 #include <asm/mach/map.h>
 #include <asm/mach/irq.h>
 
-#include <mach/map.h>
+#include "map.h"
 
 #include "bast.h"
 #include "simtec.h"
diff --git a/arch/arm/mach-s3c/simtec-pm.c b/arch/arm/mach-s3c/simtec-pm.c
index c19074d81389..0b92e91c4377 100644
--- a/arch/arm/mach-s3c/simtec-pm.c
+++ b/arch/arm/mach-s3c/simtec-pm.c
@@ -19,14 +19,12 @@
 #include <asm/mach/arch.h>
 #include <asm/mach/map.h>
 
-#include <mach/hardware.h>
-
-#include <mach/map.h>
-#include <mach/regs-gpio.h>
+#include "map.h"
+#include "regs-gpio.h"
 
 #include <asm/mach-types.h>
 
-#include <plat/pm.h>
+#include "pm.h"
 
 #include "regs-mem.h"
 
diff --git a/arch/arm/mach-s3c/simtec-usb.c b/arch/arm/mach-s3c/simtec-usb.c
index b15e0c49fa11..18fe0642743a 100644
--- a/arch/arm/mach-s3c/simtec-usb.c
+++ b/arch/arm/mach-s3c/simtec-usb.c
@@ -23,13 +23,12 @@
 #include <asm/mach/map.h>
 #include <asm/mach/irq.h>
 
-#include <mach/hardware.h>
-#include <mach/gpio-samsung.h>
+#include "gpio-samsung.h"
 #include <mach/irqs.h>
 #include <asm/irq.h>
 
 #include <linux/platform_data/usb-ohci-s3c2410.h>
-#include <plat/devs.h>
+#include "devs.h"
 
 #include "bast.h"
 #include "simtec.h"
diff --git a/arch/arm/mach-s3c/sleep-s3c2410.S b/arch/arm/mach-s3c/sleep-s3c2410.S
index e4f6f64e7826..0f5562a6abc9 100644
--- a/arch/arm/mach-s3c/sleep-s3c2410.S
+++ b/arch/arm/mach-s3c/sleep-s3c2410.S
@@ -13,10 +13,10 @@
 #include <linux/linkage.h>
 #include <linux/serial_s3c.h>
 #include <asm/assembler.h>
-#include <mach/map.h>
+#include "map.h"
 
-#include <mach/regs-gpio.h>
-#include <mach/regs-clock.h>
+#include "regs-gpio.h"
+#include "regs-clock.h"
 
 #include "regs-mem.h"
 
diff --git a/arch/arm/mach-s3c/sleep-s3c2412.S b/arch/arm/mach-s3c/sleep-s3c2412.S
index 434f5082b2ed..b4b61737fbb2 100644
--- a/arch/arm/mach-s3c/sleep-s3c2412.S
+++ b/arch/arm/mach-s3c/sleep-s3c2412.S
@@ -8,9 +8,9 @@
 
 #include <linux/linkage.h>
 #include <asm/assembler.h>
-#include <mach/map.h>
+#include "map.h"
 
-#include <mach/regs-irq.h>
+#include "regs-irq.h"
 
 	.text
 
diff --git a/arch/arm/mach-s3c/sleep-s3c24xx.S b/arch/arm/mach-s3c/sleep-s3c24xx.S
index 4bda4a413584..4b2af91f3dce 100644
--- a/arch/arm/mach-s3c/sleep-s3c24xx.S
+++ b/arch/arm/mach-s3c/sleep-s3c24xx.S
@@ -13,10 +13,10 @@
 #include <linux/linkage.h>
 #include <linux/serial_s3c.h>
 #include <asm/assembler.h>
-#include <mach/map.h>
+#include "map.h"
 
-#include <mach/regs-gpio.h>
-#include <mach/regs-clock.h>
+#include "regs-gpio.h"
+#include "regs-clock.h"
 
 /*
  * S3C24XX_DEBUG_RESUME is dangerous if your bootloader does not
diff --git a/arch/arm/mach-s3c/sleep-s3c64xx.S b/arch/arm/mach-s3c/sleep-s3c64xx.S
index 39e16a07a5e4..739e53fbce09 100644
--- a/arch/arm/mach-s3c/sleep-s3c64xx.S
+++ b/arch/arm/mach-s3c/sleep-s3c64xx.S
@@ -11,12 +11,12 @@
 
 #include <linux/linkage.h>
 #include <asm/assembler.h>
-#include <mach/map.h>
+#include "map.h"
 
 #undef S3C64XX_VA_GPIO
 #define S3C64XX_VA_GPIO (0x0)
 
-#include <mach/regs-gpio.h>
+#include "regs-gpio.h"
 
 #define LL_UART (S3C_PA_UART + (0x400 * CONFIG_S3C_LOWLEVEL_UART_PORT))
 
diff --git a/arch/arm/mach-s3c/include/plat/usb-phy.h b/arch/arm/mach-s3c/usb-phy.h
similarity index 100%
rename from arch/arm/mach-s3c/include/plat/usb-phy.h
rename to arch/arm/mach-s3c/usb-phy.h
diff --git a/arch/arm/mach-s3c/wakeup-mask.c b/arch/arm/mach-s3c/wakeup-mask.c
index 24f96fb80738..b490e7527c66 100644
--- a/arch/arm/mach-s3c/wakeup-mask.c
+++ b/arch/arm/mach-s3c/wakeup-mask.c
@@ -11,8 +11,8 @@
 #include <linux/irq.h>
 #include <linux/io.h>
 
-#include <plat/wakeup-mask.h>
-#include <plat/pm.h>
+#include "wakeup-mask.h"
+#include "pm.h"
 
 void samsung_sync_wakemask(void __iomem *reg,
 			   const struct samsung_wakeup_mask *mask, int nr_mask)
diff --git a/arch/arm/mach-s3c/include/plat/wakeup-mask.h b/arch/arm/mach-s3c/wakeup-mask.h
similarity index 100%
rename from arch/arm/mach-s3c/include/plat/wakeup-mask.h
rename to arch/arm/mach-s3c/wakeup-mask.h
diff --git a/drivers/mmc/host/s3cmci.c b/drivers/mmc/host/s3cmci.c
index c2b46640a78b..f61f1c82308e 100644
--- a/drivers/mmc/host/s3cmci.c
+++ b/drivers/mmc/host/s3cmci.c
@@ -24,9 +24,6 @@
 #include <linux/of.h>
 #include <linux/of_device.h>
 #include <linux/mmc/slot-gpio.h>
-
-#include <mach/dma.h>
-
 #include <linux/platform_data/mmc-s3cmci.h>
 
 #include "s3cmci.h"
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
