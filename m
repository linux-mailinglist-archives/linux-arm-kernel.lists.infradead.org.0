Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB091F35D4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 10:09:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FK7j3OReim4S/4Z6CeivmxuIwzJSyPRNuJlE1ouEUCs=; b=lwmeBzVgZtaSxQ
	M8SVs2iDCE6oafO14Oqa/0tqCB44+CRtAUXy4rhJXkIVTimE9UsfRwst5qOgsxcBgktOQH+2JRzX5
	egYPlonTZXGW6ssIqGw5NaYb5WxZvveHMTpVuQLLtd3npZUPLnO7X1LQAn1SQDw0pTKevb1lVduJh
	9Orss8eB5Ci+1fzZ91vjUkJh22Fin9HAj9VtC1uA/7moLLcVigT9roT/qPREOrt2gji/t2iIrx0IZ
	/KTzbfMM6KhdcEj1HcHieaLnaiflyu9RzBkeb7f4Itgd+Xl2Suee1NYnvcsSVwUFmTDnL/WNhLA72
	Xz0LHXFGEx9d6NbYCryA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiZJY-0000ch-79; Tue, 09 Jun 2020 08:08:56 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiZIp-0000IJ-RQ
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 08:08:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1591690091; x=1623226091;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=j8GXkZLUH+agWrXuo05iZ8Ra5e5w172JpXOOCnWEBk0=;
 b=SbybEOfsU5Ym3firP0PziopP+kiJer2gq+j1dBtQcXW19DnJXYfg0+yd
 Rx12D77uOi0f8Iet87M8yGLBL+nxmk0LbTe5ckUnDjql2sIlKIuP7XSFi
 nEDR94GO/eL+qAFCK0+OWlkEghZTHwailQXVUEOJvY5368XYPpgY23SAv
 /QLkAd8tl2dQVQNBzBblFXqqecuKS+KovBJ2YQSu7PpkrqZta2Y7Hb6wt
 X5N9D93KEOqSU+FTvqfRVxoo1Xug73jKxQ7a8/AP8DceDYSSe2+7aTo9W
 NWj2Ukfa2uFGZWg18cUrAPLbePd4RpJ4uYHjwAgNARToyp4NkwL2iXuUI g==;
IronPort-SDR: WIjVcXp9+x7tNl0DVjMyLtnn6Pe3z66EZw9JQ2tIEQ9l2AdQECxm9lZibNLwD59PQDb3jk3Fc5
 izU3jQEwkYkf9tIgdwPukmG5GBwh3ofDbBI9qDYV+mc2L/WzHdGqVhL71bKnrhsVoXE+YorfRp
 18EjHFNnBvklR3xrfI2N9p7QYzU+IETO8Eb2CP8ioqFV9+P7keZxO1fDWPALNRUbDC6mzurBMk
 u8pdVQ2ClK1C2K0Z/OQbjtwe4j3J3YlJMqP0Yzs/d8Bdx/vuvxZgDwr14OjA+HgKlFZ+DDZj1C
 GWM=
X-IronPort-AV: E=Sophos;i="5.73,491,1583218800"; d="scan'208";a="77808660"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jun 2020 01:08:09 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 9 Jun 2020 01:08:08 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1847.3 via Frontend Transport; Tue, 9 Jun 2020 01:08:06 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Arnd Bergmann <arnd@arndb.de>, Stephen Boyd <sboyd@kernel.org>, "Linus
 Walleij" <linus.walleij@linaro.org>
Subject: [PATCH v2 04/10] arm64: dts: sparx5: Add pinctrl support
Date: Tue, 9 Jun 2020 10:07:03 +0200
Message-ID: <20200609080709.9654-4-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200609080709.9654-1-lars.povlsen@microchip.com>
References: <20200608123024.5330-1-lars.povlsen@microchip.com>
 <20200609080709.9654-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_010811_962097_B27801C6 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [68.232.149.84 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
index 4a54b7d039167..baf4176ce1dfe 100644
--- a/arch/arm64/boot/dts/microchip/sparx5.dtsi
+++ b/arch/arm64/boot/dts/microchip/sparx5.dtsi
@@ -109,6 +109,8 @@ gic: interrupt-controller@600300000 {
 		};

 		uart0: serial@600100000 {
+			pinctrl-0 = <&uart_pins>;
+			pinctrl-names = "default";
 			compatible = "ns16550a";
 			reg = <0x6 0x00100000 0x20>;
 			clocks = <&ahb_clk>;
@@ -120,6 +122,8 @@ uart0: serial@600100000 {
 		};

 		uart1: serial@600102000 {
+			pinctrl-0 = <&uart2_pins>;
+			pinctrl-names = "default";
 			compatible = "ns16550a";
 			reg = <0x6 0x00102000 0x20>;
 			clocks = <&ahb_clk>;
@@ -138,5 +142,27 @@ timer1: timer@600105000 {
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
2.27.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
