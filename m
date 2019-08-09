Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF9987CE8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 16:41:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mDtQGrbF60Ngv5PSvXW4b42UGjcEI7nfzQ8ltpFXpB0=; b=uNS8dK6iApUVt6
	q9BtR0NV+DWJ9lxnT0n+WlFRU/MrAhjqKmRB1a+ju1GR4FxrNB1v3ZFwtsrvz7LvKJKTr429tHLMe
	79zH38uLomGO2tWTbMXgxYnF19mNrfj8bzFpK1lX6b4OJRPUweJDw0YbOTT1MKI4q1EfvM7pV8LmT
	RdbfrTjX0g99c7arPMeiOAP8n40Nbh7xp9Ezidb+yPsy9jaJvL2EqQdXgfQtGbqRRjLmcxiD3W+Az
	9cqse3UsWV2gBP/CXjWd3qFUTgKWqOYAq2iTpArCKZZ/Rv/f7fmrUvAlf4bVy+KtGKHMiaPsNHwkf
	4PfEs0TC5bump2augjjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw65V-00048w-Vo; Fri, 09 Aug 2019 14:41:50 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw65C-000415-IV
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 14:41:32 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MV2Sk-1hmqRB0T3u-00S5Pl; Fri, 09 Aug 2019 16:41:23 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org
Subject: [PATCH v2 01/13] usb: ohci-nxp: enable compile-testing
Date: Fri,  9 Aug 2019 16:40:27 +0200
Message-Id: <20190809144043.476786-2-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190809144043.476786-1-arnd@arndb.de>
References: <20190809144043.476786-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:AxvKy6jf+t9d21xZPdfYBHuuoe857kj7IZxWzWdJ5LgVwyC0plW
 N6v6x9Z00yOXwvoWPiV5buUcxhC7491l21ZEe9ZhO/frzZGRWBRGEtxAgjyECNA0rqmcq9k
 qAkEMP1R6koIhhI7cMjIF86JqouP/hAVmc3zysqtAlmNOiYXxl3nl9Ohf3PxuG4WFdO4T6V
 yZnJxYGQpu+NzxMGEWryA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vnpa/i6Pl7A=:Z8kSVbOHBcIByVsErk7lNg
 Wy/jyu6PzaL2faqwyCBwVD4rWeBx+r/t+GSSyMt/Fa/c6ESek2LtBW2K6fPkBtsNoM2c5lH6w
 Xe/Y0bLHLxUyhoTjzGjm8pIXTuAGKe8r1Shcr0AofFlt2GR9Gcxs/WjrU1ukmH4T+rq9UNxXJ
 yWvAzju0cr0EJk/sz/XnFL+0bX75TktvnIoGnNDu4Rtqk/fgj8YFggpH9+04/n5Ri5P3Wq+fv
 uYLmrn+hHD7QQa6VIh5SvhqRNkQaoagTJHV6QjTJ3C0KHYXjn7+Gykj1rJvUY8AWJid3N3d80
 iEAzVt2i/UhXyj84HPEgA+EapGcSXAf9v4tPZALZaUzjK0m3hpw0mvFpkSV/I+CCzQo0XWJ5t
 zwg67JeZFvVJuliDkaBW7dAeNkZN4/pRZCUpWtYH7i1gp/KMtE+PIbwwp0DI1qQJkCzYYWrsG
 v3k2P2DXqD7PP9liCvOxA5n20zC2BmudSavUt/uo1xYtKmC6u6pWsCcclLRsyxu62+Jq/z+C3
 rB5eyLzGmteCDmGPRo/Gn7a+iHO/ZqqQgtlmNhBk+b4x2y/kPLEyQ8bvI0TdL83LJceYg3VnD
 SM+d6RnIDLkimjhIVYA7H4OUQQUtH2BRFL3lcoq5x7xxau3rgbKYFgc3X5iUiRJog50xL04U/
 Jqy6JmOaWtM+3PfJmjNtWKmy+IEnztgLAEMgU4yHAGCpmYfBDdlEvfUrz7fW9lnbatFdeOjGH
 pPc0iQtZ8VZNHbm5ycRuzPfWoQxIeANRCiWZyw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_074131_042138_553E8281 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
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
Cc: Felipe Balbi <felipe.balbi@linux.intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vladimir Zapolskiy <vz@mleia.com>,
 Alan Stern <stern@rowland.harvard.edu>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 linux-arm-kernel@lists.infradead.org
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
