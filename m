Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC5DA3BEB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 18:26:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8j7p5GybA65XGwunB9MBIwehdjeTuoF+2dGHuTkWbq0=; b=JtRfjU0NKC81/X
	GKj+Ib5/+St+R0eXYDOPdt4IVwV3HdA9YT3z1LbIo0fAPLcRgqOgR4zAUFTd9cVJczKV6fYQSTwgG
	GnAgJnaKPQWOI9yc9HMK2cDpkZNoSCOWpeBupBLAd+IDxSUD0fTc2sk9eaXilK78nybVppKWCKZBm
	+7B+ix0gi6gta+TgILEmjEbZkliRtmsBled4Yn1vRJGtdc8M4SKkw5tAltGdpmXlLu1zR1OS/nbsw
	3fJu87RXRdhY6dgABbg6XQ58XiQKxlrlweASGQYgY0vIeFYbZSyVRzfHhawWluLVcnuEhX/SbuQCo
	3+oDn7ei/HcrCcyW+YnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3jjA-0005kT-Hh; Fri, 30 Aug 2019 16:26:20 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3jj0-0005jm-6R
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 16:26:11 +0000
Received: by mail-qt1-f194.google.com with SMTP id i4so8186375qtj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 09:26:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=qHgWu5Rl4zvcECH09Viw3cWfbmbYnQJRz+dq3rEzn6k=;
 b=S5HH7nr6uWRmt9JFECiDP1rjRL1kf2oiSNEM7+E4JH1fXlm/GWCxsK+QqSHZMEitNS
 gmwqCbJOnpRAAOLUw6TdLRsotv35wFzLac160CttEllQL8wqb6jWEVXMjVSHUCb4/mBz
 /0XNrxUjt8NtftTy0iCcm/DnvkBPCMYh3+03G5RNM7alkw/47Ww+kYrWKmqqvLuu9JqQ
 4zMAzJY0ZkWovtoGs4pvG/X2R/1kW2N75vLLqPl6OznjUkkqrTI00fYwCOMLnaOFyX2p
 3fJgHzzeW6nFA7XSwUD9wRtHOY3wi8EQ8PnGOeV+DShXzcefN4HApQXA5TSzlLGJdagE
 s30Q==
X-Gm-Message-State: APjAAAVlSMnZKDE0LejGEOLP9abJ6cuYObZKZgOYC9DoVSsCmz0xQFj6
 oz/TcGqtqav2mKkZww2InPRcae/oaP44x4hEz0A=
X-Google-Smtp-Source: APXvYqyWqzDMv6Hcrz05N4SE3mDmSNuAw0OYHoxkdQOiyRxXs5JB18HnTRXZ/9ZMa7+OEnE/pUAH561xbkH5EkpIf+I=
X-Received: by 2002:ac8:117:: with SMTP id e23mr16102582qtg.18.1567182368579; 
 Fri, 30 Aug 2019 09:26:08 -0700 (PDT)
MIME-Version: 1.0
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 30 Aug 2019 18:25:52 +0200
Message-ID: <CAK8P3a2OZPybUQ=2xXcF4Qft-Gpe3a1mvgPncJZugETnaOxsvw@mail.gmail.com>
Subject: [GIT PULL] ARM: SoC fixes for Linux-5.3
To: Linus Torvalds <torvalds@linux-foundation.org>, SoC Team <soc@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_092610_241421_490AF6C1 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Tony Lindgren <tony@atomide.com>, John Garry <john.garry@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit d45331b00ddb179e291766617259261c112db872:

  Linux 5.3-rc4 (2019-08-11 13:26:41 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git armsoc-fixes

for you to fetch changes up to 7a6c9dbb36a415c5901313fc89871fd19f533656:

  soc: ixp4xx: Protect IXP4xx SoC drivers by ARCH_IXP4XX ||
COMPILE_TEST (2019-08-29 17:34:38 +0200)

----------------------------------------------------------------
ARM: SoC fixes

The majority of the fixes this time are for OMAP hardware,
here is a breakdown of the significant changes:

Various device tree bug fixes:
- TI am57xx boards need a voltage level fix to avoid damaging SD cards
- vf610-bk4 fails to detect its flash due to an incorrect description
- meson-g12a USB phy configuration fails
- meson-g12b reboot should not power off the SD card
- Some corrections for apparently harmless differences from the
  documentation.

Regression fixes:
- ams-delta FIQ interrupts broke in 5.3
- TI am3/am4 mmc controllers broke in 5.2

The logic_pio driver (used on some Huawei ARM servers) needs a few
bug fixes for reliability.

A couple of compile-time warning fixes

Signed-off-by: Arnd Bergmann <arnd@arndb.de>

----------------------------------------------------------------
Arnd Bergmann (5):
      Merge tag 'imx-fixes-5.3-2' of
git://git.kernel.org/.../shawnguo/linux into arm/fixes
      Merge tag 'omap-for-v5.3/fixes-rc4' of
git://git.kernel.org/.../tmlind/linux-omap into arm/fixes
      Merge tag 'amlogic-fixes' of
git://git.kernel.org/.../khilman/linux-amlogic into arm/fixes
      Merge tag 'hisi-fixes-for-5.3' of
git://github.com/hisilicon/linux-hisi into arm/fixes
      Merge tag 'sunxi-fixes-for-5.3-3' of
git://git.kernel.org/.../sunxi/linux into arm/fixes

Emmanuel Vadot (1):
      ARM: dts: am335x: Fix UARTs length

Faiz Abbas (2):
      ARM: dts: am57xx: Disable voltage switching for SD card
      ARM: dts: dra74x: Fix iodelay configuration for mmc3

Geert Uytterhoeven (1):
      soc: ixp4xx: Protect IXP4xx SoC drivers by ARCH_IXP4XX || COMPILE_TEST

Gustavo A. R. Silva (1):
      ARM: OMAP: dma: Mark expected switch fall-throughs

Janusz Krzysztofik (1):
      ARM: OMAP1: ams-delta-fiq: Fix missing irq_ack

John Garry (5):
      lib: logic_pio: Fix RCU usage
      lib: logic_pio: Avoid possible overlap for unregistering regions
      lib: logic_pio: Add logic_pio_unregister_range()
      bus: hisi_lpc: Unregister logical PIO range to avoid potential
use-after-free
      bus: hisi_lpc: Add .remove method to avoid driver unbind crash

Keerthy (1):
      soc: ti: pm33xx: Fix static checker warnings

Lukasz Majewski (1):
      ARM: dts: vf610-bk4: Fix qspi node description

Maxime Ripard (1):
      MAINTAINERS: Update my email address

Neil Armstrong (2):
      arm64: dts: meson-g12a: add missing dwc2 phy-names
      arm64: dts: meson-g12a-sei510: enable IR controller

Suman Anna (1):
      bus: ti-sysc: Simplify cleanup upon failures in sysc_probe()

Tony Lindgren (10):
      Merge commit '79499bb11db508' into fixes
      ARM: OMAP2+: Fix missing SYSC_HAS_RESET_STATUS for dra7 epwmss
      bus: ti-sysc: Fix handling of forced idle
      bus: ti-sysc: Fix using configured sysc mask value
      ARM: dts: Fix flags for gpio7
      ARM: dts: Fix incorrect dcan register mapping for am3, am4 and dra7
      ARM: OMAP2+: Fix omap4 errata warning on other SoCs
      Merge branch 'ti-sysc-fixes' into fixes
      ARM: dts: Fix incomplete dts data for am3 and am4 mmc
      Merge branch 'ti-sysc-fixes' into fixes

Xavier Ruppen (1):
      arm64: dts: amlogic: odroid-n2: keep SD card regulator always on

YueHaibing (1):
      soc: ti: pm33xx: Make two symbols static

 .mailmap                                             |  2 ++
 MAINTAINERS                                          | 10 +++++-----
 arch/arm/boot/dts/am33xx-l4.dtsi                     | 16 ++++++++++------
 arch/arm/boot/dts/am33xx.dtsi                        | 32
++++++++++++++++++++++++++------
 arch/arm/boot/dts/am4372.dtsi                        | 32
++++++++++++++++++++++++++------
 arch/arm/boot/dts/am437x-l4.dtsi                     |  4 ++++
 arch/arm/boot/dts/am571x-idk.dts                     |  7 +------
 arch/arm/boot/dts/am572x-idk.dts                     |  7 +------
 arch/arm/boot/dts/am574x-idk.dts                     |  7 +------
 arch/arm/boot/dts/am57xx-beagle-x15-common.dtsi      |  3 ++-
 arch/arm/boot/dts/am57xx-beagle-x15-revb1.dts        |  7 +------
 arch/arm/boot/dts/am57xx-beagle-x15-revc.dts         |  7 +------
 arch/arm/boot/dts/dra7-evm.dts                       |  2 +-
 arch/arm/boot/dts/dra7-l4.dtsi                       |  6 +++---
 arch/arm/boot/dts/dra74x-mmc-iodelay.dtsi            | 50
++++++++++++++++++++++++-------------------------
 arch/arm/boot/dts/vf610-bk4.dts                      |  4 ++--
 arch/arm/mach-omap1/ams-delta-fiq-handler.S          |  3 ++-
 arch/arm/mach-omap1/ams-delta-fiq.c                  |  4 +---
 arch/arm/mach-omap2/omap4-common.c                   |  3 +++
 arch/arm/mach-omap2/omap_hwmod_7xx_data.c            |  3 ++-
 arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts    |  6 ++++++
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi          |  1 +
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts |  1 +
 drivers/bus/hisi_lpc.c                               | 47
++++++++++++++++++++++++++++++++++++++++------
 drivers/bus/ti-sysc.c                                | 24
+++++++++++-------------
 drivers/soc/ixp4xx/Kconfig                           |  4 ++++
 drivers/soc/ti/pm33xx.c                              | 19 ++++++++++++-------
 include/linux/logic_pio.h                            |  1 +
 lib/logic_pio.c                                      | 73
+++++++++++++++++++++++++++++++++++++++++++++++++++++-------------------
 29 files changed, 250 insertions(+), 135 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
