Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F39E87CF0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 16:42:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HPNtqi3JKR9oj38tiTAIs5VLCLjnUYjJEOkBkfhwbHE=; b=MrmEXLxb18jpuP
	6ygFKVXhSioPwXRbZKY7MJIMAj+qWzXGJsb7F0R3Oh+vVLiqpmOodi7NvJP/6zOXurGV0QeN6evfr
	vpZudf9O7cpn2VXWXFcTHKX2NhIKJ4u5TFuAdchIVFxFd76oLj1GMAxQKAXIwaT4hwuYqpfYD8geV
	9wnEcmyxOrHt5qaLRoFR95iSjyDxn8aoL+Nd1T7MZ1q6kErOdveqZKnshNbx+rzKsQt5LoQAr30bb
	vTxHp6AaSLW3GxuVjQPQFwB0xYe4Oa8XRU5O3GrHL1c/uiMQmK3u1rKXMOdG1sqrqeldJoAz+UUdc
	G/b6m+g8HtBZ0l2qJf/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw66P-0004qX-3o; Fri, 09 Aug 2019 14:42:45 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw66C-0004ny-HZ
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 14:42:34 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1N6JtR-1iOPhO3B3h-016fh0; Fri, 09 Aug 2019 16:42:07 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org
Subject: [PATCH v2 03/13] watchdog: pnx4008_wdt: allow compile-testing
Date: Fri,  9 Aug 2019 16:40:29 +0200
Message-Id: <20190809144043.476786-4-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190809144043.476786-1-arnd@arndb.de>
References: <20190809144043.476786-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:2AniHPLvo1jOIHTBA5j2I98sivoZsCAzYNsd3R/3R1uFTaliz4M
 3rsrICP/4PwkInaQhxlJ/le7U5DXD8wWkq4JuseLTYnOxVv5i7Pa66SqiXbaguC3oA5FRw8
 A3xdnI1Rtez1LzDbs+hgxfPKiJyB71Xm8m9gpg8RdpuYwWaPI7c4IElvW/Zfp2Gv0NrqnrX
 jNNC2a7YYGqIrQTGKSpMg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Etmti/+xoQU=:l4/pWBsx0O3C1vyi+cIoXU
 B8/q/x2tPsjhwuwTEusw4xO3v3fsMQQTifM0loxUkh38VhpQRY6hhaYq4T0VxVGIgDRL7k4Fz
 jZ7BZJjWaG7sWyYIiHLs5LTGW4Sn3dzTN8w+H2ze/4aaLojYSZISir5/crSN/dM7rEGfJ+688
 5lfVOkA68CmQdirZenGNKTe9XExQI9XCx3Bc9PI/J/Mhkhw/d0rxvIbRg8VrlGutTxVUa7Ee8
 GUGIIM2QpNsQNscwV1Kw9bKmsWzduGGi1t+uRunVn2J7txrxyigBVsDI/Gmklywari3NfJKSH
 gJHVNI/QjS2jBmpNtXXlgOW5X1oxHK4uU3oyz9KzqIy3I/eqBfwOQh0lhMU4RjQeti5VOR9u+
 28FXhIzaucLv9wNiIKCy3nouTqfLJVXwsuozg9GInw0hjxiGg8jTQI3MivqWIHSf6ICQsP4US
 VAqYSNd1sQBqtHincI3+5NGUcPiwZxeav4bfdjIVSa60uo825Red6h1hEGt1XZwBdBTfXSaCm
 ZaYfGakR5giIId/4nDqGSabD0XGEHUqhTaUYwFuHsghmRHYzxm4qqhDZP74Vk8pXeiZlXRcvw
 r1gSQFieBhcZg1nhipaC/BxG29X59rcn49DjnIeO0Q7pDzw1tcrWETEsHxLq+MWgq3jLHxwhe
 AhfrHZ5BvPOVUiEgviEvpJB2WVBOnlB2VatyhjVwe+D0LDYrD3oPjGPCcPdHmZi0GOH8fU8gG
 CO183QaB3b+5OI4Ex4k3snRCyEStnmloMwaR8A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_074232_879705_F306A53E 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, Vladimir Zapolskiy <vz@mleia.com>,
 linux-arm-kernel@lists.infradead.org,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The only thing that prevents building this driver on other
platforms is the mach/hardware.h include, which is not actually
used here at all, so remove the line and allow CONFIG_COMPILE_TEST.

Acked-by: Sylvain Lemieux <slemieux.tyco@gmail.com>
Reviewed-by: Guenter Roeck <linux@roeck-us.net>
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
