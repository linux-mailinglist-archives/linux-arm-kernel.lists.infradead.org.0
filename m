Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 768FFF082B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:22:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GTzSzZ7P5CYEoMpl8r3mkUcS2b3WoUFPyr1SCGEdjeQ=; b=EavxtnWLNm94v0
	cMMAaJObw/ky/l8459eZWRbn8i+bWG1/pK5LIdqzoQgUZK0et06MRfJyG2526bUZS9Sc6CEzFIJNA
	9zcCBYgrv3dJPoLdq870/08wVm3RPa0WAqe2w5DYr4t33IqUbkdKA7JahzEkG5gOq4D+/iCllKfCA
	8RawrsH7mmxynjjYDhaG3dhPAKyESfP4vNvKfsGN1K37YO5psUcHzZLr/YkmLPZOjw0eOedzuU0FG
	3iWaUYOMEmzHLbKsmqp4R2TAV5/x230SF6WB3iXBQT/jTTPMloQf0m2mdZx6jHWfryejoNJJGzK5U
	pHeIhwha/pQqXmPPjnHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS6HX-0005P9-62; Tue, 05 Nov 2019 21:22:31 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS6HI-0005NG-Pn
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 21:22:19 +0000
X-Originating-IP: 78.193.40.249
Received: from localhost (unknown [78.193.40.249])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 860E8240002;
 Tue,  5 Nov 2019 21:22:03 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: at91: rearrange kizbox dts using aliases nodes
Date: Tue,  5 Nov 2019 22:21:58 +0100
Message-Id: <20191105212158.22907-1-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_132217_119504_7F6A3728 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Kamel Bouhara <kamel.bouhara@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use aliases nodes to easy kizbox dts readability.

Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
---
 arch/arm/boot/dts/at91-kizbox.dts | 172 +++++++++++++++---------------
 1 file changed, 84 insertions(+), 88 deletions(-)

diff --git a/arch/arm/boot/dts/at91-kizbox.dts b/arch/arm/boot/dts/at91-kizbox.dts
index 90996eaf73b2..644009a157d6 100644
--- a/arch/arm/boot/dts/at91-kizbox.dts
+++ b/arch/arm/boot/dts/at91-kizbox.dts
@@ -28,85 +28,6 @@
 		};
 	};
 
-	ahb {
-		apb {
-			tcb0: timer@fffa0000 {
-				timer@0 {
-					compatible = "atmel,tcb-timer";
-					reg = <0>, <1>;
-				};
-
-				timer@2 {
-					compatible = "atmel,tcb-timer";
-					reg = <2>;
-				};
-			};
-
-			macb0: ethernet@fffc4000 {
-				phy-mode = "mii";
-				pinctrl-0 = <&pinctrl_macb_rmii
-				             &pinctrl_macb_rmii_mii_alt>;
-				status = "okay";
-			};
-
-			usart3: serial@fffd0000 {
-				status = "okay";
-			};
-
-			dbgu: serial@fffff200 {
-				status = "okay";
-			};
-
-			watchdog@fffffd40 {
-				timeout-sec = <15>;
-				atmel,max-heartbeat-sec = <16>;
-				atmel,min-heartbeat-sec = <0>;
-				status = "okay";
-			};
-		};
-
-		usb0: ohci@500000 {
-			num-ports = <1>;
-			status = "okay";
-		};
-
-		ebi: ebi@10000000 {
-			status = "okay";
-
-			nand_controller: nand-controller {
-				status = "okay";
-				pinctrl-0 = <&pinctrl_nand_cs &pinctrl_nand_rb>;
-				pinctrl-names = "default";
-
-				nand@3 {
-					reg = <0x3 0x0 0x800000>;
-					rb-gpios = <&pioC 13 GPIO_ACTIVE_HIGH>;
-					cs-gpios = <&pioC 14 GPIO_ACTIVE_HIGH>;
-					nand-bus-width = <8>;
-					nand-ecc-mode = "soft";
-					nand-on-flash-bbt;
-					label = "atmel_nand";
-
-					partitions {
-						compatible = "fixed-partitions";
-						#address-cells = <1>;
-						#size-cells = <1>;
-
-						bootstrap@0 {
-							label = "bootstrap";
-							reg = <0x0 0x20000>;
-						};
-
-						ubi@20000 {
-							label = "ubi";
-							reg = <0x20000 0x7fe0000>;
-						};
-					};
-				};
-			};
-		};
-	};
-
 	gpio_keys {
 		compatible = "gpio-keys";
 		#address-cells = <1>;
@@ -127,15 +48,6 @@
 		};
 	};
 
-	i2c-gpio-0 {
-		status = "okay";
-
-		rtc: pcf8563@51 {
-			compatible = "nxp,pcf8563";
-			reg = <0x51>;
-		};
-	};
-
 	pwm_leds {
 		compatible = "pwm-leds";
 
@@ -179,3 +91,87 @@
 			     &pinctrl_tcb1_tiob0>;
 	};
 };
+
+&tcb0 {
+	timer@0 {
+		compatible = "atmel,tcb-timer";
+		reg = <0>, <1>;
+	};
+
+	timer@2 {
+		compatible = "atmel,tcb-timer";
+		reg = <2>;
+	};
+};
+
+&ebi {
+	status = "okay";
+};
+
+&nand_controller {
+	status = "okay";
+	pinctrl-0 = <&pinctrl_nand_cs &pinctrl_nand_rb>;
+	pinctrl-names = "default";
+
+	nand@3 {
+		reg = <0x3 0x0 0x800000>;
+		rb-gpios = <&pioC 13 GPIO_ACTIVE_HIGH>;
+		cs-gpios = <&pioC 14 GPIO_ACTIVE_HIGH>;
+		nand-bus-width = <8>;
+		nand-ecc-mode = "soft";
+		nand-on-flash-bbt;
+		label = "atmel_nand";
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			bootstrap@0 {
+				label = "bootstrap";
+				reg = <0x0 0x20000>;
+			};
+
+			ubi@20000 {
+				label = "ubi";
+				reg = <0x20000 0x7fe0000>;
+			};
+		};
+	};
+};
+
+&macb0 {
+	phy-mode = "mii";
+	pinctrl-0 = <&pinctrl_macb_rmii
+		     &pinctrl_macb_rmii_mii_alt>;
+	status = "okay";
+};
+
+&usart3 {
+	status = "okay";
+};
+
+&dbgu {
+	status = "okay";
+};
+
+&watchdog {
+	timeout-sec = <15>;
+	atmel,max-heartbeat-sec = <16>;
+	atmel,min-heartbeat-sec = <0>;
+	status = "okay";
+};
+
+&usb0 {
+	num-ports = <1>;
+	status = "okay";
+};
+
+&i2c-gpio-0 {
+	status = "okay";
+
+	rtc: pcf8563@51 {
+		compatible = "nxp,pcf8563";
+		reg = <0x51>;
+	};
+};
-- 
2.24.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
