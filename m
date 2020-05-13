Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4CE41D13AB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 14:58:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rN75AN2M6rFsMSJVP96NCOWPhjqT7QwOcoS70F1RBjE=; b=En1mEko9ZSJsSG
	F5uVO6d91UxLH3vVg2C0u2vcRMxxWg4n0HVpggLWQHLwa31VjJDaUGl02EpzPSKxZt+JYfwBWeD/0
	8rG+ZP5Ps4ssmwJO86zHON14gx5pd97HllT4AZ0haqdR6kIZBP3MwTIt5xueDrCzqlWZLajiUsYj6
	/pp62+cnRuxu4Y/RO9c4Z7iu9myjMyeZXOblDZVQBG5ehuPK4wFmDghM2tuM7rX9bSJq1twfkV22V
	PAd+Qd7M/Oy4TDZjB0/8chV3kpY5sMFZkpMe/P8HNfRfdfQaTFnBSp/n6jufC8P0qgCnWBJ0MrIVs
	GfZjbdEW6RSrqnci0Yrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYqyD-0003Tz-Jf; Wed, 13 May 2020 12:58:45 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYqwT-0002BK-RZ
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 12:57:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589374617; x=1620910617;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tnLWmU9TG0hHNpiEsQJmeBvXg8PJsOm3nln/lwMbNII=;
 b=XBUT6S4YjAlYE6V311UU56+gpJFt6M2utO/J/9u00swYyn41TsSiYmqN
 399O4zzLT/z+qhzIL6IY3X8EX8KWCSPYXFnYhC50LbHLlYwLL0mEa8x3o
 TL9RHTy9HKVAv+0qcUsl+ZIxfL2MEdarvg9ihMBhzPTC1vTTGlkpd6dHU
 /vhthZhhwIAOwUDGvkhPSX4JzhVLx3qKWEYDmXUlNXqiQPRToPIHTj3Fa
 NZIRTQblHf29MVHram1GvyLibKUIy+wg5X8o0Zs/OYqDSx8t6gZIurlb9
 irV8odfzIw8Ij3r/YfCVQ0Up+XSeys8xzrHfuxczj0n5ofvM6eOjr6OBP w==;
IronPort-SDR: iPcmnwfvFRdYKmx9fcBuWP/43p5J+o/Hc4a9KPJnQ45OI62gYQOywxkAutC2Lxc7aN6VKmbdQL
 C2romUuZo8OLj5ePxprebSXup3EIm2IxT467FjHmpBibuXw4O5t/lLOAMF2oijchUKNYVdYxgx
 de2mmO/IDSBNmxot12YgHkFtgxLmatdkOmeSHLg6u6cP1ktNiIZ0gYtSGEur/x6MBjKuhNBNxX
 7hbb9JM2e1M5PqbaYX2TiRVSkMANTEgGHXfmQxgxJR3QK6R+T018jvB0OUR4mJy7YnxQfJEU+B
 wgU=
X-IronPort-AV: E=Sophos;i="5.73,387,1583218800"; d="scan'208";a="76494636"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 05:56:55 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 05:56:58 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 05:56:52 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: SoC Team <soc@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Stephen Boyd
 <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 08/14] arm64: dts: sparx5: Add pinctrl support
Date: Wed, 13 May 2020 14:55:26 +0200
Message-ID: <20200513125532.24585-9-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513125532.24585-1-lars.povlsen@microchip.com>
References: <20200513125532.24585-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_055657_910719_8820351F 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Steen Hegelund <Steen.Hegelund@microchip.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Olof Johansson <olof@lixom.net>, Michael
 Turquette <mturquette@baylibre.com>, Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This add pinctrl support to the Microchip Sparx5 SoC.

Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 arch/arm64/boot/dts/microchip/sparx5.dtsi | 26 +++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/microchip/sparx5.dtsi b/arch/arm64/boot/dts/microchip/sparx5.dtsi
index 3136b4369f507..45a60993789c8 100644
--- a/arch/arm64/boot/dts/microchip/sparx5.dtsi
+++ b/arch/arm64/boot/dts/microchip/sparx5.dtsi
@@ -102,6 +102,8 @@ gic: interrupt-controller@600300000 {
 		};

 		uart0: serial@600100000 {
+			pinctrl-0 = <&uart_pins>;
+			pinctrl-names = "default";
 			compatible = "ns16550a";
 			reg = <0x6 0x00100000 0x20>;
 			clocks = <&ahb_clk>;
@@ -113,6 +115,8 @@ uart0: serial@600100000 {
 		};

 		uart1: serial@600102000 {
+			pinctrl-0 = <&uart2_pins>;
+			pinctrl-names = "default";
 			compatible = "ns16550a";
 			reg = <0x6 0x00102000 0x20>;
 			clocks = <&ahb_clk>;
@@ -131,5 +135,27 @@ timer1: timer@600105000 {
 			interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
 		};

+		gpio: pinctrl@6110101e0 {
+			compatible = "microchip,sparx5-pinctrl";
+			reg = <0x6 0x110101e0 0x90>, <0x6 0x10508010 0x100>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-ranges = <&gpio 0 0 64>;
+			interrupt-controller;
+			interrupts = <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>;
+			#interrupt-cells = <2>;
+
+			uart_pins: uart-pins {
+				pins = "GPIO_10", "GPIO_11";
+				function = "uart";
+			};
+
+			uart2_pins: uart2-pins {
+				pins = "GPIO_26", "GPIO_27";
+				function = "uart2";
+			};
+
+		};
+
 	};
 };
--
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
