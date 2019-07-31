Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B947CD73
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 22:00:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ia7LO3RnneGEVjOvMvJQ8d4uwU26YS+48mA1PCdu1lY=; b=b/Sa3a6Qc5bp8N
	jNXqxq6f50+hrhKkb379Sk2IwGaB9MRcIWEnm+MISkGv7c1SoPsiuFEZl0cZVV+bpXDblilNEMH29
	yHztjbUXPt7mLH3qv9aimcmW3vsJRxzX8uE/gSMpjTDT/owvI9PSyHY/1qt8aO8wPv/RTDc8Coc4o
	g++HwYED1pRf2VQU8PNPrrDL0Uo9Q4Ru4d3rItUh6n/e0McrfxFKroNEiHuL949tdl9ko2YXCfvd8
	558bz/DDrox52oeA3y5H+Z8UIN3p26hwe9Eoi1h0SSAhTMeUO2lCV7JgMHmfg1kAAG20vaoYc3gJ6
	XZA1ud72rsIAMh7v7A9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsulf-000135-TE; Wed, 31 Jul 2019 20:00:11 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsulW-0000Lo-BB
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 20:00:03 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1Mo6WJ-1ihbS32Skt-00pgri; Wed, 31 Jul 2019 21:59:24 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org, linux-arm-kernel@lists.infradead.org,
 Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jslaby@suse.com>
Subject: [PATCH 04/14] serial: lpc32xx_hs: allow compile-testing
Date: Wed, 31 Jul 2019 21:56:46 +0200
Message-Id: <20190731195713.3150463-5-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190731195713.3150463-1-arnd@arndb.de>
References: <20190731195713.3150463-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:FgQXWHBg8JwiLqFUWJflxqSabbAP8JCw6bQWgIJ0su4bbGS+nRK
 0kUqcrfqJfWTc10p+TkInneDvk18LhtSmF5HyllYlbCgM6NIe2ax1LYFHpLJUPtftTqVfHY
 LT8kDYequkxI5Lbi1wDejhDPoHyerdsb7xvK8eoFciT5n0YokYA8TO/pNPuR18xFg1KR67C
 ohO68gbXz9QjaHkKemAWQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9zXs2NceyDg=:N9NkeMAe628aOvT2TIb/xb
 PWR1SJ+Jn/xnW7MzNM80nxT0HFhj0IH9hRJO7YpP3nO1nzkVmMIuBW8MfuEjzvna4yYuw/NrN
 Xdgphu9Ry1EE8S2qqTWWjhUDz545qonpnL1oJEOm/Hr5xdROH7H2WeLZJpQCtnxVxQ8Wh5hqY
 nU5h7ie3lhbyDKd1IWAhOejvlfNepdIKHF1pDyXuAnlgQUVMople/U1mBLmt0NoxdvF/6Mcer
 8tH++YghoErbfk2yDkMI2HYS3ZeTBZRbPO2ZX3iDLbDarWtrQvzDqEVMyG8Y6EUmP0b4qyFjN
 PwLeOGDMs4lB0+cFHs97ILEblNeqmOzk14Ox/7D0BPmUuVaxPFJuCwl6Uh4bTDBi8TlEtcnsF
 qKLNzlhsV4qv+KM3IKY+XI8kOnePo6K95sFf+QHEEqVuX8oAp63/X9aVVWFpNTIHW6Va2GEm5
 rWdpIHl6eOJoB+r3wgOJizmqDyGRWK5+D7E47X3Bac211kWk2upDTiYsqftygCXSHNH6sKjd1
 AQJoQbtKh20u9ADOyh9GW2ko1Az6jrllCmcnPqt1XDs9uHtH/ygJG0Gn7GWFngWKjOpGMOcj0
 CGy7SaTzt3GuiyKDn9gHxUEXhOjsb4aCnEX5bWyLhHzocWJcLWujmLb48VzchIKZJgwZWu7lf
 UkS5FB881G9+x8p0cLogi/HR4km/FxXNvseAnDybpGdJN33PMpOBWTcW0/y9Clg0W5ImRhw22
 ktX8KghGubpyC+mg1c2YtkHDcs3NhemMbCnviw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_130002_684625_58CE8EBE 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
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
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Alan Stern <stern@rowland.harvard.edu>, linux-serial@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Guenter Roeck <linux@roeck-us.net>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The only thing that prevents building this driver on other
platforms is the mach/hardware.h include, which is not actually
used here at all, so remove the line and allow CONFIG_COMPILE_TEST.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/tty/serial/Kconfig      | 3 ++-
 drivers/tty/serial/lpc32xx_hs.c | 2 --
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
index 3083dbae35f7..518aac902e4b 100644
--- a/drivers/tty/serial/Kconfig
+++ b/drivers/tty/serial/Kconfig
@@ -739,7 +739,8 @@ config SERIAL_PNX8XXX_CONSOLE
 
 config SERIAL_HS_LPC32XX
 	tristate "LPC32XX high speed serial port support"
-	depends on ARCH_LPC32XX && OF
+	depends on ARCH_LPC32XX || COMPILE_TEST
+	depends on OF
 	select SERIAL_CORE
 	help
 	  Support for the LPC32XX high speed serial ports (up to 900kbps).
diff --git a/drivers/tty/serial/lpc32xx_hs.c b/drivers/tty/serial/lpc32xx_hs.c
index f4e27d0ad947..7f14cd8fac47 100644
--- a/drivers/tty/serial/lpc32xx_hs.c
+++ b/drivers/tty/serial/lpc32xx_hs.c
@@ -25,8 +25,6 @@
 #include <linux/irq.h>
 #include <linux/gpio.h>
 #include <linux/of.h>
-#include <mach/platform.h>
-#include <mach/hardware.h>
 
 /*
  * High Speed UART register offsets
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
