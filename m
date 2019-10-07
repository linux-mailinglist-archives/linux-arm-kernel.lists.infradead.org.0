Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0D4CED83
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 22:32:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3zXa4wICAVwveicVnY6zaUc0OqWvsaNaRBQxyC2m2zY=; b=GrV5io6OxlHKii
	0GX2TC5KwaVGTstFyGXiNKEEb0IVS+KRk4GIxOTT74gfFncjoPYBPUHSTcDJaLro+iQdw7sICeAkn
	WhqKowp8ohsF7JfqsaFmYedE7SXgja8f7/0w2+uwHm7hPerVyQW9mwrgDbl+ECp87NwzJS/c6klbR
	HiXrvrbf22AfNPQruRzDoSD9hPVCIwYWNUnf9eVd9LfWgVXEB67v/5JauEYtOjGAWrfVz81k1Tpjp
	w/QpNI5j2EiX1QzLNFR1hwWBz0cx2GOwo031TMvKfkaGf6BFlxgKrJA/pK0K2h3lWdA+rHZaDDS6Z
	okCWlhvctXN6tkiQ5qwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHZgW-0006H4-Hc; Mon, 07 Oct 2019 20:32:48 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHZft-0005pZ-TQ
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 20:32:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1570480327; bh=Zdq7TsrioBhNJ4nRUcC5Dq41WDeZro1CErpIBoxFFlk=;
 h=From:To:Cc:Subject:Date:References:From;
 b=qZu3yKxvXIgZ6M9g+fSwLTvYIYJqSTLyWHm91zPfZqj615BCwzyCtg9tka+f9NYhX
 BooT4yvuwH0xZMINkfmPnGxUDmjd26JQROGYcoAegmIRa8HQmyPRvK3bKXcILkbOLQ
 6tOPQkCXqMA1L7R4WTusX+R/+W/YVBtzB4jYzzx8=
From: megous@megous.com
To: Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [RESEND PATCH 2/2] arm64: dts: allwinner: orange-pi-3: Enable UART1 /
 Bluetooth
Date: Mon,  7 Oct 2019 22:31:52 +0200
Message-Id: <20191007203152.3889947-3-megous@megous.com>
In-Reply-To: <20191007203152.3889947-1-megous@megous.com>
References: <20191007203152.3889947-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_133210_294729_AFB7B4E8 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Ondrej Jirman <megous@megous.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ondrej Jirman <megous@megous.com>

The board contains AP6256 WiFi/BT module that has its bluetooth part
connected to SoC's UART1 port. Enable this port, and add node for the
bluetooth device.

Bluetooth part is named bcm4345c5.

You'll need a BCM4345C5.hcd firmware file that can be found in the
Xulongs's repository for H6:

https://github.com/orangepi-xunlong/OrangePiH6_external/tree/master/ap6256

The driver expects the firmware at the following path relative to the
firmware directory:

  brcm/BCM4345C5.hcd

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 .../dts/allwinner/sun50i-h6-orangepi-3.dts    | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
index 49d954369087..a9e776446c35 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
@@ -15,6 +15,7 @@
 
 	aliases {
 		serial0 = &uart0;
+		serial1 = &uart1;
 	};
 
 	chosen {
@@ -271,6 +272,24 @@
 	status = "okay";
 };
 
+/* There's the BT part of the AP6256 connected to that UART */
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
+	uart-has-rtscts;
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm4345c5";
+		clocks = <&rtc 1>;
+		clock-names = "lpo";
+		device-wakeup-gpios = <&r_pio 1 2 GPIO_ACTIVE_HIGH>; /* PM2 */
+		host-wakeup-gpios = <&r_pio 1 1 GPIO_ACTIVE_HIGH>; /* PM1 */
+		shutdown-gpios = <&r_pio 1 4 GPIO_ACTIVE_HIGH>; /* PM4 */
+		max-speed = <1500000>;
+	};
+};
+
 &usb2otg {
 	/*
 	 * This board doesn't have a controllable VBUS even though it
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
