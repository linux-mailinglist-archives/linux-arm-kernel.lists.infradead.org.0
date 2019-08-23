Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7316E9AB8C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 11:43:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5McYzm1Qv/Q6dMZ4XsKUbPmmaABrEdCjLfjop7PUBzI=; b=ahIfB+RzSqXUWi
	1/3inx6LAA+InsX4qAgUwwzOTL4ztMAefzG/G8LN/02Oo5CpU9bBwURl6gGTXAvEOvrr9iQnOXAdH
	lj/QED1m9UtR9BvU3ohbWx02UFRuOH//HimRTDpLiX5spnOQ42g7gP8XnUhGhyf6LKyEgg4T4qRRV
	onZYUfA8ZYgJDj/XoMZZI/AWl4QMGBHnONQMUmBoAXT4vsbzCWlNFwyk4anY28pOvqbIUS8BX1TcZ
	bCM9G/ZhXrWOOhHe74qFy0IsoA+QVHCmRYAnrVFTh9fxOeGN0rgX5ylRH1g0bHVkA+ad+UEGpCBE8
	Xum47RJtGoZDLaU3lQSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i165t-0002xk-4R; Fri, 23 Aug 2019 09:42:53 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i165c-0002uc-UI
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 09:42:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1566553352; bh=1Cw9Xa/6TDBO8NX8xFz1oE/pjRmfY5YYNJ0SmLr41QE=;
 h=From:To:Cc:Subject:Date:From;
 b=lxilk2ZN5+GuOYV2xnSk5104SvjdE8bG+YgWkZ8SBxJgtHVwvOkY/K9F07H+54vyQ
 2gFdNcSfft/JWqmYqycNFAlC1kYrDzXlDr3oF0ohBAdqOB0sHL9KgFD6lmbFjtLlag
 E6Ym8NYOqd9Ku70XRS/nQCGtSGwwmCELaj9FzcOA=
From: megous@megous.com
To: Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH] arm64: dts: allwinner: orange-pi-3: Enable WiFi
Date: Fri, 23 Aug 2019 11:42:28 +0200
Message-Id: <20190823094228.6540-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_024237_446122_5292372B 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Orange Pi 3 has AP6256 WiFi/BT module. WiFi part of the module is called
bcm43356 and can be used with the brcmfmac driver. The module is powered by
the two always on regulators (not AXP805).

WiFi uses a PG port with 1.8V voltage level signals. SoC needs to be
configured so that it sets up an 1.8V input bias on this port. This is done
by the pio driver by reading the vcc-pg-supply voltage.

You'll need a fw_bcm43456c5_ag.bin firmware file and nvram.txt
configuration that can be found in the Xulongs's repository for H6:

https://github.com/orangepi-xunlong/OrangePiH6_external/tree/master/ap6256

Mainline brcmfmac driver expects the firmware and nvram at the following
paths relative to the firmware directory:

  brcm/brcmfmac43456-sdio.bin
  brcm/brcmfmac43456-sdio.txt

Signed-off-by: Ondrej Jirman <megous@megous.com>
---

Since RTC patches for H6 were merged, this can now go in too, if it looks ok.

Other patches for this WiFi chip support were merged in previous cycles,
so this just needs enabling in DTS now.

Sorry for the links in the commit log, but this information is useful,
even if the link itself goes bad. Any pointer what to google for
(file names, tree name) is great for anyone searching in the future.

Please take a look.

Thank you,
	Ondrej

 .../dts/allwinner/sun50i-h6-orangepi-3.dts    | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
index eda9d5f640b9..49d954369087 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
@@ -56,6 +56,34 @@
 		regulator-max-microvolt = <5000000>;
 		regulator-always-on;
 	};
+
+	reg_vcc33_wifi: vcc33-wifi {
+		/* Always on 3.3V regulator for WiFi and BT */
+		compatible = "regulator-fixed";
+		regulator-name = "vcc33-wifi";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		vin-supply = <&reg_vcc5v>;
+	};
+
+	reg_vcc_wifi_io: vcc-wifi-io {
+		/* Always on 1.8V/300mA regulator for WiFi and BT IO */
+		compatible = "regulator-fixed";
+		regulator-name = "vcc-wifi-io";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+		vin-supply = <&reg_vcc33_wifi>;
+	};
+
+	wifi_pwrseq: wifi_pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&rtc 1>;
+		clock-names = "ext_clock";
+		reset-gpios = <&r_pio 1 3 GPIO_ACTIVE_LOW>; /* PM3 */
+		post-power-on-delay-ms = <200>;
+	};
 };
 
 &cpu0 {
@@ -91,6 +119,25 @@
 	status = "okay";
 };
 
+&mmc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc1_pins>;
+	vmmc-supply = <&reg_vcc33_wifi>;
+	vqmmc-supply = <&reg_vcc_wifi_io>;
+	mmc-pwrseq = <&wifi_pwrseq>;
+	bus-width = <4>;
+	non-removable;
+	status = "okay";
+
+	brcm: sdio-wifi@1 {
+		reg = <1>;
+		compatible = "brcm,bcm4329-fmac";
+		interrupt-parent = <&r_pio>;
+		interrupts = <1 0 IRQ_TYPE_LEVEL_LOW>; /* PM0 */
+		interrupt-names = "host-wake";
+	};
+};
+
 &ohci0 {
 	status = "okay";
 };
@@ -102,6 +149,7 @@
 &pio {
 	vcc-pc-supply = <&reg_bldo2>;
 	vcc-pd-supply = <&reg_cldo1>;
+	vcc-pg-supply = <&reg_vcc_wifi_io>;
 };
 
 &r_i2c {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
