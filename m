Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E883CDCA10
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 17:59:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QD89pgHVp/RsQWerXOA0xEhijYFWM7xL5fCPRnYasTI=; b=n49ctZ6UjG8sq9
	/1i0kv62VxZ/9ryqPbyu8xGJnNrh2PC2ZLmN7rdQLLH91d3TdUGsiBsSNFnYMPEEWTOFcYMQur3yr
	IYW3XEqSZkL99j4kUqnfiyeGktCbXpu62SUu8/e43IDU7xKLoU8gsLWtwJ+/3UEE+sciBB3TD9Lyt
	z022NqAWIXRh2tKxnUPn+C8Eq/u3xBwpIh0HAkBUlNuB5+m0kPWA1HRQ5hWhFTbRbO1wXOL8VMoC2
	+80YxoBVfdBL4+7Tzpnrci9L6s1VxSDvqkJjGsegkpFiTOPYYJAr+q807LqZNKqwptDMhJcVWJqWj
	DBoUUkKyCiBN8WGk3Y/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUeS-0000O0-Va; Fri, 18 Oct 2019 15:58:52 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUWY-00083r-Ma
 for linux-arm-kernel@bombadil.infradead.org; Fri, 18 Oct 2019 15:50:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fOR4nKa8hcifKUGSnUJ4w3eYP5WQo0z+Gl4oOqzt/go=; b=eBfEEweTweoXzddNcvdYRkociZ
 3o05KenLxDj+WE7GK/Vp/QjMVVBtcfG50F5Hvcn5GmV3lI1yze++hJg3W9qP1PvQumkB/A8dvyZ9L
 xOnsxifVQv2/d0D6B2yv2cXbflwEMz5yLR2x1D/FlCy+PumJsbAjetYdREesno2k1q4JSudy2CCiL
 3ROLn0H92xURKxRqDpBBqWRU81rtwpf19qpfGK7OHn3lnIr3Va0FwVxrBH1uQtkmH7rSi4luUhhCg
 TFz9JZZh0113u4lhj52Fs/iQyTpurgx+DvDGVnef6iO2q9nr5mf5YiCXt3N7OshpJDXLyOj3xHpcB
 /Ry2VlEg==;
Received: from mout.kundenserver.de ([212.227.17.13])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUP5-0002CA-Og
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 15:43:01 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MNKqC-1ifkHC3J4k-00Orkl; Fri, 18 Oct 2019 17:42:24 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH 14/46] ARM: pxa: use pdev resource for palmld mmio
Date: Fri, 18 Oct 2019 17:41:29 +0200
Message-Id: <20191018154201.1276638-14-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191018154052.1276506-1-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:9s9xjur6L83/idKD1YLwArjJyhyl8Cp7qlwCvaEgeO21rFy+Txo
 lkGteYOQn0MBqAMwkJi0uRdkZLsfImWHPdYLE7PLW21Sd3U+j5xmJVqizean3Yo6tGIyt4j
 b1FTAdx0jX4nBBwGdwJ6o8pC+wzWxEhYJyN0mswYrz7qjItCmmaKqVNf3OcjWcOw+Au25rz
 dMaGUYwa0lBQt8U9W94dw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:CGnzZHc3OD0=:1UpnXV4WJndTPk7c3U4mVT
 58XASwopJp2Pwtju3qRPQf7vELH43tB/mnU3w9S1XGNK2fKElPNqbLdX9BoaoFCn2E43lKsGF
 1k7jJBif/36MpjBUMzqOuHQkJSUwfurbA0nLOTsKz+dvxxR+s/E9dJrb2FN3K7J1oRAl0kEQQ
 UMjGv9xBTAxrHHVMoHxIGTqBx6VqHLXKW4ntZPFJl8OMnxHeJp5J7qXk0xS4UhrE1mOeoxUtR
 xmWF+qAp/KSrMZvQOYHiuRjNN7QgR6GVaCBLcVEN2wvHLml4jsRtWWJdcgvrwzioOGFjiwlh6
 s+gEbfWpIHBId2plMIweDQmCWORT+CRxcWsEYEzcrXFDdyA092E6OqKzicnGMuw+gL2I6qrLI
 osG4LuHgVUkphSW7aOg4kBviIGnWDjQjzzU7njddgQ6SgzEJiDSt14MsT0q8bGY/RcMrPm8/+
 HVDQwKwSmGR09sO96wMI5oKvzXwZeW1HFYATOlw9bbgTKpnYiQ2f79SbVO2YHcKjFulZsXCiI
 pFUxCUAJ1J40OGkqr01masMQecvHN+gbyt0L4r5M2KVdZ5Hcw52J9lFNGrKIkvImIaNIQL4ZJ
 lZCQBtZ1r3RcCRgxeJNWEOFkZbEfHV7beKkonkUlPpMbgur3MAu1PSMPDciZw8+4CCZoRU4Ll
 4NZ/jDpVOVwFdDHEsY21mQW07Qhxy942y0cUYlEWYZnmVoYwKF/WtXdeX99tqzk2meV657IHA
 n6/zsOBjfI2E3hIN08dSwgB8KAS8R4OOti2DQcxhPCzraPjhD+zU6E6L4rpqqFZ0xfT+QBuUk
 XeACZjHjrhwQ+lau79HXI35qmO1otzkjAuHOFjjfMIHDYmjuBTkWdV+2NJEf5cR8G1OOTg1JR
 FDDTyCTRoc9JoCXNmHbw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_164259_851973_02148B6F 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
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
Cc: Jens Axboe <axboe@kernel.dk>, Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-ide@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The palmld header is almost unused in drivers, the only
remaining thing now is the PATA device address, which should
really be passed as a resource.

Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Cc: Jens Axboe <axboe@kernel.dk>
Cc: linux-ide@vger.kernel.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-pxa/palmld-pcmcia.c             |  3 ++-
 arch/arm/mach-pxa/palmld.c                    | 12 +++++++++---
 arch/arm/mach-pxa/{include/mach => }/palmld.h |  2 +-
 drivers/ata/pata_palmld.c                     |  3 +--
 4 files changed, 13 insertions(+), 7 deletions(-)
 rename arch/arm/mach-pxa/{include/mach => }/palmld.h (98%)

diff --git a/arch/arm/mach-pxa/palmld-pcmcia.c b/arch/arm/mach-pxa/palmld-pcmcia.c
index 07e0f7438db1..720294a50864 100644
--- a/arch/arm/mach-pxa/palmld-pcmcia.c
+++ b/arch/arm/mach-pxa/palmld-pcmcia.c
@@ -13,9 +13,10 @@
 #include <linux/gpio.h>
 
 #include <asm/mach-types.h>
-#include <mach/palmld.h>
 #include <pcmcia/soc_common.h>
 
+#include "palmld.h"
+
 static struct gpio palmld_pcmcia_gpios[] = {
 	{ GPIO_NR_PALMLD_PCMCIA_POWER,	GPIOF_INIT_LOW,	"PCMCIA Power" },
 	{ GPIO_NR_PALMLD_PCMCIA_RESET,	GPIOF_INIT_HIGH,"PCMCIA Reset" },
diff --git a/arch/arm/mach-pxa/palmld.c b/arch/arm/mach-pxa/palmld.c
index d85146957004..d821606ce0b5 100644
--- a/arch/arm/mach-pxa/palmld.c
+++ b/arch/arm/mach-pxa/palmld.c
@@ -29,8 +29,8 @@
 #include <asm/mach/map.h>
 
 #include "pxa27x.h"
+#include "palmld.h"
 #include <linux/platform_data/asoc-pxa.h>
-#include <mach/palmld.h>
 #include <linux/platform_data/mmc-pxamci.h>
 #include <linux/platform_data/video-pxafb.h>
 #include <linux/platform_data/irda-pxaficp.h>
@@ -279,9 +279,15 @@ static inline void palmld_leds_init(void) {}
  * HDD
  ******************************************************************************/
 #if defined(CONFIG_PATA_PALMLD) || defined(CONFIG_PATA_PALMLD_MODULE)
+static struct resource palmld_ide_resources[] = {
+	DEFINE_RES_MEM(PALMLD_IDE_PHYS, 0x1000),
+};
+
 static struct platform_device palmld_ide_device = {
-	.name	= "pata_palmld",
-	.id	= -1,
+	.name		= "pata_palmld",
+	.id		= -1,
+	.resource	= palmld_ide_resources,
+	.num_resources	= ARRAY_SIZE(palmld_ide_resources),
 };
 
 static struct gpiod_lookup_table palmld_ide_gpio_table = {
diff --git a/arch/arm/mach-pxa/include/mach/palmld.h b/arch/arm/mach-pxa/palmld.h
similarity index 98%
rename from arch/arm/mach-pxa/include/mach/palmld.h
rename to arch/arm/mach-pxa/palmld.h
index 99a6d8b3a1e3..ee3bc15b71a2 100644
--- a/arch/arm/mach-pxa/include/mach/palmld.h
+++ b/arch/arm/mach-pxa/palmld.h
@@ -9,7 +9,7 @@
 #ifndef _INCLUDE_PALMLD_H_
 #define _INCLUDE_PALMLD_H_
 
-#include "irqs.h" /* PXA_GPIO_TO_IRQ */
+#include <mach/irqs.h> /* PXA_GPIO_TO_IRQ */
 
 /** HERE ARE GPIOs **/
 
diff --git a/drivers/ata/pata_palmld.c b/drivers/ata/pata_palmld.c
index 2448441571ed..400e65190904 100644
--- a/drivers/ata/pata_palmld.c
+++ b/drivers/ata/pata_palmld.c
@@ -25,7 +25,6 @@
 #include <linux/gpio/consumer.h>
 
 #include <scsi/scsi_host.h>
-#include <mach/palmld.h>
 
 #define DRV_NAME "pata_palmld"
 
@@ -63,7 +62,7 @@ static int palmld_pata_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	/* remap drive's physical memory address */
-	mem = devm_ioremap(dev, PALMLD_IDE_PHYS, 0x1000);
+	mem = devm_platform_ioremap_resource(pdev, 0);
 	if (!mem)
 		return -ENOMEM;
 
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
