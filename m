Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9134387CEB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 16:42:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YWAW9nU/AsnYrkciTMNDwOTFhzPZb9zf5J2/F85JyHI=; b=oRUF7FtDOJDGSZ
	OZv5vHobrsRSYB0bc/xx7ig6ZHDq0tpf6KDVs8CSqRGGDhy9m1Vde+Ruy8DZtrLqPyjZ46Z0SIce5
	nCX2C+b+1twqZQfnNPecxcbA4qTAh8vOFy56MbrtUcbBqguGfM48QRvoh+f7y9nqcUZ6pmve9nlSp
	WZPzuSI4rWus9oO3G2tjrLtqlAKELkFOCvpUYQpfKEf+3HddtVw6ozdR/ZbYshdSoqgqhtnR/CyO9
	UOTFY7uXRXpiWJ+x22Y+ELw0/uMkcOC68sqUDaekY4csT3mtZsCHnBrUJYOzGmj0TGZkgI50RDmD9
	gNd99hLaZTvU9tJkL6ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw65k-0004Pk-6x; Fri, 09 Aug 2019 14:42:04 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw65O-0004Fi-UM
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 14:41:44 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1Mvbr4-1iD4VT2f4w-00saWn; Fri, 09 Aug 2019 16:41:37 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org
Subject: [PATCH v2 02/13] usb: udc: lpc32xx: allow compile-testing
Date: Fri,  9 Aug 2019 16:40:28 +0200
Message-Id: <20190809144043.476786-3-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190809144043.476786-1-arnd@arndb.de>
References: <20190809144043.476786-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:imKF8CYOdXNLcMsBRk3mkfe2XaXiYZ/dpgIAJ8vRCoyxvlRyj33
 AVF5BJ04yO+4T850DaBd0tsnYRR8Kr57cnSNT3OeGpKfcEBIX8M9GQMwT1IUYdprcSqX4vO
 EeKrYORhADLbzjwUhXrKNiu9yK1kPe1XBmNsZb+rNlS3zJR9ml4+W8sWjKbu1DGbmJqJCp8
 TP+LwRSu/+D+dPieDgwZw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:o+P30devlyk=:ZOux45NQXABh307CDaffwC
 eRRPJf8wFJnTFHt8ABbfXpKy4+2KstsbFkVk7tp+8vg4RTNo+M0qNZuHja9WiuljDwDeeHKcR
 JxyOvwefJYugKbJYpqRg2PBrMHB/XvtsyuqQMKg6MW0mGJk+wUbEB88paGrIS/Z4GIMor3210
 qI/jAwzxrydt6db2oU8rWGakd4MF7/PQKoleMWB6eEL683yBW0UqbgyGETizPP/DAsE3BgaaY
 n1GFH9keXNXLp8Xhf+ZE5mBYr2ExNpKkbKCk5RA9MJQF4T0neuwFC91NWpUMkC4fvpBKNYttN
 DlXWhYa5RA59/nEeBjcnTVwhV0UVR+x1laNjs+CvutXhcstOZLZ4DLnirepeO2IjaKjkTB68E
 WPSCJLJS70sOdynJzhit1m7j49KEN77V/Yk0bExKwvI9+6INzhs/cKpqGC8EkE87qhzOfx1Jw
 VxkvqpnmJjGiEUJVi/fVAv4Izr3dwKSZ+Ahn9ePU0N9HLxPwbFcZoAKs3Ec+3zA5lIuQCzta0
 at21vUSECg93O+CzFZY7g0meK28uC1IVZxzI0gQm8lkt0rXQuLIbK+fJekVelMDCWZF8IwghO
 cu0S6TwolJqo0s/Ne+Zpn138n5DzWwUfAxLpaeBExS5sdoIpkvdiiNDMLIql1FUOR+ONQbviM
 ICGimsocRL3e9CqZnT7W2tc+ve+MFAKwCFQ00cgCy+DbaPUGMxRxv4WBMRhZ2IJCB8oDAdLQX
 VyxbDTMn3knDPVcYN44yMWdFlMgOC1wRYKle3g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_074143_350444_F3B06EE6 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Felipe Balbi <balbi@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 Vladimir Zapolskiy <vz@mleia.com>, Sylvain Lemieux <slemieux.tyco@gmail.com>,
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
 drivers/usb/gadget/udc/Kconfig       | 3 ++-
 drivers/usb/gadget/udc/lpc32xx_udc.c | 3 +--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/gadget/udc/Kconfig b/drivers/usb/gadget/udc/Kconfig
index ef0259a950ba..d354036ff6c8 100644
--- a/drivers/usb/gadget/udc/Kconfig
+++ b/drivers/usb/gadget/udc/Kconfig
@@ -45,7 +45,8 @@ config USB_AT91
 
 config USB_LPC32XX
 	tristate "LPC32XX USB Peripheral Controller"
-	depends on ARCH_LPC32XX && I2C
+	depends on ARCH_LPC32XX || COMPILE_TEST
+	depends on I2C
 	select USB_ISP1301
 	help
 	   This option selects the USB device controller in the LPC32xx SoC.
diff --git a/drivers/usb/gadget/udc/lpc32xx_udc.c b/drivers/usb/gadget/udc/lpc32xx_udc.c
index 5f1b14f3e5a0..defe04d52e6d 100644
--- a/drivers/usb/gadget/udc/lpc32xx_udc.c
+++ b/drivers/usb/gadget/udc/lpc32xx_udc.c
@@ -24,6 +24,7 @@
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/platform_device.h>
+#include <linux/prefetch.h>
 #include <linux/proc_fs.h>
 #include <linux/slab.h>
 #include <linux/usb/ch9.h>
@@ -35,8 +36,6 @@
 #include <linux/seq_file.h>
 #endif
 
-#include <mach/hardware.h>
-
 /*
  * USB device configuration structure
  */
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
