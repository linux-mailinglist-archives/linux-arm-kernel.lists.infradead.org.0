Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB07D121C32
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 22:53:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZcLjgvbsJvWd/boRD5JAW3gnesQbbBhvhk7WUbYog5Q=; b=PVTOJ93eQ4Eokj
	M2XoedkYRKNrS/R1ksFOxJpjYL839be/9DlkXV7C3gEX7iiF2dH1e9lF3/3E1rOJgtmHu9KL+tfU2
	QRnetTnurnlbGfQ+EU4gMZACSBuUxNI9IBPl/4SqbqV3XPymVy4I/MaEdtEzUyoCBYdepnKiwIoQ+
	FNKJAH08L/RnKokrU8o1mFgHjL0mj1oX1D4EqII3ofYGSM2+WQ/5GTH22VY3iS5PQajQph3ojGx/1
	hSeoNO7gVuQkOEvawN3kA0HNhgo2e5Ayzt4JOxSFWg2rohWML7Qk/DPH2D/BbsZanx651VRTSX+y6
	L9mAq+R6V2ytdPb6I0sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igyJG-0005SD-LL; Mon, 16 Dec 2019 21:53:46 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igyJ3-0005RC-HI
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 21:53:35 +0000
Received: by mail-lf1-x143.google.com with SMTP id l18so5419953lfc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 13:53:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=UWnCdbVcICZmAK6eBq6qDsPZuchsCvO3LUVcqk3TXso=;
 b=XutwovNch624bzEmqS/scigRStmz63GXtqrGzMwVK0NC1oCv4UB0VCUM5PxxOzydWp
 KgxCwFsVHLq/KihZHLgr6f+D1KzJaw9KQWNiBii6VpvI+fy8aXiFpklcgeC2NtC4s7yd
 OUw90QVpp/GnOgfYUCKg0GgETLbPjzExFyNmFfB4CGfEDLBhPlg7mtjkUw9OuLtTcuJ2
 s7a8c/Pdb00Ozg8N+I1F420VBWmPgKgOPCnADGbzpiAHfFmW7dyyiXb8klzg4NJLO2xt
 rkBy2G+UwtTrqeAmX4v9c5nJS961nWawUq9rlVeQ9nOBRegwT2oDZR/Cpb1YQs2vllTj
 rKGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=UWnCdbVcICZmAK6eBq6qDsPZuchsCvO3LUVcqk3TXso=;
 b=D0WsyJSi1Ur7fV2k46S3i7a1HjEl8pXPtgmkKLAMs8xV1ANgxkmEZxCPOxV7c7soMx
 JzN0J1x/1VYK/Vueyg3H38izYTLL0P3ERgTNPx6yf8cESJdIpLTcOqhV6m2GalFlARE5
 6c2X/26l/aW3jMNeWkgrQ2UmmYrhksO2Uyd6XIgO/TLx8Y3CgRiH8OHsk3lynsvpkqy/
 hIExeA0jet++Ds22DGX1spiYDEmx8+qVord8+S3qJjZoAhiSrU8KHnbKMVJvYQZs7IPs
 Tg/kZHze/FSz0/+2sh8mQ/iWi5pRhM70uadNAxAD+5mlhZgHRjyGIMP7PxJW44EqicJH
 RrwQ==
X-Gm-Message-State: APjAAAXAcTOOgAnhRl5OqB30wtHAbvd0lHaImy08qsXHDrU/I+VzAQB8
 +l8vwRec1uRwoPlRWzaLbnk7qw==
X-Google-Smtp-Source: APXvYqwbMx6tW5Wgn+Bdc3Hbpz9H0mRNZrI2wF2Gs8s8y4VPXUihxRs58UFX6f463QrP6ZujcZi8lQ==
X-Received: by 2002:ac2:489b:: with SMTP id x27mr799195lfc.130.1576533210378; 
 Mon, 16 Dec 2019 13:53:30 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id n5sm11314858ljh.86.2019.12.16.13.53.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 16 Dec 2019 13:53:28 -0800 (PST)
Date: Mon, 16 Dec 2019 13:53:20 -0800
From: Olof Johansson <olof@lixom.net>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] ARM: SoC fixes
Message-ID: <20191216215320.li7x45fhkrkolvbk@localhost>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_135333_626148_6C44AC09 
X-CRM114-Status: GOOD (  16.61  )
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

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fixes

for you to fetch changes up to e3992af1256a4fe0b83ac790d4caa58ff731609d:

  Merge tag 'arm-soc/for-5.5/soc-fixes' of https://github.com/Broadcom/stblinux into arm/fixes (2019-12-16 11:33:29 -0800)

----------------------------------------------------------------
ARM: SoC fixes

I didn't get a batch in this weekend, so here's what we queued up last
week and today.

 - A couple of defconfigs add back debugfs -- it used to be implicitly
 enabled through CONFIG_TRACING, but 0e4a459f56c32d3e ("tracing: Remove
 unnecessary DEBUG_FS dependency") removed that.

 - The rest are mostly minor fixlets of the usual kind; some DT tweaks,
 a headerfile refactor that needs a build fix now, etc.

----------------------------------------------------------------
Andreas Kemnade (1):
      ARM: dts: e60k02: fix power button

Arnd Bergmann (1):
      ARM: mmp: include the correct cputype.h

Christoph Niedermaier (1):
      ARM: imx: Correct ocotp id for serial number support of i.MX6ULL/ULZ SoCs

Florian Fainelli (4):
      ARM: dts: BCM5301X: Fix MDIO node address/size cells
      ARM: dts: Cygnus: Fix MDIO node address/size cells
      dt-bindings: reset: Fix brcmstb-reset example
      reset: brcmstb: Remove resource checks

Geert Uytterhoeven (3):
      reset: Fix {of,devm}_reset_control_array_get kerneldoc return types
      reset: Do not register resource data for missing resets
      ARM: shmobile: defconfig: Restore debugfs support

Grygorii Strashko (1):
      ARM: omap2plus_defconfig: enable NET_SWITCHDEV

H. Nikolaus Schaller (1):
      ARM: bcm: Add missing sentinel to bcm2711_compat[]

Krzysztof Kozlowski (1):
      MAINTAINERS: Include Samsung SoC serial driver in Samsung SoC entry

Leonard Crestez (3):
      ARM: dts: imx6ul-evk: Fix peripheral regulator
      ARM: imx_v6_v7_defconfig: Explicitly restore CONFIG_DEBUG_FS
      ARM: imx: Fix boot crash if ocotp is not found

Lukasz Luba (1):
      MAINTAINERS: Update Lukasz Luba's email address

Mans Rullgard (1):
      ARM: dts: am335x-sancloud-bbe: fix phy mode

Marek Szyprowski (1):
      ARM: exynos_defconfig: Restore debugfs support

Michael Walle (2):
      arm64: dts: ls1028a: fix typo in TMU calibration data
      arm64: dts: ls1028a: fix reboot node

Nicolas Saenz Julienne (1):
      ARM: dts: bcm2711: fix soc's node dma-ranges

Olof Johansson (8):
      Merge tag 'vexpress-fixes-5.5' of git://git.kernel.org/.../sudeep.holla/linux into arm/fixes
      Merge tag 'arm-soc/for-5.5/devicetree-fixes' of https://github.com/Broadcom/stblinux into arm/fixes
      Merge tag 'reset-fixes-for-v5.5-2' of git://git.pengutronix.de/git/pza/linux into arm/fixes
      Merge tag 'imx-fixes-5.5' of git://git.kernel.org/.../shawnguo/linux into arm/fixes
      Merge tag 'omap-for-v5.5/fixes-rc1-signed' of git://git.kernel.org/.../tmlind/linux-omap into arm/fixes
      Merge tag 'renesas-fixes-for-v5.5-tag1' of git://git.kernel.org/.../geert/renesas-devel into arm/fixes
      Merge tag 'samsung-fixes-5.5' of https://git.kernel.org/.../krzk/linux into arm/fixes
      Merge tag 'arm-soc/for-5.5/soc-fixes' of https://github.com/Broadcom/stblinux into arm/fixes

Stefan Roese (1):
      ARM: dts: imx6ul: imx6ul-14x14-evk.dtsi: Fix SPI NOR probing

Stefan Wahren (1):
      ARM: dts: bcm283x: Fix critical trip point

Sudeep Holla (2):
      ARM: vexpress: Set-up shared OPP table instead of individual for each CPU
      cpufreq: vexpress-spc: Switch cpumask from topology core to OPP sharing

Tomi Valkeinen (1):
      ARM: dts: am437x-gp/epos-evm: fix panel compatible

Tony Lindgren (3):
      bus: ti-sysc: Fix missing force mstandby quirk handling
      ARM: omap2plus_defconfig: Add back DEBUG_FS
      bus: ti-sysc: Fix missing reset delay handling

 .mailmap                                           |  1 +
 .../bindings/reset/brcm,brcmstb-reset.txt          |  2 +-
 MAINTAINERS                                        |  3 ++-
 arch/arm/boot/dts/am335x-sancloud-bbe.dts          |  2 +-
 arch/arm/boot/dts/am437x-gp-evm.dts                |  2 +-
 arch/arm/boot/dts/am43x-epos-evm.dts               |  2 +-
 arch/arm/boot/dts/bcm-cygnus.dtsi                  |  4 ++--
 arch/arm/boot/dts/bcm2711.dtsi                     |  2 +-
 arch/arm/boot/dts/bcm283x.dtsi                     |  2 +-
 arch/arm/boot/dts/bcm5301x.dtsi                    |  4 ++--
 arch/arm/boot/dts/e60k02.dtsi                      |  5 ----
 arch/arm/boot/dts/imx6ul-14x14-evk.dtsi            | 28 ++++++++++++++++------
 arch/arm/configs/exynos_defconfig                  |  1 +
 arch/arm/configs/imx_v6_v7_defconfig               |  1 +
 arch/arm/configs/omap2plus_defconfig               |  4 +++-
 arch/arm/configs/shmobile_defconfig                |  1 +
 arch/arm/mach-bcm/bcm2711.c                        |  1 +
 arch/arm/mach-imx/cpu.c                            |  8 ++++---
 arch/arm/mach-mmp/pxa168.h                         |  2 +-
 arch/arm/mach-vexpress/spc.c                       | 12 +++++++++-
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi     | 10 ++++++--
 drivers/bus/ti-sysc.c                              |  7 +++++-
 drivers/cpufreq/vexpress-spc-cpufreq.c             |  2 +-
 drivers/reset/core.c                               | 10 ++++----
 drivers/reset/reset-brcmstb.c                      |  6 -----
 include/linux/platform_data/ti-sysc.h              |  1 +
 26 files changed, 78 insertions(+), 45 deletions(-)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
