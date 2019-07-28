Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C83077E4A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 08:38:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zjLTi7s1kJ4DEGABloPEb15kaoiLTX4Lv2SGRKkWm1c=; b=opDhlRLHs8OhOG
	zKw2MXfjorH3J7jQTpp1rRllQzsQr+hX98C9St9SJVXqDuDGHb0PD7ECb+H81OOx2bO1du9yMNzzk
	DsL47noVGB27a58cAPpwLJOkLMjwOX7VJznpjFzx5UeR1Ep7Jil60oJkTm1BlEjm32EptjyGUYe/U
	i84MBLl8PH8Q2EmhM4BLhec72hXV2kOaao/XteteuIwAicduJdSLXNzn/IJs+qrn7kn4FIH8l/bYc
	PfwLDbyoJTNq8JkxJ3A6iuxchYMhZF4K61XVpt+c93MG4FzMhqm8LxC2qp01IJsaAfczdmWEJK9q2
	wN054l7L09QvRkbVHOWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrcov-0002DR-1K; Sun, 28 Jul 2019 06:38:13 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrcoE-0002D8-81
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 06:37:31 +0000
Received: by mail-lj1-x241.google.com with SMTP id y17so30798845ljk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 27 Jul 2019 23:37:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :content-transfer-encoding:user-agent;
 bh=OWNZdvgNeBUzqh6l8mT/rTzlkWMLEndaO2EreTceoeo=;
 b=LRv9UEELTRDoEDDMIdoeWcYC3gcFXxheGuuiwdzKajyNA5YQUE0OlWBKiTJffFiVm3
 2OqWeIRNBeFhHOhoZ/sTieRD3Gg5o56m07WBzA6CxUFbl3Rdp79wnJRd701J1W9ZJmim
 2L5DSAuKgJxW1G6AL3e73s4BUH5QVrw90XEUsmXmIlItArs9FhHi4tSzD/TfSHwCYpZ/
 2e2sp3Tfleqeb8n4PAbjLo19dnwrMqMU7DBD2dIayi0uk6itoYYPllbMis63CfynQ3Pj
 nZHcJtj0FAvAiF3Il8a42+Pfxpp0STNs2aCwQvBRavAonhDj4BFcYvOaf5MjFEt3+T6U
 F0hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:content-transfer-encoding:user-agent;
 bh=OWNZdvgNeBUzqh6l8mT/rTzlkWMLEndaO2EreTceoeo=;
 b=M3ki8xxI509f1vriFq+gq5TgbtGv/UlkgwvXUbwVojN+dqQg9DMjV/B+jDf4v9slTo
 pxpHpw1IMK878YaE3CVowRtZWHQjcbjDwfT/FywSmyLblFbAtN0wgmhPMG1n2t3yPd59
 01FIwJ491BIM3g8JH9KcIpPnt+nrO8fOjfI5CJJacnjkGRk2mRAJk5yarL63ZMEB0fLf
 6KzLZ2JQHZ5vmNXOxD6KiVzGXtsvs3rYiBRJRSJG14CqdWqeqk1bFRIzhOkBO89kV9mn
 PXchHIYHs81/pwBNM4acv62XMJOWZQtlJ26VsRvkFfm8UFy9NDkrd+mHFNA/3zI/ID+Z
 nb+w==
X-Gm-Message-State: APjAAAXtprmET5PJC2nX35Ca/5VwkBOOl0QaLWLs3V7EYAsgaUYbLjdD
 rdnx44osTjz0drGvYiRg4sk=
X-Google-Smtp-Source: APXvYqx4YI5j8nhEZopfxQ4RRPdbijzjV7ogMnyraki3+1lA1fLzb6F8HcZAbh5MakE6DVw3B9GwaQ==
X-Received: by 2002:a2e:9dca:: with SMTP id x10mr53291624ljj.17.1564295848080; 
 Sat, 27 Jul 2019 23:37:28 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id w6sm9793025lff.80.2019.07.27.23.37.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 27 Jul 2019 23:37:26 -0700 (PDT)
Date: Sat, 27 Jul 2019 23:37:15 -0700
From: Olof Johansson <olof@lixom.net>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] ARM: SoC fixes
Message-ID: <20190728063715.ensdmo7jyimrsez4@localhost>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_233730_330741_FC8C906E 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git tags/armsoc-fix=
es

for you to fetch changes up to 7bd9d465140a93c0a21ba2d2f426451c78bfcc7d:

  Merge tag 'imx-fixes-5.3' of git://git.kernel.org/pub/scm/linux/kernel/gi=
t/shawnguo/linux into arm/fixes (2019-07-23 10:13:24 -0700)

----------------------------------------------------------------
ARM: SoC fixes

Here's the first batch of fixes for this release cycle.

Main diffstat here is the re-deletion of netx. I messed up and most
likely didn't remove the files from the index when I test-merged this
and saw conflicts, and from there on out 'git rerere' remembered the
mistake and I missed checking it. Here it's done again as expected.

Besides that:

 - A defconfig refresh + enabling of new drivers for u8500

 - i.MX fixlets for i2c/SAI/pinmux

 - sleep.S build fix for Davinci

 - Broadcom devicetree build/warning fix

----------------------------------------------------------------
Anson Huang (1):
      arm64: dts: imx8mm: Correct SAI3 RXC/TXFS pin's mux option #1

Arnd Bergmann (2):
      ARM: davinci: fix sleep.S build error on ARMv4
      ARM: dts: bcm: bcm47094: add missing #cells for mdio-bus-mux

Fabio Estevam (1):
      ARM: dts: imx7ulp: Fix usb-phy unit address format

Linus Walleij (3):
      ARM: Delete netx a second time
      ARM: defconfig: u8500: Refresh defconfig
      ARM: defconfig: u8500: Add new drivers

Lucas Stach (1):
      arm64: dts: imx8mq: fix SAI compatible

Olof Johansson (1):
      Merge tag 'imx-fixes-5.3' of git://git.kernel.org/.../shawnguo/linux =
into arm/fixes

S=E9bastien Szymanski (1):
      ARM: dts: imx6ul: fix clock frequency property name of I2C buses

 arch/arm/Kconfig.debug                          |   5 -
 arch/arm/boot/dts/bcm47094-linksys-panamera.dts |   3 +
 arch/arm/boot/dts/imx6ul-14x14-evk.dtsi         |   2 +-
 arch/arm/boot/dts/imx6ul-geam.dts               |   2 +-
 arch/arm/boot/dts/imx6ul-isiot.dtsi             |   2 +-
 arch/arm/boot/dts/imx6ul-pico-hobbit.dts        |   2 +-
 arch/arm/boot/dts/imx6ul-pico-pi.dts            |   4 +-
 arch/arm/boot/dts/imx7ulp.dtsi                  |   2 +-
 arch/arm/configs/u8500_defconfig                |  34 +-
 arch/arm/mach-davinci/sleep.S                   |   1 +
 arch/arm/mach-netx/Kconfig                      |  22 --
 arch/arm/mach-netx/Makefile                     |  13 -
 arch/arm/mach-netx/Makefile.boot                |   3 -
 arch/arm/mach-netx/fb.c                         |  65 ----
 arch/arm/mach-netx/fb.h                         |  12 -
 arch/arm/mach-netx/generic.c                    | 182 ----------
 arch/arm/mach-netx/generic.h                    |  14 -
 arch/arm/mach-netx/include/mach/hardware.h      |  27 --
 arch/arm/mach-netx/include/mach/irqs.h          |  58 ----
 arch/arm/mach-netx/include/mach/netx-regs.h     | 420 --------------------=
----
 arch/arm/mach-netx/include/mach/pfifo.h         |  42 ---
 arch/arm/mach-netx/include/mach/uncompress.h    |  63 ----
 arch/arm/mach-netx/include/mach/xc.h            |  30 --
 arch/arm/mach-netx/nxdb500.c                    | 197 -----------
 arch/arm/mach-netx/nxdkn.c                      |  90 -----
 arch/arm/mach-netx/nxeb500hmi.c                 | 174 ----------
 arch/arm/mach-netx/pfifo.c                      |  56 ----
 arch/arm/mach-netx/time.c                       | 141 --------
 arch/arm/mach-netx/xc.c                         | 246 --------------
 arch/arm64/boot/dts/freescale/imx8mm-pinfunc.h  |   4 +-
 arch/arm64/boot/dts/freescale/imx8mq.dtsi       |   3 +-
 31 files changed, 33 insertions(+), 1886 deletions(-)
 delete mode 100644 arch/arm/mach-netx/Kconfig
 delete mode 100644 arch/arm/mach-netx/Makefile
 delete mode 100644 arch/arm/mach-netx/Makefile.boot
 delete mode 100644 arch/arm/mach-netx/fb.c
 delete mode 100644 arch/arm/mach-netx/fb.h
 delete mode 100644 arch/arm/mach-netx/generic.c
 delete mode 100644 arch/arm/mach-netx/generic.h
 delete mode 100644 arch/arm/mach-netx/include/mach/hardware.h
 delete mode 100644 arch/arm/mach-netx/include/mach/irqs.h
 delete mode 100644 arch/arm/mach-netx/include/mach/netx-regs.h
 delete mode 100644 arch/arm/mach-netx/include/mach/pfifo.h
 delete mode 100644 arch/arm/mach-netx/include/mach/uncompress.h
 delete mode 100644 arch/arm/mach-netx/include/mach/xc.h
 delete mode 100644 arch/arm/mach-netx/nxdb500.c
 delete mode 100644 arch/arm/mach-netx/nxdkn.c
 delete mode 100644 arch/arm/mach-netx/nxeb500hmi.c
 delete mode 100644 arch/arm/mach-netx/pfifo.c
 delete mode 100644 arch/arm/mach-netx/time.c
 delete mode 100644 arch/arm/mach-netx/xc.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
