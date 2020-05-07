Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F281C95B0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 17:58:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JfcPkVNTttMRhpgbsyUy9EkpyCy38Y/ecUJhKFQyO1A=; b=AESagkPdCi9MdW
	vXS1/uPyI+ImgY7illG8DiuJGRYM/0ZAnQZ1tYkM4kW9Oum+iCgia6cUqiOoRG9pwTC+Xp/Yyqs6g
	rhi7BiioFToxl+sQ7CVTxP6bGMimC2g0KnuVQLjDoaODvYFHBCdJD9FUUiiqlE8c6OSrg8zoKWib1
	ubQj3CYl6+2fe8AW+e5yTH4l3+774vCS94BVbSYffr28DSyuSB+QP3v27t4TgzGPWc2OUzjrY/h93
	PPbFSooTSAJJY2PSDxgv8QmQS/5awenvhqpUCiJ60z78Bk2fbSX9+w2xlSdUa9NDNgtxYw1VtxuyK
	vIom9v7oMmXtDExyfxgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWiud-0002ki-3h; Thu, 07 May 2020 15:58:15 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWith-00021N-DI
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 15:57:19 +0000
X-Originating-IP: 87.231.134.186
Received: from localhost (87-231-134-186.rev.numericable.fr [87.231.134.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id D75496000E;
 Thu,  7 May 2020 15:57:13 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Cristian Birsan <cristian.birsan@microchip.com>,
 Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/3] ARM: dts: at91: Remove the USB EP child node
Date: Thu,  7 May 2020 17:56:51 +0200
Message-Id: <20200507155651.1094142-4-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200507155651.1094142-1-gregory.clement@bootlin.com>
References: <20200507155651.1094142-1-gregory.clement@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_085717_723871_33F245EF 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
file. Remove also the #address-cells and #size-cells properties that
are no longer needed.

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 arch/arm/boot/dts/at91sam9g45.dtsi |  54 -------------
 arch/arm/boot/dts/at91sam9rl.dtsi  |  54 -------------
 arch/arm/boot/dts/at91sam9x5.dtsi  |  54 -------------
 arch/arm/boot/dts/sama5d2.dtsi     | 120 -----------------------------
 arch/arm/boot/dts/sama5d3.dtsi     | 107 -------------------------
 arch/arm/boot/dts/sama5d4.dtsi     | 120 -----------------------------
 6 files changed, 509 deletions(-)

diff --git a/arch/arm/boot/dts/at91sam9g45.dtsi b/arch/arm/boot/dts/at91sam9g45.dtsi
index fd179097a4bf..342697f53cf7 100644
--- a/arch/arm/boot/dts/at91sam9g45.dtsi
+++ b/arch/arm/boot/dts/at91sam9g45.dtsi
@@ -1195,8 +1195,6 @@ spi1: spi@fffa8000 {
 			};
 
 			usb2: gadget@fff78000 {
-				#address-cells = <1>;
-				#size-cells = <0>;
 				compatible = "atmel,at91sam9g45-udc";
 				reg = <0x00600000 0x80000
 				       0xfff78000 0x400>;
@@ -1204,58 +1202,6 @@ usb2: gadget@fff78000 {
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
index ea024e4b6e09..4d70194fd808 100644
--- a/arch/arm/boot/dts/at91sam9rl.dtsi
+++ b/arch/arm/boot/dts/at91sam9rl.dtsi
@@ -299,8 +299,6 @@ trigger3 {
 			};
 
 			usb0: gadget@fffd4000 {
-				#address-cells = <1>;
-				#size-cells = <0>;
 				compatible = "atmel,at91sam9rl-udc";
 				reg = <0x00600000 0x100000>,
 				      <0xfffd4000 0x4000>;
@@ -308,58 +306,6 @@ usb0: gadget@fffd4000 {
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
index 7c2eb93f8cac..948fe99ab6c3 100644
--- a/arch/arm/boot/dts/at91sam9x5.dtsi
+++ b/arch/arm/boot/dts/at91sam9x5.dtsi
@@ -867,8 +867,6 @@ spi1: spi@f0004000 {
 			};
 
 			usb2: gadget@f803c000 {
-				#address-cells = <1>;
-				#size-cells = <0>;
 				compatible = "atmel,at91sam9g45-udc";
 				reg = <0x00500000 0x80000
 				       0xf803c000 0x400>;
@@ -876,58 +874,6 @@ usb2: gadget@f803c000 {
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
index ab550d69db91..1ae7a2ea696b 100644
--- a/arch/arm/boot/dts/sama5d2.dtsi
+++ b/arch/arm/boot/dts/sama5d2.dtsi
@@ -113,8 +113,6 @@ nfc_sram: sram@100000 {
 		};
 
 		usb0: gadget@300000 {
-			#address-cells = <1>;
-			#size-cells = <0>;
 			compatible = "atmel,sama5d3-udc";
 			reg = <0x00300000 0x100000
 			       0xfc02c000 0x400>;
@@ -122,124 +120,6 @@ usb0: gadget@300000 {
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
index f11b018e9173..10e4492af234 100644
--- a/arch/arm/boot/dts/sama5d3.dtsi
+++ b/arch/arm/boot/dts/sama5d3.dtsi
@@ -1420,8 +1420,6 @@ nfc_sram: sram@200000 {
 		};
 
 		usb0: gadget@500000 {
-			#address-cells = <1>;
-			#size-cells = <0>;
 			compatible = "atmel,sama5d3-udc";
 			reg = <0x00500000 0x100000
 			       0xf8030000 0x4000>;
@@ -1429,111 +1427,6 @@ usb0: gadget@500000 {
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
index c9c0316b5b0e..b0d79524277e 100644
--- a/arch/arm/boot/dts/sama5d4.dtsi
+++ b/arch/arm/boot/dts/sama5d4.dtsi
@@ -96,8 +96,6 @@ nfc_sram: sram@100000 {
 		};
 
 		usb0: gadget@400000 {
-			#address-cells = <1>;
-			#size-cells = <0>;
 			compatible = "atmel,sama5d3-udc";
 			reg = <0x00400000 0x100000
 			       0xfc02c000 0x4000>;
@@ -105,124 +103,6 @@ usb0: gadget@400000 {
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
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
