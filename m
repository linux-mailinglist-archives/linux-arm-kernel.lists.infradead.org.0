Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1FA19895B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 03:03:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nvWN1eRVTAbpZWwJVNxUyjULOJb9N7P8tKBI7Amke5k=; b=GJJV6869OLx0Bo
	Jn8C3JH5C6jjf0Ua6M4JGswfDDC8PbWaFGFL1hGW9UPN509n4vQD6B4nty0NT8LKFz3y1Km5lHkbr
	mRLwqkmVuJkWdi7zha1YFvyRn0UMTYqV31DB1yCU8g0+Oqwjg8+5Mt8/yLrqSIG6XEanMq2rZ2kVO
	isclySRElMA5d7ojMZgAcmFBuTtvdc6mejElcnL+qk9L++9q395ikpH3iibO4gFFrvBtjPnw/XlkP
	W4cRA7/ZkKoq4dw3MIAzAtXLz87SMactFPIr4jfJPw/mDqtn8kDwcB8rU+aKvcGq8f4IEhjMjcKmD
	sgGBgkJ7w/nhb6caYouA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ5JD-0000xS-5E; Tue, 31 Mar 2020 01:03:15 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ5E4-0003tH-CH
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 00:57:58 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48rrXg0cXCz1qrGL;
 Tue, 31 Mar 2020 02:57:55 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48rrXg0MVLz1r0cK;
 Tue, 31 Mar 2020 02:57:55 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id EJnO1I8pQQjT; Tue, 31 Mar 2020 02:57:53 +0200 (CEST)
X-Auth-Info: hNrEAhwsbtT7TIQ4InBgU+SqTiJIryAvneRgQ37hf9w=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 31 Mar 2020 02:57:53 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 19/22] ARM: dts: stm32: Add bindings for HDMI video on AV96
Date: Tue, 31 Mar 2020 02:56:58 +0200
Message-Id: <20200331005701.283998-20-marex@denx.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200331005701.283998-1-marex@denx.de>
References: <20200331005701.283998-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_175756_739583_9A3AFD29 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Marek Vasut <marex@denx.de>, Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fill in the HDMI video pipeline from AV96 into the DT.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Patrice Chotard <patrice.chotard@st.com>
Cc: Patrick Delaunay <patrick.delaunay@st.com>
Cc: linux-stm32@st-md-mailman.stormreply.com
To: linux-arm-kernel@lists.infradead.org
---
V2: No change
---
 arch/arm/boot/dts/stm32mp157a-avenger96.dts | 79 +++++++++++++++++++++
 1 file changed, 79 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
index 29af5ed2ebb3..e511fdcb8c46 100644
--- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
+++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
@@ -25,10 +25,28 @@ aliases {
 		spi0 = &qspi;
 	};
 
+	/* XTal Q1 */
+	cec_clock: clk-cec-fixed {
+		#clock-cells = <0>;
+		compatible = "fixed-clock";
+		clock-frequency = <24000000>;
+	};
+
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	hdmi-out {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_con: endpoint {
+				remote-endpoint = <&adv7513_out>;
+			};
+		};
+	};
+
 	memory@c0000000 {
 		device_type = "memory";
 		reg = <0xc0000000 0x40000000>;
@@ -305,6 +323,50 @@ watchdog {
 		};
 	};
 
+	hdmi-transmitter@3d {
+		compatible = "adi,adv7513";
+		reg = <0x3d>, <0x2d>, <0x4d>, <0x5d>;
+		reg-names = "main", "cec", "edid", "packet";
+		clocks = <&cec_clock>;
+		clock-names = "cec";
+
+		avdd-supply = <&v3v3>;
+		dvdd-supply = <&v3v3>;
+		pvdd-supply = <&v3v3>;
+		dvdd-3v-supply = <&v3v3>;
+		bgvdd-supply = <&v3v3>;
+
+		interrupts = <9 IRQ_TYPE_EDGE_FALLING>;
+		interrupt-parent = <&gpiog>;
+
+		status = "okay";
+
+		adi,input-depth = <8>;
+		adi,input-colorspace = "rgb";
+		adi,input-clock = "1x";
+		adi,input-style = <1>;
+		adi,input-justification = "evenly";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				adv7513_in: endpoint {
+					remote-endpoint = <&ltdc_ep0_out>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+				adv7513_out: endpoint {
+					remote-endpoint = <&hdmi_con>;
+				};
+			};
+		};
+	};
+
 	eeprom@53 {
 		compatible = "atmel,24c02";
 		reg = <0x53>;
@@ -317,6 +379,23 @@ &iwdg2 {
 	status = "okay";
 };
 
+&ltdc {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&ltdc_pins_c>;
+	pinctrl-1 = <&ltdc_pins_sleep_c>;
+	status = "okay";
+
+	port {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ltdc_ep0_out: endpoint@0 {
+			reg = <0>;
+			remote-endpoint = <&adv7513_in>;
+		};
+	};
+};
+
 &pwr_regulators {
 	vdd-supply = <&vdd_io>;
 	vdd_3v3_usbfs-supply = <&vdd_usb>;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
