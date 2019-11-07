Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC09F336D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 16:36:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=84nyT16ufJUiNccwxZiiNYhV/Y24H8jkaVsrK1NL3g0=; b=FZVnrcqkvnj6/1
	t0YzraxL55+i1juAKm4UqX/verIQFq7nM2u5hiMR3uZ2y3Clz3fZeULd+0f8TN1dfLDrc6w+xHSB+
	5cfA+HYFKNvuuFIK/1BO9skv/C5N30TrmslQ+zJ60gGQdTcMue4AmzTmmzmjMkion5S2haieQqyxA
	avNqsUnnShoAgdrjhA2AzWJiT7XBr874U3qVLSDVvoipBV5Oicg0E5hjk1JvDH7+qTmZ8fNzDhIvy
	gJdhT4617ngMLeRQ4lQZIkhsVtZ2HmTKPqdhu8iX76eoOpVoop1uawWFfOVAX0NsZ0hp+rlGhYkOd
	r4ftX17C7mL+VogZC8Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSjpH-0003MX-6y; Thu, 07 Nov 2019 15:35:59 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSjoJ-0001OS-Br
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 15:35:02 +0000
Received: from localhost (alyon-657-1-975-54.w92-137.abo.wanadoo.fr
 [92.137.17.54]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 81AAC100012;
 Thu,  7 Nov 2019 15:34:50 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Cristian Birsan <cristian.birsan@microchip.com>,
 Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] ARM: dts: at91: Remove the USB EP child node
Date: Thu,  7 Nov 2019 16:31:28 +0100
Message-Id: <20191107153128.11038-4-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191107153128.11038-1-gregory.clement@bootlin.com>
References: <20191107153128.11038-1-gregory.clement@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_073459_676003_66F1558C 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The endpoint configuration used to be stored in the device tree,
however the configuration depend on the "version" of the controller
itself.

Then the EP child node are useless and describe as deprecated in the
documentation binding: remove all the nodes from the SoC device tree
file.

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 arch/arm/boot/dts/at91sam9g45.dtsi |  52 -------------
 arch/arm/boot/dts/at91sam9rl.dtsi  |  52 -------------
 arch/arm/boot/dts/at91sam9x5.dtsi  |  52 -------------
 arch/arm/boot/dts/sama5d2.dtsi     | 118 -----------------------------
 arch/arm/boot/dts/sama5d3.dtsi     | 105 -------------------------
 arch/arm/boot/dts/sama5d4.dtsi     | 118 -----------------------------
 6 files changed, 497 deletions(-)

diff --git a/arch/arm/boot/dts/at91sam9g45.dtsi b/arch/arm/boot/dts/at91sam9g45.dtsi
index 691c95ea6175..63bfe546cd8d 100644
--- a/arch/arm/boot/dts/at91sam9g45.dtsi
+++ b/arch/arm/boot/dts/at91sam9g45.dtsi
@@ -1204,58 +1204,6 @@
 				clocks = <&udphs_clk>, <&utmi>;
 				clock-names = "pclk", "hclk";
 				status = "disabled";
-
-				ep@0 {
-					reg = <0>;
-					atmel,fifo-size = <64>;
-					atmel,nb-banks = <1>;
-				};
-
-				ep@1 {
-					reg = <1>;
-					atmel,fifo-size = <1024>;
-					atmel,nb-banks = <2>;
-					atmel,can-dma;
-					atmel,can-isoc;
-				};
-
-				ep@2 {
-					reg = <2>;
-					atmel,fifo-size = <1024>;
-					atmel,nb-banks = <2>;
-					atmel,can-dma;
-					atmel,can-isoc;
-				};
-
-				ep@3 {
-					reg = <3>;
-					atmel,fifo-size = <1024>;
-					atmel,nb-banks = <3>;
-					atmel,can-dma;
-				};
-
-				ep@4 {
-					reg = <4>;
-					atmel,fifo-size = <1024>;
-					atmel,nb-banks = <3>;
-					atmel,can-dma;
-				};
-
-				ep@5 {
-					reg = <5>;
-					atmel,fifo-size = <1024>;
-					atmel,nb-banks = <3>;
-					atmel,can-dma;
-					atmel,can-isoc;
-				};
-
-				ep@6 {
-					reg = <6>;
-					atmel,fifo-size = <1024>;
-					atmel,nb-banks = <3>;
-					atmel,can-dma;
-					atmel,can-isoc;
-				};
 			};
 
 			clk32k: sckc@fffffd50 {
diff --git a/arch/arm/boot/dts/at91sam9rl.dtsi b/arch/arm/boot/dts/at91sam9rl.dtsi
index 8643b7151565..e118bacb7d7c 100644
--- a/arch/arm/boot/dts/at91sam9rl.dtsi
+++ b/arch/arm/boot/dts/at91sam9rl.dtsi
@@ -308,58 +308,6 @@
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 22>, <&pmc PMC_TYPE_CORE PMC_UTMI>;
 				clock-names = "pclk", "hclk";
 				status = "disabled";
-
-				ep@0 {
-					reg = <0>;
-					atmel,fifo-size = <64>;
-					atmel,nb-banks = <1>;
-				};
-
-				ep@1 {
-					reg = <1>;
-					atmel,fifo-size = <1024>;
-					atmel,nb-banks = <2>;
-					atmel,can-dma;
-					atmel,can-isoc;
-				};
-
-				ep@2 {
-					reg = <2>;
-					atmel,fifo-size = <1024>;
-					atmel,nb-banks = <2>;
-					atmel,can-dma;
-					atmel,can-isoc;
-				};
-
-				ep@3 {
-					reg = <3>;
-					atmel,fifo-size = <1024>;
-					atmel,nb-banks = <3>;
-					atmel,can-dma;
-				};
-
-				ep@4 {
-					reg = <4>;
-					atmel,fifo-size = <1024>;
-					atmel,nb-banks = <3>;
-					atmel,can-dma;
-				};
-
-				ep@5 {
-					reg = <5>;
-					atmel,fifo-size = <1024>;
-					atmel,nb-banks = <3>;
-					atmel,can-dma;
-					atmel,can-isoc;
-				};
-
-				ep@6 {
-					reg = <6>;
-					atmel,fifo-size = <1024>;
-					atmel,nb-banks = <3>;
-					atmel,can-dma;
-					atmel,can-isoc;
-				};
 			};
 
 			dma0: dma-controller@ffffe600 {
diff --git a/arch/arm/boot/dts/at91sam9x5.dtsi b/arch/arm/boot/dts/at91sam9x5.dtsi
index 7c2eb93f8cac..685a1b9f3ae5 100644
--- a/arch/arm/boot/dts/at91sam9x5.dtsi
+++ b/arch/arm/boot/dts/at91sam9x5.dtsi
@@ -876,58 +876,6 @@
 				clocks = <&pmc PMC_TYPE_CORE PMC_UTMI>, <&pmc PMC_TYPE_PERIPHERAL 23>;
 				clock-names = "hclk", "pclk";
 				status = "disabled";
-
-				ep@0 {
-					reg = <0>;
-					atmel,fifo-size = <64>;
-					atmel,nb-banks = <1>;
-				};
-
-				ep@1 {
-					reg = <1>;
-					atmel,fifo-size = <1024>;
-					atmel,nb-banks = <2>;
-					atmel,can-dma;
-					atmel,can-isoc;
-				};
-
-				ep@2 {
-					reg = <2>;
-					atmel,fifo-size = <1024>;
-					atmel,nb-banks = <2>;
-					atmel,can-dma;
-					atmel,can-isoc;
-				};
-
-				ep@3 {
-					reg = <3>;
-					atmel,fifo-size = <1024>;
-					atmel,nb-banks = <3>;
-					atmel,can-dma;
-				};
-
-				ep@4 {
-					reg = <4>;
-					atmel,fifo-size = <1024>;
-					atmel,nb-banks = <3>;
-					atmel,can-dma;
-				};
-
-				ep@5 {
-					reg = <5>;
-					atmel,fifo-size = <1024>;
-					atmel,nb-banks = <3>;
-					atmel,can-dma;
-					atmel,can-isoc;
-				};
-
-				ep@6 {
-					reg = <6>;
-					atmel,fifo-size = <1024>;
-					atmel,nb-banks = <3>;
-					atmel,can-dma;
-					atmel,can-isoc;
-				};
 			};
 
 			watchdog: watchdog@fffffe40 {
diff --git a/arch/arm/boot/dts/sama5d2.dtsi b/arch/arm/boot/dts/sama5d2.dtsi
index 2e2c1a7b1d1d..daafcffbe033 100644
--- a/arch/arm/boot/dts/sama5d2.dtsi
+++ b/arch/arm/boot/dts/sama5d2.dtsi
@@ -122,124 +122,6 @@
 			clocks = <&pmc PMC_TYPE_PERIPHERAL 42>, <&pmc PMC_TYPE_CORE PMC_UTMI>;
 			clock-names = "pclk", "hclk";
 			status = "disabled";
-
-			ep@0 {
-				reg = <0>;
-				atmel,fifo-size = <64>;
-				atmel,nb-banks = <1>;
-			};
-
-			ep@1 {
-				reg = <1>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <3>;
-				atmel,can-dma;
-				atmel,can-isoc;
-			};
-
-			ep@2 {
-				reg = <2>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <3>;
-				atmel,can-dma;
-				atmel,can-isoc;
-			};
-
-			ep@3 {
-				reg = <3>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-				atmel,can-dma;
-				atmel,can-isoc;
-			};
-
-			ep@4 {
-				reg = <4>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-				atmel,can-dma;
-				atmel,can-isoc;
-			};
-
-			ep@5 {
-				reg = <5>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-				atmel,can-dma;
-				atmel,can-isoc;
-			};
-
-			ep@6 {
-				reg = <6>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-				atmel,can-dma;
-				atmel,can-isoc;
-			};
-
-			ep@7 {
-				reg = <7>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-				atmel,can-dma;
-				atmel,can-isoc;
-			};
-
-			ep@8 {
-				reg = <8>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-				atmel,can-isoc;
-			};
-
-			ep@9 {
-				reg = <9>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-				atmel,can-isoc;
-			};
-
-			ep@10 {
-				reg = <10>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-				atmel,can-isoc;
-			};
-
-			ep@11 {
-				reg = <11>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-				atmel,can-isoc;
-			};
-
-			ep@12 {
-				reg = <12>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-				atmel,can-isoc;
-			};
-
-			ep@13 {
-				reg = <13>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-				atmel,can-isoc;
-			};
-
-			ep@14 {
-				reg = <14>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-				atmel,can-isoc;
-			};
-
-			ep@15 {
-				reg = <15>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-				atmel,can-isoc;
-			};
 		};
 
 		usb1: ohci@400000 {
diff --git a/arch/arm/boot/dts/sama5d3.dtsi b/arch/arm/boot/dts/sama5d3.dtsi
index f770aace0efd..dfd095f33f95 100644
--- a/arch/arm/boot/dts/sama5d3.dtsi
+++ b/arch/arm/boot/dts/sama5d3.dtsi
@@ -1402,111 +1402,6 @@
 			clocks = <&udphs_clk>, <&utmi>;
 			clock-names = "pclk", "hclk";
 			status = "disabled";
-
-			ep@0 {
-				reg = <0>;
-				atmel,fifo-size = <64>;
-				atmel,nb-banks = <1>;
-			};
-
-			ep@1 {
-				reg = <1>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <3>;
-				atmel,can-dma;
-				atmel,can-isoc;
-			};
-
-			ep@2 {
-				reg = <2>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <3>;
-				atmel,can-dma;
-				atmel,can-isoc;
-			};
-
-			ep@3 {
-				reg = <3>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-				atmel,can-dma;
-			};
-
-			ep@4 {
-				reg = <4>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-				atmel,can-dma;
-			};
-
-			ep@5 {
-				reg = <5>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-				atmel,can-dma;
-			};
-
-			ep@6 {
-				reg = <6>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-				atmel,can-dma;
-			};
-
-			ep@7 {
-				reg = <7>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-				atmel,can-dma;
-			};
-
-			ep@8 {
-				reg = <8>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-			};
-
-			ep@9 {
-				reg = <9>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-			};
-
-			ep@10 {
-				reg = <10>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-			};
-
-			ep@11 {
-				reg = <11>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-			};
-
-			ep@12 {
-				reg = <12>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-			};
-
-			ep@13 {
-				reg = <13>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-			};
-
-			ep@14 {
-				reg = <14>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-			};
-
-			ep@15 {
-				reg = <15>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-			};
 		};
 
 		usb1: ohci@600000 {
diff --git a/arch/arm/boot/dts/sama5d4.dtsi b/arch/arm/boot/dts/sama5d4.dtsi
index 6ab27a7b388d..0ece6b22d287 100644
--- a/arch/arm/boot/dts/sama5d4.dtsi
+++ b/arch/arm/boot/dts/sama5d4.dtsi
@@ -105,124 +105,6 @@
 			clocks = <&pmc PMC_TYPE_PERIPHERAL 47>, <&pmc PMC_TYPE_CORE PMC_UTMI>;
 			clock-names = "pclk", "hclk";
 			status = "disabled";
-
-			ep@0 {
-				reg = <0>;
-				atmel,fifo-size = <64>;
-				atmel,nb-banks = <1>;
-			};
-
-			ep@1 {
-				reg = <1>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <3>;
-				atmel,can-dma;
-				atmel,can-isoc;
-			};
-
-			ep@2 {
-				reg = <2>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <3>;
-				atmel,can-dma;
-				atmel,can-isoc;
-			};
-
-			ep@3 {
-				reg = <3>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-				atmel,can-dma;
-				atmel,can-isoc;
-			};
-
-			ep@4 {
-				reg = <4>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-				atmel,can-dma;
-				atmel,can-isoc;
-			};
-
-			ep@5 {
-				reg = <5>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-				atmel,can-dma;
-				atmel,can-isoc;
-			};
-
-			ep@6 {
-				reg = <6>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-				atmel,can-dma;
-				atmel,can-isoc;
-			};
-
-			ep@7 {
-				reg = <7>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-				atmel,can-dma;
-				atmel,can-isoc;
-			};
-
-			ep@8 {
-				reg = <8>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-				atmel,can-isoc;
-			};
-
-			ep@9 {
-				reg = <9>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-				atmel,can-isoc;
-			};
-
-			ep@10 {
-				reg = <10>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-				atmel,can-isoc;
-			};
-
-			ep@11 {
-				reg = <11>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-				atmel,can-isoc;
-			};
-
-			ep@12 {
-				reg = <12>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-				atmel,can-isoc;
-			};
-
-			ep@13 {
-				reg = <13>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-				atmel,can-isoc;
-			};
-
-			ep@14 {
-				reg = <14>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-				atmel,can-isoc;
-			};
-
-			ep@15 {
-				reg = <15>;
-				atmel,fifo-size = <1024>;
-				atmel,nb-banks = <2>;
-				atmel,can-isoc;
-			};
 		};
 
 		usb1: ohci@500000 {
-- 
2.24.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
