Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D06519DD6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 15:09:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eCaeQmAZR3kSz/3ipw5srTTQLVUnBJ+q2s/a6Zk7PtY=; b=DF3RJlkZsGw4tu
	t+hfnt8uA/OyuUm453ff3TD5yZht9wbXTh5nxxTTDn++bwkEAVgUxqza6WnKjlUdKlFQmIx6gXsmJ
	2fP0y5i3tvfZ9SImsUvlgk4N1d2SH12Lt23ACDklra2BD0znlJpxanWv1GkzIuFXlgz701ziJSrqZ
	nD7qIT8gSdbYVRl0eIV8MZtbyIKKm32Sk3uz1dRgDGBRMcO14LgfT+RwVa/3Uw0Qhdm436C3f4shR
	VANLSXl4hF/Moyk/7lXfFKvjycYnSxs1RmgdTDL4Xwf9r//UwbXJhFSanskuEDFy8IS0y9+IBgpSz
	N04ZOyE5JHSPIEHi3E8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP5H7-0002Gr-2U; Fri, 10 May 2019 13:09:21 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP5Gz-0002G4-Fr
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 13:09:14 +0000
X-Originating-IP: 109.213.220.252
Received: from localhost (alyon-652-1-77-252.w109-213.abo.wanadoo.fr
 [109.213.220.252])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 9ED5FE0015;
 Fri, 10 May 2019 13:09:02 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Vladimir Zapolskiy <vz@mleia.com>
Subject: [PATCH] ARM: dts: lpc32xx: Revert set default clock rate of HCLK PLL
Date: Fri, 10 May 2019 15:08:55 +0200
Message-Id: <20190510130855.4263-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_060913_680840_7FF43DD4 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sylvain Lemieux <slemieux.tyco@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit c17e9377aa81664d94b4f2102559fcf2a01ec8e7.

The lpc32xx clock driver is not able to actually change the PLL rate as
this would require reparenting ARM_CLK, DDRAM_CLK, PERIPH_CLK to SYSCLK,
then stop the PLL, update the register, restart the PLL and wait for the
PLL to lock and finally reparent ARM_CLK, DDRAM_CLK, PERIPH_CLK to HCLK
PLL.

Currently, the HCLK driver simply updates the registers but this has no
real effect and all the clock rate calculation end up being wrong. This is
especially annoying for the peripheral (e.g. UARTs, I2C, SPI).

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 arch/arm/boot/dts/lpc32xx.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/boot/dts/lpc32xx.dtsi b/arch/arm/boot/dts/lpc32xx.dtsi
index 20b38f4ade37..a49c97e5a38a 100644
--- a/arch/arm/boot/dts/lpc32xx.dtsi
+++ b/arch/arm/boot/dts/lpc32xx.dtsi
@@ -323,9 +323,6 @@
 
 					clocks = <&xtal_32k>, <&xtal>;
 					clock-names = "xtal_32k", "xtal";
-
-					assigned-clocks = <&clk LPC32XX_CLK_HCLK_PLL>;
-					assigned-clock-rates = <208000000>;
 				};
 			};
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
