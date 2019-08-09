Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7867A87CF5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 16:43:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0woim1uEW5oSrP1uyUONO9rBRv+SPbu0uE/1q9TEoQE=; b=oubjhW7aUfAI6G
	Qq9csKbpqxW2X6t0CIHDTPJr14mOw0ayiz5eSgcX2pGrWASKXTqtno9rPIbPtBjh/BkMGw7Ac2B5D
	S0CHt22RZDhaYl7vyPFLjGAcrBBej8jQtJ8aLkUoF0uqWTdweXEfjVH/+i0h+N3diEtHlBvqt/hsV
	j3z9uj0B32qLXi2ctCbJwxP5coyNGv4gL8SvwfLf3EowMUldRhFN9ks/az+H3Cg+ZRNS4Bq/Lwt36
	1ZWUtzY2Oj9sr73Txj5m7Wk6gMJV1qi+UEIJILug51kIExveNOYz3Gmx3+q0peH9NmNjM7NQTUNIS
	5gIvaDoPaaUCwzVnsGsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw66c-00052x-VI; Fri, 09 Aug 2019 14:42:58 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw66O-0004zK-Mo
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 14:42:46 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MkW10-1ibFDP1DAM-00m6H3; Fri, 09 Aug 2019 16:42:37 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org
Subject: [PATCH v2 04/13] serial: lpc32xx_hs: allow compile-testing
Date: Fri,  9 Aug 2019 16:40:30 +0200
Message-Id: <20190809144043.476786-5-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190809144043.476786-1-arnd@arndb.de>
References: <20190809144043.476786-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:SC8nZDGE2BL9UiO9/Fozk5OqQl67V4vDebpaMMEW86kY+4HNvMj
 YKeoq6THCo5lQcI4cDrmklhCT+LWmfdbFN6lCLqNDdUHBRLIJebF4mmnJGvh7mNxIv3ZCwT
 VRRC/RLTDmubB2Xi0BWRSw3kyzrdd4XxldtbAohamPuPtyOMkYMk/BGepJUSdUSyZ8xWeQ/
 KNc6Ys+WF0CLgaVoQH5wA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4Hc4IEz+FE8=:Bi1ycoD9jmGxicFoUUXqr5
 9b/29dRCFDWcYEgVD78D6DLLA8oYjJi1HM1kwFtqAW9rJ0UNlrn1TzbQ9jHY9o3Z2zVS/NOkb
 JqK8vcIejal4Piu9/08+X/Nw8SCu87wa05jNNtjOqbR/YqHPLSKvJ1S3AsnT5xNke/viiMiM0
 FhC2pDBEnDvz2FH+LmvyZLQrjExv9w+hh6KrINZe2YCSIJqPIjz+90LR2WZePDsZVMvvIZVY3
 AofLb7Y85aBRVeQ5SqHLtQwmF+Wdrk/6sNqiOUm44Eo6oUmJLJURRmO9KmiNZYeWF8tE1+8Fg
 2hU2uS0MJuE6ztejja1tqp7zlMck0fN4puh+1AeDr9/h+JAR8FnRGwBiHfVOKXmZRy+WuZkYd
 0WdEdfDDydRMZqM1RM9wkoSx+4l2f6bQsuPe52787AdY6XNEumOIJYB884hCm0zFkxczbXKgh
 VaJ9be149nYemxn0IGfZcdtR52mA1GE9LaiBcCyLWYI2jewdF+Iulw86wDRAt4sUkOEY3gKrm
 2K/0jBKfJ3oDH0hKOJ2W6OKBX6J9NGuhiLgMMf8P79Utgi5f/E2PXnwhO3hAjtrqVVTyh7td9
 80eTZhPkz9J6xoMjACEo+WsPBu4mk0neKFetIC7rib1R82Y/41wT86pbHoE1la6xROckMdSNF
 dZvNS2PHw0GDMRxSFCC5kbRqbD6/wZXPpELBuyE3X0Ot9gCtoP2vjaW1urOioW7W9aaCtQXKy
 NWMoDJ45quKlhemjbD/l8qhcV2xrgjPMTROlJw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_074245_057434_9B5FB5B8 
X-CRM114-Status: GOOD (  12.09  )
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jslaby@suse.com>,
 linux-kernel@vger.kernel.org, Vladimir Zapolskiy <vz@mleia.com>,
 linux-serial@vger.kernel.org, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The only thing that prevents building this driver on other
platforms is the mach/hardware.h include, which is not actually
used here at all, so remove the line and allow CONFIG_COMPILE_TEST.

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Acked-by: Sylvain Lemieux <slemieux.tyco@gmail.com>
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
