Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 153351D4C61
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 13:18:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4+FFEhKRl45wHt+Rjl8g3ivJR/H5ro7qbmTUUurKIlg=; b=oQCiS7EM3wjk6Q
	f+4rGD6jbUyi5x3g56YKVQAD/BDjZDKLKT3aOt6lqvreft0J0sIX8SzyIL41hcyGyERsZ6+rRMEhY
	8WDArlBEyVDd7/OuImh1Wpcq7H6lNsoRCFo+nTtbvgPkKW8qYxBBuO1xP5yieIDB+/5WsOxRJclyl
	cVHgFkGSJHXU0NC4cHylNcmsb96LtLyy4zux6aF4TGSmBuUptHmOiYr0NjcoSG8n3Qa3w3AOkvf7/
	8RwzDlTOTR9RMpr+oA5hv7fqO3U6iF7lbDl92iTrNZkD1veIfbXriBvysHfw9ey12V9IuQe1y4GGw
	Xw1o5ezWDgbzmi8qBhgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZYM7-0006ht-8q; Fri, 15 May 2020 11:18:19 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZYKd-0005WM-Og
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 11:16:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589541407; x=1621077407;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=bZ2JnU0EXObNl5L5pPijjp9Xg73ORZBTgLZoGKU0TPk=;
 b=evX2xF0YkYVGx+5XOSNngjVSaOKjueib29jcLttMT5sxFG6A6ADVl3g/
 8g9/GrXjsUDcAzJvfYvcVxQJ13BnXe+GJV1HOzHjcb6rCwJSrgLMVdSba
 lQ0n/vP0MPOY2dsSJ85iP+HsocBbgWSxo7u9XHQYfsTH2aJIf4wq+4fw5
 lgbbhJ9cu0eiq+w4h1t6iShF3YwhAI0uPOvF1qlJjGB35IYOHMrsz5aLO
 U+nzbUtWSXffYA/5X5kDpdlnv/ldgqwMl+vbWVA9rSuCD4BLyV8RyWRRM
 Y63Et0fT1Ijlmqh41qiFoJOxc0gwt9izTu6Y3KIFy3QLC2g/gNPPwqjXz Q==;
IronPort-SDR: XltXjzs+GU6yt//0omU6PmdLk2jQP5ZYtU64eC6H8VCmkAjLS49NYR8MzOiI46Jnogrfof4qVt
 ehDiHryI2RxBu5y7pXRfpiQPWJBnFDpYRG92vcKXEM5JWrOcnvnC6Z4oDH+2GVYHUXcrSsiJs7
 6ECz0+hv5J7AG9MVaAUeKLhbYxDbJp7uAhFfwWiWt97uVdFLfVxnTVQmSrNqj/F76fDcOfVVI4
 mPlaJXJY/asv87Ot5dBe+1VwcJPoQn1+vYOmGxAyMTh98NkWYB14wTJ+AmSy78BM1BNP8Y6fBm
 ERY=
X-IronPort-AV: E=Sophos;i="5.73,395,1583218800"; d="scan'208";a="73566907"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 May 2020 04:16:46 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 May 2020 04:16:45 -0700
Received: from cristi-P53.lan (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Fri, 15 May 2020 04:16:42 -0700
From: <cristian.birsan@microchip.com>
To: <balbi@kernel.org>, <gregkh@linuxfoundation.org>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-usb@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 7/7] ARM: dts: at91: sam9x60ek: enable usb device
Date: Fri, 15 May 2020 14:16:31 +0300
Message-ID: <20200515111631.31210-8-cristian.birsan@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200515111631.31210-1-cristian.birsan@microchip.com>
References: <20200515111631.31210-1-cristian.birsan@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_041647_894167_1C0119C2 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Cristian Birsan <cristian.birsan@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Cristian Birsan <cristian.birsan@microchip.com>

Enable usb device for sam9x60ek board.

Signed-off-by: Cristian Birsan <cristian.birsan@microchip.com>
---
 arch/arm/boot/dts/at91-sam9x60ek.dts | 13 +++++
 arch/arm/boot/dts/sam9x60.dtsi       | 74 ++++++++++++++++++++++++++++
 2 files changed, 87 insertions(+)

diff --git a/arch/arm/boot/dts/at91-sam9x60ek.dts b/arch/arm/boot/dts/at91-sam9x60ek.dts
index b484745bf2d4..325d0fc8674f 100644
--- a/arch/arm/boot/dts/at91-sam9x60ek.dts
+++ b/arch/arm/boot/dts/at91-sam9x60ek.dts
@@ -547,6 +547,12 @@
 			atmel,pins = <AT91_PIOD 18 AT91_PERIPH_GPIO AT91_PINCTRL_NONE>;
 		};
 	};
+
+	usb0 {
+		pinctrl_usba_vbus: usba_vbus {
+			atmel,pins = <AT91_PIOB 16 AT91_PERIPH_GPIO AT91_PINCTRL_NONE>;
+		};
+	};
 }; /* pinctrl */
 
 &pmc {
@@ -634,6 +640,13 @@
 	};
 };
 
+&usb0 {
+	atmel,vbus-gpio = <&pioB 16 GPIO_ACTIVE_HIGH>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usba_vbus>;
+	status = "okay";
+};
+
 &usb1 {
 	num-ports = <3>;
 	atmel,vbus-gpio = <0
diff --git a/arch/arm/boot/dts/sam9x60.dtsi b/arch/arm/boot/dts/sam9x60.dtsi
index 6763423d64b8..5cd2b9054762 100644
--- a/arch/arm/boot/dts/sam9x60.dtsi
+++ b/arch/arm/boot/dts/sam9x60.dtsi
@@ -69,6 +69,80 @@
 		#size-cells = <1>;
 		ranges;
 
+		usb0: gadget@500000 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			compatible = "microchip,sam9x60-udc";
+			reg = <0x00500000 0x100000
+				0xf803c000 0x400>;
+			interrupts = <23 IRQ_TYPE_LEVEL_HIGH 2>;
+			clocks = <&pmc PMC_TYPE_PERIPHERAL 23>, <&pmc PMC_TYPE_CORE PMC_UTMI>;
+			clock-names = "pclk", "hclk";
+			assigned-clocks = <&pmc PMC_TYPE_CORE PMC_UTMI>;
+			assigned-clock-rates = <480000000>;
+			status = "disabled";
+
+			ep@0 {
+				reg = <0>;
+				atmel,fifo-size = <64>;
+				atmel,nb-banks = <1>;
+			};
+
+			ep@1 {
+				reg = <1>;
+				atmel,fifo-size = <1024>;
+				atmel,nb-banks = <2>;
+				atmel,can-dma;
+			};
+
+			ep@2 {
+				reg = <2>;
+				atmel,fifo-size = <1024>;
+				atmel,nb-banks = <2>;
+				atmel,can-dma;
+			};
+
+			ep@3 {
+				reg = <3>;
+				atmel,fifo-size = <1024>;
+				atmel,nb-banks = <3>;
+				atmel,can-dma;
+				atmel,can-isoc;
+			};
+
+			ep@4 {
+				reg = <4>;
+				atmel,fifo-size = <1024>;
+				atmel,nb-banks = <3>;
+				atmel,can-dma;
+				atmel,can-isoc;
+			};
+
+			ep@5 {
+				reg = <5>;
+				atmel,fifo-size = <1024>;
+				atmel,nb-banks = <3>;
+				atmel,can-dma;
+				atmel,can-isoc;
+			};
+
+			ep@6 {
+				reg = <6>;
+				atmel,fifo-size = <1024>;
+				atmel,nb-banks = <3>;
+				atmel,can-dma;
+				atmel,can-isoc;
+			};
+
+			ep@7 {
+				reg = <7>;
+				atmel,fifo-size = <1024>;
+				atmel,nb-banks = <3>;
+				atmel,can-dma;
+				atmel,can-isoc;
+			};
+		};
+
 		usb1: ohci@600000 {
 			compatible = "atmel,at91rm9200-ohci", "usb-ohci";
 			reg = <0x00600000 0x100000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
