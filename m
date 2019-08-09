Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E57FD87CE3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 16:41:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QEUTvF3NfxiEZPpYP7cVW5NXmfiD7C41fRYOCja4pFk=; b=AtBzhuCnn9FfSw
	34yAn5LYzTvVB+whP8ArTwIxeouW1j/zTFTwCcuzKoszyoFiDFYuOCyunWd14APUaTuzWZlXOBG7W
	6T6anHRJKSDCYgmeOTEBR+0Gz47HbV+dQ3PdKZJfYrQ9jaNo1HPHImtCg46cZOX9uu2kmMuScJNL5
	TbBpYY07n2ihHx3uKaGZKKRcp5265BeYWt7IVoBAJ0mvx3LucxkM4GLch1S6Ciilyd2V+S2rE1vlP
	6YuYQC9rSGAbOOSVK0z725kzKtllH+ZAZNbfSSupV2rTCvafsM7yYgjyfvgYJZ/we9pN3ZeFAAktH
	Q5YhcG1+hHCj4TR2T9tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw65G-0003zb-SL; Fri, 09 Aug 2019 14:41:34 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw656-0003zC-Nc
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 14:41:26 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MkW10-1ibFNJ1O5W-00m6H3; Fri, 09 Aug 2019 16:40:55 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org
Subject: [PATCH v2 00/13] v2: ARM: move lpc32xx to multiplatform
Date: Fri,  9 Aug 2019 16:40:26 +0200
Message-Id: <20190809144043.476786-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:EDVZmvF9arLwN7tfCBk9s4OVXP20FvpzsVOImPPefg+0CLYE69K
 gQAFFbE132roeOF6ToiNpoEiuz6MoXQQoc5ph+0VQSsr2DOk/xyOnFdZ2yMpZ8kHXXDBjmX
 A8C1gOPJ7TLLjUPO1DDoXFvV90K+Q0ox7QSuSMrwxO7Jb3D1G7p8BVK5xTzCRV9mr0GgrzD
 OwFVQkMOVFv8a5Cr1SW2Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:DPoVW4gPjGQ=:8tG2AyA6Pk3b3tvngr6K5k
 UMk3gPJV3BUtXv9nOJp7EvdBEwjSP1CtrdEXCNtEjUcawe0Pjf8Oy+Oz54J4+/x4CR/2rvHPa
 gpdlQvCpws7DVMLQkcUgXF5nXU3i3nqr3aQlv9+MQBVPsOeC/4KDgkmDIlZVkpN4ynr4u7ucB
 pu5WfQYm7lX8z2DvSWk7Jn/rSFxWFoWsN9AI3xUZs6pqAkjISwm7g1zj0r3DeZkxcnrFNH1IC
 Egz1Ue13UnEuIbxdnowFCmkpbfHazRhxw48ERNB90saDpeer/Sfiohh/EdYsJRhBmP3r4qGIs
 +hPd1B4v+tUWpAYpMDyNtJRuDSdY172Id6TFWwTfK2VuLkB9ao+/dWU4SVVvT+AlgJOv7mrag
 yxf03FHvK+XpX2qgcpa4cziL54bf9OI7XmWHKooibuT2eSYSJ6U7TKh1q5rLi0sM21XV5X9vo
 NoPD1teaUKJgXdmJzymvD8djLtwU5kyqACDEpfMdtI6Jz+NGrX4mbKeXFeREvcJy2hzyr3cHO
 tqwe/jezzuaak1my9LxlhwtyAkQsThdCtdGwZAEEHIwEfIIVldDpQcLW3O9CM/DuL7mzrW4MG
 QI+sI9RMaYFn11ATDc0BslmVI9Ed0tLk9mabp6wQUA8VioOBGUNQHUwI/Ach2uOPRo8wIWgEw
 4n28RI2aSzpaniC2eJhokOSjmOmfgSaC4kke4SvZJSNAMYdtJBvft9fpIWnThM9b34xRSoZTc
 hGLgRyCeKuJkOaJQNWoTa81HQn+8nkhKCeCXPw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_074125_067611_E6009B4D 
X-CRM114-Status: GOOD (  12.44  )
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
Cc: linux-watchdog@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vladimir Zapolskiy <vz@mleia.com>,
 linux-gpio@vger.kernel.org, netdev@vger.kernel.org,
 Alan Stern <stern@rowland.harvard.edu>, Guenter Roeck <linux@roeck-us.net>,
 linux-serial@vger.kernel.org, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Version 2 contains some minor changes based on earlier feedback
and from the 0day build bot testing on other architectures. The
only patch that changed significantly is the one for the gpio driver.

I would suggest we merge this version into the soc tree directly
if there are no further concerns.

      Arnd

Arnd Bergmann (12):
  usb: ohci-nxp: enable compile-testing
  usb: udc: lpc32xx: allow compile-testing
  watchdog: pnx4008_wdt: allow compile-testing
  serial: lpc32xx_hs: allow compile-testing
  gpio: lpc32xx: allow building on non-lpc32xx targets
  net: lpc-enet: factor out iram access
  net: lpc-enet: move phy setup into platform code
  net: lpc-enet: fix printk format strings
  net: lpc-enet: allow compile testing
  serial: lpc32xx: allow compile testing
  ARM: lpc32xx: clean up header files
  ARM: lpc32xx: allow multiplatform build

kbuild test robot (1):
  net: lpc-enet: fix badzero.cocci warnings

 arch/arm/Kconfig                              |  17 +--
 arch/arm/configs/lpc32xx_defconfig            |   2 +
 arch/arm/mach-lpc32xx/Kconfig                 |  11 ++
 arch/arm/mach-lpc32xx/common.c                |  24 +++-
 arch/arm/mach-lpc32xx/common.h                |   1 -
 arch/arm/mach-lpc32xx/include/mach/board.h    |  15 ---
 .../mach-lpc32xx/include/mach/entry-macro.S   |  28 -----
 arch/arm/mach-lpc32xx/include/mach/hardware.h |  25 ----
 .../mach-lpc32xx/include/mach/uncompress.h    |  50 --------
 .../{include/mach/platform.h => lpc32xx.h}    |  18 ++-
 arch/arm/mach-lpc32xx/pm.c                    |   3 +-
 arch/arm/mach-lpc32xx/serial.c                |  33 ++++-
 arch/arm/mach-lpc32xx/suspend.S               |   3 +-
 drivers/gpio/Kconfig                          |   7 ++
 drivers/gpio/Makefile                         |   2 +-
 drivers/gpio/gpio-lpc32xx.c                   | 118 ++++++++++--------
 drivers/net/ethernet/nxp/Kconfig              |   2 +-
 drivers/net/ethernet/nxp/lpc_eth.c            |  45 +++----
 drivers/tty/serial/Kconfig                    |   3 +-
 drivers/tty/serial/lpc32xx_hs.c               |  37 +-----
 drivers/usb/gadget/udc/Kconfig                |   3 +-
 drivers/usb/gadget/udc/lpc32xx_udc.c          |   3 +-
 drivers/usb/host/Kconfig                      |   3 +-
 drivers/usb/host/ohci-nxp.c                   |  25 ++--
 drivers/watchdog/Kconfig                      |   2 +-
 drivers/watchdog/pnx4008_wdt.c                |   1 -
 include/linux/soc/nxp/lpc32xx-misc.h          |  33 +++++
 27 files changed, 242 insertions(+), 272 deletions(-)
 create mode 100644 arch/arm/mach-lpc32xx/Kconfig
 delete mode 100644 arch/arm/mach-lpc32xx/include/mach/board.h
 delete mode 100644 arch/arm/mach-lpc32xx/include/mach/entry-macro.S
 delete mode 100644 arch/arm/mach-lpc32xx/include/mach/hardware.h
 delete mode 100644 arch/arm/mach-lpc32xx/include/mach/uncompress.h
 rename arch/arm/mach-lpc32xx/{include/mach/platform.h => lpc32xx.h} (98%)
 create mode 100644 include/linux/soc/nxp/lpc32xx-misc.h

-- 
2.20.0

Cc: soc@kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: Vladimir Zapolskiy <vz@mleia.com>
Cc: Sylvain Lemieux <slemieux.tyco@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Alan Stern <stern@rowland.harvard.edu>
Cc: Guenter Roeck <linux@roeck-us.net>
Cc: linux-gpio@vger.kernel.org
Cc: netdev@vger.kernel.org
Cc: linux-serial@vger.kernel.org
Cc: linux-usb@vger.kernel.org
Cc: linux-watchdog@vger.kernel.org


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
