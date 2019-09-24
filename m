Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A57FBD25E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 21:07:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hnbXpoleIxVL7qjg2uBzeGzOuPwtI/CADXZ9kvwc2n4=; b=gAK6S+TpY2w5eA
	u1e5BPsjQa21hLvqmtZCX/xAmE8AtSoTqwEOPNFZMbacOKLYV8QvjagXfyv3Sw3jNWqMluAeGGOc1
	diPfjjl8yow5+/QopXjgenY6bRvsQPOODwZkd6a7nRJPjyo2BYz0PBd+5IsZX83Uo6sMKxVbduc2+
	ymyLmWA3uwHIkwqPaLG2s0R/asWv6nEJMXZlHuYgDRWRLnwCE7ozxnSq/dwtCJZc+UUmz7wYOa776
	ArhdTA99XDWcJgBOWX0y2AU4pb4geCaA9paZIbwE5xZlH9keCt+Up4foh583If99Js3POkkvDPnIg
	IBhZhP4ME05mQeQvZrHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCq9k-0002rs-T7; Tue, 24 Sep 2019 19:07:25 +0000
Received: from atlmailgw2.ami.com ([63.147.10.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCq9T-0002nq-DK
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 19:07:08 +0000
X-AuditID: ac10606f-371ff7000000187d-bd-5d8a695ae257
Received: from atlms1.us.megatrends.com (atlms1.us.megatrends.com
 [172.16.96.144])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by atlmailgw2.ami.com (Symantec Messaging Gateway) with SMTP id
 53.0A.06269.A596A8D5; Tue, 24 Sep 2019 15:07:06 -0400 (EDT)
Received: from hongweiz-Ubuntu-AMI.us.megatrends.com (172.16.98.93) by
 atlms1.us.megatrends.com (172.16.96.144) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 24 Sep 2019 15:07:05 -0400
From: Hongwei Zhang <hongweiz@ami.com>
To: Andrew Jeffery <andrew@aj.id.au>, Linus Walleij
 <linus.walleij@linaro.org>, <linux-gpio@vger.kernel.org>, Joel Stanley
 <joel@jms.id.au>
Subject: [v1, 1/1] gpio: dts: aspeed: Add SGPIO driver
Date: Tue, 24 Sep 2019 15:07:01 -0400
Message-ID: <1569352021-6383-1-git-send-email-hongweiz@ami.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [172.16.98.93]
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprJIsWRmVeSWpSXmKPExsWyRiBhgm5UZleswbwDchZz1q9hs9h1mcPi
 /4fdjBbf989itfg76Ri7RdOhU2wWX+aeYrGYf+Qcq8Xv83+ZLab8Wc5ksenxNVaL5tXnmC02
 z//DaHF51xw2i0NT9zJaLL1+kcni/adOJovWvUfYLW5MaWCz2HvvM6ODiMfV9l3sHmvmrWH0
 uHztIrPH71+TGD3e32hl97j48Rizx6ZVnWwed67tYfM4MeM3i8eERQcYPTYvqfc4P2Mho8ff
 xq/sHiemf2fx+LxJLoA/issmJTUnsyy1SN8ugStj4pb9zAXvxSrmf5jO3MA4T6iLkZNDQsBE
 4kHrLNYuRi4OIYFdTBL7PxxlgnAOM0p8f9DOBlLFJqAmsXfzHLCEiEA/o8SCOXPBHGaBrawS
 2w80sYJUCQuYSfy4voURxGYRUJW4/3QpcxcjBwevgL3E3ANREOvkJG6e62QGsXkFBCVOznzC
 AmIzC0hIHHzxAiwuJCArcevQYyaIegWJ532PWSYw8s1C0jILScsCRqZVjEKJJTm5iZk56eVG
 eom5mXrJ+bmbGCHRl7+D8eNH80OMTByMhxglOJiVRHhnyXTFCvGmJFZWpRblxxeV5qQWH2KU
 5mBREuddteZbjJBAemJJanZqakFqEUyWiYNTqoFx4/ULpzZMeppaYRe75IJeVuHe9497rhuU
 11h8V7YW9b7FtjU9l+vcuRX6xyvEi4IyHnVunfDr7fXSqXw7J04umtvC/fBc2wZOg/mnX5q+
 qNOs03ubd4Kxav/+bPtF0eeyljvFz2//5yh5t/xog6Kyvl2mVxrvNflgJlbx00r+KgqffE4b
 KLxUYinOSDTUYi4qTgQACJ9vhawCAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_120707_518851_7CFFA4DD 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [63.147.10.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linux-aspeed@lists.ozlabs.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Doug Anderson <armlinux@m.disordat.com>,
 Andrew Morton <akpm@linux-foundation.org>, Hongwei Zhang <hongweiz@ami.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add SGPIO driver support for Aspeed AST2500 SoC.

Signed-off-by: Hongwei Zhang <hongweiz@ami.com>
---
 arch/arm/Kconfig                 |  2 ++
 arch/arm/boot/dts/aspeed-g5.dtsi | 16 +++++++++++++++-
 drivers/gpio/Kconfig             |  8 ++++++++
 drivers/gpio/Makefile            |  1 +
 4 files changed, 26 insertions(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 2436021..c9f08ab 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -1460,6 +1460,8 @@ config ARCH_NR_GPIO
 	default 416 if ARCH_SUNXI
 	default 392 if ARCH_U8500
 	default 352 if ARCH_VT8500
+	default 312 if MACH_ASPEED_G5
+	default 304 if MACH_ASPEED_G4
 	default 288 if ARCH_ROCKCHIP
 	default 264 if MACH_H4700
 	default 0
diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
index 00f05bd..85da7ea 100644
--- a/arch/arm/boot/dts/aspeed-g5.dtsi
+++ b/arch/arm/boot/dts/aspeed-g5.dtsi
@@ -311,7 +311,7 @@
 				#gpio-cells = <2>;
 				gpio-controller;
 				compatible = "aspeed,ast2500-gpio";
-				reg = <0x1e780000 0x1000>;
+				reg = <0x1e780000 0x200>;
 				interrupts = <20>;
 				gpio-ranges = <&pinctrl 0 0 232>;
 				clocks = <&syscon ASPEED_CLK_APB>;
@@ -319,6 +319,20 @@
 				#interrupt-cells = <2>;
 			};
 
+			sgpio: sgpio@1e780200 {
+				#gpio-cells = <2>;
+				compatible = "aspeed,ast2500-sgpio";
+				gpio-controller;
+				interrupts = <40>;
+				reg = <0x1e780200 0x0100>;
+				clocks = <&syscon ASPEED_CLK_APB>;
+				interrupt-controller;
+				ngpios = <8>;
+				bus-frequency = <12000000>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&pinctrl_sgpm_default>;
+			};
+
 			rtc: rtc@1e781000 {
 				compatible = "aspeed,ast2500-rtc";
 				reg = <0x1e781000 0x18>;
diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index bb13c26..e94f903 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -120,6 +120,14 @@ config GPIO_ASPEED
 	help
 	  Say Y here to support Aspeed AST2400 and AST2500 GPIO controllers.
 
+config SGPIO_ASPEED
+	bool "Aspeed SGPIO support"
+	depends on (ARCH_ASPEED || COMPILE_TEST) && OF_GPIO
+	select GPIO_GENERIC
+	select GPIOLIB_IRQCHIP
+	help
+	  Say Y here to support Aspeed AST2500 SGPIO functionality.
+
 config GPIO_ATH79
 	tristate "Atheros AR71XX/AR724X/AR913X GPIO support"
 	default y if ATH79
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index a4e9117..bebbd82 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -32,6 +32,7 @@ obj-$(CONFIG_GPIO_AMD_FCH)		+= gpio-amd-fch.o
 obj-$(CONFIG_GPIO_AMDPT)		+= gpio-amdpt.o
 obj-$(CONFIG_GPIO_ARIZONA)		+= gpio-arizona.o
 obj-$(CONFIG_GPIO_ASPEED)		+= gpio-aspeed.o
+obj-$(CONFIG_SGPIO_ASPEED)		+= sgpio-aspeed.o
 obj-$(CONFIG_GPIO_ATH79)		+= gpio-ath79.o
 obj-$(CONFIG_GPIO_BCM_KONA)		+= gpio-bcm-kona.o
 obj-$(CONFIG_GPIO_BD70528)		+= gpio-bd70528.o
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
