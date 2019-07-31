Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 288857CD66
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 21:59:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jo5eKuh5uNkPQRbPXe9pkAsyZzxez+BuxEIb+aFd/mE=; b=Exz0mR4dq/7cBX
	Jod6JKpSS5LSYukiZYg7pMW5OiRHoQHwB4TkgxZCGHVW7IgmCh0Q2qXdQg52RRdLkw1GKNt0m40Vv
	xkBOVpQoP4/fI6T1CNva4+sGqw9W2o+bs3kdlFDml0wHvXOPnds02gNpxA6BRRIJu5sgwtUmByW9T
	dX4i/Jfp/TYImbtUpnGI0TuKDvoA04z3wEKCZQ5GkRq0l2rT3TJW/BA9c34lko3z1USLDLvSVpkZ4
	swXKoe0OseSb6NDqicIgKvo8LMPrKsTVVeZNRvAQ3h9Biv6g7xwHfTzpVL8TJB2BhGmf6cDHukDB0
	Yrm42dBkfCyXI4RQqMOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsukx-00006p-7v; Wed, 31 Jul 2019 19:59:27 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsukp-00006P-9z
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 19:59:20 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1M60HD-1hzmMa1S2t-007WQU; Wed, 31 Jul 2019 21:58:51 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org, linux-arm-kernel@lists.infradead.org,
 Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>
Subject: [PATCH 03/14] watchdog: pnx4008_wdt: allow compile-testing
Date: Wed, 31 Jul 2019 21:56:45 +0200
Message-Id: <20190731195713.3150463-4-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190731195713.3150463-1-arnd@arndb.de>
References: <20190731195713.3150463-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:9yUamtnf2TIEri8xToHi2HP0bNeq2o/bMYTbPMW/vg0ZGIzRlVZ
 urODGWophHwj2kamStrDk3IZ7zSpCTCX5t4sMnfLpIcxs9wmaHvSSDo+bNqZzwGdy5UYYR9
 e0Y4xZ9D2FHcXdSkv/oCMKk2yUHxFcbeBUTKPhHw7pX66dppRRr1TufSUvH+5QEVggfcs8Z
 6oMvoTmm1FtZK8+0oW/wg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:klU/jRvYVso=:PV42qGK6cAWld/OjjZOFZ1
 zGMpHnObvYTQrIpVxVh6vZz9g4QDbJfZyHjqGV0KF05shbnRpDiouYuKEl+7RdTrLXQfq6OUE
 3iGxoYpQ3HBCtxT3DWbqWWLjzoj7ATK7zwEPmUzqzrqjdRYzJszfhNAkX2yI5YVG3GmeBz7yz
 9RDZV4vuOZy22/0qG81uXna7kipOrx0kN2s5FikkKplOevEqJ5tLa4h47HbmthkC8KXX7zbgY
 pV8i3+EJvVZRSaDGhptWUul3T1jBR2b7BO9BWPZmbjlxSVhOASs7lsyj+eHcuceoXxIJkpoby
 7jns4DopRRhHvLL9wlR9ZhyFDkRbdO10LDreatLj5aTesK9vI3kXEjSfxlHluovG3Sm6QKYRF
 SsmRaoxRh7iE87EyMCkT62zLke0BDT/e7RQv10/x5qVYHLOpOHtZfMVaeh4dcS60FyguGq1Fd
 3ZzSA/0jVKSDYqdV5txFh/RZ4uwjHFxMsqS451Oz7732M9uDtqR/CDUNN+MlQKcXzJwbAGxMp
 dN/OymhwlkaxUFRN1E+sGRFvkVQ9MSPkAOc6KurE8C1j+ohNT7WqJgapbfcUiNpDiXpiDxUyg
 OGFd2tSeUG/ZzHAGSoQjoTxD08FMp+mpwJN3uF+xl+fiNsAqYJ3JEC4ZzIkQYYCsZHSoOrZhj
 +/i+eKY1tw950RZ1mXRqF+97hNuHJvmGGLacoaAjuOdNIxSHQXg065UQavatOfy/ovlux6y0Y
 LxMR5+Bjw4qB9h6YFWvXSUmP198oby4rMT3eBg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_125919_635848_B4DD0552 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>, linux-watchdog@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Alan Stern <stern@rowland.harvard.edu>, linux-serial@vger.kernel.org,
 netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
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
 drivers/watchdog/Kconfig       | 2 +-
 drivers/watchdog/pnx4008_wdt.c | 1 -
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 8188963a405b..a45f9e3e442b 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -551,7 +551,7 @@ config OMAP_WATCHDOG
 
 config PNX4008_WATCHDOG
 	tristate "LPC32XX Watchdog"
-	depends on ARCH_LPC32XX
+	depends on ARCH_LPC32XX || COMPILE_TEST
 	select WATCHDOG_CORE
 	help
 	  Say Y here if to include support for the watchdog timer
diff --git a/drivers/watchdog/pnx4008_wdt.c b/drivers/watchdog/pnx4008_wdt.c
index 7b446b696f2b..e0ea133c1690 100644
--- a/drivers/watchdog/pnx4008_wdt.c
+++ b/drivers/watchdog/pnx4008_wdt.c
@@ -30,7 +30,6 @@
 #include <linux/of.h>
 #include <linux/delay.h>
 #include <linux/reboot.h>
-#include <mach/hardware.h>
 
 /* WatchDog Timer - Chapter 23 Page 207 */
 
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
