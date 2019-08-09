Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B10088004
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 18:30:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7Jb+3K8C4DDWVsKCrZTfm7UsL+HTnbT9hnfq6urVLA8=; b=gmgbGMXEfNCMFL
	EhJ8h5WM1FJJtzI7EalH/bxEAbdvdhebhJg2haaCqPebSjclpjzIrSm2l6fw+rDygm1LOvafeYwGe
	ELVKNVomaBpWJ/c1P3gpODI0joazllHcyvxpf5B69v4eiuwgqL7rvN9QBSXeMrml2CNzFVtv3Lmfe
	CjVTTWcnGoQHTJzQ+/rG57iKFsYInHzz9xg3uW7hsTOq2fs1VtuQD5hQC3jJatryCeMedXax6n8iO
	Yfc2Dwp0UNUi3kBaX+RNJURdaD8R/MObcAD6JqsNzkZ7gyypJFRkIRcEhY/lafdVYVwvVyo6fRwr+
	eNdH875HW21PRY+ishVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw7mc-00030Q-Lu; Fri, 09 Aug 2019 16:30:26 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw7mT-0002zb-3T
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 16:30:19 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MLhsE-1heavU2E8e-00HgAI; Fri, 09 Aug 2019 18:30:04 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org
Subject: [PATCH 0/7] ARM: preparation for multiplatform iop32x
Date: Fri,  9 Aug 2019 18:29:41 +0200
Message-Id: <20190809162956.488941-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:5sOb8chYj6zLcitIyK/AQSGXVjLC3fBWs4XNcf6jl9KmiyFN4O7
 QPVwUPR/W+GdXAjmKf8rIFeAaDm1h4XiuToVguGM55IO5dcS6rJvLigwgEITVf5k/eLyD7C
 VBv2yzNfmns+l23C08fGWCuwe3+3Xarc0lk1WacdvoVqj100QwBR7JTg4hIlMmmsB7p5DMs
 nzJS7vmaFs4Z6nMQpbncg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:sNthk2EA+Fs=:3zQQb/IToIXtrEoe/MKWR+
 E3rJrk5OwuVjor36jyDIFdItjQut/hC4gm45t0+4upaRwr26J1Y3EBnSszOGIx8sqNsie45g9
 UinocsGL2Lg3E2Nc6MiKVevaB297wyxk0cbj/+xvPK4mwV2a/WhK6u5jcD8bFO5KgTeA7YNOC
 70ANOqKvAB9YXfwz2EMUyhO2SkBZeHxdT/5qHclA5uYl9mGuO9AI356gjfQViqlrRBb4OREdA
 tqb9aP+pwEWscpALox303k8AiJTyMtuJ1RKYmHLzCVYclaZAy2XWoPQvoKnQPYUFy7aMTsf4/
 kj3jSQsyDOzV1TFPG4Xd6ZIIuogYZwRL+M1hI60uszMFA9V9lmoUUUtYieXXOymUVnuzhVhMG
 Rp/B8IO6FsHu+5pCcFYzV1Ja8EL6z6ePxeMEX+WCAMSSP52OAUbla4nlgLsoldDDEv5OJvZIZ
 MTRlFE7JyzetKdI6xAcMQaWQgp+8tkVjtNhm5aLwhhWQKMcXHyGiybP2fk1strAUEPXnAnkIo
 Gg3IB9dqm9o8CaW7O3EEvmpDrwDB3GFbKhkW+0/X+75VyGxffZHM/TVN7ag+rlVi4jd0pxy2o
 L5fzRYGeeoDQ1Coa9KrrYTn7xwvESFnQ30MAk2sJOjENel/3X/ekNKJgeTtByGmc0SOoek8sR
 dvBI0+nw2tzklUqFMAeXg6+veYEnB88vSWVy9UTYYyeVuXwOcPZM04ePcin5s9HWVaGqQIqf3
 R3kJ/iKHXF7m2hOaEmvll5xklV1QZ5uNx7vF7g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_093017_446814_42E3E265 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
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
Cc: Dave Jiang <dave.jiang@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 Imre Kaloz <kaloz@openwrt.org>, Martin Michlmayr <tbm@cyrius.com>,
 Lennert Buytenhek <buytenh@wantstofly.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I'm looking into converting some of the remaining ARMv5
platforms in arch/arm/ to work together in a single kernel
binary.

IOP32x seems to be a fairly easy target for multiplatform
by itself, but the way the plat-iop code interacts with
three generations of the code, and how the dma-adma driver
is configured at compile-time for each version gets in the
way.

I considered adding more indirection layers for those two,
but removing iop33x and iop13xx is much easier in comparison,
so this is the first approach I'm posting.

If we conclude that iop33x and iop13xx are indeed not used
any more, the remaining patches in this series are
straightforward. The actual multiplatform conversion also
requires changes to the irqchip driver that are not completely
mechanic, and we can discuss those after deciding what to do
with the first set.

Adding a few people to Cc that historically worked on IOP.

      Arnd

Arnd Bergmann (7):
  [RFC] ARM: remove Intel iop33x and iop13xx support
  dma: iop-adma: include prefetch.h
  dma: iop-adma: use correct printk format strings
  dma: iop-adma: allow building without platform headers
  ARM: xscale: fix multi-cpu compilation
  ARM: iop32x: make mach/uncompress.h independent of mach/hardware.h
  ARM: iop32x: merge everything into mach-iop32x/

 arch/arm/Kconfig                              |   30 -
 arch/arm/Kconfig.debug                        |    8 +-
 arch/arm/Makefile                             |    3 -
 arch/arm/configs/iop13xx_defconfig            |  118 --
 arch/arm/configs/iop33x_defconfig             |   85 --
 arch/arm/mach-iop13xx/Kconfig                 |   21 -
 arch/arm/mach-iop13xx/Makefile                |    9 -
 arch/arm/mach-iop13xx/Makefile.boot           |    4 -
 arch/arm/mach-iop13xx/include/mach/adma.h     |  608 ---------
 .../mach-iop13xx/include/mach/entry-macro.S   |   29 -
 arch/arm/mach-iop13xx/include/mach/hardware.h |   22 -
 arch/arm/mach-iop13xx/include/mach/iop13xx.h  |  508 --------
 arch/arm/mach-iop13xx/include/mach/iq81340.h  |   29 -
 arch/arm/mach-iop13xx/include/mach/irqs.h     |  195 ---
 arch/arm/mach-iop13xx/include/mach/time.h     |  127 --
 .../mach-iop13xx/include/mach/uncompress.h    |   23 -
 arch/arm/mach-iop13xx/io.c                    |   77 --
 arch/arm/mach-iop13xx/iq81340mc.c             |   84 --
 arch/arm/mach-iop13xx/iq81340sc.c             |   86 --
 arch/arm/mach-iop13xx/irq.c                   |  227 ----
 arch/arm/mach-iop13xx/msi.c                   |  152 ---
 arch/arm/mach-iop13xx/msi.h                   |   12 -
 arch/arm/mach-iop13xx/pci.c                   | 1115 -----------------
 arch/arm/mach-iop13xx/pci.h                   |   66 -
 arch/arm/mach-iop13xx/setup.c                 |  595 ---------
 arch/arm/mach-iop13xx/tpmi.c                  |  244 ----
 arch/arm/mach-iop32x/Makefile                 |   10 +-
 arch/arm/{plat-iop => mach-iop32x}/adma.c     |   39 +-
 arch/arm/{plat-iop => mach-iop32x}/cp6.c      |    0
 arch/arm/mach-iop32x/em7210.c                 |    5 +-
 arch/arm/mach-iop32x/glantank.c               |    5 +-
 .../mach-iop32x/{include/mach => }/glantank.h |    2 -
 .../mach-iop32x/{include/mach => }/hardware.h |    6 +-
 arch/arm/{plat-iop => mach-iop32x}/i2c.c      |   21 +-
 arch/arm/mach-iop32x/include/mach/adma.h      |    6 -
 .../mach-iop32x/include/mach/entry-macro.S    |    2 -
 arch/arm/mach-iop32x/include/mach/iop32x.h    |   31 -
 arch/arm/mach-iop32x/include/mach/irqs.h      |   33 -
 arch/arm/mach-iop32x/include/mach/time.h      |    5 -
 .../arm/mach-iop32x/include/mach/uncompress.h |   18 +-
 .../asm/hardware => mach-iop32x}/iop3xx.h     |   18 +-
 arch/arm/mach-iop32x/iq31244.c                |    5 +-
 .../mach-iop32x/{include/mach => }/iq31244.h  |    2 -
 arch/arm/mach-iop32x/iq80321.c                |    5 +-
 .../mach-iop32x/{include/mach => }/iq80321.h  |    2 -
 arch/arm/mach-iop32x/irq.c                    |    3 +-
 arch/arm/mach-iop32x/irqs.h                   |   42 +
 arch/arm/mach-iop32x/n2100.c                  |    5 +-
 .../mach-iop32x/{include/mach => }/n2100.h    |    2 -
 arch/arm/{plat-iop => mach-iop32x}/pci.c      |    4 +-
 arch/arm/{plat-iop => mach-iop32x}/pmu.c      |    8 +-
 arch/arm/{plat-iop => mach-iop32x}/restart.c  |    4 +-
 arch/arm/{plat-iop => mach-iop32x}/setup.c    |    2 +-
 arch/arm/{plat-iop => mach-iop32x}/time.c     |    7 +-
 arch/arm/mach-iop33x/Kconfig                  |   22 -
 arch/arm/mach-iop33x/Makefile                 |    9 -
 arch/arm/mach-iop33x/Makefile.boot            |    4 -
 arch/arm/mach-iop33x/include/mach/adma.h      |    6 -
 .../mach-iop33x/include/mach/entry-macro.S    |   34 -
 arch/arm/mach-iop33x/include/mach/hardware.h  |   44 -
 arch/arm/mach-iop33x/include/mach/iop33x.h    |   37 -
 arch/arm/mach-iop33x/include/mach/iq80331.h   |   17 -
 arch/arm/mach-iop33x/include/mach/iq80332.h   |   17 -
 arch/arm/mach-iop33x/include/mach/irqs.h      |   57 -
 arch/arm/mach-iop33x/include/mach/time.h      |    5 -
 .../arm/mach-iop33x/include/mach/uncompress.h |   37 -
 arch/arm/mach-iop33x/iq80331.c                |  148 ---
 arch/arm/mach-iop33x/iq80332.c                |  148 ---
 arch/arm/mach-iop33x/irq.c                    |  115 --
 arch/arm/mach-iop33x/uart.c                   |  100 --
 arch/arm/mm/copypage-xscale.c                 |    6 +-
 arch/arm/plat-iop/Makefile                    |   28 -
 drivers/dma/Kconfig                           |    4 +-
 drivers/dma/iop-adma.c                        |   22 +-
 .../iop3xx-adma.h => drivers/dma/iop-adma.h   |    7 +-
 drivers/gpio/Kconfig                          |    2 +-
 drivers/i2c/busses/Kconfig                    |    2 +-
 .../linux/platform_data/dma-iop32x.h          |    4 +
 78 files changed, 134 insertions(+), 5510 deletions(-)
 delete mode 100644 arch/arm/configs/iop13xx_defconfig
 delete mode 100644 arch/arm/configs/iop33x_defconfig
 delete mode 100644 arch/arm/mach-iop13xx/Kconfig
 delete mode 100644 arch/arm/mach-iop13xx/Makefile
 delete mode 100644 arch/arm/mach-iop13xx/Makefile.boot
 delete mode 100644 arch/arm/mach-iop13xx/include/mach/adma.h
 delete mode 100644 arch/arm/mach-iop13xx/include/mach/entry-macro.S
 delete mode 100644 arch/arm/mach-iop13xx/include/mach/hardware.h
 delete mode 100644 arch/arm/mach-iop13xx/include/mach/iop13xx.h
 delete mode 100644 arch/arm/mach-iop13xx/include/mach/iq81340.h
 delete mode 100644 arch/arm/mach-iop13xx/include/mach/irqs.h
 delete mode 100644 arch/arm/mach-iop13xx/include/mach/time.h
 delete mode 100644 arch/arm/mach-iop13xx/include/mach/uncompress.h
 delete mode 100644 arch/arm/mach-iop13xx/io.c
 delete mode 100644 arch/arm/mach-iop13xx/iq81340mc.c
 delete mode 100644 arch/arm/mach-iop13xx/iq81340sc.c
 delete mode 100644 arch/arm/mach-iop13xx/irq.c
 delete mode 100644 arch/arm/mach-iop13xx/msi.c
 delete mode 100644 arch/arm/mach-iop13xx/msi.h
 delete mode 100644 arch/arm/mach-iop13xx/pci.c
 delete mode 100644 arch/arm/mach-iop13xx/pci.h
 delete mode 100644 arch/arm/mach-iop13xx/setup.c
 delete mode 100644 arch/arm/mach-iop13xx/tpmi.c
 rename arch/arm/{plat-iop => mach-iop32x}/adma.c (75%)
 rename arch/arm/{plat-iop => mach-iop32x}/cp6.c (100%)
 rename arch/arm/mach-iop32x/{include/mach => }/glantank.h (78%)
 rename arch/arm/mach-iop32x/{include/mach => }/hardware.h (90%)
 rename arch/arm/{plat-iop => mach-iop32x}/i2c.c (81%)
 delete mode 100644 arch/arm/mach-iop32x/include/mach/adma.h
 delete mode 100644 arch/arm/mach-iop32x/include/mach/iop32x.h
 delete mode 100644 arch/arm/mach-iop32x/include/mach/time.h
 rename arch/arm/{include/asm/hardware => mach-iop32x}/iop3xx.h (96%)
 rename arch/arm/mach-iop32x/{include/mach => }/iq31244.h (89%)
 rename arch/arm/mach-iop32x/{include/mach => }/iq80321.h (89%)
 create mode 100644 arch/arm/mach-iop32x/irqs.h
 rename arch/arm/mach-iop32x/{include/mach => }/n2100.h (89%)
 rename arch/arm/{plat-iop => mach-iop32x}/pci.c (99%)
 rename arch/arm/{plat-iop => mach-iop32x}/pmu.c (79%)
 rename arch/arm/{plat-iop => mach-iop32x}/restart.c (82%)
 rename arch/arm/{plat-iop => mach-iop32x}/setup.c (95%)
 rename arch/arm/{plat-iop => mach-iop32x}/time.c (97%)
 delete mode 100644 arch/arm/mach-iop33x/Kconfig
 delete mode 100644 arch/arm/mach-iop33x/Makefile
 delete mode 100644 arch/arm/mach-iop33x/Makefile.boot
 delete mode 100644 arch/arm/mach-iop33x/include/mach/adma.h
 delete mode 100644 arch/arm/mach-iop33x/include/mach/entry-macro.S
 delete mode 100644 arch/arm/mach-iop33x/include/mach/hardware.h
 delete mode 100644 arch/arm/mach-iop33x/include/mach/iop33x.h
 delete mode 100644 arch/arm/mach-iop33x/include/mach/iq80331.h
 delete mode 100644 arch/arm/mach-iop33x/include/mach/iq80332.h
 delete mode 100644 arch/arm/mach-iop33x/include/mach/irqs.h
 delete mode 100644 arch/arm/mach-iop33x/include/mach/time.h
 delete mode 100644 arch/arm/mach-iop33x/include/mach/uncompress.h
 delete mode 100644 arch/arm/mach-iop33x/iq80331.c
 delete mode 100644 arch/arm/mach-iop33x/iq80332.c
 delete mode 100644 arch/arm/mach-iop33x/irq.c
 delete mode 100644 arch/arm/mach-iop33x/uart.c
 delete mode 100644 arch/arm/plat-iop/Makefile
 rename arch/arm/include/asm/hardware/iop3xx-adma.h => drivers/dma/iop-adma.h (99%)
 rename arch/arm/include/asm/hardware/iop_adma.h => include/linux/platform_data/dma-iop32x.h (98%)

-- 
2.20.0

Cc: Dan Williams <dan.j.williams@intel.com>
Cc: Dave Jiang <dave.jiang@intel.com>
Cc: Russell King <linux@armlinux.org.uk>
Cc: Lennert Buytenhek <buytenh@wantstofly.org>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Martin Michlmayr <tbm@cyrius.com>
Cc: Imre Kaloz <kaloz@openwrt.org>
Cc: linux-arm-kernel@lists.infradead.org

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
