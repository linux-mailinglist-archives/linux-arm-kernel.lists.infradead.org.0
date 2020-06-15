Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 023401F9CF6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 18:18:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4I7aovORV/Mtr5PFgFJ7I6DK6Nsm6U6GjzwkuTX+x1M=; b=TSze5oXjPyvc+I
	I+Hg3FAxePOOVXYTn+8HDLdYoyKEeFqIKVNFee+iAa5FcrKcyrX/0BTq++Zo6a6sl8+UI5naSE5kF
	umVQ/iwMjYmR5UB8QYxEotEx/wyqLdoJ85lMQQ9hZrvgS0rn65qIfPAzO2rHSu4kMMho7lSzN5Jh1
	SLH4XV2rCSeIVekuff8mCc/w1BfIaFgJHt5PI2HemMEcu4mgd0eQFL/X2TTAGFTm4bXy+V5YXvU/i
	698YOtxDZHkqnkhCMsbRIC6s3WEaeM5OZTK9BmZEjTnbXMY3oaOcXE1Q3PY0/esShhftXhgiBdZ91
	5XogwjRAJoPDLA4w69xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkroV-0001Ry-3Z; Mon, 15 Jun 2020 16:18:23 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkrmb-0008Py-2H
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 16:16:35 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05FGDwP4008012; Mon, 15 Jun 2020 18:15:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=kcFl5IZcfC0YQFwTAT8Jn+gPeu/Bp4cT/yA7bI3bAQ0=;
 b=FMvzbeB64dOv4yvJhVvQPBuH4gZ0bMABJkmB0Up23PRaspEIFYxDD3XJbfoFG5OOGGsr
 Z1f5OVZQRxcYLZuKMt5AC1qwV7mLaoEvJdB3H0XifYyr+dSNyQqH1w3tlJN0XWllAJ/f
 MBdW/Kk9RxEdj2fC7UJJG35mWefxZ4EtENFmbwUuP18HI8l1hWCDnueNY/ah+POVrEzb
 QzpYLq0zbxxrbKE0z7Im3bxDiZOJvU4aD22Wr3CEWjGBGTKHMdwYB72FrrmX9tGmRCkb
 fUZZ7Exs1Yh63tttDHhWNcps2+7cfFkG0pDdrq8OUk0mCFpc8bcBGGkgr3AxOG1k3XIx eA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31mnph2bea-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 15 Jun 2020 18:15:53 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 19D2510002A;
 Mon, 15 Jun 2020 18:15:53 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0733B2C5AD8;
 Mon, 15 Jun 2020 18:15:53 +0200 (CEST)
Received: from localhost (10.75.127.45) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 15 Jun 2020 18:15:52
 +0200
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Rob Herring <robh+dt@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Russell King
 <linux@armlinux.org.uk>, Heikki Krogerus <heikki.krogerus@linux.intel.com>
Subject: [PATCH 5/6] ARM: dts: stm32: add STUSB1600 Type-C using I2C4 on
 stm32mp15xx-dkx
Date: Mon, 15 Jun 2020 18:15:11 +0200
Message-ID: <20200615161512.19150-6-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200615161512.19150-1-amelie.delaunay@st.com>
References: <20200615161512.19150-1-amelie.delaunay@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG6NODE2.st.com (10.75.127.17) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-15_06:2020-06-15,
 2020-06-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_091625_440683_D792950E 
X-CRM114-Status: GOOD (  17.57  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [91.207.212.93 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Amelie Delaunay <amelie.delaunay@st.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds support for STUSB1600 USB Type-C port controller, used on
I2C4 on stm32mp15xx-dkx.
The default configuration on this board, on Type-C connector, is:
- Dual Power Role (DRP), so set power-role to "dual";
- Vbus limited to 500mA, so set power-opmode to "default" (it means 500mA
  in USB 2.0).
power-opmode is used to reconfigure the STUSB1600 advertising of current
capability when its NVM is not in line with the board layout.
On stm32mp15xx-dkx, Vbus power source of STUSB1600 is 5V_VIN (so add the
vin fixed 5V regulator too). So power operation mode depends on the power
supply used. To avoid any power issues, it is better to limit Vbus to 500mA
on this board.
ALERT# is the interrupt pin of STUSB1600. It needs an external pull-up, and
signal is active low.

USB OTG controller ID and Vbus signals are not connected on stm32mp15xx-dkx
boards, so disconnection are not detected.
If you unplug the USB cable from the Type-C port, you have to manually
disconnect the USB gadget:
echo disconnect > /sys/devices/platform/soc/49000000.usb-otg/udc/49000000.usb-otg/soft_connect
Then you can plug the USB cable again in the Type-C port, and manually
reconnect the USB gadget:
echo connect > /sys/devices/platform/soc/49000000.usb-otg/udc/49000000.usb-otg/soft_connect

Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
---
 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi |  7 +++++
 arch/arm/boot/dts/stm32mp15xx-dkx.dtsi   | 38 ++++++++++++++++++++++++
 2 files changed, 45 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
index 7eb858732d6d..55deaa52c3ee 100644
--- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
@@ -1574,6 +1574,13 @@
 		};
 	};
 
+	stusb1600_pins_a: stusb1600-0 {
+		pins {
+			pinmux = <STM32_PINMUX('I', 11, ANALOG)>;
+			bias-pull-up;
+		};
+	};
+
 	usart2_pins_a: usart2-0 {
 		pins1 {
 			pinmux = <STM32_PINMUX('F', 5, AF7)>, /* USART2_TX */
diff --git a/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi b/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi
index 70db923a45f7..8d55f3fd06b3 100644
--- a/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi
+++ b/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi
@@ -80,6 +80,14 @@
 		dais = <&sai2a_port &sai2b_port &i2s2_port>;
 		status = "okay";
 	};
+
+	vin: vin {
+		compatible = "regulator-fixed";
+		regulator-name = "vin";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+	};
 };
 
 &adc {
@@ -230,6 +238,30 @@
 	/delete-property/dmas;
 	/delete-property/dma-names;
 
+	stusb1600@28 {
+		compatible = "st,stusb1600";
+		reg = <0x28>;
+		interrupts = <11 IRQ_TYPE_EDGE_FALLING>;
+		interrupt-parent = <&gpioi>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&stusb1600_pins_a>;
+		status = "okay";
+		vdd-supply = <&vin>;
+
+		connector {
+			compatible = "usb-c-connector";
+			label = "USB-C";
+			power-role = "dual";
+			power-opmode = "default";
+
+			port {
+				con_usbotg_hs_ep: endpoint {
+					remote-endpoint = <&usbotg_hs_ep>;
+				};
+			};
+		};
+	};
+
 	pmic: stpmic@33 {
 		compatible = "st,stpmic1";
 		reg = <0x33>;
@@ -599,6 +631,12 @@
 	phys = <&usbphyc_port1 0>;
 	phy-names = "usb2-phy";
 	status = "okay";
+
+	port {
+		usbotg_hs_ep: endpoint {
+			remote-endpoint = <&con_usbotg_hs_ep>;
+		};
+	};
 };
 
 &usbphyc {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
