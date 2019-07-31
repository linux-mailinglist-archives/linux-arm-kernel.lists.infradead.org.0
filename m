Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 767EF7CD52
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 21:58:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mDtQGrbF60Ngv5PSvXW4b42UGjcEI7nfzQ8ltpFXpB0=; b=o5pSfY7/SPKfrK
	kUPoc/y7A2LZcaZ92Po7ePZnbjh5mU38fmgViesPlrFefevb3AKT3KaotbDiovfsKr1Wx/gZ03Olb
	qaTcIkQRkZqd4MXpiUgNUB3uzTp0iV5KVF5NXtUY/FjCnVgS9M/qrlJtLXVnEp1a1cjny2aaN2dao
	nIa0JrZbJCbruRE31+DzPIB0sEKC2BVW6AjV/Iypwd7KEIRnjo9FAzpqhc+psqJGxffyWfLisA9gT
	TJrxK2NoOmiSrlp8+tpmuza1NPjlTtsZXGGZdIxrIE3Cz8XsPCxZgMr41iseUEQ3ZpHXrFHdhCXmo
	eZYmKUePO7tRl2aJaL7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsuk0-000836-QQ; Wed, 31 Jul 2019 19:58:28 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsujt-00081l-OC
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 19:58:23 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MREqy-1hgjWs14cO-00N7VN; Wed, 31 Jul 2019 21:57:50 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org, linux-arm-kernel@lists.infradead.org,
 Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alan Stern <stern@rowland.harvard.edu>
Subject: [PATCH 01/14] usb: ohci-nxp: enable compile-testing
Date: Wed, 31 Jul 2019 21:56:43 +0200
Message-Id: <20190731195713.3150463-2-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190731195713.3150463-1-arnd@arndb.de>
References: <20190731195713.3150463-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:Y9P2ZZ0tUv+u7UP+ySO48Qnisfdw/BPCHBVVrPVOhMR0se6XHtZ
 /rVucQltL2fuAeI04etj2w+UKbl8qnEoBbumQEN4+999lkM3I2ap2LhDhPPYCU+sPUiSn9C
 MHqmRZQQCJodcJVkIaRsJz/aHzlJ2qbDtR9NKGZoXdpYt9iNJyi2kjLzGDf3w4RZjG9+E0D
 3y12ssqwzFQKPPcwF8qWQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Xo1stquwtQs=:bl7JhWbnrGGzdDgrJPO8Kj
 DFy2wWP0ZHZ9IanjfpKj7idAUI1oh8dwC6+KdJvb4LHeY1JtZMKcx63mjHAi686NYHgQ8VVTE
 qpvSBbWGUYS5+bYWsQ/4laOaF1bNS8KywD6IBggqWVu/qHZqfq9eI1VEV6NpVr5g5MyaMj1IH
 P1wdZBUDAvXz+mDSgg7cQloD/0mVegg6up9JQIRaNzmyYHPSzsKpv8GSHgQBiMwAmeah7yIaO
 cZfZOQzu/09Y4lqBFz/YeeiIARk7oD3Pa0WQbjRh+AZOmhCQaBCG4OrJn3aq3qPwJeOM0Hv1K
 KKSuKJKjGXmywjGRQ29Orr90FifnUh8cq1ttCAtvmbagDR63yrU64szUpPnzWtecaWIRp6s5b
 vTO1+amooJrMidahTJqQKSHM2fx4r9Sr5EmLoCZv+/c9BPTs+f02+pADSmTAUS22Fgv+0jaGt
 4HQm2+tHlytUCew5ukF92am1YnKG10BWAYbLXeG2MH8pUFBmgRRVR7ilL7WeTx2Gedk/V79ct
 uGd8u0N8BHw/0ZucXrPbX+CiYkje/6ZXb3B2XMt6A0XjEX+fg0JP5yhXoUELaqnft5n+Wvivf
 b1eeZZbdGV+ibHimys+Ct4FUkEzW13+8qoPTMA6tfQrU+zhiUJvNpnzkTBP7V31ZHaVtkPotD
 0n8Ep6f3eWAW9zElHMZFjMZoVXqmIZUOH9/ZHQqRINOgvWQfv5Zqa7S52aDmMcB7cQFIxgl+w
 blDIwv7/7PJz7UoT+quSvgJ675iI9iAKHP+p6g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_125822_077793_C80E155E 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
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
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-serial@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Guenter Roeck <linux@roeck-us.net>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver hardcodes a hardware I/O address the way one should
generally not do, and this prevents both compile-testing, and
moving the platform to CONFIG_ARCH_MULTIPLATFORM.

Change the code to be independent of the machine headers
to allow those two. Removing the hardcoded address would
be hard and is not necessary, so leave that in place for now.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/usb/host/Kconfig    |  3 ++-
 drivers/usb/host/ohci-nxp.c | 25 ++++++++++++++++++-------
 2 files changed, 20 insertions(+), 8 deletions(-)

diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
index 40b5de597112..73d233d3bf4d 100644
--- a/drivers/usb/host/Kconfig
+++ b/drivers/usb/host/Kconfig
@@ -441,7 +441,8 @@ config USB_OHCI_HCD_S3C2410
 
 config USB_OHCI_HCD_LPC32XX
 	tristate "Support for LPC on-chip OHCI USB controller"
-	depends on USB_OHCI_HCD && ARCH_LPC32XX
+	depends on USB_OHCI_HCD
+	depends on ARCH_LPC32XX || COMPILE_TEST
 	depends on USB_ISP1301
 	default y
 	---help---
diff --git a/drivers/usb/host/ohci-nxp.c b/drivers/usb/host/ohci-nxp.c
index f5f532601092..c561881d0e79 100644
--- a/drivers/usb/host/ohci-nxp.c
+++ b/drivers/usb/host/ohci-nxp.c
@@ -29,10 +29,7 @@
 
 #include "ohci.h"
 
-#include <mach/hardware.h>
-
 #define USB_CONFIG_BASE		0x31020000
-#define USB_OTG_STAT_CONTROL	IO_ADDRESS(USB_CONFIG_BASE + 0x110)
 
 /* USB_OTG_STAT_CONTROL bit defines */
 #define TRANSPARENT_I2C_EN	(1 << 7)
@@ -122,19 +119,33 @@ static inline void isp1301_vbus_off(void)
 
 static void ohci_nxp_start_hc(void)
 {
-	unsigned long tmp = __raw_readl(USB_OTG_STAT_CONTROL) | HOST_EN;
+	void __iomem *usb_otg_stat_control = ioremap(USB_CONFIG_BASE + 0x110, 4);
+	unsigned long tmp;
+
+	if (WARN_ON(!usb_otg_stat_control))
+		return;
+
+	tmp = __raw_readl(usb_otg_stat_control) | HOST_EN;
 
-	__raw_writel(tmp, USB_OTG_STAT_CONTROL);
+	__raw_writel(tmp, usb_otg_stat_control);
 	isp1301_vbus_on();
+
+	iounmap(usb_otg_stat_control);
 }
 
 static void ohci_nxp_stop_hc(void)
 {
+	void __iomem *usb_otg_stat_control = ioremap(USB_CONFIG_BASE + 0x110, 4);
 	unsigned long tmp;
 
+	if (WARN_ON(!usb_otg_stat_control))
+		return;
+
 	isp1301_vbus_off();
-	tmp = __raw_readl(USB_OTG_STAT_CONTROL) & ~HOST_EN;
-	__raw_writel(tmp, USB_OTG_STAT_CONTROL);
+	tmp = __raw_readl(usb_otg_stat_control) & ~HOST_EN;
+	__raw_writel(tmp, usb_otg_stat_control);
+
+	iounmap(usb_otg_stat_control);
 }
 
 static int ohci_hcd_nxp_probe(struct platform_device *pdev)
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
