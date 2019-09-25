Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BD9BE599
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 21:23:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bXNk2AbrQkGDroy3xQ5pa0kPvfINi/KPnFbbiRKQN1o=; b=Ipn6nkqwV5+cu7
	dnBH6CbE3p90mdPGK88w+u7cvJAscmxmIrapDdph1h5A4PfPypl4SeRF4fisOcNmzopShiNsVFlGs
	6wsF67nrGMUPGKOW6QgRsnBWFLhNaNPo/9e3jr6nOh01S054ZLXsVlJtmPErdF/PBlDXrmOjcCu6n
	e7E23DH/SNeHzlgExF6bxyaiuAIgkdn6LEfJ+oqPQjH33NWzKOJWsLrzz8+QvFtvzbseCRgF7UTkz
	cUBJ6x2WkjbJbf2W8tLdLY+GlD4BASIumhh0GbRp+zOcfe4VLe4FWx02fC203XwHmfRAtjU8GafZQ
	NtlDc3e69zxrKyP3bSWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDCsI-0005lf-B8; Wed, 25 Sep 2019 19:22:54 +0000
Received: from atlmailgw1.ami.com ([63.147.10.40])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDCrv-0005a0-CI
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 19:22:32 +0000
X-AuditID: ac1060b2-7a7ff700000017bd-d5-5d8bbe742e14
Received: from atlms1.us.megatrends.com (atlms1.us.megatrends.com
 [172.16.96.144])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by atlmailgw1.ami.com (Symantec Messaging Gateway) with SMTP id
 D4.CA.06077.47EBB8D5; Wed, 25 Sep 2019 15:22:28 -0400 (EDT)
Received: from hongweiz-Ubuntu-AMI.us.megatrends.com (172.16.98.93) by
 atlms1.us.megatrends.com (172.16.96.144) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 25 Sep 2019 15:22:29 -0400
From: Hongwei Zhang <hongweiz@ami.com>
To: Andrew Jeffery <andrew@aj.id.au>, Linus Walleij
 <linus.walleij@linaro.org>, <linux-gpio@vger.kernel.org>, Joel Stanley
 <joel@jms.id.au>
Subject: [v2, 1/2] gpio: dts: aspeed: Add SGPIO driver
Date: Wed, 25 Sep 2019 15:22:16 -0400
Message-ID: <1569439337-10482-2-git-send-email-hongweiz@ami.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569439337-10482-1-git-send-email-hongweiz@ami.com>
References: <1569439337-10482-1-git-send-email-hongweiz@ami.com>
MIME-Version: 1.0
X-Originating-IP: [172.16.98.93]
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrEIsWRmVeSWpSXmKPExsWyRiBhgm7Jvu5Yg1sHNS3mrF/DZrHrMofF
 /w+7GS2+75/FavF30jF2i6ZDp9gsvsw9xWIx/8g5Vovf5/8yW0z5s5zJYtPja6wWzavPMVts
 nv+H0eLyrjlsFoem7mW0WHr9IpPF+0+dTBate4+wW9yY0sBmsffeZ0YHEY+r7bvYPdbMW8Po
 cfnaRWaP378mMXq8v9HK7nHx4zFmj02rOtk87lzbw+ZxYsZvFo8Jiw4wemxeUu9xfsZCRo+/
 jV/ZPU5M/87i8XmTXAB/FJdNSmpOZllqkb5dAlfGk8afTAVveSrmf25nbGD8ztnFyMkhIWAi
 Ma31DVMXIxeHkMAuJolrF1+zQziHGSVaFjxlB6liE1CT2Lt5DliViEA/o8SCOXPBHGaBrawS
 2w80sYJUCQuYSXybtIIFxGYRUJXY8uALG4jNK+AgMfXZBHaIfXISN891MoPYnAKOEufn3QOz
 hYBqds38zQJRLyhxcuYTMJtZQELi4IsXUDWyErcOPWaCmKMg8bzvMcsERoFZSFpmIWlZwMi0
 ilEosSQnNzEzJ73cUC8xN1MvOT93EyMkXjftYGy5aH6IkYmD8RCjBAezkgjvLJmuWCHelMTK
 qtSi/Pii0pzU4kOM0hwsSuK8K9d8ixESSE8sSc1OTS1ILYLJMnFwSjUwzmFeY/BedquUiE8s
 T/Cvgx0vhT5OFK5JNj9dk8+oMWPHqaMlSS+q41XyQt+/dLO8mmnfO+fwauYk2YrYvZ7nMit8
 z3lckzJ8t/qKxJuJ65vt9sgwvDYW/sy4cXln2+3Xf9+639GtPPXyiWX5sloryfbHxwQko34/
 vL/lm1jOkle96SsjnOZLKrEUZyQaajEXFScCAMb8oHbFAgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_122231_526988_EACE29EB 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.147.10.40 listed in list.dnswl.org]
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
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
