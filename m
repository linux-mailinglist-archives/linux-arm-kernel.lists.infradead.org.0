Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DBA97CD59
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 21:59:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dfGFxXCJ0IcKdIcbQTMTIgglIxX+ywXeRdj04O6zMNQ=; b=dTZJ5EZUnmBifo
	6GWH0Bq2bGkyKAmpQW7poybAcM3HRYJapuPjd8lfdtAYJ0Tb2F1peNUxqH5IOuRk2AkTC5xLhimQW
	ekKM46mJexK7+9WtL8b5TSpBUnOLOeTpJ0+F9QX3I6P+LXYMz6zh5tVgQHtpRQ0CfBR9a0ZmCuW7Z
	MAyUhxTddUMKujnb2Kqu0OFUpcVspgPGpdBhp1gOyKxsnPywSqQ1uYc16JEDiPsuyuZwEfHChmS1l
	D8MG0VdI0/EJ0VG3b5jbseS7//VfxD2jwHZYvvj/iYEJ/one/CuNKGve520MZFIv0i1CfrsCGp+gv
	B23nW8I6YbfD0Umotc6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsukX-0008IU-Gv; Wed, 31 Jul 2019 19:59:01 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsukP-0008IA-N7
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 19:58:55 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1N1u2b-1iL0Pk2PAf-012FfM; Wed, 31 Jul 2019 21:58:21 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: soc@kernel.org, linux-arm-kernel@lists.infradead.org,
 Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>, Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 02/14] usb: udc: lpc32xx: allow compile-testing
Date: Wed, 31 Jul 2019 21:56:44 +0200
Message-Id: <20190731195713.3150463-3-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190731195713.3150463-1-arnd@arndb.de>
References: <20190731195713.3150463-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:owqhEQqZQOrw+U7JIsdudcOU30aZRR/RpfOBJiDYVq8lo61ITu6
 OTJHhNMtclaN1XkeL+A2wFbBwyqNYCidX1WsSXk3+KA/6veguARtCTAz1ZYlhjxOmuApKns
 AuZqlZnGwsNqxk5F3v4MWhYGZB7bO18wtIZMCv99c9HjUdYOkCKOZGk9CoJxCPqMFHPItHh
 renz7Xxq+4kx8oJTEj0rA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Eh8z57l/pNI=:mdadUktRLMFk1jL652Ne7P
 zFXuP4XrT3hRm8cGQ1BHQgD8pF33SdZrY2CeyvfCTaJL3XiMrWJlhYVR9/OPlDkIHqDaLQf05
 YSL6GiZFkj/XCDvN06vXcqVRCng/jk83sJH3teo1qmVc0vrX9/pUnEIvkcXPERea0ha3RFktU
 UXb17rrjEwJs6NR9YDO3zMVFN6WZUE6Yo5UbLZ3qBCvu1yCt5hhjyPSDahn8s4TtOGm9KlGwG
 wlrAaenzh59sLnunl4zylxv8iV/B0MiIbQ5dj01i02AIT16MbNf1YsMQkhry0/AlaIiNQUxZA
 EehYeeC7x2JEIwuvzAB3KSbmKSnraGIelW2iIXDvqU+yObF3KJa0xH/z6CXbo8SN10kL31zZ7
 WUMoKPzLtgIpVrPtErO5npwMdgV1FM8rHxmFbF7Qa/v2h8l/gwi6hGSQXzgnTEt/GQ0yMyycC
 /odZo/ga1mREGA/9yc8PcSanC4lE8ERC/kepk7fFsc0kOpzh9v5NBE0Qcw1u51XNGbNomOUAl
 pjdXdQFD2yHEFm83pb9MAfq1ms9NrQouZnUVDXhB/oCpuktZrQwAzH2OoaKx5btmN8OSqmpV+
 XALoHKf2pQ8OLObelggBk1g7puywQFXIHlO+yPoYaPI1KdqIy+1g1kDW2Uan5E/Lf5Z9dKB+h
 m+Y1f8dt6M2err8NjDHsx6rDyCKDMCN3Sz4QOl3JV9qVnrkQNdmjE1szvgBdAD/rFtX2m4p3o
 3tNgu7MGtzFonhmt/Qe34m648mNxk6UJQabXqA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_125854_041804_B35C0D76 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
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
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
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
 drivers/usb/gadget/udc/Kconfig       | 3 ++-
 drivers/usb/gadget/udc/lpc32xx_udc.c | 2 --
 2 files changed, 2 insertions(+), 3 deletions(-)

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
index 5f1b14f3e5a0..4d8847988a50 100644
--- a/drivers/usb/gadget/udc/lpc32xx_udc.c
+++ b/drivers/usb/gadget/udc/lpc32xx_udc.c
@@ -35,8 +35,6 @@
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
