Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F0F7CD93
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 22:02:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pr+O6mq3X9BOFp5YdU68HbgAjHYggG3aP4p/PPSzzLI=; b=otxkllgCkjIymZ
	bqvCBzfH6BprBjAADQgYDRmP5H2u51Yz4hdrcHZdxX/g3iosWP3LLKi+sQ7Bu44QZFumOLUUM7Gst
	tyX2X7YUoRXRUQpSkbxU+4FTzBUPTdLwWc/C3LX5QjGWZiKcFZ9IKQ0l3b4FaWOfCIjfcIu1Xv84/
	HBt+SxMR/nIesNZkiGGDJLs9VhVf7hybeFJCKND1yK9Vp1Ad94pLWIIngZV/bJG416BzMLJE36AMJ
	I62ftW2tXJn/th8urjkUgqk1sEixxKkQqVM2MbpPqxEM2JcnBNl8z7/8GKRbUIGTFJjvsjiN9eqkG
	/U3ggTuSgNqO1Udc+3iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsuoD-0003H0-9R; Wed, 31 Jul 2019 20:02:49 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsund-0002j5-C6
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 20:02:16 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MxHLs-1iGtlI0h4q-00xYiP; Wed, 31 Jul 2019 22:01:44 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org, linux-arm-kernel@lists.infradead.org,
 Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 08/14] net: lpc-enet: allow compile testing
Date: Wed, 31 Jul 2019 21:56:50 +0200
Message-Id: <20190731195713.3150463-9-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190731195713.3150463-1-arnd@arndb.de>
References: <20190731195713.3150463-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:bQO/P7oE1AasL5WRFX8A8Iw79gwR2TUWl5KOlZaoQbsLC6qyZ3M
 BqjvpoU3FzeJMaTmEyNZPpDYQsGf01s7vM6mqVbCCqYpR+VH9U3/oy0xO+7d/XqDKrZRScs
 GKPYEfqcPhZKIPwd/VF2tMUAfS5j7EliScirqrFjPu8WusX9n+IWZVIlecysf5C6EC7vNJV
 Y+CHXjmLXL6XBHVmlDthg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:wgW8X3aAw54=:zzSiZhm815Ou/Nwd6C9iLM
 8pGGZZ1MNm+TJLjXzf5qAu/AU+nMBlFA8b+4jZEd1w9esMERStkBfjfc+hCYa4fvIVEGyrOY2
 rgAgi4qKEbp8czy7oAIf1f62ZHCdRci+Wx21+sgjylY/7OD9KMwh40IjuRtC5KIsOflIjss63
 2ny0LZzhcyhnMnSt66utWr6Py58xbkNhZYgxX2fejPF1IW734b5FLedEO34kKt0kqZ34JFOZ/
 4Z9/Fm+TrnN/g7EYnNC+2gnV2/4enSXdUzsNIjPjlEBCPO7VXfFNakW/QZyqg0UYxAPidEN5m
 Qe/0NFGLMWfxGncHijKtiX9XzMqxxIvf4XjGxVSLEdlD0BDUGu6FqiQIKfhMyn1DFk/XbO42/
 82qzSohrF3yATVgLCrSAPqK+sOmomtx5lPd/+rmUhLqAGXFnbsnxQHaIV7OvOmqqTUnETc/kh
 3ef4BZR3TAwakr2EnP5cY3eC0FhJHywe0TBxiRLevIBN2c1CtinvaCxz28sGp28S2SmUbCAy/
 pjkz8586/aXzkaJyvAr5gL76CGT5dDNUXYo1CwW7GWieGTW/P17EAWnJp0jjMSqrYgvBN5WCN
 G2/uUtYXb8yOdCkFMBF+8CWo7hzKHuPjy+oBnUA6SrOJ61t3gb/hYLmoL3OjWWdbIGDPA5w1L
 YaPT07myPbkUcnsdWJKaPeeBaeioX1lnNsZZ+RfngtM1BGJ16w3IOWLg+EgehEy8bW7ev6L/k
 iaOINOy1fT0MDbzlmDp6pVMc3XbEFBEzxk9HUA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_130213_720989_0FA9BB94 
X-CRM114-Status: GOOD (  13.10  )
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
 Guenter Roeck <linux@roeck-us.net>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The lpc-enet driver can now be built on all platforms, so
allow compile testing as well.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/ethernet/nxp/Kconfig   | 2 +-
 drivers/net/ethernet/nxp/lpc_eth.c | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/nxp/Kconfig b/drivers/net/ethernet/nxp/Kconfig
index 261f107e2be0..418afb84c84b 100644
--- a/drivers/net/ethernet/nxp/Kconfig
+++ b/drivers/net/ethernet/nxp/Kconfig
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config LPC_ENET
         tristate "NXP ethernet MAC on LPC devices"
-        depends on ARCH_LPC32XX
+        depends on ARCH_LPC32XX || COMPILE_TEST
         select PHYLIB
         help
 	  Say Y or M here if you want to use the NXP ethernet MAC included on
diff --git a/drivers/net/ethernet/nxp/lpc_eth.c b/drivers/net/ethernet/nxp/lpc_eth.c
index 0893b77c385d..34fdf2100772 100644
--- a/drivers/net/ethernet/nxp/lpc_eth.c
+++ b/drivers/net/ethernet/nxp/lpc_eth.c
@@ -14,6 +14,7 @@
 #include <linux/crc32.h>
 #include <linux/etherdevice.h>
 #include <linux/module.h>
+#include <linux/of.h>
 #include <linux/of_net.h>
 #include <linux/phy.h>
 #include <linux/platform_device.h>
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
