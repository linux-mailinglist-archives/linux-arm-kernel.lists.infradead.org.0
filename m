Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A137CD4C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 21:58:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K01dWLTb0MxXeqsZt3W2aMlUuwgKpZZEhmtkkXZ9dw8=; b=tgopa0zqcQ+q2z
	azI7U5jZXmSVHChGhW0UvYNcR//r9ChoTw6vPbx04ruvsa+KMiZrZ3QcPjbJ9vpd8c7Z1VzaF6QvJ
	07t0tGIJ27iFuKcEN5BNBV7bbdp5yYhuVgjcWT753ZL+X0ODyqRBYLhdCuzOiNs3q9LAjuNwBamga
	hQE+blLIK1PCriQvDqC5nkqnOa8v/5PIDm+xntkeTABNbKtsVgspfYbmRjMmZk+QMwWtvi6KMjlqf
	DMIXqbET8j/kN4pifR2SXP3FEOmex3O7fI9yuObOtUmo56HRXWE4b+EVVKRS2UIkbVM7ExXaHlf+1
	8SRh4TEa5Rx37pyfWw6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsujj-0007oh-AW; Wed, 31 Jul 2019 19:58:11 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsujc-0007oO-E0
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 19:58:06 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1N5CMP-1iJtxV2cYX-0119Cu; Wed, 31 Jul 2019 21:57:28 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org, linux-arm-kernel@lists.infradead.org,
 Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 00/14] ARM: move lpc32xx and dove to multiplatform
Date: Wed, 31 Jul 2019 21:56:42 +0200
Message-Id: <20190731195713.3150463-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:1DhJgllZnoaEPYGs1RPUPXgQ/oF4uTuXo6cjjEDlbbMgcBjoaAv
 /4Gqy5waGt8kWlKhcISqSvbWy0PqMUozbeltyk8i/JLnrBG/MVV5i1YTE1nD7PThG9QNAmS
 9iyG0heOlxZNdw6cfYwcabbQ4ypVIGuPXXQgozREfFxzQ2zdx45uahc4xbAtdP9o5sKxvCC
 QICiay/kY46x1cxToEO+Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:mD1LaNfCPok=:FewDXWtPUyzX3X8MXpV7JW
 LaqXUelWhb8EMKM9tjVsXF3uv3rGnLUQLTL3SIhUo5xti4RrQb4v+7ZE9yZYkDT/kQUFglWBF
 lvLzinWKjjV6sSbqWJx4qfC9UWznfZPTYFC0lU7lQvUiwKDJFULnI39CJPnfNf8oV1md80F+/
 hRIBJf7UroozZKWXZBvCj6qhyUyZ/FiHCNNW2NDEdbLHw+RzE7exwMnGT1w0lIBEpoAGv2Dr0
 PBNGV7aQ6xzA0jg4iovZdBo/K95EQQ01IeAqK8r5l+nAyvyv2QvsAJQ14dqS5qi25TZ1HWgbW
 y4QfqDfSHyPqf/ou/tBXJfUqNTtkEHqRHevOyCywjUO6/+vmF0vXcTWkvwaAm4sGIptdKDXWf
 vtBI71SeOlShLuGqMsOjWNfuDgHE1L/lu7MthTfzB10WFgxJcNmRo4s9WeGLQ70M32rGTuxj0
 fSYfbzci3w+xK0+XnbveZhY0YH1dlePkcvm5RcBHfqcDSZeaxvZOEWZuQBdL5qA+OiCoOBHN/
 TXPne5Yf1BBWIvVnrwfM04RWKmQCqibG92YYGeZ5RbfG0SnyxVH9lpvMOdClQg6oaUfXe5PDO
 i0ClE84DAfmzelDecUQRNORb73/EiNmERpGmA3zwXKqxfIyWnfZ2quBv5cM9S7o9G+R4W+KSC
 gcyOjCbSLMmxXz5/jt8neKqYJ0JYW7vreycPeVeKJaw2+fgZVKgvFFPHKu2AnGnd6ZR49ZNAT
 gfRkW3tCbcUDHer3OPC2tLmSu8Ryf7Wm0PaGnw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_125804_769249_B3E5453E 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: 2.7 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 2.7 TVD_SUBJ_NUM_OBFU_MINFP No description available.
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
Cc: Andrew Lunn <andrew@lunn.ch>, linux-watchdog@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-gpio@vger.kernel.org, Alan Stern <stern@rowland.harvard.edu>,
 linux-serial@vger.kernel.org, netdev@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Guenter Roeck <linux@roeck-us.net>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I revisited some older patches here, getting two of the remaining
ARM platforms to build with ARCH_MULTIPLATFORM like most others do.

In case of lpc32xx, I created a new set of patches, which seemed
easier than digging out what I did for an older release many
years ago.

For dove, the patches are basically what I had proposed back in
2015 when all other ARMv6/ARMv7 machines became part of a single
kernel build. I don't know what the state is mach-dove support is,
compared to the DT based support in mach-mvebu for the same
hardware. If they are functionally the same, we could also just
remove mach-dove rather than applying my patches.

I also created patches to remove the w90x900 and ks8695 platforms
that seem to have lost their last users a few years ago.
I will post them separately, but plan to apply them in the same
branch for linux-5.4 if there are no objections.

      Arnd

Arnd Bergmann (14):
  usb: ohci-nxp: enable compile-testing
  usb: udc: lpc32xx: allow compile-testing
  watchdog: pnx4008_wdt: allow compile-testing
  serial: lpc32xx_hs: allow compile-testing
  gpio: lpc32xx: allow building on non-lpc32xx targets
  net: lpc-enet: factor out iram access
  net: lpc-enet: move phy setup into platform code
  net: lpc-enet: allow compile testing
  serial: lpc32xx: allow compile testing
  ARM: lpc32xx: clean up header files
  ARM: lpc32xx: allow multiplatform build
  ARM: dove: clean up mach/*.h headers
  ARM: orion/mvebu: unify debug-ll virtual addresses
  ARM: dove: multiplatform support

 arch/arm/Kconfig                              | 33 +---------
 arch/arm/Kconfig.debug                        |  5 +-
 arch/arm/configs/dove_defconfig               |  2 +
 arch/arm/configs/lpc32xx_defconfig            |  1 +
 arch/arm/mach-dove/Kconfig                    | 16 +++--
 arch/arm/mach-dove/Makefile                   |  2 +
 .../{include/mach => }/bridge-regs.h          |  4 +-
 arch/arm/mach-dove/cm-a510.c                  |  3 +-
 arch/arm/mach-dove/common.c                   |  4 +-
 arch/arm/mach-dove/dove-db-setup.c            |  2 +-
 arch/arm/mach-dove/{include/mach => }/dove.h  | 14 ++---
 arch/arm/mach-dove/include/mach/hardware.h    | 19 ------
 arch/arm/mach-dove/include/mach/uncompress.h  | 36 -----------
 arch/arm/mach-dove/irq.c                      |  5 +-
 arch/arm/mach-dove/{include/mach => }/irqs.h  |  2 -
 arch/arm/mach-dove/mpp.c                      |  2 +-
 arch/arm/mach-dove/pcie.c                     |  4 +-
 arch/arm/mach-dove/{include/mach => }/pm.h    |  4 +-
 arch/arm/mach-lpc32xx/Kconfig                 | 11 ++++
 arch/arm/mach-lpc32xx/common.c                | 24 +++++--
 arch/arm/mach-lpc32xx/common.h                |  1 -
 arch/arm/mach-lpc32xx/include/mach/board.h    | 15 -----
 .../mach-lpc32xx/include/mach/entry-macro.S   | 28 ---------
 arch/arm/mach-lpc32xx/include/mach/hardware.h | 25 --------
 .../mach-lpc32xx/include/mach/uncompress.h    | 50 ---------------
 .../{include/mach/platform.h => lpc32xx.h}    | 18 +++++-
 arch/arm/mach-lpc32xx/pm.c                    |  3 +-
 arch/arm/mach-lpc32xx/serial.c                | 33 +++++++++-
 arch/arm/mach-lpc32xx/suspend.S               |  3 +-
 arch/arm/mach-mv78xx0/mv78xx0.h               |  4 +-
 arch/arm/mach-orion5x/orion5x.h               |  4 +-
 drivers/gpio/Kconfig                          |  8 +++
 drivers/gpio/Makefile                         |  2 +-
 drivers/gpio/gpio-lpc32xx.c                   | 63 ++++++++++++-------
 drivers/net/ethernet/nxp/Kconfig              |  2 +-
 drivers/net/ethernet/nxp/lpc_eth.c            | 30 +++------
 drivers/tty/serial/Kconfig                    |  3 +-
 drivers/tty/serial/lpc32xx_hs.c               | 37 ++---------
 drivers/usb/gadget/udc/Kconfig                |  3 +-
 drivers/usb/gadget/udc/lpc32xx_udc.c          |  2 -
 drivers/usb/host/Kconfig                      |  3 +-
 drivers/usb/host/ohci-nxp.c                   | 25 +++++---
 drivers/watchdog/Kconfig                      |  2 +-
 drivers/watchdog/pnx4008_wdt.c                |  1 -
 include/linux/soc/nxp/lpc32xx-misc.h          | 33 ++++++++++
 45 files changed, 246 insertions(+), 345 deletions(-)
 rename arch/arm/mach-dove/{include/mach => }/bridge-regs.h (96%)
 rename arch/arm/mach-dove/{include/mach => }/dove.h (95%)
 delete mode 100644 arch/arm/mach-dove/include/mach/hardware.h
 delete mode 100644 arch/arm/mach-dove/include/mach/uncompress.h
 rename arch/arm/mach-dove/{include/mach => }/irqs.h (98%)
 rename arch/arm/mach-dove/{include/mach => }/pm.h (97%)
 create mode 100644 arch/arm/mach-lpc32xx/Kconfig
 delete mode 100644 arch/arm/mach-lpc32xx/include/mach/board.h
 delete mode 100644 arch/arm/mach-lpc32xx/include/mach/entry-macro.S
 delete mode 100644 arch/arm/mach-lpc32xx/include/mach/hardware.h
 delete mode 100644 arch/arm/mach-lpc32xx/include/mach/uncompress.h
 rename arch/arm/mach-lpc32xx/{include/mach/platform.h => lpc32xx.h} (98%)
 create mode 100644 include/linux/soc/nxp/lpc32xx-misc.h

-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
