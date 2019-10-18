Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3521FDCAF0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:24:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=plvZ/0twETx0xlnyV4ZPBG/clqjY9g8/YO8ry0IdIXk=; b=SZwTG+6U3NS57M
	RjJOXcT5VyxZcXL6pY3XtWwqBKwVy2Yh5OmvMVksZDUifH+oLILF3mCAqaczsFzeyT1doDfYRfGOE
	hTfIv+fp7ux3xELXnX9DVoD5q7YFreXRqWPT75odUCTu7sYqk6hywK4dZMyYBAvDDHU/LzdXquf6O
	WJ9jagGepXQRAPylAPLfFUA9dx7U3C2lmDHdQqwvCcj3wwWm6VT+FsKtoCH/GhdCr4BunYQJkEvc7
	UFZ/cZ/yDaHWDG8YzmWqiInwP5O3ptnCf4Ou5QlyvaGeUusTyS1sKhaBj9vwCK1DKLV8aV6bLQVFc
	rJT8oIMck1gfl+8Qv7sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLV3G-0004rp-2m; Fri, 18 Oct 2019 16:24:30 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLV36-0004qh-77
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:24:22 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MF35K-1iEtKs2TzE-00FPZj; Fri, 18 Oct 2019 18:24:02 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/6] ARM: platform cleanup
Date: Fri, 18 Oct 2019 18:23:35 +0200
Message-Id: <20191018162352.1283488-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:pwjVgFC5TjKAp7cp6Lgy64vAycWP1S0XmL7dk93RJ9zvculJrgH
 rqMdTKxbQnryZXqiP2ynJByYBuPfWZKpr8SGhFRFSeU4r7/+N+U0BLjtCLqYEGtE3STdOat
 JwLn7H7+ecHTzPUE/vUPQ+cCqSDv3zBcG91KfepqBfV1jV25ttvttXgIpDIOR07OGNsERDl
 TZUkLmJPGHRqM8wrVM10Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Qm+suhRpTbQ=:XtRN7qg3xIxI0QA5cssIb+
 DvUyxstGvqWb7XdmFmNy0y78vbgvP/8eIoHCC6Hqa94U4xknc0DQ7Sl89mKruIGQjA0R3aJSU
 OMtAmRRT5zLqHZ/ueCXTUqM6ldFt3RZ1SEUAWpJ7pwgMTW8vb2T9B6B2dNnXykOif73Cdko+x
 D+rOq0s9w97XpUok4WtNTgPVX3dLQOQuMrqOQfEBVzF1+N0iwgNUh9+QDLZeNp3nf9RvMd6ZZ
 NzsGe4XbCyqrYU+1bKwa/lmNor2MLxOaAdRrkIugkgpJ9oKekO+GsydXf7ak17pNTWcZ4HD/U
 9h5GO9LMrHjBVQVtrRzZZtfXULbL7tJ8Sb+3Q+vB+Nf65uxMR9mzKX727oP5nU/kMvTJftfEe
 SnhbTrTEuqwE8lb9Js384mh9z67mNmG59mrNiWDzRhHgSokU+FN01C38j7CwSu/jd1ZpUtPaK
 zRIls1leiJcicoRiqdPIXEmAujpHnUAYFuJZaSvjHM/ZcmpE6Nnc6/lTBI+EdoprjFAovZJNu
 0C+HlndkPhse9wR8eUjEqi3nQGfJJp6EyiPbJ/c9Yh2CJRodm9HKdpXETwCWVyKVoUOB56sQ2
 WO64613EhaD7cZYY7c9Ycojy35cPD/vfX5JKu2s+vgHWdO0CgKzDqj308NPxlYhDf2t84aTxF
 H2Y+EpTbviJ2rXlbmoODpxi8LUFBnpic8ZI+rADFlHg5TLiu26yAAla9s6Qc0Qd2iI1EttdBA
 eA0Q+WTDLzFKSxn5xEhPq9i2VLw17LGT6SdJ2vX8ZqrFT3/NO+xOprh/XzUg0zn2UCSR70KAu
 zPwzsPl2q2aN2DDASOeTtZzrpstqgV1XS+ZImNzX28lWxGCQV4aV6l6icq12WULXZMjiLIIFA
 0Ztov1cvIS3joM3U8N7g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_092420_557103_6416FBB3 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, Arnd Bergmann <arnd@arndb.de>,
 Linus Walleij <linus.walleij@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Hubert Feurstein <hubert.feurstein@contec.at>,
 Hartley Sweeten <hsweeten@visionengravers.com>,
 Alexander Clouter <alex@digriz.org.uk>, Lukasz Majewski <lukma@denx.de>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Here are some patches that didn't fit in any of the other series:

- Moving dove into multiplatform completes that conversion,
  this was missing as of a few years ago

- On ep93xx, the irqchip and clk drivers need to use the
  common frameworks, this one adapts the irqchip one

- the plat-orion and plat-versatile directories are no
  longer useful since the contents of the
  mach-{versatile,realview,integrator,vexpress} and
  mach-{orion5k,mv78xx0,dove} directories are rather
  small anyway and they can be classified as a single
  platform each.
  
  I have other patches to kill off the plat-samsung,
  plat-pxa and plat-omap directories, by moving the
  contents of those directories elsewhere. After that,
  we no longer need mach/*.h headers to be visible
  from plat-* directories.

     Arnd

Cc: Russell King <linux@armlinux.org.uk>
Cc: Hartley Sweeten <hsweeten@visionengravers.com>
Cc: Alexander Sverdlin <alexander.sverdlin@gmail.com>
Cc: Hubert Feurstein <hubert.feurstein@contec.at>
Cc: Lukasz Majewski <lukma@denx.de>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Jason Cooper <jason@lakedaemon.net>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Gregory Clement <gregory.clement@bootlin.com>
Cc: Alexander Clouter <alex@digriz.org.uk>
Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: linux-kernel@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org

Arnd Bergmann (6):
  ARM: versatile: move integrator/realview/vexpress to versatile
  ARM: ep93xx: enable SPARSE_IRQ
  ARM: ep93xx: make mach/ep93xx-regs.h local
  ARM: dove: multiplatform support
  ARM: orion/mv78xx0/dove: move to a common directory
  ARM: orion: unify Makefile/Kconfig files

 MAINTAINERS                                   |   7 +-
 arch/arm/Kconfig                              |  42 +-
 arch/arm/Makefile                             |  12 +-
 arch/arm/configs/dove_defconfig               |   2 +
 arch/arm/mach-dove/Kconfig                    |  26 --
 arch/arm/mach-dove/Makefile                   |   6 -
 arch/arm/mach-dove/include/mach/uncompress.h  |  34 --
 arch/arm/mach-ep93xx/adssphere.c              |   1 +
 arch/arm/mach-ep93xx/crunch-bits.S            |   2 +-
 arch/arm/mach-ep93xx/edb93xx.c                |   8 +
 .../{include/mach => }/ep93xx-regs.h          |   4 -
 arch/arm/mach-ep93xx/gesbc9312.c              |   1 +
 arch/arm/mach-ep93xx/gpio-ep93xx.h            |   2 +-
 .../arm/mach-ep93xx/include/mach/uncompress.h |   1 -
 .../arm/mach-ep93xx/{include/mach => }/irqs.h |   7 -
 arch/arm/mach-ep93xx/micro9.c                 |   4 +
 arch/arm/mach-ep93xx/simone.c                 |   1 +
 arch/arm/mach-ep93xx/snappercl15.c            |   1 +
 arch/arm/mach-ep93xx/soc.h                    |   3 +-
 arch/arm/mach-ep93xx/ts72xx.c                 |   3 +-
 arch/arm/mach-ep93xx/vision_ep9307.c          |   1 +
 arch/arm/mach-integrator/Kconfig              | 161 --------
 arch/arm/mach-integrator/Makefile             |  11 -
 arch/arm/mach-mv78xx0/Kconfig                 |  34 --
 arch/arm/mach-mv78xx0/Makefile                |   7 -
 arch/arm/{mach-orion5x => mach-orion}/Kconfig |  74 +++-
 arch/arm/mach-orion/Makefile                  |  45 +++
 .../{mach-dove => mach-orion}/Makefile.boot   |   0
 .../include/plat => mach-orion}/addr-map.h    |   2 -
 .../board-d2net.c                             |   6 +-
 .../{mach-orion5x => mach-orion}/board-dt.c   |  10 +-
 .../{mach-orion5x => mach-orion}/board-mss2.c |   4 +-
 .../board-rd88f5182.c                         |   4 +-
 .../buffalo-wxl-setup.c                       |   6 +-
 arch/arm/{mach-dove => mach-orion}/cm-a510.c  |   4 +-
 arch/arm/{plat-orion => mach-orion}/common.c  |   4 +-
 .../include/plat => mach-orion}/common.h      |   2 -
 .../db78x00-bp-setup.c                        |   4 +-
 .../db88f5281-setup.c                         |   6 +-
 .../dns323-setup.c                            |   8 +-
 .../dove-bridge-regs.h}                       |   0
 .../common.c => mach-orion/dove-common.c}     |  13 +-
 .../common.h => mach-orion/dove-common.h}     |   2 -
 .../{mach-dove => mach-orion}/dove-db-setup.c |   4 +-
 .../irq.c => mach-orion/dove-irq.c}           |  12 +-
 .../irqs.h => mach-orion/dove-irqs.h}         |   0
 .../mpp.c => mach-orion/dove-mpp.c}           |   8 +-
 .../mpp.h => mach-orion/dove-mpp.h}           |   0
 .../pcie.c => mach-orion/dove-pcie.c}         |  12 +-
 .../{mach-dove/pm.h => mach-orion/dove-pm.h}  |   2 +-
 arch/arm/{mach-dove => mach-orion}/dove.h     |   2 +-
 arch/arm/{plat-orion => mach-orion}/gpio.c    |   4 +-
 arch/arm/{plat-orion => mach-orion}/irq.c     |   6 +-
 .../include/plat => mach-orion}/irq.h         |   2 -
 .../kurobox_pro-setup.c                       |   6 +-
 .../ls_hgl-setup.c                            |   6 +-
 arch/arm/{plat-orion => mach-orion}/mpp.c     |   6 +-
 .../include/plat => mach-orion}/mpp.h         |   2 -
 .../mv2120-setup.c                            |   4 +-
 .../mv78xx0-bridge-regs.h}                    |   0
 .../common.c => mach-orion/mv78xx0-common.c}  |  12 +-
 .../common.h => mach-orion/mv78xx0-common.h}  |   2 -
 .../irq.c => mach-orion/mv78xx0-irq.c}        |  10 +-
 .../irqs.h => mach-orion/mv78xx0-irqs.h}      |   0
 .../mpp.c => mach-orion/mv78xx0-mpp.c}        |   8 +-
 .../mpp.h => mach-orion/mv78xx0-mpp.h}        |   3 +-
 .../pcie.c => mach-orion/mv78xx0-pcie.c}      |   6 +-
 .../{mach-mv78xx0 => mach-orion}/mv78xx0.h    |   2 +-
 .../net2big-setup.c                           |   8 +-
 .../include/plat => mach-orion}/orion-gpio.h  |   2 -
 .../orion5x-bridge-regs.h}                    |   0
 .../common.h => mach-orion/orion5x-common.h}  |   0
 .../irq.c => mach-orion/orion5x-irq.c}        |  10 +-
 .../irqs.h => mach-orion/orion5x-irqs.h}      |   0
 .../mpp.c => mach-orion/orion5x-mpp.c}        |   8 +-
 .../mpp.h => mach-orion/orion5x-mpp.h}        |   0
 .../pci.c => mach-orion/orion5x-pci.c}        |   8 +-
 .../common.c => mach-orion/orion5x.c}         |  10 +-
 .../{mach-orion5x => mach-orion}/orion5x.h    |   2 +-
 arch/arm/{plat-orion => mach-orion}/pcie.c    |   6 +-
 .../include/plat => mach-orion}/pcie.h        |   2 -
 .../rd78x00-masa-setup.c                      |   4 +-
 .../rd88f5181l-fxo-setup.c                    |   6 +-
 .../rd88f5181l-ge-setup.c                     |   6 +-
 .../rd88f5182-setup.c                         |   6 +-
 .../rd88f6183ap-ge-setup.c                    |   4 +-
 .../terastation_pro2-setup.c                  |   4 +-
 arch/arm/{plat-orion => mach-orion}/time.c    |   4 +-
 .../include/plat => mach-orion}/time.h        |   2 -
 .../ts209-setup.c                             |   4 +-
 .../ts409-setup.c                             |   4 +-
 .../ts78xx-fpga.h                             |   0
 .../ts78xx-setup.c                            |   6 +-
 .../tsx09-common.c                            |   4 +-
 .../tsx09-common.h                            |   0
 .../wnr854t-setup.c                           |   6 +-
 .../wrt350n-v2-setup.c                        |   6 +-
 arch/arm/mach-orion5x/Makefile                |  26 --
 arch/arm/mach-realview/Kconfig                | 113 ------
 arch/arm/mach-realview/Makefile               |   8 -
 arch/arm/mach-versatile/Kconfig               | 360 ++++++++++++++++++
 arch/arm/mach-versatile/Makefile              |  34 +-
 .../Makefile.boot                             |   0
 .../{mach-integrator => mach-versatile}/cm.h  |   0
 .../common.h                                  |   0
 .../core.c                                    |   2 -
 .../{mach-vexpress => mach-versatile}/core.h  |   0
 .../{mach-vexpress => mach-versatile}/dcscb.c |   2 +-
 .../dcscb_setup.S                             |   2 -
 .../hardware.h                                |   0
 .../headsmp.S                                 |   2 -
 .../hotplug.c                                 |   2 +-
 .../impd1.c                                   |   2 -
 .../impd1.h                                   |   0
 .../integrator_ap.c                           |   2 -
 .../integrator_cp.c                           |   2 -
 .../{mach-integrator => mach-versatile}/lm.c  |   2 -
 .../{mach-integrator => mach-versatile}/lm.h  |   0
 .../platsmp-realview.c}                       |   2 +-
 .../platsmp-vexpress.c}                       |   5 +-
 .../platsmp.c                                 |   4 +-
 .../include/plat => mach-versatile}/platsmp.h |   2 -
 .../realview-dt.c                             |   0
 .../sched-clock.c                             |   4 +-
 .../plat => mach-versatile}/sched_clock.h     |   0
 .../{mach-vexpress => mach-versatile}/spc.c   |   0
 .../{mach-vexpress => mach-versatile}/spc.h   |   0
 .../tc2_pm.c                                  |   2 -
 .../v2m-mps2.c                                |   0
 .../{mach-vexpress => mach-versatile}/v2m.c   |   0
 arch/arm/mach-vexpress/Kconfig                |  84 ----
 arch/arm/mach-vexpress/Makefile               |  19 -
 arch/arm/plat-orion/Makefile                  |   9 -
 arch/arm/plat-versatile/Kconfig               |   7 -
 arch/arm/plat-versatile/Makefile              |   6 -
 135 files changed, 657 insertions(+), 862 deletions(-)
 delete mode 100644 arch/arm/mach-dove/Kconfig
 delete mode 100644 arch/arm/mach-dove/Makefile
 delete mode 100644 arch/arm/mach-dove/include/mach/uncompress.h
 rename arch/arm/mach-ep93xx/{include/mach => }/ep93xx-regs.h (94%)
 rename arch/arm/mach-ep93xx/{include/mach => }/irqs.h (94%)
 delete mode 100644 arch/arm/mach-integrator/Kconfig
 delete mode 100644 arch/arm/mach-integrator/Makefile
 delete mode 100644 arch/arm/mach-mv78xx0/Kconfig
 delete mode 100644 arch/arm/mach-mv78xx0/Makefile
 rename arch/arm/{mach-orion5x => mach-orion}/Kconfig (75%)
 create mode 100644 arch/arm/mach-orion/Makefile
 rename arch/arm/{mach-dove => mach-orion}/Makefile.boot (100%)
 rename arch/arm/{plat-orion/include/plat => mach-orion}/addr-map.h (96%)
 rename arch/arm/{mach-orion5x => mach-orion}/board-d2net.c (97%)
 rename arch/arm/{mach-orion5x => mach-orion}/board-dt.c (94%)
 rename arch/arm/{mach-orion5x => mach-orion}/board-mss2.c (97%)
 rename arch/arm/{mach-orion5x => mach-orion}/board-rd88f5182.c (97%)
 rename arch/arm/{mach-mv78xx0 => mach-orion}/buffalo-wxl-setup.c (97%)
 rename arch/arm/{mach-dove => mach-orion}/cm-a510.c (97%)
 rename arch/arm/{plat-orion => mach-orion}/common.c (99%)
 rename arch/arm/{plat-orion/include/plat => mach-orion}/common.h (98%)
 rename arch/arm/{mach-mv78xx0 => mach-orion}/db78x00-bp-setup.c (97%)
 rename arch/arm/{mach-orion5x => mach-orion}/db88f5281-setup.c (99%)
 rename arch/arm/{mach-orion5x => mach-orion}/dns323-setup.c (99%)
 rename arch/arm/{mach-dove/bridge-regs.h => mach-orion/dove-bridge-regs.h} (100%)
 rename arch/arm/{mach-dove/common.c => mach-orion/dove-common.c} (98%)
 rename arch/arm/{mach-dove/common.h => mach-orion/dove-common.h} (97%)
 rename arch/arm/{mach-dove => mach-orion}/dove-db-setup.c (97%)
 rename arch/arm/{mach-dove/irq.c => mach-orion/dove-irq.c} (92%)
 rename arch/arm/{mach-dove/irqs.h => mach-orion/dove-irqs.h} (100%)
 rename arch/arm/{mach-dove/mpp.c => mach-orion/dove-mpp.c} (97%)
 rename arch/arm/{mach-dove/mpp.h => mach-orion/dove-mpp.h} (100%)
 rename arch/arm/{mach-dove/pcie.c => mach-orion/dove-pcie.c} (97%)
 rename arch/arm/{mach-dove/pm.h => mach-orion/dove-pm.h} (99%)
 rename arch/arm/{mach-dove => mach-orion}/dove.h (99%)
 rename arch/arm/{plat-orion => mach-orion}/gpio.c (99%)
 rename arch/arm/{plat-orion => mach-orion}/irq.c (92%)
 rename arch/arm/{plat-orion/include/plat => mach-orion}/irq.h (88%)
 rename arch/arm/{mach-orion5x => mach-orion}/kurobox_pro-setup.c (99%)
 rename arch/arm/{mach-orion5x => mach-orion}/ls_hgl-setup.c (98%)
 rename arch/arm/{plat-orion => mach-orion}/mpp.c (95%)
 rename arch/arm/{plat-orion/include/plat => mach-orion}/mpp.h (95%)
 rename arch/arm/{mach-orion5x => mach-orion}/mv2120-setup.c (99%)
 rename arch/arm/{mach-mv78xx0/bridge-regs.h => mach-orion/mv78xx0-bridge-regs.h} (100%)
 rename arch/arm/{mach-mv78xx0/common.c => mach-orion/mv78xx0-common.c} (98%)
 rename arch/arm/{mach-mv78xx0/common.h => mach-orion/mv78xx0-common.h} (97%)
 rename arch/arm/{mach-mv78xx0/irq.c => mach-orion/mv78xx0-irq.c} (93%)
 rename arch/arm/{mach-mv78xx0/irqs.h => mach-orion/mv78xx0-irqs.h} (100%)
 rename arch/arm/{mach-mv78xx0/mpp.c => mach-orion/mv78xx0-mpp.c} (91%)
 rename arch/arm/{mach-mv78xx0/mpp.h => mach-orion/mv78xx0-mpp.h} (99%)
 rename arch/arm/{mach-mv78xx0/pcie.c => mach-orion/mv78xx0-pcie.c} (98%)
 rename arch/arm/{mach-mv78xx0 => mach-orion}/mv78xx0.h (99%)
 rename arch/arm/{mach-orion5x => mach-orion}/net2big-setup.c (99%)
 rename arch/arm/{plat-orion/include/plat => mach-orion}/orion-gpio.h (94%)
 rename arch/arm/{mach-orion5x/bridge-regs.h => mach-orion/orion5x-bridge-regs.h} (100%)
 rename arch/arm/{mach-orion5x/common.h => mach-orion/orion5x-common.h} (100%)
 rename arch/arm/{mach-orion5x/irq.c => mach-orion/orion5x-irq.c} (89%)
 rename arch/arm/{mach-orion5x/irqs.h => mach-orion/orion5x-irqs.h} (100%)
 rename arch/arm/{mach-orion5x/mpp.c => mach-orion/orion5x-mpp.c} (92%)
 rename arch/arm/{mach-orion5x/mpp.h => mach-orion/orion5x-mpp.h} (100%)
 rename arch/arm/{mach-orion5x/pci.c => mach-orion/orion5x-pci.c} (99%)
 rename arch/arm/{mach-orion5x/common.c => mach-orion/orion5x.c} (99%)
 rename arch/arm/{mach-orion5x => mach-orion}/orion5x.h (99%)
 rename arch/arm/{plat-orion => mach-orion}/pcie.c (98%)
 rename arch/arm/{plat-orion/include/plat => mach-orion}/pcie.h (96%)
 rename arch/arm/{mach-mv78xx0 => mach-orion}/rd78x00-masa-setup.c (96%)
 rename arch/arm/{mach-orion5x => mach-orion}/rd88f5181l-fxo-setup.c (98%)
 rename arch/arm/{mach-orion5x => mach-orion}/rd88f5181l-ge-setup.c (98%)
 rename arch/arm/{mach-orion5x => mach-orion}/rd88f5182-setup.c (98%)
 rename arch/arm/{mach-orion5x => mach-orion}/rd88f6183ap-ge-setup.c (97%)
 rename arch/arm/{mach-orion5x => mach-orion}/terastation_pro2-setup.c (99%)
 rename arch/arm/{plat-orion => mach-orion}/time.c (99%)
 rename arch/arm/{plat-orion/include/plat => mach-orion}/time.h (90%)
 rename arch/arm/{mach-orion5x => mach-orion}/ts209-setup.c (99%)
 rename arch/arm/{mach-orion5x => mach-orion}/ts409-setup.c (99%)
 rename arch/arm/{mach-orion5x => mach-orion}/ts78xx-fpga.h (100%)
 rename arch/arm/{mach-orion5x => mach-orion}/ts78xx-setup.c (99%)
 rename arch/arm/{mach-orion5x => mach-orion}/tsx09-common.c (97%)
 rename arch/arm/{mach-orion5x => mach-orion}/tsx09-common.h (100%)
 rename arch/arm/{mach-orion5x => mach-orion}/wnr854t-setup.c (98%)
 rename arch/arm/{mach-orion5x => mach-orion}/wrt350n-v2-setup.c (98%)
 delete mode 100644 arch/arm/mach-orion5x/Makefile
 delete mode 100644 arch/arm/mach-realview/Kconfig
 delete mode 100644 arch/arm/mach-realview/Makefile
 rename arch/arm/{mach-vexpress => mach-versatile}/Makefile.boot (100%)
 rename arch/arm/{mach-integrator => mach-versatile}/cm.h (100%)
 rename arch/arm/{mach-integrator => mach-versatile}/common.h (100%)
 rename arch/arm/{mach-integrator => mach-versatile}/core.c (97%)
 rename arch/arm/{mach-vexpress => mach-versatile}/core.h (100%)
 rename arch/arm/{mach-vexpress => mach-versatile}/dcscb.c (98%)
 rename arch/arm/{mach-vexpress => mach-versatile}/dcscb_setup.S (95%)
 rename arch/arm/{mach-integrator => mach-versatile}/hardware.h (100%)
 rename arch/arm/{plat-versatile => mach-versatile}/headsmp.S (94%)
 rename arch/arm/{plat-versatile => mach-versatile}/hotplug.c (98%)
 rename arch/arm/{mach-integrator => mach-versatile}/impd1.c (99%)
 rename arch/arm/{mach-integrator => mach-versatile}/impd1.h (100%)
 rename arch/arm/{mach-integrator => mach-versatile}/integrator_ap.c (98%)
 rename arch/arm/{mach-integrator => mach-versatile}/integrator_cp.c (98%)
 rename arch/arm/{mach-integrator => mach-versatile}/lm.c (97%)
 rename arch/arm/{mach-integrator => mach-versatile}/lm.h (100%)
 rename arch/arm/{mach-realview/platsmp-dt.c => mach-versatile/platsmp-realview.c} (98%)
 rename arch/arm/{mach-vexpress/platsmp.c => mach-versatile/platsmp-vexpress.c} (96%)
 rename arch/arm/{plat-versatile => mach-versatile}/platsmp.c (97%)
 rename arch/arm/{plat-versatile/include/plat => mach-versatile}/platsmp.h (87%)
 rename arch/arm/{mach-realview => mach-versatile}/realview-dt.c (100%)
 rename arch/arm/{plat-versatile => mach-versatile}/sched-clock.c (86%)
 rename arch/arm/{plat-versatile/include/plat => mach-versatile}/sched_clock.h (100%)
 rename arch/arm/{mach-vexpress => mach-versatile}/spc.c (100%)
 rename arch/arm/{mach-vexpress => mach-versatile}/spc.h (100%)
 rename arch/arm/{mach-vexpress => mach-versatile}/tc2_pm.c (99%)
 rename arch/arm/{mach-vexpress => mach-versatile}/v2m-mps2.c (100%)
 rename arch/arm/{mach-vexpress => mach-versatile}/v2m.c (100%)
 delete mode 100644 arch/arm/mach-vexpress/Kconfig
 delete mode 100644 arch/arm/mach-vexpress/Makefile
 delete mode 100644 arch/arm/plat-orion/Makefile
 delete mode 100644 arch/arm/plat-versatile/Kconfig
 delete mode 100644 arch/arm/plat-versatile/Makefile

-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
