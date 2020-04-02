Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A858219CBC0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 22:41:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4iSuB4cG5l0ZPoHW7ly5uLux1nKfNFH/6cBPRVOyCdY=; b=UR0fh80EsM3qYP
	lJUD7lkjMhG/QZq62oD5p/OlaW62CBSMsu+HNCibtaex7rUVOB/RitNc2SJyu14GyuBgob8xlE+FE
	Fste1hU4igE6xGmXL56CoFi3Gt0DNbvG2o7sD/WPgg2wYwxV40Q1fvhsNm+ebznZWBjqvBBVaLhez
	hQSFBrfPM3wiumvV766wNWCv/ofiERU4LrLDKaD9MFOp9d2tZktdwj8bPUv4F8YKuSZmHxUZ78hTF
	LKlOLQg8VDLFBjKskm4ivTexADXpSHId1PpDMMe+XBA8sMfLqs8rJw1mOdJjWZJN7lYNMDyBRBOA8
	5jdJOhE2gGp0wACCDj8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK6eL-0006uM-LD; Thu, 02 Apr 2020 20:41:17 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK6aX-0001WU-JK
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 20:37:25 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 1725F23E3C;
 Thu,  2 Apr 2020 22:37:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1585859839;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cDPSFl3DhXa9lr6ftolj/RdcksSf5WhA1OyJSQnsQT0=;
 b=E28VyFxO60baTwkam22hu8NfEuUbrYyIhpeI5/qDk9GR0WR4/xTZ/WsqDgX8Uf+UXYMk5j
 WveRx3DnYnoW1VPQJXaXn7Y0/HWF8Z5lPYkui470MM2dE/g0WzzCNT5ICCeOvYixcT99qz
 cH0EThbPKtg9a5Z0flfTHXDKYdAz3a0=
From: Michael Walle <michael@walle.cc>
To: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-pwm@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 13/16] arm64: dts: freescale: sl28: enable sl28cpld
Date: Thu,  2 Apr 2020 22:36:53 +0200
Message-Id: <20200402203656.27047-14-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200402203656.27047-1-michael@walle.cc>
References: <20200402203656.27047-1-michael@walle.cc>
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: 1725F23E3C
X-Spamd-Result: default: False [6.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 FREEMAIL_ENVRCPT(0.00)[gmail.com]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; BROKEN_CONTENT_TYPE(1.50)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; NEURAL_SPAM(0.00)[0.081];
 DKIM_SIGNED(0.00)[];
 DBL_PROHIBIT(0.00)[0.0.0.3:email,0.0.0.6:email,0.0.0.2:email,0.0.0.4:email,0.0.0.1:email,0.0.0.0:email,0.0.0.5:email,0.0.0.50:email];
 RCPT_COUNT_TWELVE(0.00)[24]; MID_CONTAINS_FROM(1.00)[];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c:8000::/33, country:DE];
 FREEMAIL_CC(0.00)[linaro.org,baylibre.com,kernel.org,suse.com,roeck-us.net,gmail.com,pengutronix.de,linux-watchdog.org,nxp.com,linutronix.de,lakedaemon.net,linuxfoundation.org,walle.cc];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_133721_922995_6A524FBF 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Marc Zyngier <maz@kernel.org>, Jean Delvare <jdelvare@suse.com>,
 Jason Cooper <jason@lakedaemon.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Li Yang <leoyang.li@nxp.com>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Michael Walle <michael@walle.cc>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Mark Brown <broonie@kernel.org>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Lee Jones <lee.jones@linaro.org>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the board management controller node.

Signed-off-by: Michael Walle <michael@walle.cc>
---
 .../freescale/fsl-ls1028a-kontron-sl28.dts    | 92 +++++++++++++++++++
 1 file changed, 92 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts
index 41ba38adc906..b73794d57db4 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts
@@ -8,6 +8,7 @@
 
 /dts-v1/;
 #include "fsl-ls1028a.dtsi"
+#include <dt-bindings/interrupt-controller/irq.h>
 
 / {
 	model = "Kontron SMARC-sAL28";
@@ -174,6 +175,97 @@
 		reg = <0x32>;
 	};
 
+	sl28cpld: sl28cpld@4a {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "kontron,sl28cpld";
+		reg = <0x4a>;
+		interrupts-extended = <&gpio2 6 IRQ_TYPE_EDGE_FALLING>;
+
+		interrupt-controller;
+		#interrupt-cells = <2>;
+
+		watchdog@0 {
+			compatible = "kontron,sl28cpld-wdt";
+			reg = <0>;
+			kontron,assert-wdt-timeout-pin;
+		};
+
+		hwmon@4 {
+			compatible = "kontron,sl28cpld-fan";
+			reg = <1>;
+		};
+
+		sl28cpld_pwm0: pwm@5 {
+			#pwm-cells = <2>;
+			compatible = "kontron,sl28cpld-pwm";
+			reg = <2>;
+		};
+
+		sl28cpld_pwm1: pwm@6 {
+			#pwm-cells = <2>;
+			compatible = "kontron,sl28cpld-pwm";
+			reg = <3>;
+		};
+
+		sl28cpld_gpio0: gpio@0 {
+			compatible = "kontron,sl28cpld-gpio";
+			reg = <4>;
+
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-line-names =
+				"GPIO0_CAM0_PWR_N", "GPIO1_CAM1_PWR_N",
+				"GPIO2_CAM0_RST_N", "GPIO3_CAM1_RST_N",
+				"GPIO4_HDA_RST_N", "GPIO5_PWM_OUT",
+				"GPIO6_TACHIN", "GPIO7";
+
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+
+		sl28cpld_gpio1: gpio@1 {
+			compatible = "kontron,sl28cpld-gpio";
+			reg = <5>;
+
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-line-names =
+				"GPIO8", "GPIO9", "GPIO10", "GPIO11",
+				"", "", "", "";
+
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+
+		sl28cpld_gpio2: gpio@2 {
+			compatible = "kontron,sl28cpld-gpo";
+			reg = <6>;
+
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-line-names =
+				"LCD0 voltage enable",
+				"LCD0 backlight enable",
+				"eMMC reset", "LVDS bridge reset",
+				"LVDS bridge power-down",
+				"SDIO power enable",
+				"", "";
+		};
+
+		sl28cpld_gpio3: gpio@3 {
+			compatible = "kontron,sl28cpld-gpi";
+			reg = <7>;
+
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-line-names =
+				"Power button", "Force recovery", "Sleep",
+				"Battery low", "Lid state", "Charging",
+				"Charger present", "";
+		};
+	};
+
 	eeprom@50 {
 		compatible = "atmel,24c32";
 		reg = <0x50>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
